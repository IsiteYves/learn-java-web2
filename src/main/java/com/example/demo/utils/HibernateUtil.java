package com.example.demo.utils;
import java.util.Properties;

import com.example.demo.models.Course;
import com.example.demo.models.CourseAssignment;
import com.example.demo.models.Student;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
/**
 * Java based configuration
 * @author Yves Isite
 *
 */
public class HibernateUtil {
    private static SessionFactory sessionFactory;
    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();
                Properties settings = new Properties();
                settings.put(Environment.DRIVER, "org.postgresql.Driver");
                settings.put(Environment.URL, "jdbc:postgresql://localhost:5432/servlet_crud?characterEncoding=utf8");
                settings.put(Environment.USER, "postgres");
                settings.put(Environment.PASS, "81esyvprog17");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.PostgreSQLDialect");
                settings.put(Environment.SHOW_SQL, "true");
                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
                settings.put(Environment.HBM2DDL_AUTO, "create-drop");
                //settings.put(Environment.HBM2DDL_AUTO, "update");
                configuration.setProperties(settings);
                configuration.addAnnotatedClass(Student.class);
//                configuration.addAnnotatedClass(Bed.class);
                configuration.addAnnotatedClass(Course.class);
                configuration.addAnnotatedClass(CourseAssignment.class);
//                configuration.addAnnotatedClass(BedAssignment.class);
//                configuration.addAnnotatedClass(AuditTrail.class);

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties()).build();
                System.out.println("Hibernate Java Config serviceRegistry created");
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
                return sessionFactory;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sessionFactory;
    }
}