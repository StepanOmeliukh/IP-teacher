package org.example.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.List;

@Data
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users")
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Email(message = "Incorrect email")
    @NotBlank(message = "Email cannot be empty")
    @Column(unique = true, name = "email")
    private String email;

    @NotBlank(message = "incorrect password")
    @Transient
    @Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$", message = "password must have minimum eight characters, at least one letter and one number")
    private String password;

    @Column(name = "password")
    private String encryptedPassword;

    @Pattern(regexp = "[A-Z][a-z]+(-[A-Z][a-z]+)?", message = "Incorrect name!")
    @Column(name = "first_name")
    private String firstName;

    @Pattern(regexp = "[A-Z][a-z]+(-[A-Z][a-z]+)?", message = "Incorrect last name!")
    @Column(name = "last_name")
    private String lastName;

    @OneToMany(cascade = CascadeType.ALL,
            mappedBy = "user")
    private List<Test> tests;
}