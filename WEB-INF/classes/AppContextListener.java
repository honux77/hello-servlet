import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import honux.SimpleDB;

public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext ctx = sce.getServletContext();
        SimpleDB db = SimpleDB.getInstance();
        ctx.setAttribute("SimpleDB", db);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // 필요한 경우, 애플리케이션 종료 시 자원 해제 로직 구현
    }
}
