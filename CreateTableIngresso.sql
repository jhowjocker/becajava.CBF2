USE [CBF]
GO

/****** Object:  Table [dbo].[Ingresso]    Script Date: 29/10/2020 17:39:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ingresso](
	[PartidaId] [int] NULL,
	[TorcedorId] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ingresso]  WITH CHECK ADD  CONSTRAINT [FK_Ingresso_Partida] FOREIGN KEY([PartidaId])
REFERENCES [dbo].[Partida] ([Id])
GO

ALTER TABLE [dbo].[Ingresso] CHECK CONSTRAINT [FK_Ingresso_Partida]
GO

ALTER TABLE [dbo].[Ingresso]  WITH CHECK ADD  CONSTRAINT [FK_Ingresso_Torcedor] FOREIGN KEY([TorcedorId])
REFERENCES [dbo].[Torcedor] ([Id])
GO

ALTER TABLE [dbo].[Ingresso] CHECK CONSTRAINT [FK_Ingresso_Torcedor]
GO


