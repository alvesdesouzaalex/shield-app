package com.shield.shield_app.repository

import com.shield.shield_app.model.Person
import org.springframework.stereotype.Repository

@Repository
class PersonRepository {
    private val persons = mutableMapOf<Int, Person>()

    fun findById(id: Int): Person? = persons[id]

    fun save(person: Person): Person {
        persons[person.id] = person
        return person
    }

}