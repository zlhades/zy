package com.gogowise.dao;

import com.gogowise.dao.org.ChangeResponserHistoryDao;
import com.gogowise.dao.user.BaseUserDao;
import com.gogowise.domain.BaseUser;
import com.gogowise.domain.Organization;
import com.gogowise.utils.Constants;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.util.Calendar;


public class OrgTest {

    private ChangeResponserHistoryDao.OrganizationDao organizationDao;
    private BaseUserDao baseUserDao;


    @Before
    public void setUp() throws Exception {
        String[] config = new String[]{
                "applicationContext.xml"};

        ApplicationContext ctx = new ClassPathXmlApplicationContext(config);
        organizationDao = (ChangeResponserHistoryDao.OrganizationDao) ctx.getBean("organizationDao");
        baseUserDao = (BaseUserDao) ctx.getBean("baseUserDao");
    }

    @After
    public void tearDown() throws Exception {

    }


    @Test
    public void save() {
        Organization org = organizationDao.findOrganizationByOrganizationName(Constants.ZHI_YUAN_SCHOOL_NAME);
        if (org != null) return;
        org = new Organization();
        org.setSchoolName(Constants.ZHI_YUAN_SCHOOL_NAME);
        BaseUser res = baseUserDao.findByEmail(Constants.ORG_CONFIRM_EMAIL);
        org.setResponsiblePerson(res);
        org.setMemberSize(5);
        org.setConfirmed(true);
        org.setCreateDate(Calendar.getInstance());
        organizationDao.persistAbstract(org);

    }

//    @Test
    public void testPpt() throws IOException {
        for (int i = 0 ; i < 100 ; i++) {
            String filePath = "D:\\Temp\\Test\\PptFormatConverter.exe  D:\\Temp\\Test\\d.ppt D:\\Temp\\Test\\123"+i+" jpg ";
//        String realPath = ServletActionContext.getServletContext().getRealPath(filePath);
            String cmd = "cmd /c start " + filePath;
            Process ps = Runtime.getRuntime().exec(filePath);
        }
    }

    public BaseUserDao getBaseUserDao() {
        return baseUserDao;
    }

    public void setBaseUserDao(BaseUserDao baseUserDao) {
        this.baseUserDao = baseUserDao;
    }

    public ChangeResponserHistoryDao.OrganizationDao getOrganizationDao() {
        return organizationDao;
    }

    public void setOrganizationDao(ChangeResponserHistoryDao.OrganizationDao organizationDao) {
        this.organizationDao = organizationDao;
    }
}
