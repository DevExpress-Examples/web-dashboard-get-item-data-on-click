<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebApp/Default.aspx)
* [Default.aspx.cs](./CS/WebApp/Default.aspx.cs)
<!-- default file list end -->
# Web Dashboard - How to get data from a clicked dashboard item
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
