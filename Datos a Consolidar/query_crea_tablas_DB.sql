USE [db_transito]
GO
/****** Object:  Table [dbo].[vehiculos_involucrados]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[vehiculos_involucrados]
GO
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[tipo_vehiculo]
GO
/****** Object:  Table [dbo].[tipo_evento]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[tipo_evento]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[sexo]
GO
/****** Object:  Table [dbo].[resultado_accidente]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[resultado_accidente]
GO
/****** Object:  Table [dbo].[resultado_accidentado]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[resultado_accidentado]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[mes_ocurrencia]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[mes_ocurrencia]
GO
/****** Object:  Table [dbo].[hechos_transito]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[hechos_transito]
GO
/****** Object:  Table [dbo].[grupo_tiempo]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[grupo_tiempo]
GO
/****** Object:  Table [dbo].[grupo_hora]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[grupo_hora]
GO
/****** Object:  Table [dbo].[grupo_edad]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[grupo_edad]
GO
/****** Object:  Table [dbo].[fallecidos_lesionados]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[fallecidos_lesionados]
GO
/****** Object:  Table [dbo].[estado_conductor]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[estado_conductor]
GO
/****** Object:  Table [dbo].[dia_ocurrencia]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[dia_ocurrencia]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[departamento]
GO
/****** Object:  Table [dbo].[color_vehiculo]    Script Date: 03/25/2020 12:48:12 PM ******/
DROP TABLE [dbo].[color_vehiculo]
GO
/****** Object:  Table [dbo].[color_vehiculo]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color_vehiculo](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dia_ocurrencia]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dia_ocurrencia](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_conductor]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_conductor](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fallecidos_lesionados]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fallecidos_lesionados](
	[num_corre] [int] NOT NULL,
	[anio_ocu] [int] NULL,
	[dia_ocu] [int] NULL,
	[hora_ocu] [int] NULL,
	[g_hora] [int] NULL,
	[g_hora_5] [int] NULL,
	[mes_ocu] [int] NULL,
	[dia_sem_ocu] [int] NULL,
	[mupio_ocu] [int] NULL,
	[depto_ocu] [int] NULL,
	[zona_ocu] [int] NULL,
	[sexo_per] [int] NULL,
	[edad_per] [int] NULL,
	[g_edad_80ymas] [int] NULL,
	[g_edad_60ymas] [int] NULL,
	[edad_quinquenales] [int] NULL,
	[mayor_menor] [int] NULL,
	[tipo_veh] [int] NULL,
	[marca_veh] [int] NULL,
	[color_veh] [int] NULL,
	[modelo_veh] [int] NULL,
	[g_modelo_veh] [int] NULL,
	[tipo_eve] [int] NULL,
	[fall_les] [int] NULL,
	[int_o_noint] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_corre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo_edad]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo_edad](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo_hora]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo_hora](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo_tiempo]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo_tiempo](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hechos_transito]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hechos_transito](
	[num_corre] [int] NOT NULL,
	[anio_ocu] [int] NULL,
	[dia_ocu] [int] NULL,
	[hora_ocu] [int] NULL,
	[g_hora] [int] NULL,
	[g_hora_5] [int] NULL,
	[mes_ocu] [int] NULL,
	[día_sem_ocu] [int] NULL,
	[mupio_ocu] [int] NULL,
	[depto_ocu] [int] NULL,
	[zona_ocu] [int] NULL,
	[tipo_veh] [int] NULL,
	[marca_veh] [int] NULL,
	[color_veh] [int] NULL,
	[modelo_veh] [int] NULL,
	[g_modelo_veh] [int] NULL,
	[tipo_eve] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_corre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mes_ocurrencia]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mes_ocurrencia](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipio](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resultado_accidentado]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resultado_accidentado](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resultado_accidente]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resultado_accidente](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sexo](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_evento]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_evento](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_vehiculo]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_vehiculo](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehiculos_involucrados]    Script Date: 03/25/2020 12:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehiculos_involucrados](
	[num_corre] [int] NOT NULL,
	[anio_ocu] [int] NULL,
	[dia_ocu] [int] NULL,
	[hora_ocu] [int] NULL,
	[g_hora] [int] NULL,
	[g_hora_5] [int] NULL,
	[mes_ocu] [int] NULL,
	[día_sem_ocu] [int] NULL,
	[mupio_ocu] [int] NULL,
	[depto_ocu] [int] NULL,
	[zona_ocu] [int] NULL,
	[sexo_per] [int] NULL,
	[edad_per] [int] NULL,
	[g_edad_80ymás] [int] NULL,
	[g_edad_60ymás] [int] NULL,
	[edad_quinquenales] [int] NULL,
	[estado_con] [int] NULL,
	[mayor_menor] [int] NULL,
	[tipo_veh] [int] NULL,
	[marca_veh] [int] NULL,
	[color_veh] [int] NULL,
	[modelo_veh] [int] NULL,
	[g_modelo_veh] [int] NULL,
	[tipo_eve] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_corre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
