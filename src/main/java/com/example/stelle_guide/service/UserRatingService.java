package com.example.stelle_guide.service;

import com.example.stelle_guide.dao.UserRatingDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserRatingService {
    @Autowired
    UserRatingDao userRatingDao;
}
