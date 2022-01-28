package com.elasticjob.job;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.shardingsphere.elasticjob.api.ShardingContext;
import org.apache.shardingsphere.elasticjob.simple.job.SimpleJob;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import com.elasticjob.entity.secondary.Task;
import com.elasticjob.entity.secondary.Task.Status;
import com.elasticjob.repository.secondary.TaskRepository;

@Component
public class DemoSimpleJob implements SimpleJob {

	private final Logger logger = LoggerFactory.getLogger(DemoSimpleJob.class);

	@Autowired
	private TaskRepository fooRepository;

	@Override
	public void execute(final ShardingContext shardingContext) {
		logger.info("Item: {} | Time: {} | Thread: {} | {}", shardingContext.getShardingItem(),
				new SimpleDateFormat("HH:mm:ss").format(new Date()), Thread.currentThread().getId(), "SIMPLE");
		List<Task> dataList = fooRepository.findTodoData(shardingContext.getShardingParameter(), PageRequest.of(0, 10));
		for (Task data : dataList) {
			logger.info("id : {} ,location : {} , status : {}", data.getId(), data.getLocation(), data.getStatus());
			data.setStatus(Status.COMPLETED);
			fooRepository.save(data);
		}
	}
}
