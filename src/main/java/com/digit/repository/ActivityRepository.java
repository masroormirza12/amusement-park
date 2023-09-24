package com.digit.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.digit.entity.Activity;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Integer> {

	@Query(value = "select * from activity where charges <= ?", nativeQuery = true)

	public List<Activity> viewAllActivitiesOfCharges(@Param("charges") double charges);

	@Query(value = "select count(charges) from activity where charges <= ?", nativeQuery = true)

	public int countActivitiesOfCharges(double charges);

}