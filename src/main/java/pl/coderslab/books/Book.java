package pl.coderslab.books;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.ISBN;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "books")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ISBN
    private String isbn;
    @NotBlank
//    @Size(min=1, message = "field cannot be empty")
    private String title;
    @Size(min=1, message = "field cannot be empty")
    private String publisher;
    @Size(min=1, message = "field cannot be empty")
    private String author;



}
