package honux;

import java.util.LinkedList;
import java.util.List;

public class SimpleDB {

    private static SimpleDB instance = new SimpleDB();
    private LinkedList<Article> articles = new LinkedList<>();

    public static SimpleDB getInstance() {
        return instance;
    }

    private SimpleDB() {
        articles.add(new Article("김철수", "안녕하세요. 첫 게시글입니다."));
        articles.add(new Article("김영희", "두 번째 게시글입니다."));
        articles.add(new Article("홍길동", "세 번째 게시글입니다."));
    }

    public void add(Article article) {
        articles.addFirst(article);
    }

    public List<Article> getArticles() {
        return articles;
    }

    public Article getArticle(int index) {
        return articles.get(index);
    }
}
