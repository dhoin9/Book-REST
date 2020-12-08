package pl.coderslab.books;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class ManageBookController {

    private final BookService bookService;

    public ManageBookController(BookService bookService) {
        this.bookService = bookService;
    }
    @GetMapping("/all")
    public String showBooks(Model model) {
        List<Book> books = bookService.getBooks();
        model.addAttribute("books", books);
        return "/books/all";
    }
    @GetMapping("/add")
    public String addBook(Model model) {
        model.addAttribute("book", new Book());
        return "/books/add";}


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String performForm(@Valid Book book, BindingResult result) {
        if(result.hasErrors()){
            System.out.println(result);
            return "/books/add";
        }else{
            System.out.println("empty");
            bookService.add(book);}
        return "redirect:/admin/books/all";}

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteBook(@PathVariable long id) {
        bookService.delete(id);
        return "redirect:/admin/books/all";
    }
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editBook(@PathVariable long id,Model model) {
        model.addAttribute("book", bookService.get(id));
        return "books/edit";
    }
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editBook(@Valid Book book, BindingResult result){
        if(result.hasErrors()){
            return "/books/edit";
        }else{
            bookService.add(book);}
        return "redirect:/admin/books/all";}

    @RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
    public String detailsBook(@PathVariable long id,Model model) {
        model.addAttribute("book", bookService.get(id));
        return "books/details";
    }



}
