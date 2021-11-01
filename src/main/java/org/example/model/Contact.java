package org.example.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Setter
@Getter
@Table(name = "contact")
@Entity
public class Contact {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Pattern(regexp = "^[A-Za-z]{2,29}$")
    @Column(name = "name")
    private String name;

    @Email(message = "Incorrect email")
    @NotBlank(message = "Email cannot be empty")
    @Column(unique = true, name = "email")
    private String email;

    @Pattern(regexp = "^\\d{10}$")
    @Column(unique = true, name = "phone")
    private String phone;

    @Column(name = "message")
    private String message;

    @ManyToOne()
    @JoinColumn(name = "user_id")
    private User user;
}
