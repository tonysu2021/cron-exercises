package com.elasticjob.job;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shardingsphere.elasticjob.api.ShardingContext;
import org.apache.shardingsphere.elasticjob.dataflow.job.DataflowJob;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import com.elasticjob.entity.secondary.Task;
import com.elasticjob.entity.secondary.Task.Status;
import com.elasticjob.repository.secondary.TaskRepository;

@Component
public class DemoDataflowJob implements DataflowJob<Task> {
    
    private final Logger logger = LoggerFactory.getLogger(DemoDataflowJob.class);
    
    @Resource
    private TaskRepository fooRepository;
    
    /**
     * 抓取數據
     * 
     * */
    @Override
    public List<Task> fetchData(final ShardingContext shardingContext) {
        logger.info("Item: {} | Time: {} | Thread: {} | {}",
                shardingContext.getShardingItem(), new SimpleDateFormat("HH:mm:ss").format(new Date()), Thread.currentThread().getId(), "DATAFLOW FETCH");
        return fooRepository.findTodoData(shardingContext.getShardingParameter(), PageRequest.of(0, 10));
    }
    
    /**
     * 處理數據
     * 
     * */
    @Override
    public void processData(final ShardingContext shardingContext, final List<Task> dataList) {
        logger.info("Item: {} | Time: {} | Thread: {} | {}",
                shardingContext.getShardingItem(), new SimpleDateFormat("HH:mm:ss").format(new Date()), Thread.currentThread().getId(), "DATAFLOW PROCESS");
        for (Task data : dataList) {
        	data.setStatus(Status.COMPLETED);
            fooRepository.save(data);
        }
    }
}
