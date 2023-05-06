package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.User.NoteDetails;

public class NoteDAO {
	private Connection con;

	public NoteDAO(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean addNote(NoteDetails nd) {
		boolean f = false;
		
		try {
			String query = "insert into note(title,content,userid) values(?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,nd.getTitle());
			ps.setString(2, nd.getContent());
			ps.setInt(3, nd.getUser().getUserID());
			
			int rowsAffected = ps.executeUpdate();
			
			if(rowsAffected == 1) {
				f = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public List<NoteDetails> getNotes(int userID) {
		
		ArrayList<NoteDetails> notes = new ArrayList<NoteDetails>();
		
		try {
			String query = "select * from note where userid=? order by noteid DESC";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, userID);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				NoteDetails nd = new NoteDetails();
				nd.setNoteID(rs.getInt("noteid"));
				nd.setTitle(rs.getString("title"));
				nd.setContent(rs.getString("content"));
				nd.setnDate(rs.getTimestamp("date"));
				notes.add(nd);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return notes;
	}
	
	public NoteDetails getNote(int noteID) {
		NoteDetails note = new NoteDetails();
		
		try {
			String query = "select * from note where noteid=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, noteID);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				note.setNoteID(rs.getInt("noteid"));
				note.setTitle(rs.getString("title"));
				note.setContent(rs.getString("content"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return note;
	}
	
	public boolean editNote(NoteDetails nd) {
		boolean f = false;
		
		try {
			String query = "update note set title=?,content=? where noteid=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, nd.getTitle());
			ps.setString(2, nd.getContent());
			ps.setInt(3, nd.getNoteID());
			
			int rowsAffected = ps.executeUpdate();
			
			if(rowsAffected == 1) {
				f = true;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public boolean deleteNote(int noteID) {
		boolean f = false;
		
		try {
			String query = "delete from note where noteid=?";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1, noteID);
			
			int rowsAffected = ps.executeUpdate();
			
			if(rowsAffected == 1) {
				f = true;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
}
