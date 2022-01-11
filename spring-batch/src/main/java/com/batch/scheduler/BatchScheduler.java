package com.batch.scheduler;

import java.util.Date;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.scheduling.TaskScheduler;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.support.ScheduledMethodRunnable;

import com.batch.model.secondary.Book;

@Configuration
public class BatchScheduler {
	private final Logger logger = LoggerFactory.getLogger(BatchScheduler.class);

	private AtomicBoolean enabled = new AtomicBoolean(true);

	private AtomicInteger batchRunCounter = new AtomicInteger(0);

	private final Map<Object, ScheduledFuture<?>> scheduledTasks = new IdentityHashMap<>();

	@Autowired
	private JobBuilderFactory jobBuilderFactory;

	@Autowired
	private StepBuilderFactory stepBuilderFactory;

	@Autowired
	private JobLauncher jobLauncher;

	@Bean(name = "bookReader")
	public FlatFileItemReader<Book> bookReader() {
		return new FlatFileItemReaderBuilder<Book>().name("bookItemReader")
				.resource(new ClassPathResource("books.csv"))
				.delimited().names(new String[] { "id", "name" })
				.fieldSetMapper(new BeanWrapperFieldSetMapper<Book>() {
					{
						setTargetType(Book.class);
					}
				}).build();
	}

	@Bean(name = "bookWriter")
	public ItemWriter<Book> bookWriter() {
		return new ItemWriter<Book>() {

			@Override
			public void write(List<? extends Book> items) throws Exception {
				logger.debug("writer...{}", items.size());
				for (Book item : items) {
					logger.debug("{}", item);
				}

			}
		};
	}

	@Bean(name = "readbookStep")
	protected Step readBooks() {
		return stepBuilderFactory.get("readBooks")
				.<Book, Book>chunk(2)
				.reader(bookReader())
				.writer(bookWriter())
				.build();
	}

	@Bean(name = "bookJob")
	public Job bookJob() {
		return jobBuilderFactory.get("job")
				.start(readBooks())
				.build();
	}

	@Scheduled(fixedRate = 2000)
	public void launchJob() throws Exception {
		Date date = new Date();
		logger.debug("scheduler starts at {}", date);
		if (enabled.get()) {
			JobExecution jobExecution = jobLauncher.run(bookJob(),
					new JobParametersBuilder().addDate("launchDate", date).toJobParameters());
			batchRunCounter.incrementAndGet();
			logger.debug("Batch job ends with status as {}", jobExecution.getStatus());
		}
		logger.debug("scheduler ends ");
	}

	public void stop() {
		enabled.set(false);
	}

	public void start() {
		enabled.set(true);
	}

	@Bean
	public TaskScheduler poolScheduler() {
		return new CustomTaskScheduler();
	}

	private class CustomTaskScheduler extends ThreadPoolTaskScheduler {

		private static final long serialVersionUID = -7142624085505040603L;

		@Override
		public ScheduledFuture<?> scheduleAtFixedRate(Runnable task, long period) {
			ScheduledFuture<?> future = super.scheduleAtFixedRate(task, period);

			ScheduledMethodRunnable runnable = (ScheduledMethodRunnable) task;
			scheduledTasks.put(runnable.getTarget(), future);

			return future;
		}

	}

	public void cancelFutureSchedulerTasks() {
		scheduledTasks.forEach((k, v) -> {
			if (k instanceof BatchScheduler) {
				v.cancel(false);
			}
		});
	}

	public AtomicInteger getBatchRunCounter() {
		return batchRunCounter;
	}

}
