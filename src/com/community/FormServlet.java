package com.community;

import java.io.IOException;
import java.lang.NullPointerException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.community.ConnectionManager;
import com.community.Zip;


@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	List<Zip> dataList;
       
   
    public FormServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("admin");
		MongoCollection<Document> collection = db.getCollection("Assessment");
		
		MongoCursor<Document> cursor = collection.find().iterator();
		
		List<Zip> dataList = new LinkedList<>();

		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();
			
			Zip zip = new Zip(d.getString("Title"), d.getString("City"),d.getString("Pin"), d.getString("Description"),d.getString("Email"),d.getString("Phone"));
			dataList.add(zip);
		}
		request.setAttribute("list", dataList);
		request.getRequestDispatcher("form.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MongoClient connection = ConnectionManager.getMongo();
    	MongoDatabase db = ConnectionManager.getDb("admin");
    	MongoCollection<Document> collection = db.getCollection("Assessment");

		MongoCursor<Document> cursor1 = collection.find().iterator();

		List<Zip> dataList = new LinkedList<>();
		
		String title=request.getParameter("title");
		String city=request.getParameter("city");
		String pin=request.getParameter("pin");
		String desc=request.getParameter("desc");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		Document document=new Document("Title",title)
				.append("City",city)
				.append("Pin", pin)
				.append("Description",desc)
				.append("Email", email)
				.append("Phone",phone);
		
		collection.insertOne(document);
		
		
		MongoCursor<Document> cursor11 = collection.find().iterator();

		while (cursor11.hasNext()) {
			Document d = (Document) cursor11.next();

			Zip zip = new Zip(d.getString("Title"), d.getString("City"),d.getString("Pin"), d.getString("Description"),d.getString("Email"),d.getString("Phone"));
			dataList.add(zip);
			
		request.setAttribute("list", dataList);
		}
		
		request.getRequestDispatcher("ad.jsp").forward(request, response);
	
}
}
