package ru.ruslan.notemanager.controller;

import ru.ruslan.notemanager.model.Note;
import ru.ruslan.notemanager.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoteController {
    private NoteService noteService;

    @Autowired(required = true)
    public void setNoteService(NoteService noteService) {
        this.noteService = noteService;
    }
    @RequestMapping(value = "/")
	public String index() {
		return "../index";
	}
    
    @RequestMapping(value = "calendar")
 	public String calendar() {
 		return "calendar";
 	}

    @RequestMapping(value = "notes", method = RequestMethod.GET)
    public String listNotes(Model model){
        model.addAttribute("note", new Note());
        model.addAttribute("listNotes", this.noteService.listNotes());

        return "notes";
    }

    @RequestMapping(value = "/notes/add", method = RequestMethod.POST)
    public String addNote(@ModelAttribute("note") Note note){
        if(note.getId() == 0){
            this.noteService.addNote(note);
        }else {
            this.noteService.updateNote(note);
        }

        return "redirect:/notes";
    }

    @RequestMapping("/remove/{id}")
    public String removeNote(@PathVariable("id") int id){
        this.noteService.removeNote(id);

        return "redirect:/notes";
    }

    @RequestMapping("edit/{id}")
    public String editNote(@PathVariable("id") int id, Model model){
        model.addAttribute("note", this.noteService.getNoteById(id));
        model.addAttribute("listNotes", this.noteService.listNotes());

        return "notes";
    }

    @RequestMapping("notedata/{id}")
    public String noteData(@PathVariable("id") int id, Model model){
        model.addAttribute("note", this.noteService.getNoteById(id));

        return "notedata";
    }
}
