package com.abhijit.order.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abhijit.order.entities.OrderMaster;
import com.abhijit.order.entities.OrderMasterDetails;

public interface OrderMasterDetailsRepository extends JpaRepository<OrderMasterDetails, Long> {
	List<OrderMasterDetails> findByOrder(OrderMaster order);
}

