<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebApp/Default.aspx)
* [Default.aspx.cs](./CS/WebApp/Default.aspx.cs)
<!-- default file list end -->

# Dashboard for Web Forms - How to get data from a clicked dashboard item

<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/230117938/)**
<!-- run online end -->


This example shows how to get data from a clicked dashboard item using the client-side [ASPxClientDashboard.ItemClick](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboard#js_ASPxClientDashboard_ItemClick) event.

The event handler receives arguments of the [ASPxClientDashboardItemClickEventArgs](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs) type, which allows you to get data displayed in a clicked item: grid rows, series points, cards, etc.

Note that some dashboard items display multidimensional data. See the [Obtaining Underlying and Displayed Data](https://docs.devexpress.com/Dashboard/18078/create-the-designer-and-viewer-applications/web-dashboard/aspnet-web-forms-dashboard-control/obtain-underlying-and-displayed-data) help topic for more information about the general data structure. Use these steps to get data in the following order:
- Call the [GetData](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetData) method to request the [ASPxClientDashboardItemData](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData) object that provides all information about item data.
- Get a list of displayed axes by calling the [ASPxClientDashboardItemData.GetAxisNames](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetAxisNames) method.
- Get information about dimensions corresponding to each axis using the [GetDimensions](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetDimensions_axisName_) and [GetAxisPoint](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetAxisPoint_axisName_) methods.
- To get the last level measure values, divide data by displayed axis points using the [GetSlice](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetSlice_tuple_) method and call the [GetMeasureValue](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetMeasureValue_measureId_) method.

## Documentation

- [Client Side API Overview for ASP.NET Web Forms Dashboard](https://docs.devexpress.com/Dashboard/116302/web-dashboard/aspnet-web-forms-dashboard-control/client-side-api-overview?p=netframework)
- [Obtain Underlying and Displayed Data in ASP.NET Web Forms Dashboard Control](https://docs.devexpress.com/Dashboard/18078/web-dashboard/aspnet-web-forms-dashboard-control/obtain-underlying-and-displayed-data)

## More Examples

- [Dashboard for ASP.NET Core - How to obtain a dashboard item's client data](https://github.com/DevExpress-Examples/asp-net-core-dashboard-get-client-data)
- [Dashboard for ASP.NET Core - How to obtain a dashboard item's underlying data for a clicked visual element](https://github.com/DevExpress-Examples/asp-net-core-dashboard-get-underlying-data-for-clicked-item)
- [Dashboard for ASP.NET Core - How to obtain underlying data for the specified dashboard item](https://github.com/DevExpress-Examples/asp-net-core-dashboard-display-item-underlying-data)
- [Dashboard for Web Forms - How to obtain a dashboard item's client data](https://github.com/DevExpress-Examples/how-to-obtain-a-dashboard-items-client-data-in-the-aspnet-dashboard-control-t492284)
- [Dashboard for Web Forms - How to obtain a dashboard item's underlying data for a clicked visual element](https://github.com/DevExpress-Examples/aspxdashboard-how-to-obtain-a-dashboard-items-underlying-data-for-a-clicked-visual-element-t492257)
- [Dashboard for Web Forms - How to obtain underlying data for the specified dashboard item](https://github.com/DevExpress-Examples/aspxdashboard-how-to-obtain-underlying-data-for-the-specified-dashboard-item-t518504)
