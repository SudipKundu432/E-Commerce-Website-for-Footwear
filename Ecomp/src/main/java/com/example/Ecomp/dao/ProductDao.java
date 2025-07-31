package com.example.Ecomp.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Ecomp.model.Product;

public interface ProductDao extends JpaRepository<Product, String> {
List<Product> findByCatagory(String Cat);
}
