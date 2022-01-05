//package com.elasticjob.conf;
//
//import javax.sql.DataSource;
//
//import org.apache.shardingsphere.elasticjob.lite.spring.boot.tracing.ElasticJobTracingConfiguration;
//import org.apache.shardingsphere.elasticjob.tracing.api.TracingConfiguration;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//@Configuration
//public class ElasticJobConfig extends ElasticJobTracingConfiguration {
//
//	@Override
//	@Bean
//	public TracingConfiguration<DataSource> tracingConfiguration(
//			@Qualifier("secondaryDataSource") DataSource dataSource) {
//		return new TracingConfiguration<>("RDB", dataSource);
//	}
//}
