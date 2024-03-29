USE [Sisat_bd]
GO
/****** Object:  Table [dbo].[Conveniados]    Script Date: 12/01/2024 11:14:05 ******/
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
/****** Object:  Table [dbo].[Convenio_Projeto]    Script Date: 12/01/2024 11:14:05 ******/
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
/****** Object:  Table [dbo].[NivelDeAcesso]    Script Date: 12/01/2024 11:14:05 ******/
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
/****** Object:  Table [dbo].[Pacotes_Atualizacoes]    Script Date: 12/01/2024 11:14:05 ******/
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
/****** Object:  Table [dbo].[Projetos]    Script Date: 12/01/2024 11:14:05 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/01/2024 11:14:05 ******/
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
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([Id_NivAcesso])
REFERENCES [dbo].[NivelDeAcesso] ([Id_NivelAcesso])
GO
