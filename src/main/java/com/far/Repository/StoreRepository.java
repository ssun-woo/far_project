package com.far.Repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.far.model.Store;

@Repository
public interface StoreRepository extends JpaRepository<Store, String>{
	Page<Store> findAllByOrderByStoreNameAsc(Pageable pageable);
}
