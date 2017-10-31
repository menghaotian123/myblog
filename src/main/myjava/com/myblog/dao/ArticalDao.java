package com.myblog.dao;

import com.myblog.model.Note;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by caosong on 2017/8/2.
 */
@Repository
public interface ArticalDao {
    List<Note> loadArtical(int id);
    String findTitle(int id);
    Note selectnote(int id);
}
