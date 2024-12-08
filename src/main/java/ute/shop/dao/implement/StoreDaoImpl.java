	package ute.shop.dao.implement;


	import java.util.List;

	import jakarta.persistence.EntityManager;
	import jakarta.persistence.EntityTransaction;
	import jakarta.persistence.TypedQuery;

	import ute.shop.config.JPAConfig;
import ute.shop.dao.IStoreDao;
import ute.shop.dao.IUserDao;
import ute.shop.entity.Store;
import ute.shop.entity.User;

	public class StoreDaoImpl implements IStoreDao {

	    @Override
	    public void insert(Store store) {
	        EntityManager em = JPAConfig.getEntityManager();
	        EntityTransaction trans = em.getTransaction();
	        try {
	            trans.begin();
	            em.persist(store);
	            trans.commit();
	        } catch (Exception e) {
	            trans.rollback();
	            throw new RuntimeException("Error inserting store", e);
	        } finally {
	            em.close();
	        }
	    }

	    @Override
	    public void update(Store store) {
	        EntityManager em = JPAConfig.getEntityManager();
	        EntityTransaction trans = em.getTransaction();
	        try {
	            trans.begin();
	            em.merge(store);
	            trans.commit();
	        } catch (Exception e) {
	            trans.rollback();
	            throw new RuntimeException("Error updating store", e);
	        } finally {
	            em.close();
	        }
	    }

	    @Override
	    public void delete(int storeId) {
	        EntityManager em = JPAConfig.getEntityManager();
	        EntityTransaction trans = em.getTransaction();
	        try {
	            trans.begin();
	            Store store = em.find(Store.class, storeId);
	            if (store != null) {
	                em.remove(store);
	            } else {
	                throw new Exception("Store not found for deletion");
	            }
	            trans.commit();
	        } catch (Exception e) {
	            trans.rollback();
	            throw new RuntimeException("Error deleting Store", e);
	        } finally {
	            em.close();
	        }
	    }

	    @Override
	    public List<Store> findAll() {
	        EntityManager em = JPAConfig.getEntityManager();
	        try {
	            TypedQuery<Store> query = em.createQuery("SELECT s FROM Store s", Store.class);
	            return query.getResultList();
	        } catch (Exception e) {
	            throw new RuntimeException("Error finding all stores", e);
	        } finally {
	            em.close();
	        }
	    }


	    @Override
	    public Store findById(int storeId) {
	        EntityManager em = JPAConfig.getEntityManager();
	        try {
	            return em.find(Store.class, storeId);
	        } catch (Exception e) {
	            throw new RuntimeException("Error finding Store by ID", e);
	        } finally {
	            em.close();
	        }
	    }
	}

