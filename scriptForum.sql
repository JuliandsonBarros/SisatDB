USE [Teste002]
GO
/****** Object:  Table [dbo].[Conveniados]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conveniados](
	[Id_Conveniado] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Conveniado] [nvarchar](100) NOT NULL,
	[ID_Usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Conveniado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Convenio_Projeto]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convenio_Projeto](
	[Id_ConProj] [int] IDENTITY(1,1) NOT NULL,
	[Id_Con] [int] NOT NULL,
	[Id_Proj] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Con] ASC,
	[Id_Proj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forum]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forum](
	[Id_Forum] [int] IDENTITY(1,1) NOT NULL,
	[Id_Autor] [int] NULL,
	[Titulo] [nvarchar](255) NULL,
	[Conteudo] [nvarchar](max) NULL,
	[Data_Postagem] [datetime] NULL,
 CONSTRAINT [PK_Forum] PRIMARY KEY CLUSTERED 
(
	[Id_Forum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelDeAcesso]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelDeAcesso](
	[Id_NivelAcesso] [int] NOT NULL,
	[Descricao] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_NivelAcesso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacotes_Atualizacoes]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacotes_Atualizacoes](
	[Id_Pacote] [int] IDENTITY(1,1) NOT NULL,
	[Id_Proj] [int] NULL,
	[Num_Versao] [nvarchar](30) NOT NULL,
	[Registro_Alteracoes] [nvarchar](max) NOT NULL,
	[Dt_Lancamento] [datetime] NULL,
	[Dir_Arquivo] [nvarchar](255) NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pacote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projetos]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projetos](
	[Id_Projeto] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Projeto] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Projeto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respostas_Forum]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respostas_Forum](
	[Id_Resposta] [int] IDENTITY(1,1) NOT NULL,
	[Id_Autor] [int] NOT NULL,
	[Id_Topico] [int] NOT NULL,
	[Mensagem] [nvarchar](max) NOT NULL,
	[Data_Resposta] [datetime] NOT NULL,
	[Visualizacao] [bit] NULL,
 CONSTRAINT [PK_Respostas_Forum] PRIMARY KEY CLUSTERED 
(
	[Id_Resposta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 30/01/2024 11:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](256) NOT NULL,
	[Nome] [varchar](256) NOT NULL,
	[Senha] [varchar](128) NOT NULL,
	[Login] [varchar](255) NULL,
	[Id_NivAcesso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pacotes_Atualizacoes] ADD  DEFAULT ((1)) FOR [Ativo]
GO
ALTER TABLE [dbo].[Conveniados]  WITH CHECK ADD FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Convenio_Projeto]  WITH CHECK ADD  CONSTRAINT [FK_ID_CONVENIADO] FOREIGN KEY([Id_Con])
REFERENCES [dbo].[Conveniados] ([Id_Conveniado])
GO
ALTER TABLE [dbo].[Convenio_Projeto] CHECK CONSTRAINT [FK_ID_CONVENIADO]
GO
ALTER TABLE [dbo].[Pacotes_Atualizacoes]  WITH CHECK ADD  CONSTRAINT [FK_ID_PROJETO] FOREIGN KEY([Id_Proj])
REFERENCES [dbo].[Projetos] ([Id_Projeto])
GO
ALTER TABLE [dbo].[Pacotes_Atualizacoes] CHECK CONSTRAINT [FK_ID_PROJETO]
GO
ALTER TABLE [dbo].[Respostas_Forum]  WITH CHECK ADD  CONSTRAINT [FK_Respostas_Forum_Autor] FOREIGN KEY([Id_Autor])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Respostas_Forum] CHECK CONSTRAINT [FK_Respostas_Forum_Autor]
GO
ALTER TABLE [dbo].[Respostas_Forum]  WITH CHECK ADD  CONSTRAINT [FK_Respostas_Forum_Topico] FOREIGN KEY([Id_Topico])
REFERENCES [dbo].[Forum] ([Id_Forum])
GO
ALTER TABLE [dbo].[Respostas_Forum] CHECK CONSTRAINT [FK_Respostas_Forum_Topico]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([Id_NivAcesso])
REFERENCES [dbo].[NivelDeAcesso] ([Id_NivelAcesso])
GO
