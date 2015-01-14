/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import DAL.Category;
import DAL.Comment;
import DAL.NewHibernateUtil;
import DAL.Spel;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author FxA
 */
public class SpelServices {
      // public static Session session = NewHibernateUtil.getSessionFactory().openSession();
    
    public static List<Spel> GetAllSpelletjes(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query q = session.createQuery("from Spel");
        return q.list();
    }
    
    //DEWELKE MOET IK NEMEN???
    
    public static ArrayList<Spel> getAllSpelletjes(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Spel");
        return (ArrayList<Spel>)query.list();
    }
    
    public static Spel saveSpel(Spel spel){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.saveOrUpdate(spel);
        session.getTransaction().commit();
        session.close();
        return spel;
    }
    
    public static Comment saveComment(Comment comment){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.saveOrUpdate(comment);
        session.getTransaction().commit();
        session.close();
        return comment;
    }
    
    public static void deleteSpel(int Id){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Spel spel where spel.id="+Id);
        Spel spel = (Spel)query.uniqueResult();
        session.beginTransaction();
        session.delete(spel);
        session.getTransaction().commit();        
    }
    
    public static Spel getSpel(int Id){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Spel spel where spel.id="+Id);
        return (Spel)query.uniqueResult();
    }
    
    public static ArrayList<Category> getAllCategories(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Category");
        return (ArrayList<Category>)query.list();
    }
    
    public static Category getCategory(int Id){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Category category where category.id="+Id);
        return (Category)query.uniqueResult();
    }
    
    public static Comment getComment(int Id){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Category category where category.id="+Id);
        return (Comment)query.uniqueResult();
    }
    
    public static Category getCategoryName(int Id){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        // ("select e.name, a.city from Employee e " + "INNER JOIN e.address a");
        Query query = session.createQuery("select s.category from Spel as s where s.id="+Id);
        return (Category) query.uniqueResult();
    }
    
}
