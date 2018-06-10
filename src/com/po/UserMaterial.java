package com.po;

public class UserMaterial {
		private String nickname ;                          
		private String sex ;                               
		private String birthday;                           
		private String bloodType ;                         
		private String hobby ;                             
		private String profession  ;                      
		private String hometown;                           
		private String school ;                            
		private String company ;                           
		private String cellphone;                          
		private String mailbox ;                           
		private String personalizedSignature ;            
		private String personalDescription ;              
		private int id ;
		private int userid ;
		
		public UserMaterial(String nickname, String sex, String birthday,
				String bloodType, String hobby, String profession,
				String hometown, String school, String company,
				String cellphone, String mailbox, String personalizedSignature,
				String personalDescription, int id, int userid) {
			super();
			this.nickname = nickname;
			this.sex = sex;
			this.birthday = birthday;
			this.bloodType = bloodType;
			this.hobby = hobby;
			this.profession = profession;
			this.hometown = hometown;
			this.school = school;
			this.company = company;
			this.cellphone = cellphone;
			this.mailbox = mailbox;
			this.personalizedSignature = personalizedSignature;
			this.personalDescription = personalDescription;
			this.id = id;
			this.userid = userid;
		}
		public int getUserid() {
			return userid;
		}
		public void setUserid(int userid) {
			this.userid = userid;
		}
		public String getNickname() {
			return nickname;
		}
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getBirthday() {
			return birthday;
		}
		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}
		public String getBloodType() {
			return bloodType;
		}
		public void setBloodType(String bloodType) {
			this.bloodType = bloodType;
		}
		public String getHobby() {
			return hobby;
		}
		public void setHobby(String hobby) {
			this.hobby = hobby;
		}
		public String getProfession() {
			return profession;
		}
		public void setProfession(String profession) {
			this.profession = profession;
		}
		public String getHometown() {
			return hometown;
		}
		public void setHometown(String hometown) {
			this.hometown = hometown;
		}
		public String getSchool() {
			return school;
		}
		public void setSchool(String school) {
			this.school = school;
		}
		public String getCompany() {
			return company;
		}
		public void setCompany(String company) {
			this.company = company;
		}
		public String getCellphone() {
			return cellphone;
		}
		public void setCellphone(String cellphone) {
			this.cellphone = cellphone;
		}
		public String getMailbox() {
			return mailbox;
		}
		public void setMailbox(String mailbox) {
			this.mailbox = mailbox;
		}
		public String getPersonalizedSignature() {
			return personalizedSignature;
		}
		public void setPersonalizedSignature(String personalizedSignature) {
			this.personalizedSignature = personalizedSignature;
		}
		public String getPersonalDescription() {
			return personalDescription;
		}
		public void setPersonalDescription(String personalDescription) {
			this.personalDescription = personalDescription;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public UserMaterial(String nickname, String sex, String birthday,
				String bloodType, String hobby, String profession,
				String hometown, String school, String company,
				String cellphone, String mailbox, String personalizedSignature,
				String personalDescription, int id) {
			super();
			this.nickname = nickname;
			this.sex = sex;
			this.birthday = birthday;
			this.bloodType = bloodType;
			this.hobby = hobby;
			this.profession = profession;
			this.hometown = hometown;
			this.school = school;
			this.company = company;
			this.cellphone = cellphone;
			this.mailbox = mailbox;
			this.personalizedSignature = personalizedSignature;
			this.personalDescription = personalDescription;
			this.id = id;
		}
		public UserMaterial() {
			super();
		}
		
}
