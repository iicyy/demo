package com.zero.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private int bookId;
    private String bookName;
    private int sales;
    private String detail;
    private int price;
}
