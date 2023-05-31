package com.example.stelle_guide.service;

import com.example.stelle_guide.dao.Discount_HistoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Discount_HistoryService {
    @Autowired
    Discount_HistoryDao discount_HistoryDao;
}
