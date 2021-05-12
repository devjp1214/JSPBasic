package forward.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Forward")
public class Forward extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Forward() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		System.out.println("1번화면에서 넘어온 값" + id);
		
		//입력값 바탕으로 새로운 값을 가지고 갈게 있다 >> forward, 다음 페이지에 새로운 값을 가지고 갈게 없다
		//세번째 화면에 사용할 값을 강제로 저장하려면 request를 이용합니다.
		
		request.setAttribute("name", "홍길동");
		//보통 1번화면에서 가져온 정보를 이곳 서블릿에서 db와 연동하고 forward_ex04(3번쨰)페이지에서는 새로운 데이터 출력
		
		//순수한 자바코드로 포워드 작성
		RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex04.jsp"); //()안에 경로 작성
		dp.forward(request, response);
		
		// response.sendRedirect("actionTag/forward_ex04.jsp"); 는 값이 전송 안됨!!! (리다이렉트는 한번 보내고 끝)
				
	}
}
