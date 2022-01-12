package com.rabbitjdbc.aggregate;

import com.rabbitjdbc.processor.ProcessorApp;
import com.rabbitjdbc.source.SourceApp;
import com.rabbitjdbc.sink.SinkApp;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.stream.aggregate.AggregateApplicationBuilder;

@SpringBootApplication
public class AggregateApp {
    public static void main(String[] args) {
        new AggregateApplicationBuilder()
                .from(SourceApp.class).args("--fixedDelay=5000")
                .via(ProcessorApp.class)
                .to(SinkApp.class).args("--debug=true")
                .run(args);
    }
}