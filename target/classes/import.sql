/*CARGO*/ 
INSERT INTO cargo(id,nome) VALUES (NEXTVAL('cargo_sequence'), 'Programador'); 
INSERT INTO cargo(id,nome) VALUES (NEXTVAL('cargo_sequence'), 'Contratador'); 
INSERT INTO cargo(id,nome) VALUES (NEXTVAL('cargo_sequence'), 'Gerente RH'); 
INSERT INTO cargo(id,nome) VALUES (NEXTVAL('cargo_sequence'), 'RH'); 
 
/*PROJETO*/ 
INSERT INTO projeto(id,nome) VALUES (NEXTVAL('projeto_sequence'), 'Mirante'); 
INSERT INTO projeto(id,nome) VALUES (NEXTVAL('projeto_sequence'), 'Hyper Training'); 
INSERT INTO projeto(id,nome) VALUES (NEXTVAL('projeto_sequence'), 'Gerência RH'); 
 
/*COLABORADOR*/ 
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'Edgar', 'edgar@mirante.net', '3333-3333', 1, 1);  
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'Danilo Santos', 'danilo.sales@mirante.net', '4444-4444', 2, 2);  
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'Beatriz Chiarelli', 'beatriz.santos@mirante.net', '5555-5555', 1, 2);  
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'Ricardo', 'carlos.maximo@mirante.net', '5555-5555', 2, 2);  
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'André Marques', 'andre.marques@mirante.net', '6666-6666', 1, 3);  
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'João Souza', 'joao.souza@mirante.net', '7777-7777', 4, 2);  
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'Maria Santos', 'maria.santos@mirante.net', '8888-8888', 4, 1);  
INSERT INTO colaborador(id, nome, email, telefone, cargo_id, projeto_id) VALUES(NEXTVAL('colaborador_sequence'), 'Fernanda Teles Vieira', 'fernanda.vieira@mirante.net.br', '0000-0000', 3, 3);  
 
/*USUARIO*/ 
INSERT INTO usuario(id,usuario,senha, permissao_acesso, colaborador_id) VALUES (NEXTVAL('usuario_sequence'), 'edgar', '123', 'COLABORADOR', 1);  
INSERT INTO usuario(id,usuario,senha, permissao_acesso, colaborador_id) VALUES (NEXTVAL('usuario_sequence'), 'danilo', '123', 'COLABORADOR_RH', 2);  
INSERT INTO usuario(id,usuario,senha, permissao_acesso, colaborador_id) VALUES (NEXTVAL('usuario_sequence'), 'beatriz', '123', 'COLABORADOR_RH', 3);  
INSERT INTO usuario(id,usuario,senha, permissao_acesso, colaborador_id) VALUES (NEXTVAL('usuario_sequence'), 'ricardo', '123', 'COLABORADOR_RH', 4); 
INSERT INTO usuario(id,usuario,senha, permissao_acesso, colaborador_id) VALUES (NEXTVAL('usuario_sequence'), 'fernanda', 'fernanda', 'GERENTE_RH', 8); 


/*
/*SITUACAO*/ 
INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Aguardando atendimento');//1 
INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Em planejamento');//2 
INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Em priorização');//3 
/*INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Suspensa');//3*/ 
INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Em execução');//4 
INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Finalizada');//5 
INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Complementação');//6 
INSERT INTO situacao(id, nome) VALUES (NEXTVAL('situacao_sequence'), 'Inválida');//7 
 
/*TIPO_SOLICITACAO*/ 
INSERT INTO tipo_solicitacao(id, descricao) VALUES (NEXTVAL('tipo_solicitacao_sequence'), 'Mau Comportamento'); 
INSERT INTO tipo_solicitacao(id, descricao) VALUES (NEXTVAL('tipo_solicitacao_sequence'), 'Falta em Demasiado'); 
INSERT INTO tipo_solicitacao(id, descricao) VALUES (NEXTVAL('tipo_solicitacao_sequence'), 'Desrepeito'); 
 
/*PRIORIDADE*/ 
INSERT INTO prioridade(id, nome) VALUES (NEXTVAL('prioridade_sequence'), 'Baixa'); 
INSERT INTO prioridade(id, nome) VALUES (NEXTVAL('prioridade_sequence'), 'Média'); 
INSERT INTO prioridade(id, nome) VALUES (NEXTVAL('prioridade_sequence'), 'Alta'); 
 
/*SOLICITACAO*/ 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-09-01', 'Descricao Solicitacao 1', NULL, NULL, 1, 2, 2, 1, 3); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-08-02', 'Descricao Solicitacao 2', 'Motivo Invalidacao', NULL, 1, 2, 2, 7, 1); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-07-14', 'Descricao Solicitacao 3', NULL, 'Motivo Complementação', 1, 2, 3, 6, 2); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-06-07', 'Descricao Solicitacao 4', NULL, NULL, 2, 1, 3, 3, 2); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-05-07', 'Descricao Solicitacao 5', NULL, NULL, 2, 3, 1, 3, 1); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-06-02', 'Descricao Solicitacao 6', NULL, NULL, 3, 1, 2, 3, 2); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-01-26', 'Descricao Solicitacao 7', NULL, NULL, 3, 2, 1, 1, 3); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-02-17', 'Descricao Solicitacao 8', NULL, NULL, 2, 3, 1, 4, 1); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-08-04', 'Descricao Solicitacao 9', NULL, NULL, 3, 1, 2, 4, 2); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-12-07', 'Descricao Solicitacao 10', NULL, NULL, 3, 2, 1, 2, 1); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-06-07', 'Descricao Solicitacao 11', NULL, NULL, 2, 2, 1, 3, 2); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-06-07', 'Descricao Solicitacao 12', NULL, NULL, 1, 1, 2, 4, 3); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-12-07', 'Descricao Solicitacao 13', NULL, NULL, 3, 2, 1, 2, 1); 
INSERT INTO solicitacao(id, data_solicitacao, descricao, motivo_invalidacao, motivo_complementacao, colaborador_acompanhamento_id, colaborador_solicitante_id, prioridade_id, situacao_id, tipo_solicitacao_id) VALUES (NEXTVAL('solicitacao_sequence'), '2017-06-07', 'Descricao Solicitacao 14', NULL, NULL, 2, 2, 1, 5, 2);  
 
/*ACOMPANHAMENTO*/ 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '002', 'Descricao_Acomp_2', 'Acompanhamento2', 1, 1, 2); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '003', 'Descricao_Acomp_3', 'Acompanhamento3', 2, 1, 3); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '005', 'Descricao_Acomp_5', 'Acompanhamento5', 1, 2, 5); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '006', 'Descricao_Acomp_6', 'Acompanhamento6', 3, 3, 6); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '008', 'Descricao_Acomp_8', 'Acompanhamento8', 3, 3, 8); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '009', 'Descricao_Acomp_9', 'Acompanhamento9', 3, 3, 9); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '010', 'Descricao_Acomp_10', 'Acompanhamento10', 3, 3, 10); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '011', 'Descricao_Acomp_11', 'Acompanhamento11', 2, 2, 11); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '012', 'Descricao_Acomp_12', 'Acompanhamento12', 1, 1, 12); 
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '013', 'Descricao_Acomp_11', 'Acompanhamento13', 2, 2, 13);
INSERT INTO acompanhamento(id, codigo, descricao, titulo, colaborador_responsavel_id, prioridade_id, solicitacao_id) VALUES (NEXTVAL('acompanhamento_sequence'), '014', 'Descricao_Acomp_12', 'Acompanhamento14', 1, 1, 14);
 
/*INTERVENCAO*/ 
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), '2017-11-25', 'Descricao_Int_1', 60*60*1000, FALSE, 6, 2);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), '2017-12-05', 'Descricao_Int_2', 60*60*1000, FALSE, 5, 2);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), CURRENT_DATE, 'Descricao_Int_3', 2*60*60*1000, FALSE, 2, 3);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), CURRENT_DATE, 'Descricao_Int_4', 60*60*1000, FALSE, 4, 4);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), CURRENT_DATE, 'Descricao_Int_6', 4*60*60*1000, FALSE, 8, 3);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), CURRENT_DATE, 'Descricao_Int_7', 60*60*1000, FALSE, 8, 3);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), CURRENT_DATE, 'Descricao_Int_5', 3*60*60*1000, TRUE, 9, 2);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), '2017-11-01', 'Descricao_Int_6', 4*60*60*1000, FALSE, 9, 3);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), '2017-12-15', 'Descricao_Int_6', 4*60*60*1000, FALSE, 9, 3);
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), '2017-11-30', 'Descricao_Int_6', 4*60*60*1000, FALSE, 9, 3);
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), CURRENT_DATE, 'Descricao_Int_7', 50*60*1000, FALSE, 10, 4);  
INSERT INTO intervencao(id, data_limite, descricao, estimativa_horas, realizado, acompanhamento_id, colaborador_responsavel_id) VALUES (NEXTVAL('intervencao_sequence'), CURRENT_DATE, 'Descricao_Int_7', 80*60*1000, FALSE, 11, 4);  

  
 
/*REGISTRO_HISTORICO*/ 
INSERT INTO REGISTRO_HISTORICO(ID, DATA_REGISTRO, DESCRICAO, TIPO_REGISTRO_HISTORICO, TITULO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('registro_historico_sequence'), '2017-09-04', 'Descricao 1', 'REGISTRO', 'Titulo 1', 5); 
INSERT INTO REGISTRO_HISTORICO(ID, DATA_REGISTRO, DESCRICAO, TIPO_REGISTRO_HISTORICO, TITULO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('registro_historico_sequence'), '2017-08-17', 'Descricao 2', 'HISTORICO', 'Titulo 2', 6); 
INSERT INTO REGISTRO_HISTORICO(ID, DATA_REGISTRO, DESCRICAO, TIPO_REGISTRO_HISTORICO, TITULO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('registro_historico_sequence'), '2017-07-24', 'Descricao 3', 'REGISTRO', 'Titulo 3', 3); 
INSERT INTO REGISTRO_HISTORICO(ID, DATA_REGISTRO, DESCRICAO, TIPO_REGISTRO_HISTORICO, TITULO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('registro_historico_sequence'), '2017-07-24', 'Descricao 3', 'REGISTRO', 'Titulo 3', 3); 
INSERT INTO REGISTRO_HISTORICO(ID, DATA_REGISTRO, DESCRICAO, TIPO_REGISTRO_HISTORICO, TITULO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('registro_historico_sequence'), '2017-07-24', 'Descricao 3', 'REGISTRO', 'Titulo 3', 3); 
INSERT INTO REGISTRO_HISTORICO(ID, DATA_REGISTRO, DESCRICAO, TIPO_REGISTRO_HISTORICO, TITULO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('registro_historico_sequence'), '2017-06-07', 'Descricao 8', 'HISTORICO', 'Titulo 8', 8); 
INSERT INTO REGISTRO_HISTORICO(ID, DATA_REGISTRO, DESCRICAO, TIPO_REGISTRO_HISTORICO, TITULO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('registro_historico_sequence'), '2017-06-07', 'Descricao 8', 'HISTORICO', 'Titulo 8', 8); 
 
/*PLANO_DE_ACAO*/ 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-10-10', 'SIM', 'Observação Plano 1', 1); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-10-15', 'SIM', 'obs', 2); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-11-20', 'NAO_AVALIADO', 'Observação Plano 3', 3); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-12-15', 'NAO_AVALIADO', 'obs', 4); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-11-22', 'NAO', 'Observação Plano 5', 5); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-12-17', 'NAO', 'obs', 6); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-11-22', 'SIM', 'Observação Plano 8', 8); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-12-17', 'NAO_AVALIADO', 'obs', 8); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-12-17', 'NAO', 'obs', 8); 
INSERT INTO PLANO_DE_ACAO(ID, ACAO,DATA_LIMITE, META, OBSERVACAO, ACOMPANHAMENTO_ID) VALUES(NEXTVAL('plano_de_acao_sequence'), 'acao', '2017-12-17', 'NAO', 'obs', 8);

*/
