package ru.ruslan.notemanager.dao;

import ru.ruslan.notemanager.model.Note;

import java.util.List;

public interface NoteDao {
    public void addNote(Note note);

    public void updateNote(Note note);

    public void removeNote(int id);

    public Note getNoteById(int id);

    public List<Note> listNotes();
}
