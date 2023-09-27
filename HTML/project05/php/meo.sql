/* Lógico_1: */
<?php

CREATE TABLE veiculo (
    marca VARCHAR,
    ano CHAR,
    cor VARCHAR,
    modelo VARCHAR,
    nome_cli VARCHAR,
    placa CHAR PRIMARY KEY,
    fk_estacionamento_id_veic CHAR
);

CREATE TABLE estacionamento (
    nota_fisc VARCHAR,
    tel CHAR,
    conta FLOAT,
    hora_sai TIMESTAMP,
    hora_ent TIMESTAMP,
    id_veic CHAR PRIMARY KEY
);
 
ALTER TABLE veiculo ADD CONSTRAINT FK_veiculo_2
    FOREIGN KEY (fk_estacionamento_id_veic)
    REFERENCES estacionamento (id_veic)
    ON DELETE RESTRICT;
?>