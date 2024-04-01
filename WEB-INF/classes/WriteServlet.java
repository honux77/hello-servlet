import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.IOException;

import honux.Article;
import honux.SimpleDB;

public class WriteServlet extends HttpServlet {

    // 일단 Get으로 처리를 해 보고 나중에 POST로 갑니다!
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        res.setCharacterEncoding("UTF-8");
        String author = req.getParameter("author");
        String contents = req.getParameter("content");

        SimpleDB db = (SimpleDB) getServletContext().getAttribute("SimpleDB");
        db.add(new Article(author, contents));
        // redirect to index.jsp
        res.sendRedirect("index.jsp");
    }

}
