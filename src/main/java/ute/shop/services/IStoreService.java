package ute.shop.services;

import java.util.List;

import ute.shop.entity.Store;
import ute.shop.entity.User;

public interface IStoreService {
	void insert(Store store);
	// Update existing user
		void update(Store store);

		// Delete a user by their ID
		void delete(int storeId) throws Exception;

		// Get all users
		List<Store> findAll();

		// Find a user by their ID
		Store findById(int storeId);
}
