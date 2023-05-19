package com.abhijit.order.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.abhijit.order.entities.OrderMaster;

public interface OrderMasterRepository extends JpaRepository<OrderMaster, Long> {
	@Query("SELECT o FROM OrderMaster o WHERE o.user.id = :userId AND o.orderDate BETWEEN :fromDate AND :toDate")
	List<OrderMaster> findByUserIdAndOrderDateBetween(
			@Param("userId") int userId,
			@Param("fromDate") LocalDateTime fromDate,
			@Param("toDate") LocalDateTime toDate);

}
