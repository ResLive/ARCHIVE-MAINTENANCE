-- DROP ADDITIONAL INDEXES FROM EXISTING TABLES
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Booking]') AND name = N'IX_nuwa_Booking_AccountId')
BEGIN
	DROP INDEX IX_nuwa_Booking_AccountId ON [dbo].[nuwa_Booking];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Booking]') AND name = N'IX_nuwa_Booking_BookingReference')
BEGIN
	DROP INDEX IX_nuwa_Booking_BookingReference ON [dbo].[nuwa_Booking];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Booking]') AND name = N'IX_nuwa_Booking_CustomerId')
BEGIN
	DROP INDEX IX_nuwa_Booking_CustomerId ON [dbo].[nuwa_Booking];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingOrder]') AND name = N'IX_nuwa_BookingOrder_AccountId')
BEGIN
	DROP INDEX IX_nuwa_BookingOrder_AccountId ON [dbo].[nuwa_BookingOrder];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingOrder]') AND name = N'IX_nuwa_BookingOrder_BookingId')
BEGIN
	DROP INDEX IX_nuwa_BookingOrder_BookingId ON [dbo].[nuwa_BookingOrder];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingQueue]') AND name = N'IX_nuwa_BookingQueue_AccountId')
BEGIN
	DROP INDEX IX_nuwa_BookingQueue_AccountId ON [dbo].[nuwa_BookingQueue];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_BookingQueue]') AND name = N'IX_nuwa_BookingQueue_BookingReference')
BEGIN
	DROP INDEX IX_nuwa_BookingQueue_BookingReference ON [dbo].[nuwa_BookingQueue];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Customer]') AND name = N'IX_nuwa_Customer_AccountId')
BEGIN
	DROP INDEX IX_nuwa_Customer_AccountId ON [dbo].[nuwa_Customer];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasName]') AND name = N'IX_nuwa_CustomerAliasName_AccountId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasName_AccountId ON [dbo].[nuwa_CustomerAliasName];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasName]') AND name = N'IX_nuwa_CustomerAliasName_CustomerId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasName_CustomerId ON [dbo].[nuwa_CustomerAliasName];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasAddress]') AND name = N'IX_nuwa_CustomerAliasAddress_AccountId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasAddress_AccountId ON [dbo].[nuwa_CustomerAliasAddress];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasAddress]') AND name = N'IX_nuwa_CustomerAliasAddress_CustomerId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasAddress_CustomerId ON [dbo].[nuwa_CustomerAliasAddress];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasEmail]') AND name = N'IX_nuwa_CustomerAliasEmail_AccountId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasEmail_AccountId ON [dbo].[nuwa_CustomerAliasEmail];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasEmail]') AND name = N'IX_nuwa_CustomerAliasEmail_CustomerId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasEmail_CustomerId ON [dbo].[nuwa_CustomerAliasEmail];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasTelephone]') AND name = N'IX_nuwa_CustomerAliasTelephone_AccountId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasTelephone_AccountId ON [dbo].[nuwa_CustomerAliasTelephone];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_CustomerAliasTelephone]') AND name = N'IX_nuwa_CustomerAliasTelephone_CustomerId')
BEGIN
	DROP INDEX IX_nuwa_CustomerAliasTelephone_CustomerId ON [dbo].[nuwa_CustomerAliasTelephone];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Note]') AND name = N'IX_nuwa_Note_AccountId')
BEGIN
	DROP INDEX IX_nuwa_Note_AccountId ON [dbo].[nuwa_Note];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Note]') AND name = N'IX_nuwa_Note_BookingId')
BEGIN
	DROP INDEX IX_nuwa_Note_BookingId ON [dbo].[nuwa_Note];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Note]') AND name = N'IX_nuwa_Note_CustomerId')
BEGIN
	DROP INDEX IX_nuwa_Note_CustomerId ON [dbo].[nuwa_Note];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_ActionLog]') AND name = N'IX_nuwa_ActionLog_AccountId')
BEGIN
	DROP INDEX IX_nuwa_ActionLog_AccountId ON [dbo].[nuwa_ActionLog];
END	  
GO
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_ActionLog]') AND name = N'IX_nuwa_ActionLog_BookingId')
BEGIN
	DROP INDEX IX_nuwa_ActionLog_BookingId ON [dbo].[nuwa_ActionLog];
END	  
GO

-- DROP ADDITIONAL TABLES
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_Booking_Key]') AND type = 'D')
BEGIN
	ALTER TABLE [dbo].[nuwa_Archive] DROP CONSTRAINT [DF_nuwa_Archive_Booking_Key]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_StartDate]') AND type = 'D')
BEGIN
	ALTER TABLE [dbo].[nuwa_Archive] DROP CONSTRAINT [DF_nuwa_Archive_StartDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_EndDate]') AND type = 'D')
BEGIN
	ALTER TABLE [dbo].[nuwa_Archive] DROP CONSTRAINT [DF_nuwa_Archive_EndDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_Action]') AND type = 'D')
BEGIN
	ALTER TABLE [dbo].[nuwa_Archive] DROP CONSTRAINT [DF_nuwa_Archive_Action]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_BatchSize]') AND type = 'D')
BEGIN
	ALTER TABLE [dbo].[nuwa_Archive] DROP CONSTRAINT [DF_nuwa_Archive_BatchSize]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_OrphanLifeSpan]') AND type = 'D')
BEGIN
	ALTER TABLE [dbo].[nuwa_Archive] DROP CONSTRAINT [DF_nuwa_Archive_OrphanLifeSpan]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_nuwa_Archive_Failed]') AND type = 'D')
BEGIN
	ALTER TABLE [dbo].[nuwa_Archive] DROP CONSTRAINT [DF_nuwa_Archive_Failed]
END

GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_ActionLog]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_ActionLog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Booking]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_Booking]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingOrder]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_BookingOrder]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_BookingQueue]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_BookingQueue]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Customer]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_Customer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasAddress]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_CustomerAliasAddress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasEmail]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_CustomerAliasEmail]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasName]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_CustomerAliasName]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_CustomerAliasTelephone]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_CustomerAliasTelephone]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_Note]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_Note]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nuwa_Archive_ErrorLog]') AND type in (N'U'))
	DROP TABLE [dbo].[nuwa_Archive_ErrorLog]
GO

-- DROP STORED PROCEDURES
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Booking]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_Booking]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_BookingOrder]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_BookingOrder]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_BookingQueue]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_BookingQueue]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Customer]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_Customer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasAddress]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasAddress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasEmail]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasEmail]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasName]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasName]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_CustomerAliasTelephone]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_CustomerAliasTelephone]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Note]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_Note]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_ActionLog]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_ActionLog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteBooking]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteBooking]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteCustomer]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteCustomer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteNote]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteNote]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_DeleteActionLog]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_DeleteActionLog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_UpdateStatus]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_UpdateStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_SchemaOps]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_SchemaOps]
GO
-- TEMP
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Debug]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_Debug]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Archive_Maintenance_Run_Debug]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[aspnet_Archive_Maintenance_Run_Debug]
GO