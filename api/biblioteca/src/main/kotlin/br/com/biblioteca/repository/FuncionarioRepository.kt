package br.com.biblioteca.repository


import br.com.biblioteca.entity.Aluno
import br.com.biblioteca.entity.Funcionario
import org.springframework.stereotype.Component
import javax.persistence.EntityManager
import javax.persistence.PersistenceContext
import javax.transaction.Transactional

@Component
class FuncionarioRepository {

    @PersistenceContext
    lateinit var entityManager: EntityManager

    @Transactional
    fun save(funcionario: Funcionario) {

        val sqlStatment =
            "INSERT INTO `bibliotecadb`.`funcionario` (`matricula`,`cor_pele`,`endereco`,`estado_civil`,`filiacao`,`habilidades_especificas`,`nome`,`numero_dependentes`,`sexo`,`telefone`)\n" +
                    "VALUES (" +
                    "${funcionario.matricula}," +
                    " \"${funcionario.corPele}\"," +
                    " \"${funcionario.endereco}\"," +
                    " \"${funcionario.estadoCivil}\"," +
                    " \"${funcionario.filiacao}\"," +
                    " \"${funcionario.habilidadesEspecificas}\"," +
                    " \"${funcionario.nome}\"," +
                    " \"${funcionario.numeroDependentes}\"," +
                    " \"${funcionario.sexo}\"," +
                    " \"${funcionario.telefone}\");"

        entityManager
            .createNativeQuery(sqlStatment)
            .executeUpdate()

    }

    fun findById(id: String) {
        entityManager
            .createNativeQuery("")
    }

    fun contagemAll(){
        val sqlStatment = "SELECT COUNT(*) AS Contagem FROM( " +
                "SELECT nome FROM `bibliotecadb`.`Aluno`" +
                "UNION ALL" +
                "SELECT nome FROM `bibliotecadb`.`Funcionario`" +
                "UNION" +
                "SELECT nome FROM `bibliotecadb`.`Professor`" +
                ") AS users";
        entityManager.createNativeQuery(sqlStatment, Int);
    }

    fun totalSumAllPayments(bimestre: int){
        val sqlStatement = "SELECT SUM(valor_pago+juros) FROM Pagamento JOIN Emprestimo ON Emprestimo.Pagamento_codigo = Pagamento.codigo;"
    }

    fun findAll() {

        val sqlStatment = "SELECT * FROM bibliotecadb.professor;"
        entityManager.createNativeQuery(sqlStatment, Aluno::class.java)

    }

    fun update() {
        entityManager
            .createNativeQuery("")
    }

    fun delete() {
        entityManager
            .createNativeQuery("")
    }

}
