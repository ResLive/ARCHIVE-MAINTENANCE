SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ADDITIONAL INDEXES FOR EXISTING TABLES
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Booking]') AND name = N'IX_nuwa_Booking_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Booking_AccountId] ON [dbo].[nuwa_Booking]
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Booking]') AND name = N'IX_nuwa_Booking_BookingReference')
CREATE NONCLUSTERED INDEX [IX_nuwa_Booking_BookingReference] ON [dbo].[nuwa_Booking] 
(
	[BookingReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Booking]') AND name = N'IX_nuwa_Booking_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Booking_CustomerId] ON [dbo].[nuwa_Booking]
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingOrder]') AND name = N'IX_nuwa_BookingOrder_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_BookingOrder_AccountId] ON [dbo].[nuwa_BookingOrder] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingOrder]') AND name = N'IX_nuwa_BookingOrder_BookingId')
CREATE NONCLUSTERED INDEX [IX_nuwa_BookingOrder_BookingId] ON [dbo].[nuwa_BookingOrder] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingQueue]') AND name = N'IX_nuwa_BookingQueue_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_BookingQueue_AccountId] ON [dbo].[nuwa_BookingQueue] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingQueue]') AND name = N'IX_nuwa_BookingQueue_BookingReference')
CREATE NONCLUSTERED INDEX [IX_nuwa_BookingQueue_BookingReference] ON [dbo].[nuwa_BookingQueue] 
(
	[BookingReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Customer]') AND name = N'IX_nuwa_Customer_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Customer_AccountId] ON [dbo].[nuwa_Customer] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasName]') AND name = N'IX_nuwa_CustomerAliasName_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasName_AccountId] ON [dbo].[nuwa_CustomerAliasName] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasName]') AND name = N'IX_nuwa_CustomerAliasName_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasName_CustomerId] ON [dbo].[nuwa_CustomerAliasName] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasAddress]') AND name = N'IX_nuwa_CustomerAliasAddress_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasAddress_AccountId] ON [dbo].[nuwa_CustomerAliasAddress] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasAddress]') AND name = N'IX_nuwa_CustomerAliasAddress_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasAddress_CustomerId] ON [dbo].[nuwa_CustomerAliasAddress] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasEmail]') AND name = N'IX_nuwa_CustomerAliasEmail_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasEmail_AccountId] ON [dbo].[nuwa_CustomerAliasEmail] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasEmail]') AND name = N'IX_nuwa_CustomerAliasEmail_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasEmail_CustomerId] ON [dbo].[nuwa_CustomerAliasEmail] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasTelephone]') AND name = N'IX_nuwa_CustomerAliasTelephone_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasTelephone_AccountId] ON [dbo].[nuwa_CustomerAliasTelephone] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasTelephone]') AND name = N'IX_nuwa_CustomerAliasTelephone_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasTelephone_CustomerId] ON [dbo].[nuwa_CustomerAliasTelephone] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Note]') AND name = N'IX_nuwa_Note_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Note_AccountId] ON [dbo].[nuwa_Note] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Note]') AND name = N'IX_nuwa_Note_BookingId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Note_BookingId] ON [dbo].[nuwa_Note] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Note]') AND name = N'IX_nuwa_Note_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Note_CustomerId] ON [dbo].[nuwa_Note] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_ActionLog]') AND name = N'IX_nuwa_ActionLog_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_ActionLog_AccountId] ON [dbo].[nuwa_ActionLog] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_ActionLog]') AND name = N'IX_nuwa_ActionLog_BookingId')
CREATE NONCLUSTERED INDEX [IX_nuwa_ActionLog_BookingId] ON [dbo].[nuwa_ActionLog] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
-- ADDITIONAL TABLES --
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_ActionLog]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[nuwa_Archive_ActionLog](
		[ActionLogId] [bigint] IDENTITY(1,1) NOT NULL,
		[AccountId] [bigint] NOT NULL,
		[BookingId] [bigint] NULL,
		[LayoutItemId] [bigint] NULL,
		[LayoutOptionId] [bigint] NULL,
		[ActionDateTime] [datetime] NOT NULL,
		[ActionHour] [int] NOT NULL,
		[ActionMinute] [int] NOT NULL,
		[ActionTicks] [bigint] NOT NULL,
		[ActionDescription] [nvarchar](max) NOT NULL,
		[SessionDate] [datetime] NOT NULL,
		[SessionStart] [int] NOT NULL,
		[SessionStartTicks] [bigint] NOT NULL,
		[SessionFinish] [int] NOT NULL,
		[SessionFinishTicks] [bigint] NOT NULL,
		[Removed] [bit] NOT NULL,
		[CreatedDate] [datetime] NOT NULL,
		[CreatedUserId] [bigint] NULL,
		[UpdatedDate] [datetime] NOT NULL,
		[UpdatedUserId] [bigint] NULL,
		[UpdatedTicks] [bigint] NOT NULL,
	 CONSTRAINT [PK_Archive_ActionLog] PRIMARY KEY CLUSTERED 
	(
		[ActionLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_ActionLog]') AND name = N'IX_nuwa_Archive_ActionLog_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_ActionLog_AccountId] ON [dbo].[nuwa_Archive_ActionLog] 
(
[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_ActionLog]') AND name = N'IX_nuwa_Archive_ActionLog_BookingId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_ActionLog_BookingId] ON [dbo].[nuwa_Archive_ActionLog] 
(
[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Note]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_Note](
	[NoteId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[BookingId] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[Note] [nvarchar](max) NULL,
	[NoteClassification] [int] NOT NULL,
	[NoteOnline] [bit] NOT NULL,
	[NoteDepositRequired] [bit] NOT NULL,
	[EmailSent] [bit] NOT NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_Note] PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Note]') AND name = N'IX_nuwa_Archive_Note_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Note_AccountId] ON [dbo].[nuwa_Archive_Note] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Note]') AND name = N'IX_nuwa_Archive_Note_BookingId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Note_BookingId] ON [dbo].[nuwa_Archive_Note] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Note]') AND name = N'IX_nuwa_Archive_Note_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Note_CustomerId] ON [dbo].[nuwa_Archive_Note] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_ErrorLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_ErrorLog](
	[ErrorLogId] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveId] [int] NOT NULL,
	[ErrorProcedure] [varchar](255) NOT NULL,
	[ErrorLineNo] [int] NOT NULL,
	[ErrorNumber] [int] NOT NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_nuwa_Archive_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[ErrorLogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_ErrorLog_CreatedDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_ErrorLog]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_ErrorLog_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive_ErrorLog] ADD  CONSTRAINT [DF_nuwa_Archive_ErrorLog_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END


End
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasTelephone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_CustomerAliasTelephone](
	[CustomerAliasTelephoneId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[Telephone] [nvarchar](255) NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_CustomerAliasTelephone] PRIMARY KEY CLUSTERED 
(
	[CustomerAliasTelephoneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasTelephone]') AND name = N'IX_nuwa_Archive_CustomerAliasTelephone_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasTelephone_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasTelephone] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasTelephone]') AND name = N'IX_nuwa_Archive_CustomerAliasTelephone_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasTelephone_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasTelephone] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasName]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_CustomerAliasName](
	[CustomerAliasNameId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Title] [int] NOT NULL,
	[Forename] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_CustomerAliasName] PRIMARY KEY CLUSTERED 
(
	[CustomerAliasNameId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasName]') AND name = N'IX_nuwa_Archive_CustomerAliasName_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasName_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasName] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasName]') AND name = N'IX_nuwa_Archive_CustomerAliasName_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasName_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasName] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasEmail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_CustomerAliasEmail](
	[CustomerAliasEmailId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_CustomerAliasEmail] PRIMARY KEY CLUSTERED 
(
	[CustomerAliasEmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasEmail]') AND name = N'IX_nuwa_Archive_CustomerAliasEmail_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasEmail_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasEmail] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasEmail]') AND name = N'IX_nuwa_Archive_CustomerAliasEmail_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasEmail_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasEmail] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasAddress]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_CustomerAliasAddress](
	[CustomerAliasAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[PropertyName] [nvarchar](255) NULL,
	[Street] [nvarchar](255) NULL,
	[Town] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](255) NULL,
	[Latitude] [real] NOT NULL,
	[Longitude] [real] NOT NULL,
	[DistanceToDestination] [real] NOT NULL,
	[DestinationLatitude] [real] NOT NULL,
	[DestinationLongitude] [real] NOT NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_CustomerAliasAddress] PRIMARY KEY CLUSTERED 
(
	[CustomerAliasAddressId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasAddress]') AND name = N'IX_nuwa_Archive_CustomerAliasAddress_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasAddress_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasAddress] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasAddress]') AND name = N'IX_nuwa_Archive_CustomerAliasAddress_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasAddress_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasAddress] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_Customer](
	[CustomerId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CustomerReference] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Title] [int] NOT NULL,
	[Forename] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Telephone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[LoyaltyCardNumber] [nvarchar](255) NULL,
	[Company] [nvarchar](255) NULL,
	[BirthDateYear] [int] NOT NULL,
	[BirthDateMonth] [int] NOT NULL,
	[BirthDateDay] [int] NOT NULL,
	[AnniversaryDateYear] [int] NOT NULL,
	[AnniversaryDateMonth] [int] NOT NULL,
	[AnniversaryDateDay] [int] NOT NULL,
	[OccasionDateYear] [int] NOT NULL,
	[OccasionDateMonth] [int] NOT NULL,
	[OccasionDateDay] [int] NOT NULL,
	[Vegetarian] [bit] NOT NULL,
	[Vegan] [bit] NOT NULL,
	[GlutenFree] [bit] NOT NULL,
	[NutAllergy] [bit] NOT NULL,
	[FoodAllergies] [nvarchar](255) NULL,
	[Information01] [nvarchar](255) NULL,
	[Information02] [nvarchar](255) NULL,
	[Information03] [nvarchar](255) NULL,
	[Address] [nvarchar](max) NULL,
	[PropertyName] [nvarchar](255) NULL,
	[Street] [nvarchar](255) NULL,
	[Town] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](255) NULL,
	[Latitude] [real] NOT NULL,
	[Longitude] [real] NOT NULL,
	[DistanceToDestination] [real] NOT NULL,
	[DestinationLatitude] [real] NOT NULL,
	[DestinationLongitude] [real] NOT NULL,
	[MarketingEmailSubject] [nvarchar](255) NULL,
	[MarketingEmailSentDate] [datetime] NULL,
	[KeepUpdated] [bit] NOT NULL,
	[Archived] [bit] NOT NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Customer]') AND name = N'IX_nuwa_Archive_Customer_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Customer_AccountId] ON [dbo].[nuwa_Archive_Customer] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO 
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingQueue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_BookingQueue](
	[BookingQueueId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[DinerId] [bigint] NULL,
	[OffersEventsContentId] [bigint] NULL,
	[BookingReference] [nvarchar](255) NOT NULL,
	[BookingDate] [date] NOT NULL,
	[TimeHour] [int] NOT NULL,
	[TimeMinute] [int] NOT NULL,
	[TimeTicks] [bigint] NOT NULL,
	[People] [int] NOT NULL,
	[BookingLinkedDate] [date] NULL,
	[BookingLinkedTimeTicks] [bigint] NOT NULL,
	[BookingStage] [int] NOT NULL,
	[BookingStageDescription] [nvarchar](50) NULL,
	[BookingProcessDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Archive_BookingQueue] PRIMARY KEY CLUSTERED 
(
	[BookingQueueId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingQueue]') AND name = N'IX_nuwa_Archive_BookingQueue_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingQueue_AccountId] ON [dbo].[nuwa_Archive_BookingQueue] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingQueue]') AND name = N'IX_nuwa_Archive_BookingQueue_BookingReference')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingQueue_BookingReference] ON [dbo].[nuwa_Archive_BookingQueue] 
(
	[BookingReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_BookingOrder](
	[BookingOrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[BookingId] [bigint] NOT NULL,
	[ContentId] [bigint] NOT NULL,
	[WebsiteContentId] [bigint] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [real] NOT NULL,
	[TotalPrepTime] [int] NOT NULL,
	[Completed] [bit] NOT NULL,
	[PreOrder] [bit] NOT NULL,
	[Person] [nvarchar](255) NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_BookingOrder] PRIMARY KEY CLUSTERED 
(
	[BookingOrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingOrder]') AND name = N'IX_nuwa_Archive_BookingOrder_BookingId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingOrder_BookingId] ON [dbo].[nuwa_Archive_BookingOrder] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingOrder]') AND name = N'IX_nuwa_Archive_BookingOrder_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingOrder_AccountId] ON [dbo].[nuwa_Archive_BookingOrder] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Booking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive_Booking](
	[BookingId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CustomerId] [bigint] NULL,
	[DinerId] [bigint] NULL,
	[OffersEventsContentId] [bigint] NULL,
	[BookingReference] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Title] [int] NOT NULL,
	[Forename] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[LoyaltyCardNumber] [nvarchar](100) NULL,
	[HotelBookingReference] [nvarchar](100) NULL,
	[HotelRoomNumber] [nvarchar](10) NULL,
	[EventCode] [nvarchar](100) NULL,
	[PromotionCode] [nvarchar](100) NULL,
	[FunctionRoom] [bit] NOT NULL,
	[TableNumber] [int] NOT NULL,
	[BookingDate] [date] NOT NULL,
	[BookingDateTimeTicks] [bigint] NOT NULL,
	[BookingLinkedDate] [date] NULL,
	[BookingLinkedDateTimeTicks] [bigint] NOT NULL,
	[BookingWeb] [bit] NOT NULL,
	[BookingWalkIn] [bit] NOT NULL,
	[BookingPhone] [bit] NOT NULL,
	[BookingEmail] [bit] NOT NULL,
	[BookingInHouse] [bit] NOT NULL,
	[BookingTakeOut] [bit] NOT NULL,
	[BookingTakeOutOnline] [bit] NOT NULL,
	[WebBookingSourceFacebook] [bit] NOT NULL,
	[WebBookingSourceTwitter] [bit] NOT NULL,
	[WebBookingSourceTripAdvisor] [bit] NOT NULL,
	[WebBookingSourceWebsite] [bit] NOT NULL,
	[WebBookingSourceOther] [bit] NOT NULL,
	[DayOfWeek] [nvarchar](50) NOT NULL,
	[MonthOfYear] [nvarchar](50) NOT NULL,
	[DayNumber] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[DayOfYear] [int] NOT NULL,
	[TimeHour] [int] NOT NULL,
	[TimeMinute] [int] NOT NULL,
	[TimeDisplay] [nvarchar](5) NOT NULL,
	[People] [int] NOT NULL,
	[Children] [int] NOT NULL,
	[Adults] [int] NOT NULL,
	[AllocatedTables] [int] NOT NULL,
	[AllocatedSeats] [int] NOT NULL,
	[Requested] [bit] NOT NULL,
	[RequestedHighChair] [bit] NOT NULL,
	[RequestedDisabledAccess] [bit] NOT NULL,
	[RequestedPriorityBooking] [bit] NOT NULL,
	[Arrived] [bit] NOT NULL,
	[TimeArrivedDate] [date] NULL,
	[TimeArrivedHour] [int] NOT NULL,
	[TimeArrivedMinute] [int] NOT NULL,
	[TimeArrivedDisplay] [nvarchar](5) NULL,
	[TimeAllocatedDate] [date] NULL,
	[TimeAllocatedHour] [int] NOT NULL,
	[TimeAllocatedMinute] [int] NOT NULL,
	[TimeAllocatedDisplay] [nvarchar](5) NULL,
	[TimeAssignedDate] [date] NULL,
	[TimeAssignedHour] [int] NOT NULL,
	[TimeAssignedMinute] [int] NOT NULL,
	[TimeAssignedDisplay] [nvarchar](5) NULL,
	[TimeCompletedDate] [date] NULL,
	[TimeCompletedHour] [int] NOT NULL,
	[TimeCompletedMinute] [int] NOT NULL,
	[TimeCompletedDisplay] [nvarchar](5) NULL,
	[TimeDepartureDate] [date] NULL,
	[TimeDepartureDateTimeTicks] [bigint] NOT NULL,
	[TimeDepartureHour] [int] NOT NULL,
	[TimeDepartureMinute] [int] NOT NULL,
	[TimeDepartureDisplay] [nvarchar](5) NULL,
	[BlockBooking] [bit] NOT NULL,
	[TurnoverTimeOverride] [bit] NOT NULL,
	[TurnoverTimeOverrideMinutes] [int] NOT NULL,
	[WarningPrompted] [bit] NOT NULL,
	[OverridePrompted] [bit] NOT NULL,
	[ReminderSent] [bit] NOT NULL,
	[ReminderCompleteSent] [bit] NOT NULL,
	[PreOrderRequired] [bit] NOT NULL,
	[PreOrderReceived] [bit] NOT NULL,
	[DepositRequired] [bit] NOT NULL,
	[DepositRequiredAmount] [real] NOT NULL,
	[DepositReceived] [bit] NOT NULL,
	[DepositReceivedAmount] [real] NOT NULL,
	[DepositOutstanding] [real] NOT NULL,
	[BookingOrderCount] [int] NOT NULL,
	[BookingOrderStatus] [int] NOT NULL,
	[BookingOrderProcessTime] [int] NOT NULL,
	[BookingOrderDeliveryTime] [int] NOT NULL,
	[BookingOrderProgress] [int] NOT NULL,
	[BookingOrderPickupAvailable] [bit] NOT NULL,
	[BookingOrderDeliveryAvailable] [bit] NOT NULL,
	[BookingOrderUsePrepTime] [bit] NOT NULL,
	[BookingOrderUseDistanceTime] [bit] NOT NULL,
	[BookingOrderSubTotal] [real] NOT NULL,
	[BookingOrderDeliveryCharge] [real] NOT NULL,
	[BookingOrderTotal] [real] NOT NULL,
	[BookingOrderForPickup] [bit] NOT NULL,
	[BookingOrderForDelivery] [bit] NOT NULL,
	[BookingOrderPrepTimeTotal] [int] NOT NULL,
	[BookingOrderKeepMeUpdated] [bit] NOT NULL,
	[BookingOrderTimeOverride] [bit] NOT NULL,
	[BookingOrderTimeEstimatedDeliveryDate] [date] NULL,
	[BookingOrderTimeEstimatedDeliveryHour] [int] NOT NULL,
	[BookingOrderTimeEstimatedDeliveryMinute] [int] NOT NULL,
	[BookingOrderTimeEstimatedDeliveryDisplay] [nvarchar](5) NULL,
	[BookingOrderTimeEstimatedPickupDate] [date] NULL,
	[BookingOrderTimeEstimatedPickupHour] [int] NOT NULL,
	[BookingOrderTimeEstimatedPickupMinute] [int] NOT NULL,
	[BookingOrderTimeEstimatedPickupDisplay] [nvarchar](5) NULL,
	[BookingOrderTimeConfirmedDate] [date] NULL,
	[BookingOrderTimeConfirmedHour] [int] NOT NULL,
	[BookingOrderTimeConfirmedMinute] [int] NOT NULL,
	[BookingOrderTimeConfirmedDisplay] [nvarchar](5) NULL,
	[BookingOrderTimeReadyDate] [date] NULL,
	[BookingOrderTimeReadyHour] [int] NOT NULL,
	[BookingOrderTimeReadyMinute] [int] NOT NULL,
	[BookingOrderTimeReadyDisplay] [nvarchar](5) NULL,
	[BookingOrderTimeCompletedDate] [date] NULL,
	[BookingOrderTimeCompletedHour] [int] NOT NULL,
	[BookingOrderTimeCompletedMinute] [int] NOT NULL,
	[BookingOrderTimeCompletedDisplay] [nvarchar](5) NULL,
	[BookingOrderStarted] [bit] NOT NULL,
	[BookingOrderReady] [bit] NOT NULL,
	[BookingOrderCompleted] [bit] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[AddressPropertyName] [nvarchar](255) NULL,
	[AddressStreet] [nvarchar](255) NULL,
	[AddressTown] [nvarchar](255) NULL,
	[AddressCity] [nvarchar](255) NULL,
	[AddressCounty] [nvarchar](255) NULL,
	[AddressPostalCode] [nvarchar](10) NULL,
	[AddressCountry] [nvarchar](255) NULL,
	[AddressLatitude] [real] NOT NULL,
	[AddressLongitude] [real] NOT NULL,
	[AddressDistanceToDestination] [real] NOT NULL,
	[AddressDestinationLatitude] [real] NOT NULL,
	[AddressDestinationLongitude] [real] NOT NULL,
	[BillFoodAmount] [real] NOT NULL,
	[BillDrinksAmount] [real] NOT NULL,
	[BillAmount] [real] NOT NULL,
	[FeedbackQuestion01] [nvarchar](255) NULL,
	[FeedbackQuestion02] [nvarchar](255) NULL,
	[FeedbackQuestion03] [nvarchar](255) NULL,
	[FeedbackQuestion04] [nvarchar](255) NULL,
	[FeedbackQuestion05] [nvarchar](255) NULL,
	[FeedbackAnswer01] [nvarchar](255) NULL,
	[FeedbackAnswer02] [nvarchar](255) NULL,
	[FeedbackAnswer03] [nvarchar](255) NULL,
	[FeedbackAnswer04] [nvarchar](255) NULL,
	[FeedbackAnswer05] [nvarchar](255) NULL,
	[FeedbackRating] [int] NOT NULL,
	[ScheduleException] [bit] NOT NULL,
	[StatusLiveView] [int] NOT NULL,
	[StatusCompletedBySystem] [bit] NOT NULL,
	[Removed] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUserId] [bigint] NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedUserId] [bigint] NULL,
	[UpdatedTicks] [bigint] NOT NULL,
 CONSTRAINT [PK_Archive_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Booking]') AND name = N'IX_nuwa_Archive_Booking_AccountId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Booking_AccountId] ON [dbo].[nuwa_Archive_Booking] 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Booking]') AND name = N'IX_nuwa_Archive_Booking_CustomerId')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Booking_CustomerId] ON [dbo].[nuwa_Archive_Booking] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Booking]') AND name = N'IX_nuwa_Archive_Booking_BookingReference')
CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Booking_BookingReference] ON [dbo].[nuwa_Archive_Booking] 
(
	[BookingReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nuwa_Archive](
	[ArchiveId] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[AccountEmail] [nvarchar](255) NOT NULL,
	[Key] [varchar](255) NULL,
	[StartDate] [varchar](50) NULL,
	[EndDate] [varchar](50) NULL,
	[Action] [varchar](50) NOT NULL,
	[BatchSize] [int] NOT NULL,
	[OrphanLifeSpan] [int] NOT NULL,
	[Failed] [int] NOT NULL,
	[CompletionDate] [smalldatetime] NULL,
 CONSTRAINT [PK_nuwa_Archive] PRIMARY KEY CLUSTERED 
(
	[ArchiveId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_Booking_Key]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_Booking_Key]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive] ADD  CONSTRAINT [DF_nuwa_Archive_Booking_Key]  DEFAULT ('BATCH') FOR [Key]
END


End
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_StartDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive] ADD  CONSTRAINT [DF_nuwa_Archive_StartDate]  DEFAULT ('NULL') FOR [StartDate]
END


End
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_EndDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_EndDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive] ADD  CONSTRAINT [DF_nuwa_Archive_EndDate]  DEFAULT ('NULL') FOR [EndDate]
END


End
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_Action]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_Action]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive] ADD  CONSTRAINT [DF_nuwa_Archive_Action]  DEFAULT ('ARCHIVE') FOR [Action]
END


End
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_BatchSize]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_BatchSize]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive] ADD  CONSTRAINT [DF_nuwa_Archive_BatchSize]  DEFAULT ((10000)) FOR [BatchSize]
END


End
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_OrphanLifeSpan]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_OrphanLifeSpan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive] ADD  CONSTRAINT [DF_nuwa_Archive_OrphanLifeSpan]  DEFAULT ((18)) FOR [OrphanLifeSpan]
END


End
GO
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_nuwa_Archive_Failed]') AND parent_object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_Failed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[nuwa_Archive] ADD  CONSTRAINT [DF_nuwa_Archive_Failed]  DEFAULT ((0)) FOR [Failed]
END


End
GO

-- STORED PROCEDURES
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Booking]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_Booking]


			@AccountId INT,
			@JobType VARCHAR(255),
			@Key VARCHAR(50),
			@StartDate VARCHAR(255),
			@EndDate VARCHAR(255),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure VARCHAR(255) OUTPUT, 
			@ErrorLine INT OUTPUT, 
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT     
		            
			AS
			BEGIN

				BEGIN TRY
            
					SET NOCOUNT ON

					DECLARE @sqlIdentityInsertOn VARCHAR(50)
					DECLARE @sqlIdentityInsertOff VARCHAR(50)
					DECLARE @sqlInsert VARCHAR(MAX)
					DECLARE @sqlSelect VARCHAR(MAX)
					DECLARE @sqlSubQuery VARCHAR(MAX)
					DECLARE @sqlCount NVARCHAR(500)
					DECLARE @sqlCommand NVARCHAR(MAX)
					DECLARE @Option VARCHAR(MAX)
					DECLARE @Source VARCHAR(255)
					DECLARE @SourceAlias VARCHAR(255)
					DECLARE @Destination VARCHAR(255)
 					DECLARE @DestinationAlias VARCHAR(255)
				        
                    -- SWITCH COUNT SETTING FROM @Key TO LOCAL VARIABLE
                    -- SET KEY TO BATCH (CALLING PROCEDURE SHOULD ONLY USE THE COUNT OPTION FOR BATCH JOBS) 
                    IF(@RowCount > 0)
						SET @Option = ''RUN''
					ELSE
						SET @Option = ''COUNT''

					IF(@JobType = ''ARCHIVE'')
						BEGIN  
							SET @Source =''nuwa_Booking''
							SET @SourceAlias = ''B''
							SET @Destination =''nuwa_Archive_Booking''
							SET @DestinationAlias = ''AB''
						END
					ELSE
						BEGIN
							SET @Source =''nuwa_Archive_Booking''
							SET @SourceAlias = ''AB''
							SET @Destination =''nuwa_Booking''
							SET @DestinationAlias = ''B''
						END

					SET @sqlIdentityInsertOn = ''SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON''  
					SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF'' 
					                                         
					-- MAIN QUERY 
					SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
										(
											BookingId,
											AccountId,
											CustomerId,
											DinerId,
											OffersEventsContentId,
											BookingReference,
											Name,
											Title,
											Forename,
											Surname,
											Telephone,
											Email,
											LoyaltyCardNumber,
											HotelBookingReference,
											HotelRoomNumber,
											EventCode,
											PromotionCode,
											FunctionRoom,
											TableNumber,
											BookingDate,
											BookingDateTimeTicks,
											BookingLinkedDate,
											BookingLinkedDateTimeTicks,
											BookingWeb,
											BookingWalkIn,
											BookingPhone,
											BookingEmail,
											BookingInHouse,
											BookingTakeOut,
											BookingTakeOutOnline,
											WebBookingSourceFacebook,
											WebBookingSourceTwitter,
											WebBookingSourceTripAdvisor,
											WebBookingSourceWebsite,
											WebBookingSourceOther,
											[DayOfWeek],
											[MonthOfYear],
											DayNumber,
											[Day],
											[Month],
											[Year],
											[DayOfYear],
											TimeHour,
											TimeMinute,
											TimeDisplay,
											People,
											Children,
											Adults,
											AllocatedTables,
											AllocatedSeats,
											Requested,
											RequestedHighChair,
											RequestedDisabledAccess,
											RequestedPriorityBooking,
											Arrived,
											TimeArrivedDate,
											TimeArrivedHour,
											TimeArrivedMinute,
											TimeArrivedDisplay,
											TimeAllocatedDate,
											TimeAllocatedHour,
											TimeAllocatedMinute,
											TimeAllocatedDisplay,
											TimeAssignedDate,
											TimeAssignedHour,
											TimeAssignedMinute,
											TimeAssignedDisplay,
											TimeCompletedDate,
											TimeCompletedHour,
											TimeCompletedMinute,
											TimeCompletedDisplay,
											TimeDepartureDate,
											TimeDepartureDateTimeTicks,
											TimeDepartureHour,
											TimeDepartureMinute,
											TimeDepartureDisplay,
											BlockBooking,
											TurnoverTimeOverride,
											TurnoverTimeOverrideMinutes,
											WarningPrompted,
											OverridePrompted,
											ReminderSent,
											ReminderCompleteSent,
											PreOrderRequired,
											PreOrderReceived,
											DepositRequired,
											DepositRequiredAmount,
											DepositReceived,
											DepositReceivedAmount,
											DepositOutstanding,
											BookingOrderCount,
											BookingOrderStatus,
											BookingOrderProcessTime,
											BookingOrderDeliveryTime,
											BookingOrderProgress,
											BookingOrderPickupAvailable,
											BookingOrderDeliveryAvailable,
											BookingOrderUsePrepTime,
											BookingOrderUseDistanceTime,
											BookingOrderSubTotal,
											BookingOrderDeliveryCharge,
											BookingOrderTotal,
											BookingOrderForPickup,
											BookingOrderForDelivery,
											BookingOrderPrepTimeTotal,
											BookingOrderKeepMeUpdated,
											BookingOrderTimeOverride,
											BookingOrderTimeEstimatedDeliveryDate,
											BookingOrderTimeEstimatedDeliveryHour,
											BookingOrderTimeEstimatedDeliveryMinute,
											BookingOrderTimeEstimatedDeliveryDisplay,
											BookingOrderTimeEstimatedPickupDate,
											BookingOrderTimeEstimatedPickupHour,
											BookingOrderTimeEstimatedPickupMinute,
											BookingOrderTimeEstimatedPickupDisplay,
											BookingOrderTimeConfirmedDate,
											BookingOrderTimeConfirmedHour,
											BookingOrderTimeConfirmedMinute,
											BookingOrderTimeConfirmedDisplay,
											BookingOrderTimeReadyDate,
											BookingOrderTimeReadyHour,
											BookingOrderTimeReadyMinute,
											BookingOrderTimeReadyDisplay,
											BookingOrderTimeCompletedDate,
											BookingOrderTimeCompletedHour,
											BookingOrderTimeCompletedMinute,
											BookingOrderTimeCompletedDisplay,
											BookingOrderStarted,
											BookingOrderReady,
											BookingOrderCompleted,
											[Address],
											AddressPropertyName,
											AddressStreet,
											AddressTown,
											AddressCity,
											AddressCounty,
											AddressPostalCode,
											AddressCountry,
											AddressLatitude,
											AddressLongitude,
											AddressDistanceToDestination,
											AddressDestinationLatitude,
											AddressDestinationLongitude,
											BillFoodAmount,
											BillDrinksAmount,
											BillAmount,
											FeedbackQuestion01,
											FeedbackQuestion02,
											FeedbackQuestion03,
											FeedbackQuestion04,
											FeedbackQuestion05,
											FeedbackAnswer01,
											FeedbackAnswer02,
											FeedbackAnswer03,
											FeedbackAnswer04,
											FeedbackAnswer05,
											FeedbackRating,
											ScheduleException,
											StatusLiveView,
											StatusCompletedBySystem,
											Removed,
											CreatedDate,
											CreatedUserId,
											UpdatedDate,
											UpdatedUserId,
											UpdatedTicks

										)''

					SET @sqlSelect = '' SELECT TOP([$BATCHSIZE])
											[$SRC_ALIAS].BookingId,
											[$SRC_ALIAS].AccountId,
											[$SRC_ALIAS].CustomerId,
											[$SRC_ALIAS].DinerId,
											[$SRC_ALIAS].OffersEventsContentId,
											[$SRC_ALIAS].BookingReference,
											[$SRC_ALIAS].Name,
											[$SRC_ALIAS].Title,
											[$SRC_ALIAS].Forename,
											[$SRC_ALIAS].Surname,
											[$SRC_ALIAS].Telephone,
											[$SRC_ALIAS].Email,
											[$SRC_ALIAS].LoyaltyCardNumber,
											[$SRC_ALIAS].HotelBookingReference,
											[$SRC_ALIAS].HotelRoomNumber,
											[$SRC_ALIAS].EventCode,
											[$SRC_ALIAS].PromotionCode,
											[$SRC_ALIAS].FunctionRoom,
											[$SRC_ALIAS].TableNumber,
											[$SRC_ALIAS].BookingDate,
											[$SRC_ALIAS].BookingDateTimeTicks,
											[$SRC_ALIAS].BookingLinkedDate,
											[$SRC_ALIAS].BookingLinkedDateTimeTicks,
											[$SRC_ALIAS].BookingWeb,
											[$SRC_ALIAS].BookingWalkIn,
											[$SRC_ALIAS].BookingPhone,
											[$SRC_ALIAS].BookingEmail,
											[$SRC_ALIAS].BookingInHouse,
											[$SRC_ALIAS].BookingTakeOut,
											[$SRC_ALIAS].BookingTakeOutOnline,
											[$SRC_ALIAS].WebBookingSourceFacebook,
											[$SRC_ALIAS].WebBookingSourceTwitter,
											[$SRC_ALIAS].WebBookingSourceTripAdvisor,
											[$SRC_ALIAS].WebBookingSourceWebsite,
											[$SRC_ALIAS].WebBookingSourceOther,
											[$SRC_ALIAS].[DayOfWeek],
											[$SRC_ALIAS].[MonthOfYear],
											[$SRC_ALIAS].DayNumber,
											[$SRC_ALIAS].[Day],
											[$SRC_ALIAS].[Month],
											[$SRC_ALIAS].[Year],
											[$SRC_ALIAS].[DayOfYear],
											[$SRC_ALIAS].TimeHour,
											[$SRC_ALIAS].TimeMinute,
											[$SRC_ALIAS].TimeDisplay,
											[$SRC_ALIAS].People,
											[$SRC_ALIAS].Children,
											[$SRC_ALIAS].Adults,
											[$SRC_ALIAS].AllocatedTables,
											[$SRC_ALIAS].AllocatedSeats,
											[$SRC_ALIAS].Requested,
											[$SRC_ALIAS].RequestedHighChair,
											[$SRC_ALIAS].RequestedDisabledAccess,
											[$SRC_ALIAS].RequestedPriorityBooking,
											[$SRC_ALIAS].Arrived,
											[$SRC_ALIAS].TimeArrivedDate,
											[$SRC_ALIAS].TimeArrivedHour,
											[$SRC_ALIAS].TimeArrivedMinute,
											[$SRC_ALIAS].TimeArrivedDisplay,
											[$SRC_ALIAS].TimeAllocatedDate,
											[$SRC_ALIAS].TimeAllocatedHour,
											[$SRC_ALIAS].TimeAllocatedMinute,
											[$SRC_ALIAS].TimeAllocatedDisplay,
											[$SRC_ALIAS].TimeAssignedDate,
											[$SRC_ALIAS].TimeAssignedHour,
											[$SRC_ALIAS].TimeAssignedMinute,
											[$SRC_ALIAS].TimeAssignedDisplay,
											[$SRC_ALIAS].TimeCompletedDate,
											[$SRC_ALIAS].TimeCompletedHour,
											[$SRC_ALIAS].TimeCompletedMinute,
											[$SRC_ALIAS].TimeCompletedDisplay,
											[$SRC_ALIAS].TimeDepartureDate,
											[$SRC_ALIAS].TimeDepartureDateTimeTicks,
											[$SRC_ALIAS].TimeDepartureHour,
											[$SRC_ALIAS].TimeDepartureMinute,
											[$SRC_ALIAS].TimeDepartureDisplay,
											[$SRC_ALIAS].BlockBooking,
											[$SRC_ALIAS].TurnoverTimeOverride,
											[$SRC_ALIAS].TurnoverTimeOverrideMinutes,
											[$SRC_ALIAS].WarningPrompted,
											[$SRC_ALIAS].OverridePrompted,
											[$SRC_ALIAS].ReminderSent,
											[$SRC_ALIAS].ReminderCompleteSent,
											[$SRC_ALIAS].PreOrderRequired,
											[$SRC_ALIAS].PreOrderReceived,
											[$SRC_ALIAS].DepositRequired,
											[$SRC_ALIAS].DepositRequiredAmount,
											[$SRC_ALIAS].DepositReceived,
											[$SRC_ALIAS].DepositReceivedAmount,
											[$SRC_ALIAS].DepositOutstanding,
											[$SRC_ALIAS].BookingOrderCount,
											[$SRC_ALIAS].BookingOrderStatus,
											[$SRC_ALIAS].BookingOrderProcessTime,
											[$SRC_ALIAS].BookingOrderDeliveryTime,
											[$SRC_ALIAS].BookingOrderProgress,
											[$SRC_ALIAS].BookingOrderPickupAvailable,
											[$SRC_ALIAS].BookingOrderDeliveryAvailable,
											[$SRC_ALIAS].BookingOrderUsePrepTime,
											[$SRC_ALIAS].BookingOrderUseDistanceTime,
											[$SRC_ALIAS].BookingOrderSubTotal,
											[$SRC_ALIAS].BookingOrderDeliveryCharge,
											[$SRC_ALIAS].BookingOrderTotal,
											[$SRC_ALIAS].BookingOrderForPickup,
											[$SRC_ALIAS].BookingOrderForDelivery,
											[$SRC_ALIAS].BookingOrderPrepTimeTotal,
											[$SRC_ALIAS].BookingOrderKeepMeUpdated,
											[$SRC_ALIAS].BookingOrderTimeOverride,
											[$SRC_ALIAS].BookingOrderTimeEstimatedDeliveryDate,
											[$SRC_ALIAS].BookingOrderTimeEstimatedDeliveryHour,
											[$SRC_ALIAS].BookingOrderTimeEstimatedDeliveryMinute,
											[$SRC_ALIAS].BookingOrderTimeEstimatedDeliveryDisplay,
											[$SRC_ALIAS].BookingOrderTimeEstimatedPickupDate,
											[$SRC_ALIAS].BookingOrderTimeEstimatedPickupHour,
											[$SRC_ALIAS].BookingOrderTimeEstimatedPickupMinute,
											[$SRC_ALIAS].BookingOrderTimeEstimatedPickupDisplay,
											[$SRC_ALIAS].BookingOrderTimeConfirmedDate,
											[$SRC_ALIAS].BookingOrderTimeConfirmedHour,
											[$SRC_ALIAS].BookingOrderTimeConfirmedMinute,
											[$SRC_ALIAS].BookingOrderTimeConfirmedDisplay,
											[$SRC_ALIAS].BookingOrderTimeReadyDate,
											[$SRC_ALIAS].BookingOrderTimeReadyHour,
											[$SRC_ALIAS].BookingOrderTimeReadyMinute,
											[$SRC_ALIAS].BookingOrderTimeReadyDisplay,
											[$SRC_ALIAS].BookingOrderTimeCompletedDate,
											[$SRC_ALIAS].BookingOrderTimeCompletedHour,
											[$SRC_ALIAS].BookingOrderTimeCompletedMinute,
											[$SRC_ALIAS].BookingOrderTimeCompletedDisplay,
											[$SRC_ALIAS].BookingOrderStarted,
											[$SRC_ALIAS].BookingOrderReady,
											[$SRC_ALIAS].BookingOrderCompleted,
											[$SRC_ALIAS].[Address],
											[$SRC_ALIAS].AddressPropertyName,
											[$SRC_ALIAS].AddressStreet,
											[$SRC_ALIAS].AddressTown,
											[$SRC_ALIAS].AddressCity,
											[$SRC_ALIAS].AddressCounty,
											[$SRC_ALIAS].AddressPostalCode,
											[$SRC_ALIAS].AddressCountry,
											[$SRC_ALIAS].AddressLatitude,
											[$SRC_ALIAS].AddressLongitude,
											[$SRC_ALIAS].AddressDistanceToDestination,
											[$SRC_ALIAS].AddressDestinationLatitude,
											[$SRC_ALIAS].AddressDestinationLongitude,
											[$SRC_ALIAS].BillFoodAmount,
											[$SRC_ALIAS].BillDrinksAmount,
											[$SRC_ALIAS].BillAmount,
											[$SRC_ALIAS].FeedbackQuestion01,
											[$SRC_ALIAS].FeedbackQuestion02,
											[$SRC_ALIAS].FeedbackQuestion03,
											[$SRC_ALIAS].FeedbackQuestion04,
											[$SRC_ALIAS].FeedbackQuestion05,
											[$SRC_ALIAS].FeedbackAnswer01,
											[$SRC_ALIAS].FeedbackAnswer02,
											[$SRC_ALIAS].FeedbackAnswer03,
											[$SRC_ALIAS].FeedbackAnswer04,
											[$SRC_ALIAS].FeedbackAnswer05,
											[$SRC_ALIAS].FeedbackRating,
											[$SRC_ALIAS].ScheduleException,
											[$SRC_ALIAS].StatusLiveView,
											[$SRC_ALIAS].StatusCompletedBySystem,
											[$SRC_ALIAS].Removed,
											[$SRC_ALIAS].CreatedDate,
											[$SRC_ALIAS].CreatedUserId,
											[$SRC_ALIAS].UpdatedDate,
											[$SRC_ALIAS].UpdatedUserId,
											[$SRC_ALIAS].UpdatedTicks'' 
											+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
											+ '' INNER JOIN [$SUBQUERY]''
											+ '' ON [$SRC_ALIAS].BookingId = Sub.BookingId'' 
											 
                                                                                

				SET @sqlSubQuery = ''(SELECT Src.BookingId''
									+ '' FROM [$SRC_TABLE_NAME] Src''
									+ '' LEFT JOIN [$DEST_TABLE_NAME] Dest''
									+ '' ON Src.BookingId = Dest.BookingId''
									+ '' WHERE Src.AccountId = [$ACCOUNTID]''
									+ '' AND Src.BookingReference = [$QTE][$Key][$QTE]) Sub''

				IF(@Key = ''BATCH'')

					BEGIN
					
						SET @sqlSubQuery = ''(SELECT Src.BookingId''
											+ '' FROM [$SRC_TABLE_NAME] Src''
											+ '' LEFT JOIN [$DEST_TABLE_NAME] Dest''
											+ '' ON Src.BookingId = Dest.BookingId''
											+ '' WHERE CAST(Src.CreatedDate AS DATE)''
											+ '' BETWEEN CAST(CONVERT(DATE,[$QTE][$StartDate][$QTE],105) AS DATE)''
											+ '' AND CAST(CONVERT(DATE,[$QTE][$EndDate][$QTE],105) AS DATE)''
											+ '' AND Src.AccountId = [$ACCOUNTID]''
											+ '' AND Dest.BookingId IS NULL) Sub''



					END

				SET @sqlCount = N''SELECT @RowCount = COUNT(Sub.BookingId) FROM [$SUBQUERY]''
				
                -- OVERWRITE PLACEHOLDERS SUBQUERY
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SOURCE_ALIAS]'', @sqlSubQuery) > 0)    	  
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SOURCE_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSubQuery) > 0)     
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DESTINATION_ALIAS]'', @sqlSubQuery) > 0)      
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$DESTINATION_ALIAS]'',@DestinationAlias) 

				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                                                                        
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)

				IF (CHARINDEX(''[$QTE]'', @sqlSubQuery) > 0)    
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$QTE]'',CHAR(39))

				IF (CHARINDEX(''[$STARTDATE]'', @sqlSubQuery) > 0)      
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$STARTDATE]'',@StartDate)

				IF (CHARINDEX(''[$ENDDATE]'', @sqlSubQuery) > 0)    
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ENDDATE]'',@EndDate)

				IF (CHARINDEX(''[$KEY]'', @sqlSubQuery) > 0)    
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$KEY]'',@KEY)

				-- OVERWRITE PLACEHOLDERS INSERT
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)   
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)      
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff,''[$DEST_TABLE_NAME]'',@Destination) 

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)     
					SET @sqlInsert = REPLACE(@sqlInsert,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS SELECT
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)   	  
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)   	  
					SET @sqlSelect = REPLACE(@sqlSelect,''[$BATCHSIZE]'',@BatchSize)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)   	  
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SUBQUERY]'',@sqlSubQuery)

				-- OVERWRITE PLACEHOLDERS RECORDCOUNT
				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SUBQUERY]'', @sqlSubQuery)



				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END
					           
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_Booking''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()

			END CATCH

		END'
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_BookingOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_BookingOrder]


			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT   
		            
			AS
			BEGIN

				BEGIN TRY
            
					SET NOCOUNT ON

					DECLARE @sqlIdentityInsertOn VARCHAR(50)
					DECLARE @sqlIdentityInsertOff VARCHAR(50)
					DECLARE @sqlInsert VARCHAR(MAX)
					DECLARE @sqlSelect VARCHAR(MAX)
					DECLARE @sqlSubQuery VARCHAR(MAX)
					DECLARE @sqlCount NVARCHAR(500)
					DECLARE @sqlCommand NVARCHAR(MAX)
					DECLARE @Option VARCHAR(MAX)
					DECLARE @Source VARCHAR(255)
					DECLARE @SourceAlias VARCHAR(255)
					DECLARE @Destination VARCHAR(255)
 					DECLARE @DestinationAlias VARCHAR(255)
				         
                    -- SWITCH COUNT SETTING FROM @Key TO LOCAL VARIABLE
                    -- SET KEY TO BATCH (CALLING PROCEDURE SHOULD ONLY USE THE COUNT OPTION FOR BATCH JOBS) 
                    IF(@RowCount > 0)
						SET @Option = ''RUN''
					ELSE
						SET @Option = ''COUNT''
   
					IF(@JobType = ''ARCHIVE'')
						BEGIN  
							SET @Source =''nuwa_BookingOrder''
							SET @SourceAlias = ''BO''
							SET @Destination =''nuwa_Archive_BookingOrder''
							SET @DestinationAlias = ''ABO''
						END
					ELSE
						BEGIN
							SET @Source =''nuwa_Archive_BookingOrder''
							SET @SourceAlias = ''ABO''
							SET @Destination =''nuwa_BookingOrder''
							SET @DestinationAlias = ''BO''
						END

					SET @sqlIdentityInsertOn = ''SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON''  
					SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF'' 
					                                         
					-- MAIN QUERY 
					SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
										(
											BookingOrderId,
											AccountId,
											BookingId,
											ContentId,
											WebsiteContentId,
											Comment,
											Quantity,
											TotalPrice,
											TotalPrepTime,
											Completed,
											PreOrder,
											Person,
											Removed,
											CreatedDate,
											CreatedUserId,
											UpdatedDate,
											UpdatedUserId,
											UpdatedTicks

										)''

					SET @sqlSelect = ''  SELECT TOP([$BATCHSIZE])   
											[$SRC_ALIAS].BookingOrderId AS BookingOrderId,
											[$SRC_ALIAS].AccountId AS AccountId,
											[$SRC_ALIAS].BookingId AS BookingId,
											[$SRC_ALIAS].ContentId AS ContentId,
											[$SRC_ALIAS].WebsiteContentId AS WebsiteContentId,
											[$SRC_ALIAS].Comment AS Comment,
											[$SRC_ALIAS].Quantity AS Quantity,
											[$SRC_ALIAS].TotalPrice AS TotalPrice,
											[$SRC_ALIAS].TotalPrepTime AS TotalPrepTime,
											[$SRC_ALIAS].Completed AS Completed,
											[$SRC_ALIAS].PreOrder AS PreOrder,
											[$SRC_ALIAS].Person AS Person,
											[$SRC_ALIAS].Removed AS Removed,
											[$SRC_ALIAS].CreatedDate AS CreatedDate,
											[$SRC_ALIAS].CreatedUserId AS CreatedUserId,
											[$SRC_ALIAS].UpdatedDate AS UpdatedDate,
											[$SRC_ALIAS].UpdatedUserId AS UpdatedUserId,
											[$SRC_ALIAS].UpdatedTicks AS UpdatedTicks'' 
											+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
											+ '' INNER JOIN ([$SUBQUERY]) Sub''
											+ '' ON [$SRC_ALIAS].BookingId = Sub.BookingId''
											+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
											+ '' ON [$SRC_ALIAS].BookingOrderId = [$DEST_ALIAS].BookingOrderId'' 
											+ '' WHERE [$DEST_ALIAS].BookingOrderId IS NULL''
		
		
				SET @sqlSubquery = ''SELECT B.BookingId''
									+ '' FROM nuwa_Booking B''
									+ '' INNER JOIN nuwa_Archive_Booking AB''
									+ '' ON B.BookingId = AB.BookingId''
									+ '' WHERE B.AccountId = [$ACCOUNTID]''



				SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].BookingOrderId)''
								+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' 
								+ '' INNER JOIN ([$SUBQUERY]) Sub''
								+ '' ON [$SRC_ALIAS].BookingId = Sub.BookingId''
								+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
								+ '' ON [$SRC_ALIAS].BookingOrderId = [$DEST_ALIAS].BookingOrderId''
								+ '' WHERE [$DEST_ALIAS].BookingOrderId IS NULL''
								
				
               	-- OVERWRITE PLACEHOLDERS FOR IDENTITY INSERT ON
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)                                                                                
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS FOR IDENTITY INSERT OFF	
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)                                                                                
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS FOR INSERT	
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)                                                                                
					SET @sqlInsert = REPLACE(@sqlInsert,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS FOR SUBQUERY	
				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
				  
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SRC_ALIAS]'',@SourceAlias)

				-- OVERWRITE PLACEHOLDERS FOR SELECT
				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$BATCHSIZE]'',@BatchSize)
							
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$DEST_ALIAS]'',@DestinationAlias)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SUBQUERY]'',@sqlSubQuery)    

				-- OVERWRITE PLACEHOLDERS FOR ROWCOUNT	
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$DEST_ALIAS]'',@DestinationAlias)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SUBQUERY]'',@sqlSubQuery)
					  
				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END
					           
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_BookingOrder''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()

			END CATCH

		END





' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_BookingQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_BookingQueue]


			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT   
		            
			AS
			BEGIN

				BEGIN TRY
            
					SET NOCOUNT ON

					DECLARE @sqlIdentityInsertOn VARCHAR(50)
					DECLARE @sqlIdentityInsertOff VARCHAR(50)
					DECLARE @sqlInsert VARCHAR(MAX)
					DECLARE @sqlSelect VARCHAR(MAX)
					DECLARE @sqlSubQuery VARCHAR(MAX)
					DECLARE @sqlCount NVARCHAR(1000)
					DECLARE @sqlCommand NVARCHAR(MAX)
					DECLARE @Option VARCHAR(MAX)
					DECLARE @Source VARCHAR(255)
					DECLARE @SourceAlias VARCHAR(255)
					DECLARE @Destination VARCHAR(255)
 					DECLARE @DestinationAlias VARCHAR(255)
				         
                    
                    -- SWITCH COUNT SETTING FROM @Key TO LOCAL VARIABLE
                    -- SET KEY TO BATCH (CALLING PROCEDURE SHOULD ONLY USE THE COUNT OPTION FOR BATCH JOBS) 
                    IF(@RowCount > 0)
						SET @Option = ''RUN''
                    ELSE
						SET @Option = ''COUNT''
                         
					IF(@JobType = ''ARCHIVE'')
						BEGIN  
							SET @Source =''nuwa_BookingQueue''
							SET @SourceAlias = ''BQ''
							SET @Destination =''nuwa_Archive_BookingQueue''
							SET @DestinationAlias = ''ABQ''
						END
					ELSE
						BEGIN
							SET @Source =''nuwa_Archive_BookingQueue''
							SET @SourceAlias = ''ABQ''
							SET @Destination =''nuwa_BookingQueue''
							SET @DestinationAlias = ''BQ''
						END

					SET @sqlIdentityInsertOn = ''SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON''  
					SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF'' 
					                                         
					-- MAIN QUERY 
					SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
										(
										
											BookingQueueId,
											AccountId,
											DinerId,
											OffersEventsContentId,
											BookingReference,
											BookingDate,
											TimeHour,
											TimeMinute,
											TimeTicks,
											People,
											BookingLinkedDate,
											BookingLinkedTimeTicks,
											BookingStage,
											BookingStageDescription,
											BookingProcessDate

										)''

					SET @sqlSelect = ''  SELECT TOP([$BATCHSIZE])   
											[$SRC_ALIAS].BookingQueueId,
											[$SRC_ALIAS].AccountId,
											[$SRC_ALIAS].DinerId,
											[$SRC_ALIAS].OffersEventsContentId,
											[$SRC_ALIAS].BookingReference,
											[$SRC_ALIAS].BookingDate,
											[$SRC_ALIAS].TimeHour,
											[$SRC_ALIAS].TimeMinute,
											[$SRC_ALIAS].TimeTicks,
											[$SRC_ALIAS].People,
											[$SRC_ALIAS].BookingLinkedDate,
											[$SRC_ALIAS].BookingLinkedTimeTicks,
											[$SRC_ALIAS].BookingStage,
											[$SRC_ALIAS].BookingStageDescription,
											[$SRC_ALIAS].BookingProcessDate''
											+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
											+ '' INNER JOIN ([$SUBQUERY]) Sub''
											+ '' ON [$SRC_ALIAS].AccountId = Sub.AccountId''
											+ '' AND [$SRC_ALIAS].BookingReference = Sub.BookingReference''
											+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
											+ '' ON [$SRC_ALIAS].BookingQueueId = [$DEST_ALIAS].BookingQueueId'' 
											+ '' WHERE [$DEST_ALIAS].BookingQueueId IS NULL''
		
		
				SET @sqlSubquery = ''SELECT MIN(B.AccountId) AS AccountId,B.BookingReference''
									+ '' FROM nuwa_Booking B''
									+ '' INNER JOIN nuwa_Archive_Booking AB''
									+ '' ON B.AccountId = AB.AccountId''
									+ '' AND B.BookingReference = AB.BookingReference''
									+ '' WHERE B.AccountId = [$ACCOUNTID]''
									+ '' GROUP BY B.BookingReference''



				SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].BookingQueueId)''
								+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' 
								+ '' INNER JOIN ([$SUBQUERY]) Sub''
								+ '' ON [$SRC_ALIAS].AccountId = Sub.AccountId''
								+ '' AND [$SRC_ALIAS].BookingReference = Sub.BookingReference''
								+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
								+ '' ON [$SRC_ALIAS].BookingQueueId = [$DEST_ALIAS].BookingQueueId''
								+ '' WHERE [$DEST_ALIAS].BookingQueueId IS NULL''
								
				
               	-- OVERWRITE PLACEHOLDERS FOR IDENTITY INSERT ON
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)                                                                                
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS FOR IDENTITY INSERT OFF	
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)                                                                                
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS FOR INSERT	
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)                                                                                
					SET @sqlInsert = REPLACE(@sqlInsert,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS FOR SUBQUERY	
				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
				  
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SRC_ALIAS]'',@SourceAlias)

				-- OVERWRITE PLACEHOLDERS FOR SELECT
				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$BATCHSIZE]'',@BatchSize)
							
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$DEST_ALIAS]'',@DestinationAlias)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SUBQUERY]'',@sqlSubQuery)    

				-- OVERWRITE PLACEHOLDERS FOR ROWCOUNT	
				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$DEST_ALIAS]'',@DestinationAlias)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SUBQUERY]'',@sqlSubQuery)
					  
				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END
					           
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_BookingQueue''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()

			END CATCH

		END





' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Customer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_Customer]

		@AccountId INT,
		@JobType VARCHAR(50),
		@BatchSize INT,
		@OrphanLifeSpan INT,
		@RowCount INT OUTPUT,
		@ErrorProcedure NVARCHAR(200) OUTPUT,
		@ErrorLine INT OUTPUT,
		@ErrorNumber INT OUTPUT,
		@ErrorMessage NVARCHAR(4000) OUTPUT
                                
		AS

		  BEGIN

				BEGIN TRY
            
					SET NOCOUNT ON

					DECLARE @Option VARCHAR(50)
					DECLARE @sqlIdentityInsertOn VARCHAR(255)
					DECLARE @sqlIdentityInsertOff VARCHAR(255)
					DECLARE @sqlInsert VARCHAR(MAX)
					DECLARE @sqlSelect VARCHAR(MAX)
					DECLARE @sqlFrom VARCHAR(MAX)
					DECLARE @sqlCount NVARCHAR(255)
					DECLARE @sqlCommand NVARCHAR(MAX)
					DECLARE @sqlSubQuery NVARCHAR(MAX)
					DECLARE @Source VARCHAR(255)
					DECLARE @SourceAlias VARCHAR(255)
					DECLARE @Destination VARCHAR(255)
					DECLARE @DestinationAlias VARCHAR(255)
				
				    	-- SET OPTION BASED ON ROWCOUNT VALUE
				    IF(@RowCount > 0)   
						SET @Option = ''RUN''
					ELSE
						SET @Option = ''COUNT''  
						               
					IF(@JobType = ''ARCHIVE'')
						BEGIN  

							SET @Source =''nuwa_Customer''
							SET @SourceAlias = ''C''
							SET @Destination =''nuwa_Archive_Customer''
							SET @DestinationAlias =''AC''

							-- BUILD SUB QUERY
							-- JOIN BOOKING TO BOOKING ARCHIVE TO RETURN BOOKINGS MARKED FOR DELETION
							-- ON COMPLETION OF PROCESS (cteInvalidBookings).
							-- FIND ALL UNIQUE CUSTOMERID''s THAT HAVE BOOKINGS NOT MARKED FOR DELTION
							-- VIA ''cteInvalidBookings'' (cteValidBookings)
							-- FIND ALL CUSTOMERS THAT DO NOT EXIST IN cteValidBookings THAT EXCEED
							-- THE SPECIFIED LIFESPAN ''NO MONTHS OLD'' (cteInvalidCustomers)
							--
							SET @sqlSubQuery = '';WITH cteInvalidBookings(AccountId,BookingId)''
										+ '' AS (''
										+ ''			SELECT B.AccountId,B.BookingId'' 
										+ ''			FROM nuwa_Booking B''
										+ ''			INNER JOIN nuwa_Archive_Booking AB''
										+ ''			ON B.BookingId = AB.BookingId''
										+ ''			WHERE B.AccountId = [$ACCOUNTID]''
										+ ''		),''	
										+ '' cteValidBookings(AccountId,CustomerId)''
										+ '' AS (''
										+ ''			SELECT MIN(SRC.AccountId),SRC.CustomerId''
										+ ''			FROM nuwa_Booking SRC''
										+ ''				LEFT JOIN cteInvalidBookings AS Transfers''
										+ ''				ON SRC.BookingId = Transfers.BookingId''
										+ ''			WHERE SRC.AccountId = [$ACCOUNTID]''
										+ ''				AND SRC.CustomerId IS NOT NULL''
										+ ''				AND Transfers.BookingId IS NULL''
										+ ''			GROUP BY SRC.CustomerId''
										+ ''		),''
										+ '' cteOrphanedCustomer(AccountId,CustomerId)''
										+ '' AS (''
										+ ''		SELECT C.AccountId,C.CustomerId''
										+ ''		FROM nuwa_Customer C''
										+ ''			LEFT JOIN cteValidBookings AS VB''
										+ ''			ON C.CustomerId = VB.CustomerId''
										+ ''			LEFT JOIN nuwa_Archive_Customer AC''
										+ ''			ON C.CustomerId = AC.CustomerId''
										+ ''		WHERE C.AccountId = [$ACCOUNTID]''
										+ ''			AND VB.CustomerId IS NULL''
										+ ''			AND AC.CustomerId IS NULL''
										+ ''			AND DATEDIFF(MONTH,C.CreatedDate,GETDATE()) >= [$ORPHANED_LIFE_SPAN]''
										+ '')''
									
							SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ORPHANED_LIFE_SPAN]'',@OrphanLifeSpan) 


						END

					ELSE

						BEGIN

							SET @Source =''nuwa_Archive_Customer''
							SET @SourceAlias = ''AC''
							SET @Destination =''nuwa_Customer''
							SET @DestinationAlias =''C''
						
							SET @sqlSubQuery = '';WITH cteRestoreCustomer(AccountId,CustomerId)''
											 + '' AS (''
											 + ''			SELECT MIN(B.AccountId),B.CustomerId'' 
											 + ''			FROM nuwa_Booking B''
											 + ''			INNER JOIN nuwa_Archive_Booking AB''
											 + ''			ON B.BookingId = AB.BookingId''
											 + ''			WHERE B.AccountId = [$ACCOUNTID]''
											 + ''			GROUP BY B.CustomerId''
											 + ''	),''
											 + ''	cteOrphanedCustomer(AccountId,CustomerId)''
											 + '' AS (''
											 + ''			SELECT AC.AccountId,AC.CustomerId'' 
											 + ''			FROM nuwa_Archive_Customer AC''
											 + ''			INNER JOIN cteRestoreCustomer ORPH''
											 + ''			ON AC.CustomerId = ORPH.CustomerId''
											 + ''			LEFT JOIN nuwa_Customer C''
											 + ''			ON AC.CustomerId = C.CustomerId''
											 + ''			WHERE AC.AccountId = [$ACCOUNTID]''
											 + ''			AND C.CustomerId IS NULL''
											 + ''	)''


						END
				                                           
					SET @sqlIdentityInsertOn = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON''
					SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF''

					SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].CustomerId)'' 

					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)  

					SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
										(
											CustomerId,
											AccountId,
											CustomerReference,
											Name,
											Title,
											Forename,
											Surname,
											Telephone,
											Email,
											LoyaltyCardNumber,
											Company,
											BirthDateYear,
											BirthDateMonth,
											BirthDateDay,
											AnniversaryDateYear,
											AnniversaryDateMonth,
											AnniversaryDateDay,
											OccasionDateYear,
											OccasionDateMonth,
											OccasionDateDay,
											Vegetarian,
											Vegan,
											GlutenFree,
											NutAllergy,
											FoodAllergies,
											Information01,
											Information02,
											Information03,
											[Address],
											PropertyName,
											Street,
											Town,
											City,
											County,
											PostalCode,
											Country,
											Latitude,
											Longitude,
											DistanceToDestination,
											DestinationLatitude,
											DestinationLongitude,
											MarketingEmailSubject,
											MarketingEmailSentDate,
											KeepUpdated,
											Archived,
											Removed,
											CreatedDate,
											CreatedUserId,
											UpdatedDate,
											UpdatedUserId,
											UpdatedTicks
										)''

					SET @sqlSelect = '' SELECT TOP([$BATCHSIZE])
											[$SRC_ALIAS].CustomerId,
											[$SRC_ALIAS].AccountId,
											[$SRC_ALIAS].CustomerReference,
											[$SRC_ALIAS].Name,
											[$SRC_ALIAS].Title,
											[$SRC_ALIAS].Forename,
											[$SRC_ALIAS].Surname,
											[$SRC_ALIAS].Telephone,
											[$SRC_ALIAS].Email,
											[$SRC_ALIAS].LoyaltyCardNumber,
											[$SRC_ALIAS].Company,
											[$SRC_ALIAS].BirthDateYear,
											[$SRC_ALIAS].BirthDateMonth,
											[$SRC_ALIAS].BirthDateDay,
											[$SRC_ALIAS].AnniversaryDateYear,
											[$SRC_ALIAS].AnniversaryDateMonth,
											[$SRC_ALIAS].AnniversaryDateDay,
											[$SRC_ALIAS].OccasionDateYear,
											[$SRC_ALIAS].OccasionDateMonth,
											[$SRC_ALIAS].OccasionDateDay,
											[$SRC_ALIAS].Vegetarian,
											[$SRC_ALIAS].Vegan,
											[$SRC_ALIAS].GlutenFree,
											[$SRC_ALIAS].NutAllergy,
											[$SRC_ALIAS].FoodAllergies,
											[$SRC_ALIAS].Information01,
											[$SRC_ALIAS].Information02,
											[$SRC_ALIAS].Information03,
											[$SRC_ALIAS].[Address],
											[$SRC_ALIAS].PropertyName,
											[$SRC_ALIAS].Street,
											[$SRC_ALIAS].Town,
											[$SRC_ALIAS].City,
											[$SRC_ALIAS].County,
											[$SRC_ALIAS].PostalCode,
											[$SRC_ALIAS].Country,
											[$SRC_ALIAS].Latitude,
											[$SRC_ALIAS].Longitude,
											[$SRC_ALIAS].DistanceToDestination,
											[$SRC_ALIAS].DestinationLatitude,
											[$SRC_ALIAS].DestinationLongitude,
											[$SRC_ALIAS].MarketingEmailSubject,
											[$SRC_ALIAS].MarketingEmailSentDate,
											[$SRC_ALIAS].KeepUpdated,
											[$SRC_ALIAS].Archived,
											[$SRC_ALIAS].Removed,
											[$SRC_ALIAS].CreatedDate,
											[$SRC_ALIAS].CreatedUserId,
											[$SRC_ALIAS].UpdatedDate,
											[$SRC_ALIAS].UpdatedUserId,
											[$SRC_ALIAS].UpdatedTicks''

					SET @sqlFrom = '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]
											INNER JOIN cteOrphanedCustomer AS ORPH
											ON [$SRC_ALIAS].CustomerId = ORPH.CustomerId
											AND [$SRC_ALIAS].AccountId = [$ACCOUNTID]''


					-- OVERWRITE PLACEHOLDERS WITH VALUES
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn,''[$DEST_TABLE_NAME]'',@Destination)

					SET @sqlInsert = REPLACE(@sqlInsert,''[$DEST_TABLE_NAME]'',@Destination)

					SET @sqlSelect = REPLACE(@sqlSelect,''[$ACCOUNTID]'',@AccountId)
					SET @sqlSelect = REPLACE(@sqlSelect,''[$BATCHSIZE]'',@BatchSize)
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_TABLE_NAME]'',@Source)
					SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_ALIAS]'',@SourceAlias)
					SET @sqlSelect = REPLACE(@sqlSelect,''[$DEST_TABLE_NAME]'',@Destination)

					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)  

					SET @sqlFrom = REPLACE(@sqlFrom,''[$SRC_TABLE_NAME]'',@Source)
					SET @sqlFrom = REPLACE(@sqlFrom,''[$SRC_ALIAS]'',@SourceAlias)
					SET @sqlFrom = REPLACE(@sqlFrom,''[$ACCOUNTID]'',@AccountId)

					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff,''[$DEST_TABLE_NAME]'',@Destination)
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)
				
					IF(@Option = ''RUN'')
					
						BEGIN
						
							SET @sqlCommand = @sqlIdentityInsertOn 
											+ @sqlSubquery
											+ @sqlInsert
											+ @sqlSelect 
											+ @sqlFrom 
											+ @sqlIdentityInsertOff

							-- RUN QUERY TO COPY DATA
							EXEC(@sqlCommand)
							
							-- DECREMENT ROW COUNT
							SET @RowCount = (@RowCount - @BatchSize)
							
						END
						
					ELSE
					
						BEGIN

							-- RERUN AS SELECT TO SET @@ROWCOUNT
							SET @sqlCommand = @sqlSubquery
											+ @sqlCount
											+ @sqlFrom

							-- RUN QUERY TO SET @ROWCOUNT
							EXEC sp_executesql @sqlCommand, N''@RowCount INT OUT'', @RowCount OUT
							
						END
                                                                
					-- RETURN SUCCESS
					SET @ErrorNumber = 0

				END TRY

				BEGIN CATCH
	        
	                  
					-- RETURN ERROR INFO
					SET @ErrorProcedure = ''aspnet_Archive_Maintenance_Customer''
					SET @ErrorLine = ERROR_LINE()
					SET @ErrorNumber = ERROR_NUMBER()
					SET @ErrorMessage = ERROR_MESSAGE()
				

				END CATCH

		  END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasName]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT
                                
		AS
		BEGIN

			BEGIN TRY
            
				SET NOCOUNT ON 

				DECLARE @sqlInsert VARCHAR(1000)
				DECLARE @sqlSelect VARCHAR(2000)
				DECLARE @sqlSubQuery VARCHAR(MAX)
				DECLARE @sqlCommand NVARCHAR(MAX)
				DECLARE @sqlCount NVARCHAR(MAX) 
				DECLARE @sqlIdentityInsertOn VARCHAR(1000)  
				DECLARE @sqlIdentityInsertOff VARCHAR(1000)
				DECLARE @Option VARCHAR(50)  
				DECLARE @Source VARCHAR(50)
				DECLARE @SourceAlias VARCHAR(50)
				DECLARE @Destination VARCHAR(50)
				DECLARE @DestinationAlias VARCHAR(50)
                              
				IF(@RowCount > 0)
					SET @Option = ''RUN''
				ELSE
					SET @Option = ''COUNT''
					
				IF(@JobType = ''ARCHIVE'')
					BEGIN
						SET @Source = ''nuwa_CustomerAliasName''
						SET @SourceAlias = ''CAN''
						SET @Destination = ''nuwa_Archive_CustomerAliasName''
						SET @DestinationAlias = ''ACAN''
					END
				ELSE
					BEGIN
						SET @Source = ''nuwa_Archive_CustomerAliasName''
						SET @SourceAlias = ''ACAN''
						SET @Destination = ''nuwa_CustomerAliasName''
						SET @DestinationAlias = ''CAN''
					END

				SET @sqlIdentityInsertOn = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON ''
				SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF ''

				SET @sqlSubQuery = ''SELECT C.CustomerId''
						 + '' FROM nuwa_Customer C''
						 + '' INNER JOIN nuwa_Archive_Customer AC''
						 + '' ON C.AccountId = AC.AccountId''
						 + '' AND C.CustomerId = AC.CustomerId''
						 + '' WHERE C.AccountId = [$ACCOUNTID]''


				SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
									(
										CustomerAliasNameId,
										AccountId,
										CustomerId,
										Name,
										Title,
										Forename,
										Surname,
										Removed,
										CreatedDate,
										CreatedUserId,
										UpdatedDate,
										UpdatedUserId,
										UpdatedTicks    
									)''

				SET @sqlSelect = '' SELECT TOP([$BATCHSIZE])   
							[$SRC_ALIAS].CustomerAliasNameId,
							[$SRC_ALIAS].AccountId,
							[$SRC_ALIAS].CustomerId,
							[$SRC_ALIAS].Name,
							[$SRC_ALIAS].Title,
							[$SRC_ALIAS].Forename,
							[$SRC_ALIAS].Surname,
							[$SRC_ALIAS].Removed,
							[$SRC_ALIAS].CreatedDate,
							[$SRC_ALIAS].CreatedUserId,
							[$SRC_ALIAS].UpdatedDate,
							[$SRC_ALIAS].UpdatedUserId,
							[$SRC_ALIAS].UpdatedTicks''
							+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' + 
							+ '' INNER JOIN ([$SUBQUERY]) Sub''
							+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
							+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
							+ '' ON [$SRC_ALIAS].CustomerAliasNameId = [$DEST_ALIAS].CustomerAliasNameId''
							+ '' WHERE [$DEST_ALIAS].CustomerAliasNameId IS NULL''
           


				SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].CustomerAliasNameId)''
								+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' + 
								+ '' INNER JOIN ([$SUBQUERY]) Sub''
								+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
								+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
								+ '' ON [$SRC_ALIAS].CustomerAliasNameId = [$DEST_ALIAS].CustomerAliasNameId''
								+ '' WHERE [$DEST_ALIAS].CustomerAliasNameId IS NULL''




					-- OVERWRITE PLACEHOLDERS INSERT OFF
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)                                                                                
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS INSERT ON
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)                                                                                
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff ,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS INSERT
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)                                                                                
					SET @sqlInsert = REPLACE(@sqlInsert ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS WITHIN THE SUBQUERY
				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
					
				-- OVERWRITE PLACEHOLDERS SELECT
				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$BATCHSIZE]'',@BatchSize)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_ALIAS]'',@DestinationAlias)

				-- OVERWRITE PLACEHOLDERS SELECT COUNT
				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount ) > 0)                                                                                
					SET @sqlCount  = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount= REPLACE(@sqlCount ,''[$DEST_ALIAS]'',@DestinationAlias)
                                                                                                 
        
                        
				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END

                                                         
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
                  
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_CustomerAliasName''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()
			

			END CATCH

		END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasAddress]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasAddress]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT
                                
		AS
		BEGIN

			BEGIN TRY
            
				SET NOCOUNT ON 

				DECLARE @sqlInsert VARCHAR(1000)
				DECLARE @sqlSelect VARCHAR(2000)
				DECLARE @sqlSubQuery VARCHAR(MAX)
				DECLARE @sqlCommand NVARCHAR(MAX)
				DECLARE @sqlCount NVARCHAR(MAX) 
				DECLARE @sqlIdentityInsertOn VARCHAR(1000)  
				DECLARE @sqlIdentityInsertOff VARCHAR(1000)
				DECLARE @Option VARCHAR(50)  
				DECLARE @Source VARCHAR(50)
				DECLARE @SourceAlias VARCHAR(50)
				DECLARE @Destination VARCHAR(50)
				DECLARE @DestinationAlias VARCHAR(50)
                              
				IF(@RowCount > 0)
					SET @Option = ''RUN''
				ELSE
					SET @Option = ''COUNT''
					
				IF(@JobType = ''ARCHIVE'')
					BEGIN
						SET @Source = ''nuwa_CustomerAliasAddress''
						SET @SourceAlias = ''CAA''
						SET @Destination = ''nuwa_Archive_CustomerAliasAddress''
						SET @DestinationAlias = ''ACAA''
					END
				ELSE
					BEGIN
						SET @Source = ''nuwa_Archive_CustomerAliasAddress''
						SET @SourceAlias = ''ACAA''
						SET @Destination = ''nuwa_CustomerAliasAddress''
						SET @DestinationAlias = ''CAA''
					END

				SET @sqlIdentityInsertOn = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON ''
				SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF ''

				SET @sqlSubQuery = ''SELECT C.CustomerId''
									+ '' FROM nuwa_Customer C''
									+ '' INNER JOIN nuwa_Archive_Customer AC''
									+ '' ON C.AccountId = AC.AccountId''
									+ '' AND C.CustomerId = AC.CustomerId''
									+ '' WHERE C.AccountId = [$ACCOUNTID]''


				SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
								(
									CustomerAliasAddressId,
									AccountId,
									CustomerId,
									[Address],
									PropertyName,
									Street,
									Town,
									City,
									County,
									PostalCode,
									Country,
									Latitude,
									Longitude,
									DistanceToDestination,
									DestinationLatitude,
									DestinationLongitude,
									Removed,
									CreatedDate,
									CreatedUserId,
									UpdatedDate,
									UpdatedUserId,
									UpdatedTicks   
								)''

				SET @sqlSelect = '' SELECT TOP([$BATCHSIZE])   
									[$SRC_ALIAS].CustomerAliasAddressId,
									[$SRC_ALIAS].AccountId,
									[$SRC_ALIAS].CustomerId,
									[$SRC_ALIAS].[Address],
									[$SRC_ALIAS].PropertyName,
									[$SRC_ALIAS].Street,
									[$SRC_ALIAS].Town,
									[$SRC_ALIAS].City,
									[$SRC_ALIAS].County,
									[$SRC_ALIAS].PostalCode,
									[$SRC_ALIAS].Country,
									[$SRC_ALIAS].Latitude,
									[$SRC_ALIAS].Longitude,
									[$SRC_ALIAS].DistanceToDestination,
									[$SRC_ALIAS].DestinationLatitude,
									[$SRC_ALIAS].DestinationLongitude,
									[$SRC_ALIAS].Removed,
									[$SRC_ALIAS].CreatedDate,
									[$SRC_ALIAS].CreatedUserId,
									[$SRC_ALIAS].UpdatedDate,
									[$SRC_ALIAS].UpdatedUserId,
									[$SRC_ALIAS].UpdatedTicks''
									+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''  
									+ '' INNER JOIN ([$SUBQUERY]) Sub''
									+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
									+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
									+ '' ON [$SRC_ALIAS].CustomerAliasAddressId = [$DEST_ALIAS].CustomerAliasAddressId''
									+ '' WHERE [$DEST_ALIAS].CustomerAliasAddressId IS NULL''
           


				SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].CustomerAliasAddressId)''
								+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
								+ '' INNER JOIN ([$SUBQUERY]) Sub''
								+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
								+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
								+ '' ON [$SRC_ALIAS].CustomerAliasAddressId = [$DEST_ALIAS].CustomerAliasAddressId''
								+ '' WHERE [$DEST_ALIAS].CustomerAliasAddressId IS NULL''




					-- OVERWRITE PLACEHOLDERS INSERT OFF
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)                                                                                
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS INSERT ON
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)                                                                                
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff ,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS INSERT
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)                                                                                
					SET @sqlInsert = REPLACE(@sqlInsert ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS WITHIN THE SUBQUERY
				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
					
				-- OVERWRITE PLACEHOLDERS SELECT
				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$BATCHSIZE]'',@BatchSize)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_ALIAS]'',@DestinationAlias)

				-- OVERWRITE PLACEHOLDERS SELECT COUNT
				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount ) > 0)                                                                                
					SET @sqlCount  = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount= REPLACE(@sqlCount ,''[$DEST_ALIAS]'',@DestinationAlias)
                                                                                                 
        
                        
				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END

                                                         
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
                  
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_CustomerAliasAddress''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()
			

			END CATCH

		END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasEmail]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT
                                
		AS
		BEGIN

			BEGIN TRY
            
				SET NOCOUNT ON 

				DECLARE @sqlInsert VARCHAR(1000)
				DECLARE @sqlSelect VARCHAR(2000)
				DECLARE @sqlSubQuery VARCHAR(MAX)
				DECLARE @sqlCommand NVARCHAR(MAX)
				DECLARE @sqlCount NVARCHAR(MAX) 
				DECLARE @sqlIdentityInsertOn VARCHAR(1000)  
				DECLARE @sqlIdentityInsertOff VARCHAR(1000)
				DECLARE @Option VARCHAR(50)  
				DECLARE @Source VARCHAR(50)
				DECLARE @SourceAlias VARCHAR(50)
				DECLARE @Destination VARCHAR(50)
				DECLARE @DestinationAlias VARCHAR(50)
                              
				IF(@RowCount > 0)
					SET @Option = ''RUN''
				ELSE
					SET @Option = ''COUNT''
					
				IF(@JobType = ''ARCHIVE'')
					BEGIN
						SET @Source = ''nuwa_CustomerAliasEmail''
						SET @SourceAlias = ''CAE''
						SET @Destination = ''nuwa_Archive_CustomerAliasEmail''
						SET @DestinationAlias = ''ACAE''
					END
				ELSE
					BEGIN
						SET @Source = ''nuwa_Archive_CustomerAliasEmail''
						SET @SourceAlias = ''ACAE''
						SET @Destination = ''nuwa_CustomerAliasEmail''
						SET @DestinationAlias = ''CAE''
					END

				SET @sqlIdentityInsertOn = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON ''
				SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF ''

				SET @sqlSubQuery = ''SELECT C.CustomerId''
						 + '' FROM nuwa_Customer C''
						 + '' INNER JOIN nuwa_Archive_Customer AC''
						 + '' ON C.AccountId = AC.AccountId''
						 + '' AND C.CustomerId = AC.CustomerId''
						 + '' WHERE C.AccountId = [$ACCOUNTID]''


				SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
									(
										CustomerAliasEmailId,
										AccountId,
										CustomerId,
										Email,
										Removed,
										CreatedDate,
										CreatedUserId,
										UpdatedDate,
										UpdatedUserId,
										UpdatedTicks  
									)''

				SET @sqlSelect = ''SELECT TOP([$BATCHSIZE])   
									[$SRC_ALIAS].CustomerAliasEmailId,
									[$SRC_ALIAS].AccountId,
									[$SRC_ALIAS].CustomerId,
									[$SRC_ALIAS].Email,
									[$SRC_ALIAS].Removed,
									[$SRC_ALIAS].CreatedDate,
									[$SRC_ALIAS].CreatedUserId,
									[$SRC_ALIAS].UpdatedDate,
									[$SRC_ALIAS].UpdatedUserId,
									[$SRC_ALIAS].UpdatedTicks''
									+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''  
									+ '' INNER JOIN ([$SUBQUERY]) Sub''
									+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
									+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
									+ '' ON [$SRC_ALIAS].CustomerAliasEmailId = [$DEST_ALIAS].CustomerAliasEmailId''
									+ '' WHERE [$DEST_ALIAS].CustomerAliasEmailId IS NULL''
	           


				SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].CustomerAliasEmailId)''
									+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' + 
									+ '' INNER JOIN ([$SUBQUERY]) Sub''
									+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
									+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
									+ '' ON [$SRC_ALIAS].CustomerAliasEmailId = [$DEST_ALIAS].CustomerAliasEmailId''
									+ '' WHERE [$DEST_ALIAS].CustomerAliasEmailId IS NULL''




					-- OVERWRITE PLACEHOLDERS INSERT OFF
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)                                                                                
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS INSERT ON
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)                                                                                
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff ,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS INSERT
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)                                                                                
					SET @sqlInsert = REPLACE(@sqlInsert ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS WITHIN THE SUBQUERY
				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
					
				-- OVERWRITE PLACEHOLDERS SELECT
				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$BATCHSIZE]'',@BatchSize)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_ALIAS]'',@DestinationAlias)

				-- OVERWRITE PLACEHOLDERS SELECT COUNT
				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount ) > 0)                                                                                
					SET @sqlCount  = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount= REPLACE(@sqlCount ,''[$DEST_ALIAS]'',@DestinationAlias)
                                                                                                 
        
                        
				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END

                                                         
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
                  
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_CustomerAliasEmail''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()
			

			END CATCH

		END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasTelephone]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasTelephone]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT
                                
		AS
		BEGIN

			BEGIN TRY
            
				SET NOCOUNT ON 

				DECLARE @sqlInsert VARCHAR(1000)
				DECLARE @sqlSelect VARCHAR(2000)
				DECLARE @sqlSubQuery VARCHAR(MAX)
				DECLARE @sqlCommand NVARCHAR(MAX)
				DECLARE @sqlCount NVARCHAR(MAX) 
				DECLARE @sqlIdentityInsertOn VARCHAR(1000)  
				DECLARE @sqlIdentityInsertOff VARCHAR(1000)
				DECLARE @Option VARCHAR(50)  
				DECLARE @Source VARCHAR(50)
				DECLARE @SourceAlias VARCHAR(50)
				DECLARE @Destination VARCHAR(50)
				DECLARE @DestinationAlias VARCHAR(50)
                              
				IF(@RowCount > 0)
					SET @Option = ''RUN''
				ELSE
					SET @Option = ''COUNT''
					
				IF(@JobType = ''ARCHIVE'')
					BEGIN
						SET @Source = ''nuwa_CustomerAliasTelephone''
						SET @SourceAlias = ''CAT''
						SET @Destination = ''nuwa_Archive_CustomerAliasTelephone''
						SET @DestinationAlias = ''ACAT''
					END
				ELSE
					BEGIN
						SET @Source = ''nuwa_Archive_CustomerAliasTelephone''
						SET @SourceAlias = ''ACAT''
						SET @Destination = ''nuwa_CustomerAliasTelephone''
						SET @DestinationAlias = ''CAT''
					END

				SET @sqlIdentityInsertOn = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON ''
				SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF ''

				SET @sqlSubQuery = ''SELECT C.CustomerId''
						 + '' FROM nuwa_Customer C''
						 + '' INNER JOIN nuwa_Archive_Customer AC''
						 + '' ON C.AccountId = AC.AccountId''
						 + '' AND C.CustomerId = AC.CustomerId''
						 + '' WHERE C.AccountId = [$ACCOUNTID]''


				SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
									(
										CustomerAliasTelephoneId,
										AccountId,
										CustomerId,
										Telephone,
										Removed,
										CreatedDate,
										CreatedUserId,
										UpdatedDate,
										UpdatedUserId,
										UpdatedTicks    
									)''

				SET @sqlSelect = '' SELECT TOP([$BATCHSIZE])   
										[$SRC_ALIAS].CustomerAliasTelephoneId,
										[$SRC_ALIAS].AccountId,
										[$SRC_ALIAS].CustomerId,
										[$SRC_ALIAS].Telephone,
										[$SRC_ALIAS].Removed,
										[$SRC_ALIAS].CreatedDate,
										[$SRC_ALIAS].CreatedUserId,
										[$SRC_ALIAS].UpdatedDate,
										[$SRC_ALIAS].UpdatedUserId,
										[$SRC_ALIAS].UpdatedTicks''
										+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' + 
										+ '' INNER JOIN ([$SUBQUERY]) Sub''
										+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
										+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
										+ '' ON [$SRC_ALIAS].CustomerAliasTelephoneId = [$DEST_ALIAS].CustomerAliasTelephoneId''
										+ '' WHERE [$DEST_ALIAS].CustomerAliasTelephoneId IS NULL''
	           


				SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].CustomerAliasTelephoneId)''
									+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' + 
									+ '' INNER JOIN ([$SUBQUERY]) Sub''
									+ '' ON [$SRC_ALIAS].CustomerId = Sub.CustomerId''
									+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
									+ '' ON [$SRC_ALIAS].CustomerAliasTelephoneId = [$DEST_ALIAS].CustomerAliasTelephoneId''
									+ '' WHERE [$DEST_ALIAS].CustomerAliasTelephoneId IS NULL''




					-- OVERWRITE PLACEHOLDERS INSERT OFF
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)                                                                                
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS INSERT ON
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)                                                                                
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff ,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS INSERT
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)                                                                                
					SET @sqlInsert = REPLACE(@sqlInsert ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS WITHIN THE SUBQUERY
				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
					
				-- OVERWRITE PLACEHOLDERS SELECT
				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$BATCHSIZE]'',@BatchSize)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_ALIAS]'',@DestinationAlias)

				-- OVERWRITE PLACEHOLDERS SELECT COUNT
				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount ) > 0)                                                                                
					SET @sqlCount  = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount= REPLACE(@sqlCount ,''[$DEST_ALIAS]'',@DestinationAlias)
                                                                                                 
        
                        
				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END

                                                         
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
                  
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_CustomerAliasTelephone''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()
			

			END CATCH

		END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Note]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_Note]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT
				                        
			AS
			BEGIN

				BEGIN TRY
            
					SET NOCOUNT ON

								
					DECLARE @sqlIdentityInsertOn VARCHAR(255)
					DECLARE @sqlIdentityInsertOff VARCHAR(255)
					DECLARE @sqlInsert VARCHAR(MAX)
					DECLARE @sqlSelect VARCHAR(MAX)
					DECLARE @sqlFrom VARCHAR(MAX)
					DECLARE @sqlCount NVARCHAR(255)
					DECLARE @sqlSubQuery NVARCHAR(MAX)
					DECLARE @sqlCommand NVARCHAR(MAX)
					DECLARE @Option VARCHAR(50)
					DECLARE @Source VARCHAR(255)
					DECLARE @SourceAlias VARCHAR(255)
					DECLARE @Destination VARCHAR(255)
					DECLARE @DestAlias VARCHAR(255)

					IF(@RowCount > 0)	            
						SET @Option = ''RUN''
					ELSE
						SET @Option = ''COUNT''
						
					IF(@JobType = ''ARCHIVE'')
					
						BEGIN  
						
							SET @Source =''nuwa_Note''
							SET @Destination =''nuwa_Archive_Note''
							SET @SourceAlias = ''N''
							SET @DestAlias = ''AN''
							
							-- SUBQUERY
							SET @sqlSubQuery = '';WITH cteBookingTransfers(AccountId,BookingId)''
												+ '' AS'' 
												+ ''(''
												+ ''		SELECT B.AccountId,B.BookingId''
												+ ''		FROM nuwa_Booking B''
												+ ''		INNER JOIN nuwa_Archive_Booking AB''
												+ ''		ON B.BookingId = AB.BookingId''
												+ ''		WHERE B.AccountId = [$ACCOUNTID]''
												+ ''),'' 
												+ ''  cteCustomerTransfers(AccountId,CustomerId)''
												+ ''	AS ''
												+ ''(''
												+ ''		SELECT C.AccountId,C.CustomerId''
												+ ''		FROM nuwa_Customer C''
												+ ''		INNER JOIN nuwa_Archive_Customer AC''
												+ ''		ON C.CustomerId = AC.CustomerId''
												+ ''		WHERE C.AccountId = [$ACCOUNTID]''
												+ ''),''
												+ ''  cteNoteTransfers(AccountId,NoteId)''
												+ ''	AS (''
												+ ''		SELECT [$SRC_ALIAS].AccountId,[$SRC_ALIAS].NoteId AS NoteId'' 
												+ ''		FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
												+ ''		INNER JOIN cteBookingTransfers LinkOnBookingId''
												+ ''		ON [$SRC_ALIAS].BookingId = LinkOnBookingId.BookingId''
												+ ''		WHERE [$SRC_ALIAS].AccountId = [$ACCOUNTID]''
												+ ''		UNION''
												+ ''		SELECT [$SRC_ALIAS].AccountId,[$SRC_ALIAS].NoteId AS NoteId'' 
												+ ''		FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
												+ ''		INNER JOIN cteCustomerTransfers LinkOnCustomerId''
												+ ''		ON [$SRC_ALIAS].CustomerId = LinkOnCustomerId.CustomerId''
												+ ''		WHERE [$SRC_ALIAS].AccountId = [$ACCOUNTID]''
												+ ''		)''
												
						END
						
					ELSE
					
						BEGIN
						
							SET @Source =''nuwa_Archive_Note''
							SET @Destination =''nuwa_Note''
							SET @SourceAlias = ''AN''
							SET @DestAlias = ''N''
							
							-- SUBQUERY
							SET @sqlSubQuery = '';WITH cteBookingTransfers(AccountId,BookingId)''
												+ '' AS'' 
												+ ''(''
												+ ''		SELECT B.AccountId,B.BookingId''
												+ ''		FROM nuwa_Booking B''
												+ ''		INNER JOIN nuwa_Archive_Booking AB''
												+ ''		ON B.BookingId = AB.BookingId''
												+ ''		WHERE B.AccountId = [$ACCOUNTID]''
												+ ''),'' 
												+ ''  cteCustomerTransfers(AccountId,CustomerId)''
												+ ''	AS ''
												+ ''(''
												+ ''		SELECT C.AccountId,C.CustomerId''
												+ ''		FROM nuwa_Customer C''
												+ ''		INNER JOIN nuwa_Archive_Customer AC''
												+ ''		ON C.CustomerId = AC.CustomerId''
												+ ''		WHERE C.AccountId = [$ACCOUNTID]''
												+ ''),''
												+ ''  cteNoteTransfers(AccountId,NoteId)''
												+ ''	AS (''
												+ ''		SELECT [$SRC_ALIAS].AccountId,[$SRC_ALIAS].NoteId AS NoteId'' 
												+ ''		FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
												+ ''		INNER JOIN cteBookingTransfers LinkOnBookingId''
												+ ''		ON [$SRC_ALIAS].BookingId = LinkOnBookingId.BookingId''
												+ ''		INNER JOIN cteCustomerTransfers LinkOnCustomerId''
												+ ''		ON [$SRC_ALIAS].CustomerId = LinkOnCustomerId.CustomerId''
												+ ''		WHERE [$SRC_ALIAS].AccountId = [$ACCOUNTID]''
												+ ''		UNION''
												+ ''		SELECT [$SRC_ALIAS].AccountId,[$SRC_ALIAS].NoteId AS NoteId'' 
												+ ''		FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
												+ ''		INNER JOIN cteBookingTransfers LinkOnBookingId''
												+ ''		ON [$SRC_ALIAS].BookingId = LinkOnBookingId.BookingId''
												+ ''		WHERE [$SRC_ALIAS].AccountId = [$ACCOUNTID]''
												+ ''		AND [$SRC_ALIAS].CustomerId IS NULL''
												+ ''		UNION''
												+ ''		SELECT [$SRC_ALIAS].AccountId,[$SRC_ALIAS].NoteId AS NoteId'' 
												+ ''		FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''
												+ ''		INNER JOIN cteCustomerTransfers LinkOnCustomerId''
												+ ''		ON [$SRC_ALIAS].CustomerId = LinkOnCustomerId.CustomerId''
												+ ''		WHERE [$SRC_ALIAS].AccountId = [$ACCOUNTID]''
												+ ''		)''
												
						END
                                                                
					-- MAIN QUERY 
					SET @sqlIdentityInsertOn = ''SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON''

					SET @sqlInsert =  '' INSERT INTO [$DEST_TABLE_NAME] 
										(
											NoteId,
											AccountId,
											BookingId,
											CustomerId,
											Note,
											NoteClassification,
											NoteOnline,
											NoteDepositRequired,
											EmailSent,
											Removed,
											CreatedDate,
											CreatedUserId,
											UpdatedDate,
											UpdatedUserId,
											UpdatedTicks
										)''

					SET @sqlSelect =  '' SELECT TOP([$BATCHSIZE])
											[$SRC_ALIAS].NoteId,
											[$SRC_ALIAS].AccountId,
											[$SRC_ALIAS].BookingId,
											[$SRC_ALIAS].CustomerId,
											[$SRC_ALIAS].Note,
											[$SRC_ALIAS].NoteClassification,
											[$SRC_ALIAS].NoteOnline,
											[$SRC_ALIAS].NoteDepositRequired,
											[$SRC_ALIAS].EmailSent,
											[$SRC_ALIAS].Removed,
											[$SRC_ALIAS].CreatedDate,
											[$SRC_ALIAS].CreatedUserId,
											[$SRC_ALIAS].UpdatedDate,
											[$SRC_ALIAS].UpdatedUserId,
											[$SRC_ALIAS].UpdatedTicks'' 
				
					SET @sqlCount = N'' SELECT @RowCount = COUNT([$SRC_ALIAS].NoteId)'' 
										
					SET @sqlFrom =  '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]''  
									+ '' INNER JOIN cteNoteTransfers NoteTransfers''
									+ '' ON [$SRC_ALIAS].NOTEId = NoteTransfers.NoteId''
									+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
									+ '' ON [$SRC_ALIAS].NoteId = [$DEST_ALIAS].NoteId''
									+ '' WHERE [$SRC_ALIAS].AccountId = [$ACCOUNTID]''
									+ '' AND [$DEST_ALIAS].NoteId IS NULL''


					SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF''

					-- ASSIGN VALUES TO PLACEHOLDERS 
					IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)  
						SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn,''[$DEST_TABLE_NAME]'',@Destination)
						
					IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)  
						SET @sqlInsert = REPLACE(@sqlInsert,''[$DEST_TABLE_NAME]'',@Destination)
						
					IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)  
						SET @sqlSelect = REPLACE(@sqlSelect, ''[$BATCHSIZE]'',@BatchSize)
						
					IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)  
						SET @sqlSelect = REPLACE(@sqlSelect,''[$SRC_ALIAS]'',@SourceAlias)
						
					IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount) > 0)
						SET @sqlCount = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)
						
					IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)
						SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
					
					IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSubQuery) > 0)	
						SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SRC_TABLE_NAME]'',@Source)
						
					IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSubQuery) > 0)		
						SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$SRC_ALIAS]'',@SourceAlias)

					IF (CHARINDEX(''[$ACCOUNTID]'', @sqlFrom) > 0)	
						SET @sqlFrom = REPLACE(@sqlFrom,''[$ACCOUNTID]'',@AccountId)

					IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlFrom) > 0)							
						SET @sqlFrom = REPLACE(@sqlFrom,''[$SRC_TABLE_NAME]'',@Source)
						
					IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlFrom) > 0)	
						SET @sqlFrom = REPLACE(@sqlFrom,''[$SRC_ALIAS]'',@SourceAlias)
						
					IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlFrom) > 0)	
						SET @sqlFrom = REPLACE(@sqlFrom,''[$DEST_TABLE_NAME]'',@Destination)
						
					IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlFrom) > 0)	
						SET @sqlFrom = REPLACE(@sqlFrom,''[$DEST_ALIAS]'',@DestAlias)
						
					IF (CHARINDEX(''[$SUBQUERY]'', @sqlFrom) > 0)	
						SET @sqlFrom = REPLACE(@sqlFrom,''[$SUBQUERY]'',@sqlSubQuery)
				
					IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)	
						SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff,''[$DEST_TABLE_NAME]'',@Destination)

					IF(@Option = ''RUN'')
					
						BEGIN
						
							SET @sqlCommand = @sqlIdentityInsertOn
											+ @sqlSubquery
											+ @sqlInsert 
											+ @sqlSelect
											+ @sqlFrom
											+ @sqlIdentityInsertOff
										
							EXEC(@sqlCommand)
							
							SET @RowCount = (@RowCount - @BatchSize)
							
						END
						
					ELSE
					
						BEGIN
						
							-- RERUN AS SELECT TO SET @@ROWCOUNT
							SET @sqlCommand = @sqlSubquery
											+ @sqlCount
											+ @sqlFrom

							-- RUN QUERY TO SET @ROWCOUNT
							EXEC sp_executesql @sqlCommand, N''@RowCount INT OUT'', @RowCount OUT

						END
						
					-- RETURN SUCCESS
					SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
                  
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_Note''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()
			

			END CATCH

		END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_ActionLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_ActionLog]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT
                                
		AS
		BEGIN

			BEGIN TRY
            
				SET NOCOUNT ON 

				DECLARE @sqlInsert VARCHAR(1000)
				DECLARE @sqlSelect VARCHAR(2000)
				DECLARE @sqlSubQuery VARCHAR(MAX)
				DECLARE @sqlCommand NVARCHAR(MAX)
				DECLARE @sqlCount NVARCHAR(MAX) 
				DECLARE @sqlIdentityInsertOn VARCHAR(1000)  
				DECLARE @sqlIdentityInsertOff VARCHAR(1000)
				DECLARE @Option VARCHAR(50)  
				DECLARE @Source VARCHAR(50)
				DECLARE @SourceAlias VARCHAR(50)
				DECLARE @Destination VARCHAR(50)
				DECLARE @DestinationAlias VARCHAR(50)
                              
				IF(@RowCount > 0)
					SET @Option = ''RUN''
				ELSE
					SET @Option = ''COUNT''
					
				IF(@JobType = ''ARCHIVE'')
					BEGIN
						SET @Source = ''nuwa_ActionLog''
						SET @SourceAlias = ''AL''
						SET @Destination = ''nuwa_Archive_ActionLog''
						SET @DestinationAlias = ''AAL''
					END
				ELSE
					BEGIN
						SET @Source = ''nuwa_Archive_ActionLog''
						SET @SourceAlias = ''AAL''
						SET @Destination = ''nuwa_ActionLog''
						SET @DestinationAlias = ''AL''
					END

				SET @sqlIdentityInsertOn = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] ON ''
				SET @sqlIdentityInsertOff = '' SET IDENTITY_INSERT [$DEST_TABLE_NAME] OFF ''

				SET @sqlSubQuery = ''SELECT B.BookingId''
								 + '' FROM nuwa_Booking B''
								 + '' INNER JOIN nuwa_Archive_Booking AB''
								 + '' ON B.BookingId = AB.BookingId''
								 + '' WHERE B.AccountId = [$ACCOUNTID]''


				SET @sqlInsert = '' INSERT INTO [$DEST_TABLE_NAME] 
								(
									ActionLogId,
									AccountId,
									BookingId,
									LayoutItemId,
									LayoutOptionId,
									ActionDateTime,
									ActionHour,
									ActionMinute,
									ActionTicks,
									ActionDescription,
									SessionDate,
									SessionStart,
									SessionStartTicks,
									SessionFinish,
									SessionFinishTicks,
									Removed,
									CreatedDate,
									CreatedUserId,
									UpdatedDate,
									UpdatedUserId,
									UpdatedTicks   
								)''

				SET @sqlSelect = '' SELECT TOP([$BATCHSIZE])   
										[$SRC_ALIAS].ActionLogId,
										[$SRC_ALIAS].AccountId,
										[$SRC_ALIAS].BookingId,
										[$SRC_ALIAS].LayoutItemId,
										[$SRC_ALIAS].LayoutOptionId,
										[$SRC_ALIAS].ActionDateTime,
										[$SRC_ALIAS].ActionHour,
										[$SRC_ALIAS].ActionMinute,
										[$SRC_ALIAS].ActionTicks,
										[$SRC_ALIAS].ActionDescription,
										[$SRC_ALIAS].SessionDate,
										[$SRC_ALIAS].SessionStart,
										[$SRC_ALIAS].SessionStartTicks,
										[$SRC_ALIAS].SessionFinish,
										[$SRC_ALIAS].SessionFinishTicks,
										[$SRC_ALIAS].Removed,
										[$SRC_ALIAS].CreatedDate,
										[$SRC_ALIAS].CreatedUserId,
										[$SRC_ALIAS].UpdatedDate,
										[$SRC_ALIAS].UpdatedUserId,
										[$SRC_ALIAS].UpdatedTicks''
										+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' 
										+ '' INNER JOIN ([$SUBQUERY]) Sub''
										+ '' ON [$SRC_ALIAS].BookingId = Sub.BookingId''
										+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DESTINATION_ALIAS]''
										+ '' ON [$SRC_ALIAS].ActionLogId = [$DESTINATION_ALIAS].ActionLogId''
										+ '' WHERE [$DESTINATION_ALIAS].ActionLogId IS NULL''
           


				SET @sqlCount = N''SELECT @RowCount = COUNT([$SRC_ALIAS].ActionLogId)''
								+ '' FROM [$SRC_TABLE_NAME] [$SRC_ALIAS]'' 
								+ '' INNER JOIN ([$SUBQUERY]) Sub''
								+ '' ON [$SRC_ALIAS].BookingId = Sub.BookingId''
								+ '' LEFT JOIN [$DEST_TABLE_NAME] [$DEST_ALIAS]''
								+ '' ON [$SRC_ALIAS].ActionLogId = [$DEST_ALIAS].ActionLogId''
								+ '' WHERE [$DEST_ALIAS].ActionLogId IS NULL''




					-- OVERWRITE PLACEHOLDERS INSERT OFF
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOn) > 0)                                                                                
					SET @sqlIdentityInsertOn = REPLACE(@sqlIdentityInsertOn ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS INSERT ON
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlIdentityInsertOff) > 0)                                                                                
					SET @sqlIdentityInsertOff = REPLACE(@sqlIdentityInsertOff ,''[$DEST_TABLE_NAME]'',@Destination)

				-- OVERWRITE PLACEHOLDERS INSERT
				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlInsert) > 0)                                                                                
					SET @sqlInsert = REPLACE(@sqlInsert ,''[$DEST_TABLE_NAME]'',@Destination)
					
				-- OVERWRITE PLACEHOLDERS WITHIN THE SUBQUERY
				IF (CHARINDEX(''[$ACCOUNTID]'', @sqlSubQuery) > 0)                                                                                
					SET @sqlSubQuery = REPLACE(@sqlSubQuery,''[$ACCOUNTID]'',@AccountId)
					
				-- OVERWRITE PLACEHOLDERS SELECT
				IF (CHARINDEX(''[$BATCHSIZE]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$BATCHSIZE]'',@BatchSize)

				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlSelect) > 0)                                                                                
					SET @sqlSelect = REPLACE(@sqlSelect ,''[$DEST_ALIAS]'',@DestinationAlias)

				-- OVERWRITE PLACEHOLDERS SELECT COUNT
				IF (CHARINDEX(''[$SRC_ALIAS]'', @sqlCount ) > 0)                                                                                
					SET @sqlCount  = REPLACE(@sqlCount,''[$SRC_ALIAS]'',@SourceAlias)

				IF (CHARINDEX(''[$SRC_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount,''[$SRC_TABLE_NAME]'',@Source)

				IF (CHARINDEX(''[$SUBQUERY]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$SUBQUERY]'',@sqlSubQuery)

				IF (CHARINDEX(''[$DEST_TABLE_NAME]'', @sqlCount) > 0)                                                                                
					SET @sqlCount = REPLACE(@sqlCount ,''[$DEST_TABLE_NAME]'',@Destination)

				IF (CHARINDEX(''[$DEST_ALIAS]'', @sqlCount) > 0)                                                                                
					SET @sqlCount= REPLACE(@sqlCount ,''[$DEST_ALIAS]'',@DestinationAlias)
                                                                                                 
        
                        
				IF(@Option = ''COUNT'')

					BEGIN

						-- RUN QUERY TO SET @ROWCOUNT
						EXEC sp_executesql @sqlCount, N''@RowCount INT OUT'', @RowCount OUT

					END

				ELSE

					BEGIN

						SET @sqlCommand = @sqlIdentityInsertOn
										+ @sqlInsert
										+ @sqlSelect
										+ @sqlIdentityInsertOff

						-- EXECUTE QUERY
						EXEC(@sqlCommand)

						-- UPDATE REMAINING ROWS
						SET @RowCount = @RowCount - @BatchSize


					END

                                                         
				-- RETURN SUCCESS
				SET @ErrorNumber = 0

			END TRY

			BEGIN CATCH
        
                  
				-- RETURN ERROR INFO
				SET @ErrorProcedure = ''aspnet_Archive_Maintenance_ActionLog''
				SET @ErrorLine = ERROR_LINE()
				SET @ErrorNumber = ERROR_NUMBER()
				SET @ErrorMessage = ERROR_MESSAGE()
			

			END CATCH

		END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteBooking]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteBooking]

			@AccountId INT,
			@JobType VARCHAR(50),
			@Option VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT

		AS
			BEGIN

				BEGIN TRY

					SET NOCOUNT ON

					DECLARE @sqlCommand VARCHAR(MAX)
				
					IF(@JobType = ''ARCHIVE'')           
                                                
						-- IF @JobType IS ARCHIVE NEED TO DELETE BOOKING DATA 
						-- FROM MAIN BOOKING TABLES
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE ARCHIVING
						-- THE DATA TO REMOVE IS IN THE MAIN TABLES
                                                                
						BEGIN
					
							IF(@Option = ''BOOKING'')
						
								BEGIN
							
									-- DELETE FROM BOOKING  
						                        
									SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) B''
													+ '' FROM nuwa_Booking B''
													+ '' INNER JOIN nuwa_Archive_Booking AB''
													+ '' ON B.BookingId = AB.BookingId''
				                                                

								END
							
							IF(@Option = ''BOOKING_ORDER'')
						
								BEGIN
							
									-- DELETE FROM BOOKING ORDER
                                                                                                                                                                
									SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) BO''
													+ '' FROM nuwa_BookingOrder BO''
													+ '' INNER JOIN nuwa_Archive_BookingOrder ABO''
													+ '' ON BO.BookingOrderId = ABO.BookingOrderId''
								

								END
							
							
							IF(@Option = ''BOOKING_QUEUE'')
						
								BEGIN
							
									-- DELETE FROM BOOKING QUEUE 
								                                                                                                                                          
									SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) BQ''
													+ '' FROM nuwa_BookingQueue BQ''
													+ '' INNER JOIN nuwa_Archive_BookingQueue ABQ''
													+ '' ON BQ.BookingQueueId = ABQ.BookingQueueId''

								END



						END

					ELSE
                                                
						-- IF @JobType IS ARCHIVE WE NEED TO DELETE 
						-- BOOKING DATA FROM THE ARCHIVE TABLES
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE RESTORING
						-- THE DATA TO REMOVE IS IN THE ARCHIVE TABLES

                                                                
						BEGIN

							IF(@Option = ''BOOKING'')
						
								BEGIN
							
									-- DELETE FROM ARCHIE BOOKING
								
									SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) AB''
													+ '' FROM nuwa_Archive_Booking AB''
													+ '' INNER JOIN nuwa_Booking B''
													+ '' ON AB.BookingId = B.BookingId''
								
								END
						
							IF(@Option = ''BOOKING_ORDER'')
						
								BEGIN
							
									-- DELETE FROM ARCHIE BOOKING ORDER 
								                           
									SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) ABO''
													+ '' FROM nuwa_Archive_BookingOrder ABO''
													+ '' INNER JOIN nuwa_BookingOrder BO''
													+ '' ON ABO.BookingOrderId = BO.BookingOrderId''
								
						
								END
                         
							IF(@Option = ''BOOKING_QUEUE'')
						
								BEGIN  
							                                                                                                                                     
									-- DELETE FROM ARCHIE BOOKING QUEUE 
								                                          
									SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) ABQ''
													+ '' FROM nuwa_Archive_BookingQueue ABQ''
													+ '' INNER JOIN nuwa_BookingQueue BQ''
													+ '' ON ABQ.BookingQueueId = BQ.BookingQueueId''
						
								END
                                                                               
                                                                                                                                                                                
						END
                  
					SET @sqlCommand = REPLACE(@sqlCommand,''[$BATCHSIZE]'',@BatchSize)
                
					-- EXECUTE DELETE
					EXEC(@sqlCommand)
					
					-- RETURN NO REMAINING                                                             
					SET @RowCount = @@ROWCOUNT
					SET @ErrorNumber = 0

			                                                
				END TRY

				BEGIN CATCH
	        
	                  
					-- RETURN ERROR INFO
					SET @ErrorProcedure = ''aspnet_Archive_Maintenance_DeleteBooking''
					SET @ErrorLine = ERROR_LINE()
					SET @ErrorNumber = ERROR_NUMBER()
					SET @ErrorMessage = ERROR_MESSAGE()
				

				END CATCH

			END'

END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteCustomer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteCustomer]

			@AccountId INT,
			@JobType VARCHAR(50),
			@Option VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT

		AS
			BEGIN

				BEGIN TRY

					SET NOCOUNT ON

					DECLARE @sqlCommand VARCHAR(MAX)
				
					IF(@JobType = ''ARCHIVE'')           
                                                
						-- IF @Restore IS ZERO THEN WE ARE PERFORMING AN ARCHIVE
						-- WE NEED TO DELETE BOOKING DATA FROM MAIN BOOKING TABLES
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE ARCHIVING
						-- THE DATA TO REMOVE IS IN THE MAIN TABLES
                                                                
						BEGIN
					
						  IF(@Option = ''CUSTOMER'') 
                      
							BEGIN
						
								-- DELETE FROM CUSTOMER  
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) C''
												+ '' FROM nuwa_Customer C''
												+ '' INNER JOIN nuwa_Archive_Customer AC''
												+ '' ON C.CustomerId = AC.CustomerId''
															
							END  
						
						  IF(@Option = ''CUSTOMER_ALIAS_NAME'') 
                      
							BEGIN
						
								-- DELETE FROM CUSTOMER ALIAS NAME
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) CAN''
												+ '' FROM nuwa_CustomerAliasName CAN''
												+ '' INNER JOIN nuwa_Archive_CustomerAliasName ACAN''
												+ '' ON CAN.CustomerAliasNameId = ACAN.CustomerAliasNameId''					
													
							END     
					       
						  IF(@Option = ''CUSTOMER_ALIAS_ADDRESS'') 
					  
							BEGIN
						
								-- DELETE FROM CUSTOMER ALIAS ADDRESS
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) CAA''
												+ '' FROM nuwa_CustomerAliasAddress CAA''
												+ '' INNER JOIN nuwa_Archive_CustomerAliasAddress ACAA''
												+ '' ON CAA.CustomerAliasAddressId = ACAA.CustomerAliasAddressId''					
														
							END         
						
						  IF(@Option = ''CUSTOMER_ALIAS_EMAIL'')
					   
							BEGIN
						
							
								-- DELETE FROM CUSTOMER ALIAS EMAIL
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) CAE''
												+ '' FROM nuwa_CustomerAliasEmail CAE''
												+ '' INNER JOIN nuwa_Archive_CustomerAliasEmail ACAE''
												+ '' ON CAE.CustomerAliasEmailId = ACAE.CustomerAliasEmailId''
											
						
							END  
						
						  IF(@Option = ''CUSTOMER_ALIAS_TELEPHONE'') 
					  
							BEGIN
						
								-- DELETE FROM CUSTOMER ALIAS TELEPHONE 
							                                 
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) CAT''
												+ '' FROM nuwa_CustomerAliasTelephone CAT''
												+ '' INNER JOIN nuwa_Archive_CustomerAliasTelephone ACAT''
												+ '' ON CAT.CustomerAliasTelephoneId = ACAT.CustomerAliasTelephoneId''
															
							END  

						END

					ELSE
                                                
						-- WE ARE PERFORMING A RESTORE
						-- WE NEED TO DELETE BOOKING DATA FROM THE ARCHIVE BOOKING TABLES
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE RESTORING
						-- THE DATA TO REMOVE IS IN THE ARCHIVE TABLES
					
						BEGIN
					
						  IF(@Option = ''CUSTOMER'') 
                      
							BEGIN
						
								-- DELETE FROM CUSTOMER  
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) AC''
												+ '' FROM nuwa_Archive_Customer AC''
												+ '' INNER JOIN nuwa_Customer C''
												+ '' ON AC.CustomerId = C.CustomerId''
															
							END  
						
						  IF(@Option = ''CUSTOMER_ALIAS_NAME'') 
                      
							BEGIN
						
								-- DELETE FROM CUSTOMER ALIAS NAME
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) ACAN''
												+ '' FROM nuwa_Archive_CustomerAliasName ACAN''
												+ '' INNER JOIN nuwa_CustomerAliasName CAN''
												+ '' ON ACAN.CustomerAliasNameId = CAN.CustomerAliasNameId''							
													
							END     
					       
						  IF(@Option = ''CUSTOMER_ALIAS_ADDRESS'') 
					  
							BEGIN
						
								-- DELETE FROM CUSTOMER ALIAS ADDRESS
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) ACAA''
												+ '' FROM nuwa_Archive_CustomerAliasAddress ACAA''
												+ '' INNER JOIN nuwa_CustomerAliasAddress CAA''
												+ '' ON ACAA.CustomerAliasAddressId = CAA.CustomerAliasAddressId''							
														
							END         
						
						  IF(@Option = ''CUSTOMER_ALIAS_EMAIL'')
					   
							BEGIN
						
							
								-- DELETE FROM CUSTOMER ALIAS EMAIL
							
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) ACAE''
												+ '' FROM nuwa_Archive_CustomerAliasEmail ACAE''
												+ '' INNER JOIN nuwa_CustomerAliasEmail CAE''
												+ '' ON ACAE.CustomerAliasEmailId = CAE.CustomerAliasEmailId''						
									
						
							END  
						
						  IF(@Option = ''CUSTOMER_ALIAS_TELEPHONE'') 
					  
							BEGIN
						
								-- DELETE FROM CUSTOMER ALIAS TELEPHONE     
							                             
								SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) ACAT''
												+ '' FROM nuwa_Archive_CustomerAliasTelephone ACAT''
												+ '' INNER JOIN nuwa_CustomerAliasTelephone CAT''
												+ '' ON ACAT.CustomerAliasTelephoneId = CAT.CustomerAliasTelephoneId''		
													
							END  

						END
                                       
	
					
					SET @sqlCommand = REPLACE(@sqlCommand,''[$BATCHSIZE]'',@BatchSize)
                
					-- EXECUTE DELETE
					EXEC(@sqlCommand)
                
					SET @RowCount = @@RowCount                                
					SET @ErrorNumber = 0
			                                                
				END TRY

				BEGIN CATCH
	        
	                  
					-- RETURN ERROR INFO
					SET @ErrorProcedure = ''aspnet_Archive_Maintenance_DeleteCustomer''
					SET @ErrorLine = ERROR_LINE()
					SET @ErrorNumber = ERROR_NUMBER()
					SET @ErrorMessage = ERROR_MESSAGE()
				

				END CATCH

			END'

END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteNote]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteNote]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT

		AS
			BEGIN

				BEGIN TRY

					SET NOCOUNT ON

					DECLARE @sqlCommand VARCHAR(MAX)

					IF(@JobType = ''ARCHIVE'')           
                                                
						-- WE ARE PERFORMING AN ARCHIVE
						-- WE NEED TO DELETE DATA FROM MAIN TABLE
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE ARCHIVING
						-- THE DATA TO REMOVE IS IN THE MAIN TABLE
                                                                
						BEGIN
                                                
							-- DELETE FROM NOTE  
							SET @sqlCommand = ''DELETE TOP([$BATCHSIZE])N''
											+ '' FROM nuwa_Note N''
											+ '' INNER JOIN nuwa_Archive_Note AN''
											+ '' ON N.NoteId = AN.NoteId''

						END

					ELSE
                                                
						-- WE ARE PERFORMING A RESTORE
						-- WE NEED TO DELETE DATA FROM THE ARCHIVE TABLES
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE RESTORING
						-- THE DATA TO REMOVE IS IN THE ARCHIVE TABLES
                                                                
						BEGIN
                                                                                
							-- DELETE FROM ARCHIVE NOTE  
							SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) AN''
											+ '' FROM nuwa_Archive_Note AN''
											+ '' INNER JOIN nuwa_Note N''
											+ '' ON AN.NoteId = N.NoteId''
                                                                                                                                                                                
						END
                 
					SET @sqlCommand = REPLACE(@sqlCommand,''[$BATCHSIZE]'',@BatchSize)                                                               

					-- EXECUTE DELETE
					EXEC(@sqlCommand)

					SET @RowCount = @@RowCount
					SET @ErrorNumber = 0
			                                                
				END TRY

				BEGIN CATCH
	        
	                  
					-- RETURN ERROR INFO
					SET @ErrorProcedure = ''aspnet_Archive_Maintenance_DeleteNote''
					SET @ErrorLine = ERROR_LINE()
					SET @ErrorNumber = ERROR_NUMBER()
					SET @ErrorMessage = ERROR_MESSAGE()
				

				END CATCH

			END'

END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteActionLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteActionLog]

			@AccountId INT,
			@JobType VARCHAR(50),
			@BatchSize INT,
			@RowCount INT OUTPUT,
			@ErrorProcedure NVARCHAR(200) OUTPUT,
			@ErrorLine INT OUTPUT,
			@ErrorNumber INT OUTPUT,
			@ErrorMessage NVARCHAR(4000) OUTPUT

		AS
			BEGIN

				BEGIN TRY

					SET NOCOUNT ON

					DECLARE @sqlCommand VARCHAR(MAX)
				
					IF(@JobType = ''ARCHIVE'')           
                                                
						-- WE ARE PERFORMING AN ARCHIVE
						-- WE NEED TO DELETE ACTIVITY LOG DATA FROM MAIN BOOKING TABLES
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE ARCHIVING
						-- THE DATA TO REMOVE IS IN THE MAIN TABLES
                                                                
						BEGIN
						
							-- DELETE FROM ACTIVITY LOG  
							
							SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) AL''
											+ '' FROM nuwa_ActionLog AL''
											+ '' INNER JOIN nuwa_Archive_ActionLog AAL''
											+ '' ON AL.BookingId = AAL.BookingId''
											+ '' WHERE AL.AccountId = [$ACCOUNTID]''

						

						END

					ELSE
                                                
						-- WE ARE PERFORMING A RESTORE
						-- WE NEED TO DELETE ACTIVITY LOG DATA FROM THE ARCHIVE TABLES
						-- THE COPY HAS ALREADY BEEN PERFORMED THEREFORE AN INNER JOIN 
						-- ONLY IDENTIFIES THE RECORDS IN BOTH, AS WE ARE RESTORING
						-- THE DATA TO REMOVE IS IN THE ARCHIVE TABLES
					
						BEGIN
					
                  
			
						
							-- DELETE FROM ARCHIVE ACTIVITY LOG 
							
							SET @sqlCommand = ''DELETE TOP([$BATCHSIZE]) AAL''
											+ '' FROM nuwa_Archive_ActionLog AAL''
											+ '' INNER JOIN nuwa_ActionLog AL''
											+ '' ON AAL.BookingId = AL.BookingId''
											+ '' WHERE AL.AccountId = [$ACCOUNTID]''
  

						END
                                       
	
					
					SET @sqlCommand = REPLACE(@sqlCommand,''[$ACCOUNTID]'',@AccountId)
					SET @sqlCommand = REPLACE(@sqlCommand,''[$BATCHSIZE]'',@BatchSize)

					-- EXECUTE DELETE
					EXEC(@sqlCommand)
                
					SET @RowCount = @@RowCount                                
					SET @ErrorNumber = 0
			                                                
				END TRY

				BEGIN CATCH
	        
	                  
					-- RETURN ERROR INFO
					SET @ErrorProcedure = ''aspnet_Archive_Maintenance_DeleteCustomer''
					SET @ErrorLine = ERROR_LINE()
					SET @ErrorNumber = ERROR_NUMBER()
					SET @ErrorMessage = ERROR_MESSAGE()
				

				END CATCH

			END'


END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_SchemaOps]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_SchemaOps]

			@Option VARCHAR(50),
			@Success BIT OUTPUT
                            
			AS
			BEGIN

				BEGIN TRY
            
					IF @Option = ''ADD_FKEYS''
				
						BEGIN
					
							-- ADD FOREIGHN KEYS --

							-- NUWA_BOOKING
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Booking_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Booking]''))
							ALTER TABLE [dbo].[nuwa_Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer] FOREIGN KEY([CustomerId])
							REFERENCES [dbo].[nuwa_Customer] ([CustomerId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Booking_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Booking]''))
							ALTER TABLE [dbo].[nuwa_Booking] CHECK CONSTRAINT [FK_Booking_Customer]
						
							-- NUWA_BOOKINGORDER
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_BookingOrder_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_BookingOrder]''))
							ALTER TABLE [dbo].[nuwa_BookingOrder]  WITH CHECK ADD  CONSTRAINT [FK_BookingOrder_Booking] FOREIGN KEY([BookingId])
							REFERENCES [dbo].[nuwa_Booking] ([BookingId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_BookingOrder_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_BookingOrder]''))
							ALTER TABLE [dbo].[nuwa_BookingOrder] CHECK CONSTRAINT [FK_BookingOrder_Booking]
						
							-- NUWA_CUSTOMERALIASNAME
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasName_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasName]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasName]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAliasName_Customer] FOREIGN KEY([CustomerId])
							REFERENCES [dbo].[nuwa_Customer] ([CustomerId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasName_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasName]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasName] CHECK CONSTRAINT [FK_CustomerAliasName_Customer]
						
							-- NUWA_CUSTOMERALIASADDRESS
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasAddress_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasAddress]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAliasAddress_Customer] FOREIGN KEY([CustomerId])
							REFERENCES [dbo].[nuwa_Customer] ([CustomerId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasAddress_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasAddress]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasAddress] CHECK CONSTRAINT [FK_CustomerAliasAddress_Customer]
						
							-- NUWA_CUSTOMERALIASEMAIL
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasEmail_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasEmail]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasEmail]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAliasEmail_Customer] FOREIGN KEY([CustomerId])
							REFERENCES [dbo].[nuwa_Customer] ([CustomerId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasEmail_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasEmail]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasEmail] CHECK CONSTRAINT [FK_CustomerAliasEmail_Customer]
						
							-- NUWA_CUSTOMERALIASTELEPHONE
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasTelephone_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasTelephone]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasTelephone]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAliasTelephone_Customer] FOREIGN KEY([CustomerId])
							REFERENCES [dbo].[nuwa_Customer] ([CustomerId])
			
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasTelephone_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasTelephone]''))
							ALTER TABLE [dbo].[nuwa_CustomerAliasTelephone] CHECK CONSTRAINT [FK_CustomerAliasTelephone_Customer]
						
							-- NUWA_NOTE
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Note_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Note]''))
							ALTER TABLE [dbo].[nuwa_Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Booking] FOREIGN KEY([BookingId])
							REFERENCES [dbo].[nuwa_Booking] ([BookingId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Note_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Note]''))
							ALTER TABLE [dbo].[nuwa_Note] CHECK CONSTRAINT [FK_Note_Booking]
						
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Note_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Note]''))
							ALTER TABLE [dbo].[nuwa_Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Customer] FOREIGN KEY([CustomerId])
							REFERENCES [dbo].[nuwa_Customer] ([CustomerId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Note_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Note]''))
							ALTER TABLE [dbo].[nuwa_Note] CHECK CONSTRAINT [FK_Note_Customer]

							-- NUWA_ACTIONLOG
							IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_ActionLog_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_ActionLog]''))
							ALTER TABLE [dbo].[nuwa_ActionLog]  WITH CHECK ADD  CONSTRAINT [FK_ActionLog_Booking] FOREIGN KEY([BookingId])
							REFERENCES [dbo].[nuwa_Booking] ([BookingId])
						
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_ActionLog_Booking'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_ActionLog]''))
							ALTER TABLE [dbo].[nuwa_ActionLog] CHECK CONSTRAINT [FK_ActionLog_Booking]

						
						END
					
					IF @Option = ''DROP_FKEYS''
				
						BEGIN
					
							-- DROP FOREIGHN KEYS --

							-- NUWA_BOOKING
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Booking_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Booking]''))
								ALTER TABLE [dbo].[nuwa_Booking] DROP CONSTRAINT [FK_Booking_Customer]
						
							-- NUWA_BOOKINGORDER
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_BookingOrder_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_BookingOrder]''))
								ALTER TABLE [dbo].[nuwa_BookingOrder] DROP CONSTRAINT [FK_BookingOrder_Booking]
						
							-- NUWA_CUSTOMERALIASNAME
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasName_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasName]''))
								ALTER TABLE [dbo].[nuwa_CustomerAliasName] DROP CONSTRAINT [FK_CustomerAliasName_Customer]
						
							-- NUWA_CUSTOMERALIASADDRESS
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasAddress_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasAddress]''))
								ALTER TABLE [dbo].[nuwa_CustomerAliasAddress] DROP CONSTRAINT [FK_CustomerAliasAddress_Customer]
						
							-- NUWA_CUSTOMERALIASEMAIL
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasEmail_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasEmail]''))
								ALTER TABLE [dbo].[nuwa_CustomerAliasEmail] DROP CONSTRAINT [FK_CustomerAliasEmail_Customer]
						
							-- NUWA_CUSTOMERALIASTELEPHONE
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_CustomerAliasTelephone_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_CustomerAliasTelephone]''))
								ALTER TABLE [dbo].[nuwa_CustomerAliasTelephone] DROP CONSTRAINT [FK_CustomerAliasTelephone_Customer]
						
							-- NUWA_NOTE
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Note_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Note]''))
								ALTER TABLE [dbo].[nuwa_Note] DROP CONSTRAINT [FK_Note_Booking]
					
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_Note_Customer]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_Note]''))
								ALTER TABLE [dbo].[nuwa_Note] DROP CONSTRAINT [FK_Note_Customer]
						
							-- NUWA_ACTIONLOG			
							IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N''[dbo].[FK_ActionLog_Booking]'') AND parent_object_id = OBJECT_ID(N''[dbo].[nuwa_ActionLog]''))
								ALTER TABLE [dbo].[nuwa_ActionLog] DROP CONSTRAINT [FK_ActionLog_Booking]


						END
						
						
					IF @Option = ''REBUILD_INDEXES''
				
						BEGIN
					
							
							--REBUILD CLUSTERED INDEXES
							DBCC DBREINDEX (''nuwa_Booking'', ''PK_Booking'',0)  
							DBCC DBREINDEX (''nuwa_Archive_Booking'', ''PK_Archive_Booking'',0)
							DBCC DBREINDEX (''nuwa_BookingOrder'', ''PK_BookingOrder'',0) 
							DBCC DBREINDEX (''nuwa_Archive_BookingOrder'', ''PK_Archive_BookingOrder'',0)     
							DBCC DBREINDEX (''nuwa_BookingQueue'', ''PK_BookingQueue'',0)    
							DBCC DBREINDEX (''nuwa_Archive_BookingQueue'', ''PK_Archive_BookingQueue'',0)  
							DBCC DBREINDEX (''nuwa_Customer'', ''PK_Customer'',0)    
							DBCC DBREINDEX (''nuwa_Archive_Customer'', ''PK_Archive_Customer'',0)  
							DBCC DBREINDEX (''nuwa_CustomerAliasName'', ''PK_CustomerAliasName'',0)    
							DBCC DBREINDEX (''nuwa_Archive_CustomerAliasName'', ''PK_Archive_CustomerAliasName'',0) 
							DBCC DBREINDEX (''nuwa_CustomerAliasAddress'', ''PK_CustomerAliasAddress'',0)    
							DBCC DBREINDEX (''nuwa_Archive_CustomerAliasAddress'', ''PK_Archive_CustomerAliasAddress'',0) 
							DBCC DBREINDEX (''nuwa_CustomerAliasEmail'', ''PK_CustomerAliasEmail'',0)    
							DBCC DBREINDEX (''nuwa_Archive_CustomerAliasEmail'', ''PK_Archive_CustomerAliasEmail'',0) 
							DBCC DBREINDEX (''nuwa_CustomerAliasTelephone'', ''PK_CustomerAliasTelephone'',0)    
							DBCC DBREINDEX (''nuwa_Archive_CustomerAliasTelephone'', ''PK_Archive_CustomerAliasTelephone'',0)
							DBCC DBREINDEX (''nuwa_Note'', ''PK_Note'',0) 
							DBCC DBREINDEX (''nuwa_Archive_Note'', ''PK_Archive_Note'',0)
							DBCC DBREINDEX (''nuwa_ActionLog'', ''PK_ActionLog'',0) 
							DBCC DBREINDEX (''nuwa_Archive_ActionLog'', ''PK_Archive_ActionLog'',0)  

							-- DROP NON CLUSTERED INDEXES
							DROP INDEX IX_nuwa_Booking_AccountId ON [dbo].[nuwa_Booking]
							DROP INDEX IX_nuwa_Booking_BookingReference ON [dbo].[nuwa_Booking]
							DROP INDEX IX_nuwa_Booking_CustomerId ON [dbo].[nuwa_Booking]

							DROP INDEX IX_nuwa_Archive_Booking_AccountId ON [dbo].[nuwa_Archive_Booking]
							DROP INDEX IX_nuwa_Archive_Booking_BookingReference ON [dbo].[nuwa_Archive_Booking]
							DROP INDEX IX_nuwa_Archive_Booking_CustomerId ON [dbo].[nuwa_Archive_Booking]

							DROP INDEX IX_nuwa_BookingOrder_AccountId ON [dbo].[nuwa_BookingOrder]
							DROP INDEX IX_nuwa_BookingOrder_BookingId ON [dbo].[nuwa_BookingOrder]

							DROP INDEX IX_nuwa_Archive_BookingOrder_AccountId ON [dbo].[nuwa_Archive_BookingOrder]
							DROP INDEX IX_nuwa_Archive_BookingOrder_BookingId ON [dbo].[nuwa_Archive_BookingOrder]

							DROP INDEX IX_nuwa_BookingQueue_AccountId ON [dbo].[nuwa_BookingQueue]
							DROP INDEX IX_nuwa_BookingQueue_BookingReference ON [dbo].[nuwa_BookingQueue]

							DROP INDEX IX_nuwa_Archive_BookingQueue_AccountId ON [dbo].[nuwa_Archive_BookingQueue]
							DROP INDEX IX_nuwa_Archive_BookingQueue_BookingReference ON [dbo].[nuwa_Archive_BookingQueue]

							DROP INDEX IX_nuwa_Customer_AccountId ON [dbo].[nuwa_Customer]
							DROP INDEX IX_nuwa_Archive_Customer_AccountId ON [dbo].[nuwa_Archive_Customer]

							DROP INDEX IX_nuwa_CustomerAliasName_AccountId ON [dbo].[nuwa_CustomerAliasName]
							DROP INDEX IX_nuwa_CustomerAliasName_CustomerId ON [dbo].[nuwa_CustomerAliasName]

							DROP INDEX IX_nuwa_Archive_CustomerAliasName_AccountId ON [dbo].[nuwa_Archive_CustomerAliasName]
							DROP INDEX IX_nuwa_Archive_CustomerAliasName_CustomerId ON [dbo].[nuwa_Archive_CustomerAliasName]

							DROP INDEX IX_nuwa_CustomerAliasAddress_AccountId ON [dbo].[nuwa_CustomerAliasAddress]
							DROP INDEX IX_nuwa_CustomerAliasAddress_CustomerId ON [dbo].[nuwa_CustomerAliasAddress]

							DROP INDEX IX_nuwa_Archive_CustomerAliasAddress_AccountId ON [dbo].[nuwa_Archive_CustomerAliasAddress]
							DROP INDEX IX_nuwa_Archive_CustomerAliasAddress_CustomerId ON [dbo].[nuwa_Archive_CustomerAliasAddress]

							DROP INDEX IX_nuwa_CustomerAliasEmail_AccountId ON [dbo].[nuwa_CustomerAliasEmail]
							DROP INDEX IX_nuwa_CustomerAliasEmail_CustomerId ON [dbo].[nuwa_CustomerAliasEmail]

							DROP INDEX IX_nuwa_Archive_CustomerAliasEmail_AccountId ON [dbo].[nuwa_Archive_CustomerAliasEmail]
							DROP INDEX IX_nuwa_Archive_CustomerAliasEmail_CustomerId ON [dbo].[nuwa_Archive_CustomerAliasEmail]

							DROP INDEX IX_nuwa_CustomerAliasTelephone_AccountId ON [dbo].[nuwa_CustomerAliasTelephone]
							DROP INDEX IX_nuwa_CustomerAliasTelephone_CustomerId ON [dbo].[nuwa_CustomerAliasTelephone]

							DROP INDEX IX_nuwa_Archive_CustomerAliasTelephone_AccountId ON [dbo].[nuwa_Archive_CustomerAliasTelephone]
							DROP INDEX IX_nuwa_Archive_CustomerAliasTelephone_CustomerId ON [dbo].[nuwa_Archive_CustomerAliasTelephone]

							DROP INDEX IX_nuwa_Note_AccountId ON [dbo].[nuwa_Note]
							DROP INDEX IX_nuwa_Note_BookingId ON [dbo].[nuwa_Note]
							DROP INDEX IX_nuwa_Note_CustomerId ON [dbo].[nuwa_Note]

							DROP INDEX IX_nuwa_Archive_Note_AccountId ON [dbo].[nuwa_Archive_Note]
							DROP INDEX IX_nuwa_Archive_Note_BookingId ON [dbo].[nuwa_Archive_Note]
							DROP INDEX IX_nuwa_Archive_Note_CustomerId ON [dbo].[nuwa_Archive_Note]

							DROP INDEX IX_nuwa_ActionLog_AccountId ON [dbo].[nuwa_ActionLog]
							DROP INDEX IX_nuwa_ActionLog_BookingId ON [dbo].[nuwa_ActionLog]

							DROP INDEX IX_nuwa_Archive_ActionLog_AccountId ON [dbo].[nuwa_Archive_ActionLog]
							DROP INDEX IX_nuwa_Archive_ActionLog_BookingId ON [dbo].[nuwa_Archive_ActionLog]

							-- ADD INDEXES FOR MAIN TABLES
							CREATE NONCLUSTERED INDEX [IX_nuwa_Booking_AccountId] ON [dbo].[nuwa_Booking]
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Booking_BookingReference] ON [dbo].[nuwa_Booking] 
							(
								[BookingReference] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
							CREATE NONCLUSTERED INDEX [IX_nuwa_Booking_CustomerId] ON [dbo].[nuwa_Booking]
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_BookingOrder_AccountId] ON [dbo].[nuwa_BookingOrder] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_BookingOrder_BookingId] ON [dbo].[nuwa_BookingOrder] 
							(
								[BookingId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_BookingQueue_AccountId] ON [dbo].[nuwa_BookingQueue] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_BookingQueue_BookingReference] ON [dbo].[nuwa_BookingQueue] 
							(
								[BookingReference] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Customer_AccountId] ON [dbo].[nuwa_Customer] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasName_AccountId] ON [dbo].[nuwa_CustomerAliasName] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasName_CustomerId] ON [dbo].[nuwa_CustomerAliasName] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasAddress_AccountId] ON [dbo].[nuwa_CustomerAliasAddress] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasAddress_CustomerId] ON [dbo].[nuwa_CustomerAliasAddress] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasEmail_AccountId] ON [dbo].[nuwa_CustomerAliasEmail] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasEmail_CustomerId] ON [dbo].[nuwa_CustomerAliasEmail] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasTelephone_AccountId] ON [dbo].[nuwa_CustomerAliasTelephone] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_CustomerAliasTelephone_CustomerId] ON [dbo].[nuwa_CustomerAliasTelephone] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Note_AccountId] ON [dbo].[nuwa_Note] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Note_BookingId] ON [dbo].[nuwa_Note] 
							(
								[BookingId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]


							CREATE NONCLUSTERED INDEX [IX_nuwa_Note_CustomerId] ON [dbo].[nuwa_Note] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_ActionLog_AccountId] ON [dbo].[nuwa_ActionLog] 
							(
								[AccountId] ASC
							)WITH(PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_ActionLog_BookingId] ON [dbo].[nuwa_ActionLog] 
							(
								[BookingId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							-- ADD INDEXES FOR ARCHIVE TABLES
							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Booking_AccountId] ON [dbo].[nuwa_Archive_Booking]
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Booking_BookingReference] ON [dbo].[nuwa_Archive_Booking] 
							(
								[BookingReference] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Booking_CustomerId] ON [dbo].[nuwa_Archive_Booking]
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingOrder_AccountId] ON [dbo].[nuwa_Archive_BookingOrder] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingOrder_BookingId] ON [dbo].[nuwa_Archive_BookingOrder] 
							(
								[BookingId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingQueue_AccountId] ON [dbo].[nuwa_Archive_BookingQueue] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_BookingQueue_BookingReference] ON [dbo].[nuwa_Archive_BookingQueue] 
							(
								[BookingReference] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Customer_AccountId] ON [dbo].[nuwa_Archive_Customer] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasName_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasName] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasName_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasName] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasAddress_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasAddress] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasAddress_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasAddress] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasEmail_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasEmail] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasEmail_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasEmail] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasTelephone_AccountId] ON [dbo].[nuwa_Archive_CustomerAliasTelephone] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_CustomerAliasTelephone_CustomerId] ON [dbo].[nuwa_Archive_CustomerAliasTelephone] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Note_AccountId] ON [dbo].[nuwa_Archive_Note] 
							(
								[AccountId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Note_BookingId] ON [dbo].[nuwa_Archive_Note] 
							(
								[BookingId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]


							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_Note_CustomerId] ON [dbo].[nuwa_Archive_Note] 
							(
								[CustomerId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_ActionLog_AccountId] ON [dbo].[nuwa_Archive_ActionLog] 
							(
								[AccountId] ASC
							)WITH(PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

							CREATE NONCLUSTERED INDEX [IX_nuwa_Archive_ActionLog_BookingId] ON [dbo].[nuwa_Archive_ActionLog] 
							(
								[BookingId] ASC
							)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]




						END
				
					SET @Success = 1
				
				END TRY

				BEGIN CATCH
	        
	                  
					-- RETURN ERROR
					SET @Success = 0

				END CATCH

		END' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_UpdateStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance_UpdateStatus]

			@ArchiveId INT,
			@Failed BIT                            
			AS
			BEGIN


	    
				SET NOCOUNT ON 

		
				DECLARE @sqlCommand VARCHAR(MAX)


				-- UPDATE CONTROLLER RECORD
			
				SET @sqlCommand = ''UPDATE nuwa_Archive''
								+ '' SET Failed = [$FAILED]'' 
								+ '' ,CompletionDate = CAST(GetDate() AS VARCHAR)''
								+ '' WHERE ArchiveId = [$ARCHIVEID]''
							
				SET @sqlCommand = REPLACE(@sqlCommand,''[$ARCHIVEID]'',@ArchiveId)
				SET @sqlCommand = REPLACE(@sqlCommand,''[$FAILED]'',@Failed)

				EXEC(@sqlCommand)



			END'



END


GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

	CREATE PROCEDURE [dbo].[aspnet_Archive_Maintenance]

		@ArchiveId INT,
		@AccountId INT,
		@JobType VARCHAR(50),
		@Key VARCHAR(50),
		@StartDate VARCHAR(50),
		@EndDate VARCHAR(50),
		@BatchSize INT,
		@OrphanLifeSpan INT,
		@ReturnValue BIT OUTPUT
    
	AS
	BEGIN

               
		SET NOCOUNT ON
	     
		-- TABLE VARIABLE PRESERVES THE AUDIT LOG DATA DURING ROLLBACK OF THE TRANSACTION
		DECLARE @AuditLog TABLE
		(
			AuditLogId INT IDENTITY(1,1) NOT NULL,
			ArchiveId INT NOT NULL,
			ErrorProcedure VARCHAR(255) NOT NULL,
			ErrorLineNo INT NOT NULL,
			ErrorNumber INT NOT NULL,
			ErrorMessage NVARCHAR(MAX) NULL
		)
	
 
		DECLARE @RowCount INT
		DECLARE @sqlCommand VARCHAR(1000)
		DECLARE @Debug INT = 0
		DECLARE @ErrorNumber INT = 0
		DECLARE @ErrorLine INT = 0
		DECLARE @ErrorProcedure NVARCHAR(200) = ''-''
		DECLARE @ErrorMessage NVARCHAR(4000) = ''-''
		DECLARE @ReturnRecordCount INT = -1
		DECLARE @Tran_Maintenance VARCHAR(10) = ''Maintenance''
                            
		BEGIN TRANSACTION @Tran_Maintenance
                    
		--------------------------------------------------------------
		-----						COPY DATA					 -----	
		--------------------------------------------------------------
	
		SET @RowCount = @ReturnRecordCount
		
		IF (@BatchSize = 0) 
			SET @BatchSize = 1
			
		EXEC aspnet_Archive_Maintenance_Booking @AccountId,@JobType,@Key,@StartDate,@EndDate,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT											
				                                                                  
		-- COPY BOOKING RECORDS
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_Booking @AccountId,@JobType,@Key,@StartDate,@EndDate,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT											
					    
			END

		SET @RowCount = @ReturnRecordCount
		
		EXEC aspnet_Archive_Maintenance_BookingOrder @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
		
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED BOOKING RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- COPY BOOKING ORDER RECORDS
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_BookingOrder @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
					                                                                           
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_BookingQueue @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT												
		
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED BOOKING ORDER RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 
		
		-- COPY BOOKING QUEUE RECORDS				
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_BookingQueue @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT												
					    
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_Customer @AccountId,@JobType,@BatchSize,@OrphanLifeSpan,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT									
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED BOOKING QUEUE RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- COPY CUSTOMER RECORDS								
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_Customer @AccountId,@JobType,@BatchSize,@OrphanLifeSpan,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT									
					
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_CustomerAliasName @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
		
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED CUSTOMER RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 
			
		-- COPY CUSTOMER ALIAS NAME RECORDS	
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_CustomerAliasName @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
																					
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_CustomerAliasAddress  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
		
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED CUSTOMER ALIAS NAME RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 
		
		-- COPY CUSTOMER ALIAS ADDRESS RECORDS			
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_CustomerAliasAddress  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
																				
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_CustomerAliasEmail  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
		
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED CUSTOMER ALIAS ADDRESS RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- COPY CUSTOMER ALIAS EMAIL RECORDS	
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_CustomerAliasEmail  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
																					
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_CustomerAliasTelephone  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED CUSTOMER ALIAS EMAIL RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- COPY CUSTOMER ALIAS TELEPHONE RECORDS		
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_CustomerAliasTelephone  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
																						
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_Note  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED CUSTOMER ALIAS TELEPHONE RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- COPY  NOTE RECORDS							
											
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_Note  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
																							
			END

		SET @RowCount = @ReturnRecordCount
		EXEC aspnet_Archive_Maintenance_ActionLog  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT

		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED NOTE RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- COPY ARCHIVE LOG RECORDS							
											
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_ActionLog  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
																							
			END

		SET @RowCount = 1

		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''COPIED ARCHIVE LOG RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 
	
		--------------------------------------------------------------
		-----				DELETE ORIGONAL DATA				-----	
		--------------------------------------------------------------
	
		-- DELETE BOOKING RECORDS				
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteBooking @AccountId,@JobType,''BOOKING'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1			                                                       

		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED BOOKING RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

	   -- DELETE BOOKING ORDER RECORDS				
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteBooking  @AccountId,@JobType,''BOOKING_ORDER'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1

		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED BOOKING ORDER RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- DELETE BOOKING QUEUE RECORDS				
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteBooking  @AccountId,@JobType,''BOOKING_QUEUE'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1

		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED BOOKING QUEUE RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- DELETE CUSTOMER RECORDS				
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteCustomer  @AccountId,@JobType,''CUSTOMER'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED CUSTOMER RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- DELETE CUSTOMER ALIAS NAME RECORDS					
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteCustomer  @AccountId,@JobType,''CUSTOMER_ALIAS_NAME'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED CUSTOMER ALIAS NAME RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- DELETE CUSTOMER ALIAS ADDRESS RECORDS					
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteCustomer  @AccountId,@JobType,''CUSTOMER_ALIAS_ADDRESS'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED CUSTOMER ALIAS ADDRESS RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- DELETE CUSTOMER ALIAS EMAIL RECORDS				
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteCustomer  @AccountId,@JobType,''CUSTOMER_ALIAS_EMAIL'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED CUSTOMER ALIAS EMAIL RECORDS '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- DELETE CUSTOMER ALIAS TELEPHONE RECORDS					
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteCustomer  @AccountId,@JobType,''CUSTOMER_ALIAS_TELEPHONE'',@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		SET @RowCount = 1
	
		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED CUSTOMER ALIAS TELEPHONE RECORDS  '' + CAST(@ErrorNumber AS VARCHAR)) 

		-- DELETE NOTE RECORDS					
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteNote  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED NOTE RECORDS  '' + CAST(@ErrorNumber AS VARCHAR)) 

		SET @RowCount = 1

		-- DELETE ACTION LOG					
		WHILE (@RowCount > 0 AND @ErrorNumber = 0)
			
			BEGIN
				
				EXEC aspnet_Archive_Maintenance_DeleteActionLog  @AccountId,@JobType,@BatchSize,@RowCount OUT,@ErrorProcedure OUT,@ErrorLine OUT,@ErrorNumber OUT,@ErrorMessage OUT
										 
			END

		IF (@ErrorNumber = 0  AND @Debug = 1)
			PRINT(''DELETED ACTION LOG RECORDS  '' + CAST(@ErrorNumber AS VARCHAR))
															                      
		IF (@ErrorNumber = 0)
    
			BEGIN
		
				-- UPDATE CONTROLLER SUCCESS
				EXEC aspnet_Archive_Maintenance_UpdateStatus @ArchiveId,0 
        
        		-- SHOW ANY RAISED ERRORS WHEN THE PROCEDURE IS RUN
				-- (FOR DEBUG PURPOSES)
				SELECT * FROM @AuditLog
			
				COMMIT TRANSACTION @Tran_Maintenance
			
			END
		
		ELSE
	
			BEGIN
	
		
				-- SAVE AUDIT LOG DATA TO TABLE VARIABLE TO AVOID LOOSING DUE TO ROLLBACK
				INSERT INTO @AuditLog(ArchiveId,ErrorProcedure,ErrorLineNo,ErrorNumber,ErrorMessage)
					SELECT @ArchiveId,@ErrorProcedure,@ErrorLine,@ErrorNumber,@ErrorMessage
				
				ROLLBACK TRANSACTION @Tran_Maintenance
			
				-- SAVE AUDIT LOG DATA FROM TABLE VARIABLE TO DATABASE
				INSERT INTO nuwa_Archive_ErrorLog(ArchiveId,ErrorProcedure,ErrorLineNo,ErrorNumber,ErrorMessage)
					SELECT ArchiveId,ErrorProcedure,ErrorLineNo,ErrorNumber,ErrorMessage
						FROM @AuditLog
			
				-- UPDATE CONTROLLER SUCCESS
				EXEC aspnet_Archive_Maintenance_UpdateStatus @ArchiveId,1 
			
			END                                     
    
    
		-- RETURN 0 : SUCCESS, ERROR NUMBER : FAIL                 
		SET @ReturnValue = @ErrorNumber
                            

	END'

END
GO
