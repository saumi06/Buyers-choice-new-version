package com.buyerschoice.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Package {

		
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int packageId;

	@Column
	private String packageName;
	@Column
	private String packageDescription;
	
	@Transient
	private MultipartFile pimage;

	public Package()
	{
	}
	public int getPackageId() 
	{
		return packageId;
	}

	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public String getPackageDescription() {
		return packageDescription;
	}
	public void setPackageDescription(String packageDescription) {
		this.packageDescription = packageDescription;
	}
	public MultipartFile getPimage() {
		return pimage;
	}
	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}
	@Override
	public String toString() {
	return "packageId [id=" + packageId + ", name=" + packageName + ", desc=" + packageDescription + "]";
	}

	}

