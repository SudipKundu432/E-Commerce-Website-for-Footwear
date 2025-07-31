package com.example.Ecomp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Ecomp.model.Order;

public interface OrderDao extends JpaRepository<Order, Integer> {

}
