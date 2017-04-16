package tablecategory.mytable;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class personaldetails {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	
private int id;
	@NotEmpty(message="Username cannot be empty") @Size(min=5,max=25, message="Sign Up Name must be between 4 and 20 charecters")
private String name;
 @NotEmpty(message="Username cannot be empty") @Pattern(regexp="[7-9][0-9]{9,9}", message ="Mobile number must have a valid Indian Format")
 private String  phoneno;
 @NotEmpty(message="Username cannot be empty")
 private String gender;
 @NotEmpty(message="Username cannot be empty")
 private String presentlocation;
 
 @NotEmpty(message="Username cannot be empty")
 private String eduqual;
 
 @NotEmpty(message="Username cannot be empty")
 private String salary;
 
public String getEduqual() {
	return eduqual;
}
public void setEduqual(String eduqual) {
	this.eduqual = eduqual;
}
public String getSalary() {
	return salary;
}
public void setSalary(String salary) {
	this.salary = salary;
}
@NotEmpty(message="Username cannot be empty")
 private String religion;
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getReligion() {
	return religion;
}
public void setReligion(String religion) {
	this.religion = religion;
}
@NotEmpty(message="Username cannot be empty")
 private String email;
 @NotEmpty(message="Username cannot be empty") 
private String dateofbirth;
 @NotEmpty(message="Username cannot be empty")
private String timeofbirth;
 @NotEmpty(message="Username cannot be empty")
private  String placeofbirth;
 @NotEmpty(message="Username cannot be empty")
private String newpassword;
 @NotEmpty(message="Username cannot be empty")
 private String age;
@Transient
private String confirmpassword;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public String getPresentlocation() {
	return presentlocation;
}
public void setPresentlocation(String presentlocation) {
	this.presentlocation = presentlocation;
}

public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPhoneno() {
	return phoneno;
}
public void setPhoneno(String phoneno) {
	this.phoneno = phoneno;
}
public String getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(String dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getTimeofbirth() {
	return timeofbirth;
}
public void setTimeofbirth(String timeofbirth) {
	this.timeofbirth = timeofbirth;
}
public String getPlaceofbirth() {
	return placeofbirth;
}
public void setPlaceofbirth(String placeofbirth) {
	this.placeofbirth = placeofbirth;
}
public String getNewpassword() {
	return newpassword;
}
public void setNewpassword(String newpassword) {
	this.newpassword = newpassword;
}
public String getConfirmpassword() {
	return confirmpassword;
}
public void setConfirmpassword(String confirmpassword) {
	this.confirmpassword = confirmpassword;
}
public personaldetails() {

}

}
