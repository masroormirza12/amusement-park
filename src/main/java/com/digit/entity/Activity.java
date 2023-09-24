package com.digit.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Activity {

	@Id

	private int activityId;

	private String description;

	private double charges;

	public Activity() {

		super();

	}

	public Activity(int activityId, String description, double charges) {

		super();

		this.activityId = activityId;

		this.description = description;

		this.charges = charges;

	}

	public int getActivityId() {

		return this.activityId;

	}

	public void setActivityId(int activityId) {

		this.activityId = activityId;

	}

	public String getDescription() {

		return this.description;

	}

	public void setDescription(String description) {

		this.description = description;

	}

	public double getCharges() {

		return charges;

	}

	public void setCharges(double charges) {

		this.charges = charges;

	}

	@Override

	public String toString() {

		return "Activity [activityId=" + activityId + ", description=" + description + ", charges=" + charges + "]";

	}

}