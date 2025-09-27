package com.shield.shield_app.controller


import com.shield.shield_app.model.Person
import com.shield.shield_app.repository.PersonRepository
import org.springframework.graphql.data.method.annotation.Argument
import org.springframework.graphql.data.method.annotation.MutationMapping
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class PersonGraphQLController(
    private val repository: PersonRepository
) {

    @QueryMapping
    fun personById(@Argument id: Int): Person? {
        return repository.findById(id)
    }

    @MutationMapping
    fun updatePerson(@Argument id: Int, @Argument name: String): Person {
        val person = repository.findById(id) ?: Person(id, name)
        person.name = name
        return repository.save(person)
    }

}
