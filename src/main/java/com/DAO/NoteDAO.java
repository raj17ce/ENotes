package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
}
