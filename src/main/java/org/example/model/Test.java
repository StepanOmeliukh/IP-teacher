package org.example.model;

import lombok.*;

import javax.persistence.*;

@Data
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "test")
@Entity
public class Test {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "point")
    private String point;

    @Column(name = "regime")
    private String regime;

    @Column(name = "variety")
    private String varietyTest;

    @Column(name = "time")
    private Integer time;

    @ManyToOne()
    @JoinColumn(name = "user_id")
    private User user;
}
