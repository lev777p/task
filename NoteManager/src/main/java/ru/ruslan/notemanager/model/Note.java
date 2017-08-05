package ru.ruslan.notemanager.model;

import javax.persistence.*;

@Entity
@Table(name = "NOTES")
public class Note {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "NOTE_TITLE")
    private String noteTitle;

    @Column(name = "NOTE_AUTHOR")
    private String noteAuthor;

    @Column(name = "NOTE_DATA")
    private String data;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNoteTitle() {
        return noteTitle;
    }

    public void setNoteTitle(String noteTitle) {
        this.noteTitle = noteTitle;
    }

    public String getNoteAuthor() {
        return noteAuthor;
    }

    public void setNoteAuthor(String noteAuthor) {
        this.noteAuthor = noteAuthor;
    }

    public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	@Override
    public String toString() {
        return "Note{" +
                "id=" + id +
                ", noteTitle='" + noteTitle + '\'' +
                ", noteAuthor='" + noteAuthor + '\'' +
                ", data=" + data +
                '}';
    }
}
