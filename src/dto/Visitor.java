package dto;

import java.io.Serializable;
public class Visitor implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;
	
	private String studentId;	//학번
	private String time;		//방문 시간
	private Integer roomNum;	//방문 강의실

	
	public Visitor() {
		super();
	}

	public Visitor(String studentId, String time, Integer roomNum) {
		super();
		this.studentId = studentId;
		this.time = time;
		this.roomNum = roomNum;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Integer getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(Integer roomNum) {
		this.roomNum = roomNum;
	}
}
