package com.far.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.far.dto.StoreDTO;

@Repository
public interface StoreRepository extends JpaRepository<StoreDTO, Integer>{
	
	//Page<StoreDTO> findAll();

	List<StoreDTO> findByDetailCate(String detailCate);
	
}
