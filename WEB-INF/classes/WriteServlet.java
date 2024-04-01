import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.IOException;

public class WriteServlet extends HttpServlet {

    // 일단 Get으로 처리를 해 보고 나중에 POST로 갑니다!
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        res.setCharacterEncoding("UTF-8");
        String author = req.getParameter("author");
        String contents = req.getParameter("content");
        PrintWriter out = res.getWriter();
        out.println("<html><head><title>Write Servlet 요청 확인</title></head>");
        out.println("<body><h1>Write Servlet</h1></body>");
        out.println("<p>작성자: " + author + "</p>");
        out.println("<p>내용: " + contents + "</p>");
        out.println("</html>");
    }

}
