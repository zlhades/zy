package com.gogowise.dao.course;

import com.gogowise.dao.ModelDao;
import com.gogowise.urlfetch.sk.ClassInfo;
import com.gogowise.domain.Pagination;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: AN
 * Date: 13-4-6
 * Time: 下午8:21
 * To change this template use File | Settings | File Templates.
 */
public interface ClassInfoDao extends ModelDao<ClassInfo> {
      public List<ClassInfo> findClassIfoByPage( Pagination pagination);
}