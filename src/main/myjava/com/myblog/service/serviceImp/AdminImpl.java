package com.myblog.service.serviceImp;

import com.myblog.dao.AdminChangeArticalDao;
import com.myblog.model.Note;
import com.myblog.service.AdminSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by caosong on 2017/8/30.
 */
@Service("AdminSer")
public class AdminImpl implements AdminSer {

    @Autowired
    private AdminChangeArticalDao adminChangeArticalDao;
    public void addArtical(Note note) {
     adminChangeArticalDao.addArtical(note);
    }
}
