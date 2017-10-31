package com.myblog.dao;

import com.myblog.model.Note;
import com.myblog.model.SimpleArtical;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * Created by caosong on 2017/8/30.
 */
@Repository
public interface AdminChangeArticalDao {
    void addArtical(Note note);
}
