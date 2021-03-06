package br.com.biblioteca.controller

import br.com.biblioteca.dto.aluno.AlunoRequest
import br.com.biblioteca.repository.AlunoRepository
import org.springframework.web.bind.annotation.*

@RequestMapping("/v1/alunos")
@RestController
class AlunoController(
    private val alunoRepository: AlunoRepository
) {

    @PostMapping
    fun create(@RequestBody alunoRequest: AlunoRequest) {
        val aluno = alunoRequest.toEntity()
        alunoRepository.save(aluno)
    }

    @GetMapping("/{id}")
    fun getById(@PathVariable id: String) {
        return alunoRepository.findById(id)
    }

    @GetMapping
    fun getAll() {
        return alunoRepository.findAll()
    }

}