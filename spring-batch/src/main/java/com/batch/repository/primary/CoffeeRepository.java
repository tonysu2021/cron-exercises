package com.batch.repository.primary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.batch.model.primary.Coffee;

@Repository
public interface CoffeeRepository extends JpaRepository<Coffee, Integer> {

}
