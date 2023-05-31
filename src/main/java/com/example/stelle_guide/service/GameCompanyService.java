package com.example.stelle_guide.service;

import com.example.stelle_guide.dao.GameCompanyDao;
import com.example.stelle_guide.pojo.GameCompany;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GameCompanyService {
    @Autowired
    GameCompanyDao gameCompanyDao;
}
