Imports DevExpress.DashboardCommon
Imports DevExpress.DashboardWeb
Imports DevExpress.DataAccess.ConnectionParameters
Imports DevExpress.DataAccess.Sql
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace WebApp
	Partial Public Class [Default]
		Inherits System.Web.UI.Page

		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			Dim dashboardFileStorage As New DashboardFileStorage("~/App_Data/Dashboards")
			ASPxDashboard1.SetDashboardStorage(dashboardFileStorage)

			Dim sqlDataSource As New DashboardSqlDataSource("SQL Data Source", "nwindConnection")
			Dim countriesQuery As SelectQuery = SelectQueryFluentBuilder.AddTable("Invoices").SelectAllColumns().Build("MyQuery")
			sqlDataSource.Queries.Add(countriesQuery)

			Dim dataSourceStorage As New DataSourceInMemoryStorage()
			dataSourceStorage.RegisterDataSource("sqlDataSource1", sqlDataSource.SaveToXml())
			ASPxDashboard1.SetDataSourceStorage(dataSourceStorage)
		End Sub
	End Class
End Namespace