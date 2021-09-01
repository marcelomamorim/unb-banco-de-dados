package br.com.biblioteca.entity

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
data class Funcionario(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val matricula: Int,

    val nome: String,

    val sexo: String,

    val estadoCivil: String,

    val filiacao: String,

    val endereco: String,

    val telefone: String,

    val numeroDependentes: Int,

    val habilidadesEspecificas: String,

    val corPele: String

)