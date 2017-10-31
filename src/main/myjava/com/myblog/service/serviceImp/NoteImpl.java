package com.myblog.service.serviceImp;

import com.myblog.dao.ArticalDao;
import com.myblog.model.Note;
import com.myblog.service.NoteSer;
import org.aspectj.weaver.ast.Not;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by caosong on 2017/8/2.
 */
@Service("NoteSer")
public class NoteImpl implements NoteSer {

    @Autowired
    private ArticalDao articalDao;
    public List<Note> articalOne(int id) {
        return articalDao.loadArtical(id);
    }

    public String findTitle(int note_id) {
        return articalDao.findTitle(note_id);
    }

    public Note selectnote(int id) {
        return articalDao.selectnote(id);
    }

}
