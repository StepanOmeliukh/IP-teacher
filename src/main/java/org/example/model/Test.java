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
    private Integer point;

    @Column(name = "regime")
    private String regime;

//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "test_id")
    @Column(name = "variety")
    private String varietyTest;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

}
