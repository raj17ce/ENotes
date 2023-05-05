package com.User;

import java.util.Date;

public class NoteDetails {
	private int noteID;
	private String title;
	private String content;
	private Date nDate;
	private UserDetails user;
	
	public NoteDetails(int noteID, String title, String content, Date nDate, UserDetails user) {
		super();
		this.noteID = noteID;
		this.title = title;
		this.content = content;
		this.nDate = nDate;
		this.user = user;
	}

	public NoteDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getNoteID() {
		return noteID;
	}

	public void setNoteID(int noteID) {
		this.noteID = noteID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getnDate() {
		return nDate;
	}

	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}

	public UserDetails getUser() {
		return user;
	}

	public void setUser(UserDetails user) {
		this.user = user;
	}
	
}
