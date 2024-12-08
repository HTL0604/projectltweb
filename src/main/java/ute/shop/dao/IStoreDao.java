package ute.shop.dao;

import java.util.List;

import ute.shop.entity.Store;

public interface IStoreDao {
	public void insert(Store store);
    public void update(Store store);
    public void delete(int storeId) throws Exception;
    public Store findById(int storeId);

    
    public List<Store> findAll();
}


