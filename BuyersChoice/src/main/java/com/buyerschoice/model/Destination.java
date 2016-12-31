package com.buyerschoice.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Destination {
	
		
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int destId;

	@Column
	private String destName;
	@Column
	private int price;
	@Column
	private int st;
	@Column
	private int packageId;
	@Column
	private int supplierid;
	@Column
	private String discrption;

	
	public Destination()
	{}

	


}
