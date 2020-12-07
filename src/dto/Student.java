package dto;

import java.io.Serializable;
public class Student implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;
	
	private String studentId;	//학번
	private String name;		//이름
	private Integer grade;		//학년
	private String major;		//학과
	private String phoneNum;	//전화번호
	private String filename;	//파일 이름
	private String birth;		//생년월일
	private String email;		//이메일 주소
	private String address;		//집 주소
	private String date;		//방문 날짜
	private String room;		//방문 강의실

	
	public Student() {
		super();
	}

	public Student(String studentId, String name) {
		super();
		this.studentId = studentId;
		this.name = name;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getFilename() {
		return filename;		
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getBirth() {
		return birth;		
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;		
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;		
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
}
