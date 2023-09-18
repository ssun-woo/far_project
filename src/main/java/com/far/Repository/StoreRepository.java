package com.far.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.far.model.Member;
import com.far.model.Store;

public interface StoreRepository extends JpaRepository<Store, String> {
	
}
