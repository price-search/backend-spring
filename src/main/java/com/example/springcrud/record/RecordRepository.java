package com.example.springcrud.record;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface RecordRepository extends MongoRepository<Record, String> {

}