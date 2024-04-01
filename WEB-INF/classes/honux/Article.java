package honux;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Article {
    private String author;
    private String contents;
    private LocalDateTime date = LocalDateTime.now();

    public Article(String author, String contents) {
        this.author = author;
        this.contents = contents;
    }

    public String getAuthor() {
        return author;
    }

    public String getContents() {
        return contents;
    }

    public String getCreate() {
        // 1980년 4월 20일 시 분 초
        return date.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH시 mm분 ss초"));
    }
}
