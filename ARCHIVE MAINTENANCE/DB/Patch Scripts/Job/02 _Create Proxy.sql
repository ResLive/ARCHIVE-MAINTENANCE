IF NOT EXISTS (SELECT name FROM msdb.dbo.sysproxies WHERE name = N'($ProxyName)')EXEC msdb.dbo.sp_add_proxy @proxy_name=N'($ProxyName)',@credential_name=N'($CredentialName)', 
		@enabled=1
GO

EXEC msdb.dbo.sp_grant_proxy_to_subsystem @proxy_name=N'($ProxyName)', @subsystem_id=11
GO