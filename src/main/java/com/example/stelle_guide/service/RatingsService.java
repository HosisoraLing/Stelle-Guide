package com.example.stelle_guide.service;

import com.example.stelle_guide.dao.RatingsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingsService {
    @Autowired
    RatingsDao ratingsDao;
}
