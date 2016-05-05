CREATE TABLE [Aluno](
	[matricula] [int] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[idade] [int] NOT NULL,
	[email] [varchar](100) NOT NULL,
	[endereco] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Aluno] PRIMARY KEY CLUSTERED 
(
	[matricula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO