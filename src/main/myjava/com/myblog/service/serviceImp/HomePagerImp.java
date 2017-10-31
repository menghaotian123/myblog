package com.myblog.service.serviceImp;

import com.myblog.dao.SelectNoteDao;
import com.myblog.model.Note;
import com.myblog.service.HomePagerSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by caosong on 2017/7/22.
 */
@Service("HomePager")
public class HomePagerImp implements HomePagerSer {

    @Autowired
    private SelectNoteDao selectNote;
    public List<Note> selectnote() {
        return selectNote.selectnote();
    }
}
