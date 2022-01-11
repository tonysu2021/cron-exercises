package com.batch.job;

import javax.sql.DataSource;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.database.BeanPropertyItemSqlParameterSourceProvider;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import com.batch.listener.JobCompletionNotificationListener;
import com.batch.model.primary.Coffee;
import com.batch.processor.CoffeeProcessor;

@Configuration
public class BatchJob {

	@Autowired
	public JobBuilderFactory jobBuilderFactory;

	@Autowired
	public StepBuilderFactory stepBuilderFactory;

	@Value("${file.input}")
	private String fileInput;

	@Bean(name = "coffeeReader")
	public FlatFileItemReader<Coffee> coffeeReader() {
		return new FlatFileItemReaderBuilder<Coffee>().name("coffeeItemReader")
				.resource(new ClassPathResource(fileInput)).delimited()
				.names(new String[] { "brand", "origin", "characteristics" })
				.fieldSetMapper(new BeanWrapperFieldSetMapper<Coffee>() {
					{
						setTargetType(Coffee.class);
					}
				}).build();
	}

	@Bean(name = "coffeeProcessor")
	public ItemProcessor<Coffee, Coffee> coffeeProcessor() {
		return new CoffeeProcessor();
	}

	@Bean(name = "coffeeWriter")
	public JdbcBatchItemWriter<Coffee> coffeeWriter(@Qualifier("primaryDataSource") DataSource dataSource) {
		return new JdbcBatchItemWriterBuilder<Coffee>()
				.itemSqlParameterSourceProvider(new BeanPropertyItemSqlParameterSourceProvider<>())
				.sql("INSERT INTO coffee (brand, origin, characteristics) VALUES (:brand, :origin, :characteristics)")
				.dataSource(dataSource).build();
	}

	@Bean(name = "coffeeStep1")
	public Step step1(@Qualifier("coffeeWriter") JdbcBatchItemWriter<Coffee> writer) {
		return stepBuilderFactory.get("step1")
				.<Coffee, Coffee>chunk(10)
				.reader(coffeeReader())
				.processor(coffeeProcessor())
				.writer(writer).build();
	}

	@Bean(name = "coffeeJob")
	public Job importUserJob(JobCompletionNotificationListener listener, @Qualifier("coffeeStep1") Step step1) {
		return jobBuilderFactory.get("importUserJob")
				.incrementer(new RunIdIncrementer())
				.listener(listener)
				.flow(step1)
				.end().build();
	}
}
