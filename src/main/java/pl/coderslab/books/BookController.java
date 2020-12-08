package pl.coderslab.books;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Primary
@RequestMapping("/books")
public class BookController {
//    private static final Logger logger = LoggerFactory.getLogger(SampleLog.class);
    private BookService bookService;
    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @DeleteMapping("/{id}")
    public void deleteBook(@PathVariable Long id){
        bookService.delete(id);
    }

    @GetMapping("/{id}")
    public Book getBook(@PathVariable long id){
       return bookService.get(id);
    }

    @GetMapping("")
    public @ResponseBody
    List<Book> getList() {
        return bookService.getBooks();
    }
    @PostMapping("/add")
    void addBook(@RequestBody Book book){
        bookService.add(book);
    }

//    @RequestMapping("/helloBook")
//    public Book helloBook() {
//        return new Book(1L, "9788324631766", "Thinking in Java",
//                "Bruce Eckel", "Helion", "programming");
//    }

}

