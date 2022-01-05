package com.elasticjob.job;

import org.apache.shardingsphere.elasticjob.api.ShardingContext;
import org.apache.shardingsphere.elasticjob.dataflow.job.DataflowJob;
import com.elasticjob.entity.Foo;
import com.elasticjob.repository.FooRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Component
public class DemoDataflowJob implements DataflowJob<Foo> {
    
    private final Logger logger = LoggerFactory.getLogger(DemoDataflowJob.class);
    
    @Resource
    private FooRepository fooRepository;
    
    /**
     * 抓取數據
     * 
     * */
    @Override
    public List<Foo> fetchData(final ShardingContext shardingContext) {
        logger.info("Item: {} | Time: {} | Thread: {} | {}",
                shardingContext.getShardingItem(), new SimpleDateFormat("HH:mm:ss").format(new Date()), Thread.currentThread().getId(), "DATAFLOW FETCH");
        return fooRepository.findTodoData(shardingContext.getShardingParameter(), 10);
    }
    
    /**
     * 處理數據
     * 
     * */
    @Override
    public void processData(final ShardingContext shardingContext, final List<Foo> data) {
        logger.info("Item: {} | Time: {} | Thread: {} | {}",
                shardingContext.getShardingItem(), new SimpleDateFormat("HH:mm:ss").format(new Date()), Thread.currentThread().getId(), "DATAFLOW PROCESS");
        for (Foo each : data) {
            fooRepository.setCompleted(each.getId());
        }
    }
}
