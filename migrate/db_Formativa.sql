CREATE DATABASE db_formativa;
use db_formativa;

CREATE TABLE tb_requisitos (
	cod_requisito INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200),
    nivel VARCHAR(20),
    valor FLOAT,
    situacao VARCHAR(20)   
    );


INSERT INTO tb_requisitos (descricao, nivel, valor, situacao) VALUES
('ESTRUTURA INICIAL - Montar estrutura do WebService', 'Básico', 1.09, 'Pendente'),
('ESTRUTURA INICIAL - Organizar arquivos e pastas', 'Básico', 1.09, 'Resolvido'),
('PÁGINA: INDEX - Criar roteamento da página index', 'Básico', 1.09, 'Pendente'),
('PÁGINA: INDEX - Exibição da página de forma correta', 'Básico', 1.09, 'Pendente'),
('PÁGINA: INDEX - Botão "Requisitos" direcionando para página correta', 'Básico', 1.09, 'Pendente'),
('PÁGINA: REQUISITOS - Criar roteamento para página requisitos', 'Básico', 1.09, 'Pendente'),
('PÁGINA: REQUISITOS - Exibição da página de forma correta', 'Básico', 1.09, 'Pendente'),
('FUNÇÃO: CADASTRO - Enviar os dados para processamento no WebService', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: CADASTRO - Salvar os dados no banco', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: CADASTRO - Após salvar os dados a página deve ser recarregada', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: EXIBIR REQUISITOS - Recuperar informações do banco', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: EXIBIR REQUISITOS - Exibir os dados em modo de tabela', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: EXIBIR REQUISITOS - Alternar os botões "Marcar como Resolvido" e "Marcar como Pendente" de acordo com a coluna Situação', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: DELETAR - Criar roteamento para deletar os requisitos', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: DELETAR - Apagar o requisito do banco de dados', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: DELETAR - Após qualquer exclusão a página deve ser recarregada', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: ALTERAR - Criar roteamento para alterar a situação dos requisitos', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: ALTERAR - Alterar o requisito no banco para Resolvido/Pendente', 'Intermediário', 7.25, 'Pendente'),
('FUNÇÃO: ALTERAR - Após qualquer alteração a página deve ser recarregada', 'Intermediário', 7.25, 'Pendente');
