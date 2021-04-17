package com.csw.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Id;
import java.io.Serializable;

@Accessors(chain = true)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product implements Serializable {
    @Id
    private String id;
    private String name;
    private double price;
    private String detail;
    private long sale;
    private long stock;
    private String image;
    private String categoryId;


}
