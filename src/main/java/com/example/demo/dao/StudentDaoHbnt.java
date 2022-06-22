package com.example.demo.dao;

import com.example.demo.models.Student;
import com.example.demo.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class StudentDaoHbnt {
    /**
     * Save Student
     *
     * @param student
     */
    public void insertStudent(Student student) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(student);
            // commit transaction
            transaction.commit();

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }
    /**
     * Update Student
     *
     * @param student
     */
    public void updateStudent(Student student) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update(student);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    /**
     * Delete Student
     *
     * @param id
     */
    public void deleteStudent(Student std) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // Delete a student object
            Student student = session.get(Student.class, std.getId());
            if (student != null) {
                session.delete(student);
                System.out.println("student is deleted");
            }
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    /**
     * Get Student By ID
     *
     * @param id
     * @return
     */
    public Student getStudent(Student std) {
        Transaction transaction = null;
        Student student = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an student object
            student = session.get(Student.class, std.getId());
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return student;
    }
    /**
     * Get all Students_old
     *
     * @return
     */
    @SuppressWarnings("unchecked")
    public List<Student> listAllStudents() {
        Transaction transaction = null;
        List<Student> listOfStudent = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            listOfStudent = session.createQuery("from student").getResultList();
            transaction.commit();

        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return listOfStudent;
    }
}