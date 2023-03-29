package com.example.demo.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Recipe {
    private int id;
    private String author;
    private String title;
    private String description;
}
