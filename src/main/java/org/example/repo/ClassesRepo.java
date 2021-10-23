package org.example.repo;

import org.example.model.Test;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClassesRepo extends JpaRepository<Test, Long> {

}