package model;

public class PersonVO {
	private String name;
	private int age;
	
	public PersonVO() {
	}
	
	public PersonVO(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}
}
