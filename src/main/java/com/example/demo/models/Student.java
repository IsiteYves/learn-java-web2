package com.example.demo.models;

import jakarta.persistence.*;

@Entity()
@Table(name = "student")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name", nullable = false, length = 150)
    private String firstName;

    @Column(name = "last_name", nullable = false, length = 130)
    private String lastName;

    @Column(nullable = false, length = 10)
    private String gender;

    public Student() {
    }

    public Student(Long id) {
        this.id = id;
    }

    public Student(Long id, String firstName, String lastName, String gender) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
    }

    public Student(String firstName, String lastName, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
    }

    public Long getId() {
        return this.id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
