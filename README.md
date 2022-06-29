<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/230117938/18.2.10%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T848291)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Dashboard for Web Forms - How to Get Data from a Clicked Dashboard Item

<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/230117938/)**
<!-- run online end -->

This example shows how use the client-side [ASPxClientDashboard.ItemClick](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboard#js_ASPxClientDashboard_ItemClick) event to get data from a clicked dashboard item.

![chart clicked data](./images/chart-clicked-data.png)

<!-- default file list -->
## Files to Look at
* [Default.aspx](./CS/WebApp/Default.aspx) (VB:[Default.aspx](./VB/WebApp/Default.aspx))
* [Default.aspx.cs](./CS/WebApp/Default.aspx.cs) (VB:[Default.aspx.vb](./VB/WebApp/Default.aspx.vb))
<!-- default file list end -->

## Example Overview

The `ItemClick` event handler receives arguments of the [ASPxClientDashboardItemClickEventArgs](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs) type that allows you to get data displayed in a clicked item: grid rows, series points, cards. Note that some dashboard items display multidimensional data. See the [Obtaining Underlying and Displayed Data](https://docs.devexpress.com/Dashboard/18078/create-the-designer-and-viewer-applications/web-dashboard/aspnet-web-forms-dashboard-control/obtain-underlying-and-displayed-data) help topic for more information about the general data structure.

Follow the steps below to get data from a clicked dashboard item:

1. Call the [GetData](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetData) method to request the [ASPxClientDashboardItemData](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData) object that contains information about the item data.
2. Call the [ASPxClientDashboardItemData.GetAxisNames](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetAxisNames) method to get a list of displayed axes.
3. Use the [GetDimensions](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetDimensions_axisName_) and [GetAxisPoint](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetAxisPoint_axisName_) methods to get information about dimensions that correspond to each axis.
4. Use the [GetSlice](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetSlice_tuple_) method to get a data [slice](https://docs.devexpress.com/Dashboard/18078/web-dashboard/aspnet-web-forms-dashboard-control/obtain-underlying-and-displayed-data#slices) that corresponds to the target item's element and call the [GetMeasureValue](https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetMeasureValue_measureId_) method to get the last level's measure values in the slice.



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
