package com.bookstore;

import com.bookstore.service.BookstoreService;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Unidirectional {

    private final BookstoreService bookstoreService;

    public Unidirectional(BookstoreService bookstoreService) {
        this.bookstoreService = bookstoreService;
    }

    public static void main(String[] args) {
        SpringApplication.run(Unidirectional.class, args);
    }

    @Bean
    public ApplicationRunner init() {
        return args -> {
            System.out.println("\nInsert author with books  ...");
            bookstoreService.insertAuthorWithBooks();

            System.out.println("\nInsert New Book...");
            bookstoreService.insertNewBook();

            System.out.println("\nInsert Author With Books...");
            bookstoreService.insertAuthorWithBooks();
        };
    }
}
