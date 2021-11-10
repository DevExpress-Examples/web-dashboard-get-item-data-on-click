Imports DevExpress.DashboardCommon
Imports DevExpress.DashboardWeb
Imports DevExpress.DataAccess.ConnectionParameters
Imports DevExpress.DataAccess.Sql
Imports System
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace WebApp

    Public Partial Class [Default]
        Inherits Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            Dim dashboardFileStorage As DashboardFileStorage = New DashboardFileStorage("~/App_Data/Dashboards")
            ASPxDashboard1.SetDashboardStorage(dashboardFileStorage)
            Dim sqlDataSource As DashboardSqlDataSource = New DashboardSqlDataSource("SQL Data Source", "nwindConnection")
            Dim countriesQuery As SelectQuery = SelectQueryFluentBuilder.AddTable("Invoices").SelectAllColumns().Build("MyQuery")
            sqlDataSource.Queries.Add(countriesQuery)
            Dim dataSourceStorage As DataSourceInMemoryStorage = New DataSourceInMemoryStorage()
            dataSourceStorage.RegisterDataSource("sqlDataSource1", sqlDataSource.SaveToXml())
            ASPxDashboard1.SetDataSourceStorage(dataSourceStorage)
        End Sub
    End Class
End Namespace
