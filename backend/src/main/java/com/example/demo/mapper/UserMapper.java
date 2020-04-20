package com.example.demo.mapper;

import java.util.List;

import com.example.demo.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
	@Select("SELECT * FROM user")
	List<User> selectAll();
}
