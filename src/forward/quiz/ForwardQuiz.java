package forward.quiz;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ForwardQuiz")
public class ForwardQuiz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ForwardQuiz() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String math = request.getParameter("math");
		String eng = request.getParameter("eng");
		
		int s1 = Integer.parseInt(kor);
		int s2 = Integer.parseInt(math);
		int s3 = Integer.parseInt(eng);
		
		int avg = (s1 + s2 + s3)/3;
		
		
		request.setAttribute("user_name", name);
		request.setAttribute("score", String.valueOf(avg));
		
		if(avg >= 60) {
			RequestDispatcher dp = request.getRequestDispatcher("actionTag/quiz01_ok.jsp");
			dp.forward(request, response);
		} else {
			RequestDispatcher dp = request.getRequestDispatcher("actionTag/quiz01_no.jsp"); 
			dp.forward(request, response);
		}
		
		
	}

}
