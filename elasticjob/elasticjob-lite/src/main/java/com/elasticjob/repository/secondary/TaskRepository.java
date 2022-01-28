package com.elasticjob.repository.secondary;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.elasticjob.entity.secondary.Task;

@Repository
public interface TaskRepository extends JpaRepository<Task, Long> {

	@Query("Select task From Task task " 
			+ "Where task.location = :location and task.status = 'TODO' ")	
	public List<Task> findTodoData(String location, Pageable pageable);
}
