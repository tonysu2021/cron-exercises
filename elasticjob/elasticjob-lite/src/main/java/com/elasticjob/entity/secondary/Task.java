package com.elasticjob.entity.secondary;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "task")
public class Task  {
    
	@Id
	@Column(name = "task_id")
    private long id;
    
    @Column(name = "location")
    private String location;
    
    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private Status status;
    
    public long getId() {
        return id;
    }
    
    public String getLocation() {
        return location;
    }
    
    public Status getStatus() {
        return status;
    }
    
    public void setStatus(final Status status) {
        this.status = status;
    }
    
    public enum Status {
        TODO,
        COMPLETED
    }
}
