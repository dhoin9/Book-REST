package pl.coderslab.books;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class ManageBookController {

    private final BookService bookService;

    public ManageBookController(BookService bookService) {
        this.bookService = bookService;
    }
    @GetMapping("/all")

    public String showPosts(Model model) {

        List<Book> books = bookService.getBooks();

        model.addAttribute("books", books);

        return "/books/all";

    }
}
