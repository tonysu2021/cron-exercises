package com.elasticjob;

import java.util.TimeZone;

import javax.annotation.PostConstruct;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ElasticjobApplication {
	
    @PostConstruct
    void started() {
      TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
    }

	public static void main(final String[] args) {
		SpringApplication.run(ElasticjobApplication.class, args);
	}
}
