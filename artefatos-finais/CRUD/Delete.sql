-- -----------------------------------------------------
-- Deletar endereço
-- -----------------------------------------------------
CALL EnderecoCRUD(
    "1",
    "",
    "",
    "",
    "",
    'Delete'
);

CALL EnderecoCRUD(
    "2",
    "",
    "",
    "",
    "",
    'Delete'
);

-- -----------------------------------------------------
-- Deletar Aluno
-- -----------------------------------------------------
CALL AlunoCRUD (
    "190027623",
    "Isabela de Souza Ferreira",
    "Feminina",
    "Casada",
    "Partido Y",
    "1",
    'Delete'
);

-- -----------------------------------------------------
-- Deletar Professor
-- -----------------------------------------------------
CALL ProfessorCRUD (
    "190027627",
    "",
    "",
    "",
    "",
    0,
    "",
    0,
    0,
    'Delete'
);

-- -----------------------------------------------------
-- Deletar Telefone
-- -----------------------------------------------------
CALL TelefoneCRUD (
    1,
    "",
    0,
    0,
    0,
    'Delete'
);

CALL TelefoneCRUD (
    2,
    "",
    0,
    0,
    0,
    'Delete'
);

-- -----------------------------------------------------
-- Deletar Livro
-- -----------------------------------------------------
CALL LivroCRUD (
    1,
    "",
    "",
    "",
    0,
    0,
    "",
    "",
    'Delete'
);

CALL LivroCRUD (
    2,
    "",
    "",
    "",
    0,
    0,
    "",
    "",
    'Delete'
);

-- -----------------------------------------------------
-- Deletar Multa
-- -----------------------------------------------------
CALL MultaCRUD (1, 0, 0, 'Delete');

CALL MultaCRUD (2, 0, 0, 'Delete');

-- -----------------------------------------------------
-- Deletar Empréstimo
-- -----------------------------------------------------
CALL EmprestimoCRUD (
    1,
    0,
    NULL,
    NULL,
    0,
    NULL,
    NULL,
    0,
    'Delete'
);

CALL EmprestimoCRUD (
    2,
    0,
    NULL,
    NULL,
    0,
    NULL,
    NULL,
    0,
    'Delete'
);