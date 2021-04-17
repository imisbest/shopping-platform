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
public class Category implements Serializable {
    @Id
    private String id;
    private String name;


}
