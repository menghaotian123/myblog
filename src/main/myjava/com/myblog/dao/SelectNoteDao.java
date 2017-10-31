package com.myblog.dao;

import com.myblog.model.Note;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by caosong on 2017/7/22.
 */
@Repository
public interface SelectNoteDao {
    List<Note> selectnote();
}
