package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HomeController
 */
public class FormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	
    	String title = request.getParameter("title");
    	String first_name = request.getParameter("first_name");
    	String last_name = request.getParameter("last_name");
    	String email_address = request.getParameter("email_address");
    	String address_line_1 = request.getParameter("address_line_1");
    	String address_line_2 = request.getParameter("address_line_2");
    	String city = request.getParameter("city");
    	String postcode = request.getParameter("postcode");
    	String tel_number = request.getParameter("tel_number");
    	Customer customer = new Customer (title, first_name, last_name, email_address, address_line_1, address_line_2, city, postcode, tel_number);
    	DatabaseManager dbManager = new DatabaseManager();
    	String result = dbManager.insert(customer);
    	response.getWriter().print(result);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(request, response);
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//  TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// check form inputs
		
		doGet(request, response);
	}

}
