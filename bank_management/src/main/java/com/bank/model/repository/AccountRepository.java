package com.bank.model.repository;
import org.springframework.data.mongodb.repository.MongoRepository;
import com.bank.model.Account;

public interface AccountRepository extends MongoRepository<Account, String> {}
