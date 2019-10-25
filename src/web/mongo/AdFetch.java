package web.mongo;

import java.io.IOException;
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


import web.mongo.db.ConnectionManager;
import web.mongo.db.modal.Info;



@WebServlet("/AdFetch")
public class AdFetch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdFetch() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("advertisement");
		MongoCollection<Document> collection = db.getCollection("ad");


		String adtype = request.getParameter("adoption");

		String title = request.getParameter("title");
		String city = request.getParameter("city");
		String postal = request.getParameter("postal");
		String description = request.getParameter("description");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String ext = request.getParameter("ext");
		String contact = request.getParameter("contactname");
		phone = ext + "-" + phone;
		System.out.println(adtype);

		Document document = new Document("option", adtype).append("title", title).append("city", city).append("postal", postal)
				.append("desc", description).append("email", email).append("phone",phone).append("contact",contact);
		collection.insertOne(document);


		MongoCursor<Document> cursor = collection.find().limit(30).iterator();

		List<Info> dataList = new LinkedList<>();


		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();
		
			Info b = new Info();
			b.setAdtype(toCamelCase(d.getString("option")));
			b.setPost_title(d.getString("title"));
			b.setCity(d.getString("city"));
			b.setPostal(d.getString("postal"));
			b.setContactname(d.getString("contact"));
			b.setDescription(d.getString("desc"));
			b.setEmail(d.getString("email"));
			b.setPhone(d.getString("phone"));
			dataList.add(b);
		}
	
		request.setAttribute("list", dataList);
		request.getRequestDispatcher("final.jsp").forward(request, response);
		
	}
public static String toCamelCase(String inputString) {
    String result = "";
    if (inputString.length() == 0) {
        return result;
    }
    char firstChar = inputString.charAt(0);
    char firstCharToUpperCase = Character.toUpperCase(firstChar);
    result = result + firstCharToUpperCase;
    for (int i = 1; i < inputString.length(); i++) {
        char currentChar = inputString.charAt(i);
        char previousChar = inputString.charAt(i - 1);
        if (previousChar == ' ') {
            char currentCharToUpperCase = Character.toUpperCase(currentChar);
            result = result + currentCharToUpperCase;
        } else {
            char currentCharToLowerCase = Character.toLowerCase(currentChar);
            result = result + currentCharToLowerCase;
        }
    }
    return result;
}
}
