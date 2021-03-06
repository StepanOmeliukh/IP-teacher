package org.example.model;

import lombok.*;
import org.example.model.util.Role;
import org.example.model.util.Status;

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

    @Column(name = "role")
    @Enumerated(EnumType.STRING)
    private Role role;

    @Column(name = "status")
    @Enumerated(EnumType.STRING)
    private Status status;

    @Column(name = "count_of_classes_control")
    private Integer CountClassesControl = 3;

    @Column(name = "count_of_no_classes_control")
    private Integer CountNoClassesControl = 3;

    @Column(name = "count_of_under_classes_control")
    private Integer CountUnderClassesControl = 3;

    @OneToMany(mappedBy = "user")
    private List<Test> tests;

    @OneToMany(mappedBy = "user")
    private List<Contact> contacts;
}