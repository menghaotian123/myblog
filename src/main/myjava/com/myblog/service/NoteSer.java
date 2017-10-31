package com.myblog.service;

import com.myblog.model.Note;

import java.util.List;

/**
 * Created by caosong on 2017/8/2.
 */
public interface NoteSer {
    List<Note> articalOne(int note_id);
    String findTitle(int note_id);
    Note selectnote(int id);
}
