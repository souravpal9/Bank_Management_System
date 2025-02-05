package com.bank.model.repository.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bank.model.Account;  // ✅ Make sure this import exists
import com.bank.model.repository.AccountRepository;  // Ensure this path is correct or update to the correct package

import java.util.List;

@Service



public class AccountService {
    @Autowired
    private AccountRepository accountRepository;

    public Account createAccount(Account account) {
        System.out.println("Saving account: " + account); // Add this line for debugging
        Account savedAccount = accountRepository.save(account);
        System.out.println("Saved account: " + savedAccount); // Log the saved account
        return savedAccount;
    }
    
    

    public List<Account> getAllAccounts() {
        return accountRepository.findAll();
    }

    public Account getAccountById(String id) {
        return accountRepository.findById(id).orElseThrow(() -> new RuntimeException("Account not found"));
    }
    
    public void deleteAccount(String id) {
        accountRepository.deleteById(id);
    }
    
}






