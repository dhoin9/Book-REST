package pl.coderslab.books;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@Primary
public class JpaBookService implements BookService {

    private final BookRepository bookRepository;
    private EntityManager entityManager;
    public JpaBookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @Override
    public List<Book> getBooks() {
        return bookRepository.findAll();
    }

    @Override
    public void add(Book book) {
        entityManager.persist(book);
    }

    @Override
    public void delete(Long id) {


    }

    @Override
    public void update(Book book) {

    }
}

