package com.gogowise.rep.user.dao;

import com.gogowise.rep.ModelDao;
import com.gogowise.rep.user.enity.UserMatters;


public interface UserMattersDao extends ModelDao<UserMatters> {

    public UserMatters  findByUser(Integer userID);
}
