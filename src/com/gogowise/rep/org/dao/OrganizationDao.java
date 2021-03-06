package com.gogowise.rep.org.dao;

import com.gogowise.rep.ModelDao;
import com.gogowise.rep.Pagination;
import com.gogowise.rep.org.enity.Organization;

import java.util.List;


public interface OrganizationDao extends ModelDao<Organization> {

    public Organization findOrganizationByOrganizationName(String name);

    public Organization findOngoingOrg(Integer userId);

    public List<Organization> findOngoingForAdmin();

    public Organization findByResId(Integer userId);


    public void updateOrgContactInfo(Organization oldOrg , Organization newOrg);

    public List<Organization> findLatestOrgs(Pagination pagination);

    public List<Organization> searchOrgs(String searchStr , Pagination pagination);

    public Organization findBySecDomain(String secDomain);
}
