USE [Restaurant]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GoodId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[BillId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.BillDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bills]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TimeStamp] [datetime2](7) NOT NULL,
	[Total] [real] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[TableId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Bills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Goods]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Count] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Goods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tables]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Tables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/12/2021 8:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[RoleId] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[Lastname] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202112081041243_Add_User', N'WinFormQuanLyNhaHang.Migrations.Configuration', 0x1F8B0800000000000400ED59DB6EE336107D2FD07F10F4D416592BC9BEB486BD8BD449DA60736B9CDDF62DA0A5B14D94A254924A6D14FDB23EF493FA0B1DEA4A5192AF89D1164580C02639672E3C1CCED07FFDF1E7E0FD2264CE330849233E744F7AC7AE03DC8F02CA67433751D3375FBBEFDF7DFED9E0220817CEA762DD5BBD0E25B91CBA73A5E2BEE7497F0E2191BD90FA2292D154F5FC28F4481079A7C7C7DF7827271E20848B588E337848B8A221A45FF0EB28E23EC42A21EC260A80C97C1C67C629AA734B429031F161E8FE48F96524C21F12C2AF97B773F23DE1B3DE3951C475CE182568D018D8D47508E791220ACDED7F94305622E2B3718C03843D2E63C07553C224E46EF4ABE59B7A747CAA3DF22AC102CA4FA48AC22D014FDEE621F26CF19D02ED9621C4205E60B0D5527B9D0672E83E440C1DB715F5474CE8452B62DC4BA128C89E863872DA161E95344136E9BF2367943095081872489420ECC8B94F268CFA1F60F918FD0C7CC813C64C8BD1669CAB0DE0D0BD8862106AF900D3DC8FABC075BCBA9C670B9662864CE6E515576F4F5DE7169593098392104644C62A12F01D70104441704F9402C13506A4216D68B774E9FF853664209E29D7B9218B6BE033351FBAF8D1752EE902826224B7E023A7780451488904D6293907E90B1A675479695DB7E499CED258585AF14C09E93A0FC0D25939A77176F27A7AE62963D8A58842FD295B9E0E3E3D123103859646F6CC384A846F9930F02AF2AEA4B486D993D21AE27F4AAF619B0E123F04ADEF8994BF46227875459A7BEB23B81AE3920AA90E72DAAF89548789FF3CE2709B84137DAE0E9656B2BCB17D5629724733AB14F96693AC722665E4D354B541F74C6DDD810B1E389D3664C12AACC67861AEA0316607543974BF6A44A30DAC4C931558E67D1DECC4B553CA1D3F07060A9C333F2B3E4644FA2468EE01C620A88F601602A1D30061589149CC6B94AB66CAA2DCA731615D265B021B66396D50096DCF9C430C5C27A8AE986FA2B338E74DBD25BC15A075F1187806619AB713CA28940051180052914410AECE277A0E16AAE5C642DFF24B4BE687C7268BC61E8332DCC28BB822748D2D0DA6D585F35BBC219CF1D612369CAD23E4E7D2986F1C5A3BE6ABCE4F6964695F63CB569D18433C8F8D4DFCBA232D79A1DCB9AA11F1B24EA4E858BC8E96657043E21893A4D1C2E423CE38EB5F466FC6DB57F46186E1F9B2A5B02FAD2D35E1154F6660CDA26AB434BDA974DD33213A4D8F82B0B1AC8DA71D342A349A546CEE5541AE62B5FE9C497457656DACA9827989FE853A1FA4D58CB5E34DB1B491248C8896C26914B124E4DD69A95B3ABBEF4DF96C6473845AE96E02D5269A7803CF8A4323A53582DEC8FDF51DDC687FB3D3F832FB9B6698EDF7B75DEC75F6B72A754D8C6A7473A4AA963591AAD1CD918A4BCCC4E9BAD8BA518C72D504328637C7AA0A5213AA1ADD224A66C5590B943971E0D3D0B812EC25A5F6F26AB0AE80419E8ED73F6D35F273B6C4753050CF34D0B979BC940AC2EC088D7F612346D1DF6AC10DE1748AE93BEB41DDD3E39353EB59EC9FF344E54919B09DDEA9AEB0585B0CDDDF9CDF0FDF61531DEEB53DF496EDA3D939F26722FC39115F8464F1A589B4E35BD01678FB3EB6FCE7F6C57EECD86B6FEC078DBDC0EA8F16A9F3DDDBA145FACED54F4F99D49173273057F49D63DCA8BD5F3AF672C37ECDD82FC0CD178B1720FF2E6F0259DE3A64EB5E6F88767883D8A9F7EF28D25FA5DFFF77F4F8CD166B7DF7DED9BC67D7FFD00D2611EE6846DCF696B6ADAFEF6CEBDB605B1BED57EAF84D9FABA66D5D93DF7817789DBEBE59AC21478C5F2B919B92CE2A08FDDB2507BFC68E72CD159F4605492D8B8A25560EBB014502A4CE9950744A7C85D33E48993EBB7E222CC1251798E0822B7E97A83851E8328413567BB6D7645FA53F7DBCA8DB3CB84B6B06F9122EA099145D803BFE6D425950DA7DD9BC5EBA20F429CAAF71BD974A5FE7B36589748B797E33A03C7CE5E17F8430660826EFF8983CC32EB621F5AE6146FC6551737783ACDF887AD807E794CC0409658E51C9E357E470102EDEFD0DD40BBDBEB41F0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202112081612171_Add_Full_Database', N'WinFormQuanLyNhaHang.Migrations.Configuration', 0x1F8B0800000000000400ED5DDD72E4A815BE4F55DE41A5AB2435EBB63D3789AB7BB766DAE38D6BC73F99F66E72E7C2126EAB22A18E408EBB5279B25CE491F20A018124102021A95BEE75B9E6C606F171E07C070E70CEF87FFFF9EFFC879724F69E6186A3142DFC93A363DF832848C308AD177E4E1EBFFBA3FFC3F7BFFDCDFC4B98BC78BF94DF7D64DFD196082FFC27423667B3190E9E6002F0511205598AD3477214A4C90C84E9ECF4F8F84FB3939319A4103EC5F2BCF9B71C912881C52FF4D7658A02B8213988AFD210C65894D39A5581EA5D8304E20D08E0C2FF6B842ED22CF94B0ED0D7EDF513F83340EBA3734080EF7D8A2340055AC1F8D1F700422901848A7BF633862B92A568BDDAD00210DF6D37907EF708620CC530CEEACF5D47747CCA4634AB1B9650418E499AF4043CF928A668D66C3E68A2FD6A0AE9247EA1934DB66CD4C5442EFCCF511C9F4302A2D8F79ADD9D2DE38C7DDA32D347056004F1510DF4C1337DFEA1A20C6516FBF7C15BE631C933B840302719A0ED6EF387380A7E82DBBBF4EF102D501EC7B2F4547E5AA714D0A2DB2CDDC08C6CBFC14731A6CBD0F7666ABB59B361D54C6AC3C77A89C8C753DFBBA69D83871856E490E66545D20CFE0811CC0081E12D2004668861C0627AB5DE1B7DFD98A661777FED18CB94DACD3808A6B1DE625C83E7685DCC8201CDF7BEC1B8A8C44FD1869B9F448C7BFECD459626DFD258215F5175BF4AF32CA07DDEA5E6FA3B90AD2151659ACF6A4E77327D071C7F677707ADEEE86ABE2220D9945DD23984ACB03741EFA8447189B2A2DB50DC1FE312DF82A81AFDE794F20AA0FED656B00666ECB74A209251917CEF0ABC7C85684D9E163EFD91D23B7A81615922D07F4611DD48692392E59D9DD13D2A1BBB3CDCB16F776BDCDC10F1581B2F6DD866E3E51AE02A5A3152AB50F7A25A9587971A971B51655A69DAA4603AB30BC16B1B32B042B30845CDA8B54E8C7AD4625760BCAF761D8636C98A40975392E3DE8B58AB39DB0DB9D5664CE6DB30A7418CE526328AB00CE29DAF0E9B0B9A82B3B700E37FA659B8F78E180FC76E97175186C924A6FC156032CDFC3FA5085EE7C903B3AB5DF7357465B16F84C67545D9225D4560ED8D121468BCB696A02AD4B6E2BA66D456CC3B1CB5B03188F785ED1036E27388832CDAF0BB98C98C8A31D16C541D946E1A954EF641945E5205ADD36C3B92D625CC3BB50F81DA970958EFA1172BA9D9259899D4ACE6BEE6584D6CA54223B75A3B8AE00C6A24B919C43BB10F81D8B75914C071EEE19E6C63F757BA25FD7777F353DBE1704B6D7A56663B76B1D44F18A741548821399CE2C0AA8EE80B0A3DFB8D0FD764E9975265520B8C36D4E668A70BFF0FDAFC18D1AA15A84613476715EEC46F9AEA0D3A873124D0FB14F067A125C0010875BDD07908D5126ADD3063E605E22555065D2F2244F4A5204241B401B155E8460BC7E583495461376BCEE1062266F9D67977E9B4BAB9D47BAE3A68CC51D794CC67126FDAE9543B5436FD1B0E0CB5FAF9F9C69D4C0657AD06E37EDDA15149137902266973EED267792FF02A3CAA4FBBADEB887A073C725152CFD1EDA47C7D1E69224FB522C973EED267F91CF36A3C921F56DA08607C49553955BEF4F76396F1F9A69DAC87C12F83E013B1CCA00B979ECB27F957E19AEACDD9086171ED6A3AF0C3933BC32CA7BA1AB076300F8D6346D127609851072EFDCAE7830938C69D78DA861A033D23961B33C404E41940E4FC81D5C11762386CD365579CB7B1383E3509C4B05790989EA8EBD38361F1D398A803D9203A1B17DEABA9B53818743417377D5A6BBE85773466DC3035E67E644763C18CC888505B60078AB8D4D100F89AD0682C91469DFDF20152FA407F9E6CB2B7F5BC57C959A957637FEB094F6A5F6AB8B9A2A8A37118A97477AB0FD4720EE9388948620A26B50C533F7B48CD0597460F527AF5B1685377923BDCE4FEBA541CE3AE391A384825FAC53C54AB1FE7E4C935865D2D751D8337F96E5D3338600A1A3741FA04B438170EEE8524B158625A866D7628240879AD731E79792555ED6655DD7CC6439345C17C6689619E5F81CD26426B29A65994782B1ED0BCFC6ED53FC437E118B3001B227D2B69AB9E489A81356CD4B2CBC71016AFE0EC1AFB01B02BC26598689F99F66ECB9650F6A86FCFBAEACAEDA26CC37EE6EDEC57EDD296AEBB3E02E8828E35617E5371516D3421BDB1C762CD410C32C3CDF8328DF304D99D387BEB32E8574628CBDC51C41DB10C228ADC31CA43860C623B78303A37E652731B35F569BEB6CA0867BEEC9229033932153BA4A05919442AEE81C5C366151C5EE48E5186CD2A2312653DD8AA84CD2AA4556ADC11CBCB1819CB7641D33243E51DB33247B68BE757B301E16AEEC6088C5EB3831558DAEDC70C74A2F42548192A2963946507A358EE78EE46AF26FFD941ADE666FBD16A1D73D8345BD453BB7550A18C5497BA2395AF03328EEDC5C08E22C50DCA4052B13B561D192843D5A53D66490EFD53264AAE38186BE067CDDD5883E9C8EC600DE66687BAC62951683290527130FA958E5BBB51B2ED18E9A0687BD34355B6883D5144E04507A3607E24DF8D6E8B9BC2FE7A35373B549D8A90246569E645FBE1C53E4F93F2938202D4F2D4B067A66A5735CD4FAADEAB2B9BC6D5CC5C5C9374E7A06BF726FC13DFA3D3F41C85ECCE64B5C504269CDEAB7FC4CB38826C8ACB0FAE008A1E21263CD4CF3F3D3E396DE4AF1F4E2EF90CE330365C33B926945FA210BE2CFC7F79FF9E3E9C316293DE19B0D833E04E4DE52EBA1893C83D04404DE32E10ECF3CE9A9C79977FBBE7AD3E783719A5E099774C35D2DEF1D83CEB37A77A2DCF39A4B864749E7306D9CFA3B29C1FA20134346438A36790054F20FB5D025E7E2F23F6CF6276A5256FD5839686D954539F5D7B16CDF66111B66CDC3767123B238F9AF0DACDE7B169A66F4E13CD34CF51DA68A6728E0253D3355DAD93B71AB52E68399EA386D1CCE31C37C17AAE660FBCB1A9886F8EFC3B53B221DD6F1F7A69C9A77BD78D554E3927671F5AB12481BD6BC406A4245A0D39C90C55E91E0E557A2295EB4E55B7DC812B3928DF49B89B936625A9414703721906C5DFDADE34F712D2FD26B297B80B306592911A7038205B6A10332CEF407BC94C7A0BD9484EBA79032B86B3BEA65A307E35D945D3A6FC9882580767330DCE1F9A365BE8AD6408D5C799A99378D418E00159498398D2F21CBD97CC9F5F4FA68F1E54DCD4972D87A72385873FB22DFCF021A55AE66E754B54BCB1236B8A8F0DBC1B56F8D9B6E41F13B0259DC4941864CD0B32E19A731B4C2943D68C2113AC392FC4924CB46D4D2532C1B744E69B528DAC9946266C63E2C0DE9290142A4881945DF91A5A76C621641AC934A9E3A5BA928BB45C9B43C82772126C12ADEC3C6BA85348AB5F654E8C38A0ACA0E682A2C67275250369F943FB49FBD16346E8862AFD7503BA99E3685D43B0BF758060A06CA5D53797E8312D77F58644E5278D2BAB2BAAB590EEB39F32123D8280D0EA00625CFC5F45BF8038A79F7C491E6078896E72B2C9091D324C1E6265FA9867D0D67F91DBA4CA3CBF29EEC7F12E8640C58CD82BFA0DFA9C477158C97D61B831B3403097435C8E325D127649BADE5648D729720412D357794A7730D9C4140CDFA01578864364A34BCD57B806C1B60CFDB183742B429DF6F97904D61948B0C0A8DBD35F2987C3E4E5FBFF03E94806CDE4630000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202112130348433_Edit_Timestamp_Type', N'WinFormQuanLyNhaHang.Migrations.Configuration', 0x1F8B0800000000000400ED5DDD72E4A815BE4F55DE41A5AB2435EBB63D17495CDDBB35D31E6F5C19FF64DABBC99D0B4BB84D45421D811C77A5F264B9C823E51502423F20404252B7DCEB72CD8D0DE2E3C0F90E1CE01CCFFFFEF3DFF90F2F71E43DC394A0042FFC93A363DF8338484284D70B3FA38FDFFDC1FFE1FB5FFF6AFE258C5FBC9FCBEF3EF2EF584B4C16FE13A59BB3D98C044F3006E42846419A90E4911E05493C0361323B3D3EFEE3ECE464061984CFB03C6FFE2DC314C530FF85FDBA4C7000373403D15512C28814E5AC6695A37AD72086640302B8F0FF8AF04592C67FC900FEBABD7E027F02787D740E28F0BD4F11024CA0158C1E7D0F609C504099B8673F11B8A26982D7AB0D2B00D1DD7603D9778F2022B018C659FDB9EB888E4FF9886675C3122AC8084DE29E80271F8B299A359B0F9A68BF9A4236895FD864D32D1F753E910BFF338AA27348018A7CAFD9DDD9324AF9A72D337D940322488E6AA00F9EE9F30F156518B3F8BF0FDE328B6896C20586194D016B779B3D4428F833DCDE257F877881B32892A567F2B33AA58015DDA6C906A674FB0D3E1663BA0C7D6FA6B69B351B56CDA43662AC97987E3CF5BD6BD639788860450E695E563449E18F10C3145018DE024A618A3906CCA757EBBDD1D78F491276F7D78EB14C98DD8C83E01AEB2DC6357846EB7C160C68BEF70D46792579421B617E1231EEC5371769127F4B22857C79D5FD2AC9D280F5799798EBEF40BA865495693EAB39DDC9F41D70FC9DDD1DB4BA63ABF98A82785376C9E610F2C2DE04BD63124525CA8A6D43517F8C4B720B5035FACF09E315C0FDAD2D670D4CF96F9540346522F9DE1578F90AF19A3E2D7CF623A3377A81615952A0FF8411DB4859239A669D9DB13D2A1DBB3CDCF16F776BDCC210C9581B2F6DD866E3E51AE02A5A3E52AB50F745B52A8F28352E37459569A5699382EBCC2E84A86DC8C00BCD22E435A3D6BA62D4A316BB1CE37DB5EB30B4495604B69CD28CF45EC45ACDD96EC8AD366332DF86390D62AC30915184E510EF7C75D85CF0149CBD0584FC3349C3BD77C4793876BBBC4029A19398F25740E834F3FF9460789DC50FDCAE76DDD7D095C5BE111AD715658B741581B7374A90A389DA5A82AA50DB8AEB9A515BB1E870D4C2C621DE17B643D888CF210952B411773193191567A2D9A83A28DD342A9DEC8328BD640A5A27E97624AD4B98776A1F02B52F63B0DE432F5652F34B3033A979CD7DCDB19AD84A85466EB57614C139D44872738877621F02B16F5314C071EEE19E6C63F757BA25FD7777F353DBE1704B6D7A56663B76B1D44F842401CAC5901CCEE2C0AA8EE80B0E3DFB8D8FD064E9973265320B441B6673ACD385FF3B6D7E8C68D50A54A315476715EEC46F9AEA0D3E8711A4D0FB148867A12520010875BDB07908D51266DD30E5E605A22553065B2F10A6FA528070803620B20ADD68E1B87C70892AEC66CD39DC40CC2DDF3AEF2E9D5637977ACF55078D39EA9A92F94CE24D3B9D6A87CAA67FC381A156BF38DFB893C9E0AAD560C2AF3B342A69224FC0246DCE5DFA2CEF055E8547F569B7751D51EF80472E4AEA39BA9D94AFCF234DE4A9562479CE5DFA2C9F635E8D47F2C34A1B018C2FA92AA7CA97FE7ECC323EDFB493F530F865107C22961974E1D273F924FF2A5C53BD391B212CAE5D4D077178726798E5545703D60EE6A171CC28FA040C33EAC0A55FF97C3001C78413CFDA30636067C472638684822C05989E3FF03AF8420D876DB6EC16E76D521C9F9A04E2D82B484D4FD4F5E9C1B0F8694CD4816C109D8D73EFD5D4BA381874342F6EFAB4D6620BEF68CCB9616A2CFCC88EC605339011A1B6C00E94E2524703106B42A3B1441A75F6CB0748E903FD79B2C9DED6F35E2567A55E8DFDAD273CA97DA9E1E68AA28EC661A4D2DDAD3E50CB39A4E32422895930A96598FAD9436A5E7069F420A5571F8B367527B9C34DEEAF4BC531EE9AA3818354A25FCC43B5FA714E9E5C63D8D552D7317893EFD6358303A6A07113A44F408B73E1E05E4812174B4CCBB0CD0E850421AF75CE232FAFA4AADDACAA9BCF44687251309F596298E75760B341782DC5341725DE4A04342FBF5BF50FF18D05C62C208648DF4ADAAA279AA4600D1BB5FCF23184F92B38BFC67E00FC8A7019C6DA67A6BDDBB225943DEADBB3AEBA72BB28DBF09F453BFB55BBB4A5EBAE4F0174C1C61A73BF29BFA8369A90DED8E3B1E62002A9E1667C9944598CED4E9CBD7519F42B239465EE28C51DB10C5214B96394870C19C476F0E0746ECCA5E6366AEAD37C6D9511CE7CD925530672642A764841B3328854DC034B84CD2A38A2C81DA30C9B55465494F560AB1236AB9056A971472C2F63642CDB054DCB0C9577CCCA1CD92E9E5FCD060A5773374660F49A1DACC0D26E3F66A013A52F41CA504919A32C3B18C50AC773377A35F9CF0E6A3537DB8F56EB98C3A6D9E29EDAAD830A65A4BAD41DA97C1D90716C2F067614296E5006928ADDB1EAC84019AA2EED314B72E89F325172C5C15883386BEEC61A4C4766076B30373BD4354E89429381948A83D1AF74DCDA8D926DC7480745DB9B1EAAB28BD81345045174300A1647F2DDE836BF29ECAF5773B343D5691192A42CCDA2683FBCD8E769527E5250805A9E1AF6CC54EDAAA6F949D57B7565D3B89A9917D724DD39E8DABD89F8C4F7D8343DA390DF99ACB684C258D07BF58F681921C8A7B8FCE00A60F4080915A17EFEE9F1C969237FFD7072C967848491E19AC935A1FC1287F065E1FFCBFBF7F4E18C884F7A67C062CF803B35953BEF624C22F71000358D3B47B0CF3B6F72E65DFEED5EB4FAE0DDA48C8267DE31D3487BC763F3ACDF9CEAB53CE790E1F23F6571CA6D1B0648FC7D8CDF8F4B7B4E21FF7954D2F3031AC04A43C2337E0669F004D2DFC4E0E5B73262FFA46657968A563D586A984D3513DAB5E7A2D93E0CC4969CFBE62C6467E451F35FBBF93C36EBF4CD69A299F5394A1BCDCCCE51606AF6A6AB758A56A3D6052DE573D4309A699DE326584FDDEC81373633F1CD917F674A3664FFED432F2DE975EFBAB1CA29A7E8EC432B969CB0778DD88094BCAB21079BA12ADDC3194BCFAB72DDA9EA963B702507A53F15EEE6A4494A6A0CD280D48641E1B8B627CEBD4478BF896426E1024C9973A4C61F0E489E1AC40CCBB3D05E1295DE427292936EDEC08AE1ACAFA9168C5F4CB2D1B41940A698D6C1C94D83D389A64D1E7A2B0943F57166EA9C1E3524784092D220A6B4BC4EEF2511E89793F8A3C71837F5654BE9E9C8E8116F6E0B3F7C489896855BDD12246FECC89AF16303EF862DFC6C5B2E9009D8925D62CA13B2A6099970CDA90EA60C226B029109D69C2662C92DDAB6661699E05B02F54D9947D6C42313B6318F606F39490A15A4B8CAAEF40D2D59E310128F649AD4E1535DB9465AEACD21A4173909368956769E44D429A4D5AF32E7491C50925073415143BBBA7283B474A2FD6401E921246C4395FEB303B69913B4AE21F87F7D8061A06CA5D53797F8312977F58644E5278D2BAB2BA6B590EDB39F528A1E414059750009C9FF74D1CF20CAD8275FE207185EE29B8C6E32CA860CE38748993EEE19B4F59FA73AA932CF6FF2FB71B28B213031117F54BFC19F33148595DC17861B330B0477398ACB51AE4BCA2F49D7DB0AE93AC18E40C5F4559ED21D8C371103233778059EE110D9D852F315AE41B02D2381EC20DD8A50A77D7E8EC03A05312930EAF6EC57C6E1307EF9FEFF7185BAD7F3630000, N'6.4.4')
SET IDENTITY_INSERT [dbo].[BillDetails] ON 

INSERT [dbo].[BillDetails] ([Id], [GoodId], [Count], [BillId]) VALUES (1, 1, 3, 6)
INSERT [dbo].[BillDetails] ([Id], [GoodId], [Count], [BillId]) VALUES (2, 2, 1, 6)
INSERT [dbo].[BillDetails] ([Id], [GoodId], [Count], [BillId]) VALUES (3, 3, 2, 6)
INSERT [dbo].[BillDetails] ([Id], [GoodId], [Count], [BillId]) VALUES (4, 5, 2, 7)
INSERT [dbo].[BillDetails] ([Id], [GoodId], [Count], [BillId]) VALUES (5, 6, 1, 7)
INSERT [dbo].[BillDetails] ([Id], [GoodId], [Count], [BillId]) VALUES (6, 4, 1, 7)
SET IDENTITY_INSERT [dbo].[BillDetails] OFF
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([Id], [TimeStamp], [Total], [IsPaid], [CustomerName], [UserId], [TableId]) VALUES (6, CAST(N'2021-12-10 17:33:37.8070000' AS DateTime2), 285000, 1, N'Lê Duy Anh', 1, 2)
INSERT [dbo].[Bills] ([Id], [TimeStamp], [Total], [IsPaid], [CustomerName], [UserId], [TableId]) VALUES (7, CAST(N'2021-12-11 01:07:15.1000000' AS DateTime2), 42000, 1, N'Vũ Ngọc Mạnh', 1, 4)
SET IDENTITY_INSERT [dbo].[Bills] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (1, N'Food', NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (2, N'Drink', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Goods] ON 

INSERT [dbo].[Goods] ([Id], [Name], [Price], [Image], [Count], [CategoryId]) VALUES (1, N'Gà rang muối', 50000, N'coca-cola.png', 10, 1)
INSERT [dbo].[Goods] ([Id], [Name], [Price], [Image], [Count], [CategoryId]) VALUES (2, N'Cơm rang dưa bò', 35000, N'coca-cola.png', 10, 1)
INSERT [dbo].[Goods] ([Id], [Name], [Price], [Image], [Count], [CategoryId]) VALUES (3, N'Cơm chiên dương châu', 50000, N'coca-cola.png', 10, 1)
INSERT [dbo].[Goods] ([Id], [Name], [Price], [Image], [Count], [CategoryId]) VALUES (4, N'Coca cola', 10000, N'coca-cola.png', 20, 2)
INSERT [dbo].[Goods] ([Id], [Name], [Price], [Image], [Count], [CategoryId]) VALUES (5, N'Pepsi', 10000, N'coca-cola.png', 20, 2)
INSERT [dbo].[Goods] ([Id], [Name], [Price], [Image], [Count], [CategoryId]) VALUES (6, N'Bò húc', 12000, N'coca-cola.png', 20, 2)
SET IDENTITY_INSERT [dbo].[Goods] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name], [Description]) VALUES (1, N'Admin', N'')
INSERT [dbo].[Roles] ([Id], [Name], [Description]) VALUES (2, N'Staff', NULL)
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Tables] ON 

INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (1, N'Bàn 1', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (2, N'Bàn 2', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (3, N'Bàn 3', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (4, N'Bàn 4', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (6, N'Bàn 5', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (8, N'Bàn 6', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (9, N'Bàn 7', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (10, N'Bàn 8', 0)
INSERT [dbo].[Tables] ([Id], [Name], [Status]) VALUES (11, N'Bàn 9', 0)
SET IDENTITY_INSERT [dbo].[Tables] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [RoleId], [FirstName], [Lastname], [PhoneNumber]) VALUES (1, N'admin', N'admin', 1, N'Nguyen', N'Le', N'0123456789')
INSERT [dbo].[Users] ([Id], [Username], [Password], [RoleId], [FirstName], [Lastname], [PhoneNumber]) VALUES (2, N'staff', N'staff', 2, N'Vu', N'Hoang', N'0987654321')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BillDetails_dbo.Bills_BillId] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bills] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_dbo.BillDetails_dbo.Bills_BillId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bills_dbo.Tables_TableId] FOREIGN KEY([TableId])
REFERENCES [dbo].[Tables] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_dbo.Bills_dbo.Tables_TableId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bills_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_dbo.Bills_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Goods]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Goods_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Goods] CHECK CONSTRAINT [FK_dbo.Goods_dbo.Categories_CategoryId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Roles_RoleId]
GO
