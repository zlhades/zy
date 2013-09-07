package com.gogowise.dao.user;

import com.gogowise.dao.ModelDaoImpl;
import com.gogowise.domain.user.RoleType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("roleTypeDao")
public class RoleTypeImpl extends ModelDaoImpl<RoleType> implements RoleTypeDao {
    public List<RoleType> findAll(){
        return this.find("From RoleType ");
    }
}
