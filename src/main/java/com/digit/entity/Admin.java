package com.digit.entity;

import javax.persistence.Entity;

@Entity
public class Admin extends AbstractUser {

	private int id;

	public Admin() {
		super();
	}

	public Admin(int id) {
		super();
		this.id = id;
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + "]";
	}



}
