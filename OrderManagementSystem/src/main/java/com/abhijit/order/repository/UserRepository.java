package com.abhijit.order.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abhijit.order.entities.UserMaster;

public interface UserRepository extends JpaRepository<UserMaster, Integer>{
	List<UserMaster> findAll();
	UserMaster findElementById(Integer id);
}
