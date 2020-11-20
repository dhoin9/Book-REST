package pl.coderslab.books;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Primary
public class JpaBookService implements BookService {

    private final BookRepository bookRepository;
    public JpaBookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    @Override
    public Book get(Long id) {
      return bookRepository.getById(id);
    }

    @Override
    public List<Book> getBooks() {
        return bookRepository.findAll();
    }

    @Override
    public void add(Book book) {
        bookRepository.save(book);

    }

    @Override
    public void delete(Long id) {
       bookRepository.deleteById(id); }


    @Override
    public void update(Book book) {
        bookRepository.save(book);
    }
}

