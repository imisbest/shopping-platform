package com.csw.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

@Accessors(chain = true)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order implements Serializable {
@Id
  private String id;
  private double total;
  private String address;
  private String name;
  private String phone;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
  private Date createDate;
  private String status;


}
