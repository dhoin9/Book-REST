package pl.coderslab.books;

import java.util.List;

public interface BookService {
    public List<Book> getBooks();
    public void add(Book book);
    public void delete(Long id);
    public void update(Book book);
}
