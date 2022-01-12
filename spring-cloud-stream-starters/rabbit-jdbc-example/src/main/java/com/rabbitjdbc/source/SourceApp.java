package com.rabbitjdbc.source;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.stream.annotation.EnableBinding;
import org.springframework.cloud.stream.app.rabbit.source.RabbitSourceConfiguration;
import org.springframework.cloud.stream.messaging.Source;
import org.springframework.context.annotation.Import;
import org.springframework.integration.annotation.InboundChannelAdapter;

@SpringBootApplication
@EnableBinding(Source.class)
@Import(RabbitSourceConfiguration.class)
public class SourceApp {
	Logger log = LoggerFactory.getLogger(SourceApp.class);

	@InboundChannelAdapter(value = Source.OUTPUT)
	public String timerMessageSource() {
		return new SimpleDateFormat().format(new Date());
	}

}
