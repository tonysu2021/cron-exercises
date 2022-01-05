package com.batch.repository.secondary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.batch.model.secondary.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {

}
