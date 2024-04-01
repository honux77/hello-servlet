package honux;

import java.time.LocalDate;

public class Article {
    private String author;
    private String contents;
    private LocalDate date = LocalDate.now();

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

    public String getFormattedDate() {
        // 1980년 4월 20일
        return date.getYear() + "년 " + date.getMonthValue() + "월 " + date.getDayOfMonth() + "일";
    }
}
