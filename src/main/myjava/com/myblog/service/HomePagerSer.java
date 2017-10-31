package com.myblog.service;

import com.myblog.model.Note;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by caosong on 2017/7/22.
 */

public interface HomePagerSer {

    public List<Note> selectnote();
}
