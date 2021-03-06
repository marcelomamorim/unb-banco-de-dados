INSERT INTO `bibliotecadb`.`Endereco`
(`idEndereco`,
`Bairro`,
`Rua`,
`Numero`,
`CEP`)
VALUES
(
    "1",
    "Sudoeste",
    "Rua de cima",
    "12345",
    "12345"
);

INSERT INTO `bibliotecadb`.`Aluno`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`Endereco_idEndereco`)
VALUES
(
	"190027623",
    "Isabel Ferreira",
    "Masculino",
    "Casada",
    "Partido Y",
	"1"
);

INSERT INTO `bibliotecadb`.`Funcionario`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`numero_dependentes`,
`habilidades_especificas`,
`cor_pele`,
`Endereco_idEndereco`)
VALUES
(
	"190027622",
    "Felipe Fon",
    "Masculino",
    "Solteiro",
    "Partido x",
    3,
    "sabe dar mortal",
    "preta",
    "1"
);

INSERT INTO `bibliotecadb`.`Livro`
(`codigo`,
`titulo`,
`editora`,
`autor`,
`ano_edicao`,
`numero_paginas`,
`area_conhecimento`,
`isbn`)
VALUES
(
   1,
   "Arquitetura Limpa",
   "Alta Books",
   "Uncle Bob",
   2020,
   232,
   "Engenharia de Software",
   "oefijoisjo"
);

INSERT INTO `bibliotecadb`.`Pagamento`
(`codigo`,
`valor_pago`,
`juros`)
VALUES
(
    "1",
    "10",
    "2"
);

INSERT INTO `bibliotecadb`.`Professor`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`carga_horaria`,
`titulacao`,
`ano_titulacao`,
`Endereco_idEndereco`)
VALUES
(
    "190027624",
    "Isabel Ferreira",
    "Masculino",
    "Casada",
    "Partido Y",
    8,
    "x",
    "2020",
    "1"
);


INSERT INTO `bibliotecadb`.`Telefone`
(`idTelefone`,
`Numero`,
`Funcionario_matricula`,
`Aluno_matricula`,
`Professor_matricula`)
VALUES
(
    1,
    "988888888",
    NULL,
    NULL,
    190027623
);

INSERT INTO `bibliotecadb`.`Emprestimo`
(`idEmprestimo`,
`data_emprestimo`,
`data_devolucao`,
`Funcionario_matricula`,
`Aluno_matricula`,
`Professor_matricula`,
`Pagamento_codigo`)
VALUES
(
    "1",
    "2021-10-20 20:10:10",
    "2021-10-27 20:10:10",
    "190027622",
    NULL,
    NULL,
    NULL
);
