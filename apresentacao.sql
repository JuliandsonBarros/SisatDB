SELECT TOP (1000) [ID]
      ,[Email]
      ,[Nome]
      ,[Senha]
      ,[Login]
      ,[Id_NivAcesso]
  FROM [SistemaAtualizacoes1].[dbo].[Usuario]

  insert into Conveniados(Nom_Conveniado) values('MPM-RJ');
insert into Conveniados(Nom_Conveniado) values('MPM-GO');
insert into Conveniados(Nom_Conveniado) values('MPM-SP');
insert into Conveniados(Nom_Conveniado) values('MPM-RS');
insert into Conveniados(Nom_Conveniado) values('MPM-MG');


insert into Projetos(Nom_Projeto) values('ARGUS');
insert into Projetos(Nom_Projeto) values('SITEL');
insert into Projetos(Nom_Projeto) values('SIMBA');
insert into Projetos(Nom_Projeto) values('PAI');
insert into Projetos(Nom_Projeto) values('PASSAPORT');

insert into Pacotes_Atualizacoes(Id_Proj,Num_Versao,Registro_Alteracoes,Dt_lancamento) values(4,'4444444444','ALTERA플O SISTEMA 4','2023-10-12');
insert into Pacotes_Atualizacoes(Id_Proj,Num_Versao,Registro_Alteracoes,Dt_lancamento) values(3,'3333333333','ALTERA플O SISTEMA 3','2023-10-12');
insert into Pacotes_Atualizacoes(Id_Proj,Num_Versao,Registro_Alteracoes,Dt_lancamento) values(1,'1111111111','ALTERA플O SISTEMA 1','2023-10-12');
insert into Pacotes_Atualizacoes(Id_Proj,Num_Versao,Registro_Alteracoes,Dt_lancamento) values(2,'2222222222','ALTERA플O SISTEMA 2','2023-10-12');
insert into Pacotes_Atualizacoes(Id_Proj,Num_Versao,Registro_Alteracoes,Dt_lancamento) values(5,'5555555555','ALTERA플O SISTEMA 5','2023-10-12');

insert into Convenio_Projeto(Id_Con,ID_Proj) values(1,2);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(3,3);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(1,4);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(3,1);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(5,1);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(4,2);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(4,3);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(4,5);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(2,2);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(2,4);
insert into Convenio_Projeto(Id_Con,ID_Proj) values(3,5);

INSERT INTO Usuario(Email,Nome,Senha,Login,Id_NivAcesso)values('Juliandsonbs@gmail.com', 'Juliandson Barros Soares',123456, 'juliandson.soares',1);
INSERT INTO Usuario(Email,Nome,Senha,Login,Id_NivAcesso)values('Juliandsonbs@gmail.com', 'Anderson Barros Soares',123456, 'anderson.Barros',2);
INSERT INTO Usuario(Email,Nome,Senha,Login,Id_NivAcesso)values('Juca@gmail.com', 'Juca Santos',123456, 'Juca.santos',2);
INSERT INTO Usuario(Email,Nome,Senha,Login,Id_NivAcesso)values('Sistema@gmail.com', 'Sistema',123456, 'Sistema',2);

insert into NivelDeAcesso(Id_NivelAcesso,Descricao)values(1,'ADMIN');
insert into NivelDeAcesso(Id_NivelAcesso,Descricao)values(2,'CONVENIADO');