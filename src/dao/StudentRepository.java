package dao;

import java.util.ArrayList;
import dto.Student;

public class StudentRepository {
	
	private ArrayList<Student> listOfStudents = new ArrayList<Student>();
	private static StudentRepository instance = new StudentRepository();
	
	public static StudentRepository getInstance() {
		return instance;
	}
	public StudentRepository() {
		Student STUDENT1 = new Student("201611842", "이현구");
		STUDENT1.setGrade(3);
		STUDENT1.setMajor("컴퓨터공학부");
		STUDENT1.setPhoneNum("01012345678");
		STUDENT1.setFilename("201611842.png");
		STUDENT1.setBirth("960611");
		STUDENT1.setEmail("wancern@naver.com");
		STUDENT1.setAddress("서울시 동작구");
		
		Student STUDENT2 = new Student("201712345", "김철수");
		STUDENT2.setGrade(2);
		STUDENT2.setMajor("건축학과");
		STUDENT2.setPhoneNum("01087654321");
		STUDENT2.setFilename("201712345.png");
		STUDENT2.setBirth("980506");
		STUDENT2.setEmail("cjftn@nate.com");
		STUDENT2.setAddress("수원시 영통구");
		
		Student STUDENT3 = new Student("202054321", "안영희");
		STUDENT3.setGrade(1);
		STUDENT3.setMajor("경영학부");
		STUDENT3.setPhoneNum("01015881588");
		STUDENT3.setFilename("202054321.png");
		STUDENT3.setBirth("010801");
		STUDENT3.setEmail("zerohi@naver.com");
		STUDENT3.setAddress("서울시 마포구");
		
		Student STUDENT4 = new Student("201511223", "안재석");
		STUDENT4.setGrade(4);
		STUDENT4.setMajor("화학과");
		STUDENT4.setPhoneNum("01013579753");
		STUDENT4.setFilename("201511223.png");
		STUDENT4.setBirth("961230");
		STUDENT4.setEmail("jaseok@google.com");
		STUDENT4.setAddress("강원도 원주시");
		
		Student STUDENT5 = new Student("201898765", "박종원");
		STUDENT5.setGrade(3);
		STUDENT5.setMajor("체육학부");
		STUDENT5.setPhoneNum("01025802580");
		STUDENT5.setFilename("201898765.png");
		STUDENT5.setBirth("990208");
		STUDENT5.setEmail("whddnjs@daum.net");
		STUDENT5.setAddress("서울시 강남구");
		
		Student STUDENT6 = new Student("201700700", "이수지"); 
		STUDENT6.setGrade(3);
		STUDENT6.setMajor("컴퓨터공학부");
		STUDENT6.setPhoneNum("01012457896");
		STUDENT6.setFilename("201700700.png");
		STUDENT6.setBirth("970423");
		STUDENT6.setEmail("suji00@naver.com");
		STUDENT6.setAddress("부산시 수영구");
		
		listOfStudents.add(STUDENT1);
		listOfStudents.add(STUDENT2);
		listOfStudents.add(STUDENT3);
		listOfStudents.add(STUDENT4);
		listOfStudents.add(STUDENT5);
		listOfStudents.add(STUDENT6);
	}
	
	public ArrayList<Student> getAllStudents(){
		return listOfStudents;
		}
	
	public Student getStudentById(String studentId) {
		Student studentById = null;
		
		for(int i = 0; i<listOfStudents.size();i++) {
			Student student = listOfStudents.get(i);
			if(student != null && student.getStudentId() != null && student.getStudentId().equals(studentId)) {
				studentById = student;
				break;
			}	
		}
		return studentById;
	}

	public void addStudent(Student student) {
		listOfStudents.add(student);
	}
}

