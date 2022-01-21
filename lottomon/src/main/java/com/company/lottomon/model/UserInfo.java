package com.company.lottomon.model;

public class UserInfo {
	private int seq;
	private String telNo;
	private String gender;
	private String name;
	private String nickname;
	private String birth;
	private String id;
	private String password;
	private String email;
	private String grade;
	private String role;
	private String sns_token;
	private String join_type;

	private String tempPassword;
	private String incPassword;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBurth() {
		return birth;
	}
	public void setBurth(String burth) {
		this.birth = burth;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getSns_token() {
		return sns_token;
	}

	public void setSns_token(String sns_token) {
		this.sns_token = sns_token;
	}

	public String getJoin_type() {
		return join_type;
	}

	public void setJoin_type(String join_type) {
		this.join_type = join_type;
	}

	public String getTempPassword() {
		return tempPassword;
	}

	public void setTempPassword(String tempPassword) {
		this.tempPassword = tempPassword;
	}

	public String getIncPassword() {
		return incPassword;
	}

	public void setIncPassword(String incPassword) {
		this.incPassword = incPassword;
	}

	@Override
	public String toString() {
		return "UserInfo{" +
				"telNo='" + telNo + '\'' +
				", gender='" + gender + '\'' +
				", name='" + name + '\'' +
				", nickname='" + nickname + '\'' +
				", birth='" + birth + '\'' +
				", id='" + id + '\'' +
				", password='" + password + '\'' +
				", email='" + email + '\'' +
				", grade='" + grade + '\'' +
				", role='" + role + '\'' +
				", sns_token='" + sns_token + '\'' +
				'}';
	}
}

