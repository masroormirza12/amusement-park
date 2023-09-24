package com.digit.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.MappedSuperclass;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.lang.NonNull;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class AbstractUser {

	@NonNull

	@Size(min = 3, message = "Name can not have less than 3 characters length")
	@Id
	private String userName;

	@NonNull

	@NotBlank

	@Size(min = 6, message = "Name can not have less than 6 characters length")

	private String password;

	@NonNull

	@NotBlank

	private String address;

	@NonNull

	@NotBlank

	@Pattern(regexp = "[6789][0-9]{9}", message = "can not start with 0 to 5,allowed length is 10 characters")

	private String mobileNumber;

	@Pattern(regexp = "[a-zA-z0-9_.-]+@[a-zA-z0-9_.-]+.[a-zA-z0-9_.-]{3}", message = "please enter proper email")

	private String email;

	public AbstractUser() {
		super();

	}

	public AbstractUser(@Size(min = 3, message = "Name can not have less than 3 characters length") String userName,
			@NotBlank @Size(min = 6, message = "Name can not have less than 6 characters length") String password,
			@NotBlank String address,
			@NotBlank @Pattern(regexp = "[6789][0-9]{9}", message = "can not start with 0 to 5,allowed length is 10 characters") String mobileNumber,
			@Pattern(regexp = "[a-zA-z0-9_.-]+@[a-zA-z0-9_.-]+.[a-zA-z0-9_.-]{3}", message = "please enter proper email") String email) {
		super();
		this.userName = userName;
		this.password = password;
		this.address = address;
		this.mobileNumber = mobileNumber;
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "AbstractUser [userName=" + userName + ", password=" + password + ", address=" + address
				+ ", mobileNumber=" + mobileNumber + ", email=" + email + "]";

	}

}