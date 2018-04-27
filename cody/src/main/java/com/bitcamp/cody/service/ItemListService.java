package com.bitcamp.cody.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bitcamp.cody.dao.ItemDao;
import com.bitcamp.cody.dto.ItemDto;

public class ItemListService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private ItemDao dao;

	public List<ItemDto> getItemList() {
		dao = sqlSessionTemplate.getMapper(ItemDao.class);

		List<ItemDto> list = dao.selectList();
		
		return null;
	}

	public ItemDto getListView(String idx) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ItemDto> getListSearch(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
