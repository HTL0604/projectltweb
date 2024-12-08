package ute.shop.services.implement;

import java.util.List;

import ute.shop.dao.IUserDao;
import ute.shop.dao.implement.UserDaoImpl;
import ute.shop.entity.Store;
import ute.shop.entity.User;
import ute.shop.services.IStoreService;
import ute.shop.services.IUserService;
import ute.shop.dao.IStoreDao;
import ute.shop.dao.implement.StoreDaoImpl;


public class StoreServiceImpl implements IStoreService {

	IStoreDao storeDao = new StoreDaoImpl();
	@Override
	public void insert(Store store) {
		// Update the user information in the database
		storeDao.insert(store);

	}

	@Override
	public void update(Store store) {
		// Update the user information in the database
		storeDao.update(store);

	}

	@Override
	public void delete(int storeId) throws Exception{
		// Delete the user by ID
		storeDao.delete(storeId);

	}

	@Override
	public List<Store> findAll() {
		// Return all users from the database
		return storeDao.findAll();
	}


	@Override
	public Store findById(int storeId) {
		// Find and return a user by ID
		return storeDao.findById(storeId);
	}

}
