package com.bank.model;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Document(collection = "accounts")
@Data
@Getter
@Setter
public class Account {
    @Id
    private String id;
    private String accountHolder;
    private double balance;
    private String accountNumber;
}
