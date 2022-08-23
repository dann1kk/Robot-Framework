*** Settings ***
Documentation  SQL Server Demo Tests
Resource  ../Resources/SQLServer.robot

Test Setup  SQL_Server.connect
Test Teardown  SQL.Server.disconnect

