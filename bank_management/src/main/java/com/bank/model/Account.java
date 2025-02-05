package com.bank.model;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import lombok.Data;

@Document(collection = "accounts")
@Data
public class Account {
    @Id
    private String id;
    private String accountHolder;
    private double balance;
    private String accountNumber;
}
