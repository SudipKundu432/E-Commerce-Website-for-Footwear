package com.example.Ecomp.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.Ecomp.model.User;

public interface UserDao extends JpaRepository<User, String> {
 User findByEmailAndPassword(String email,String pass);
 User findByEmail(String email);
}