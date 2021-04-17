package com.csw.service;

import com.csw.dao.AdminDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

}
