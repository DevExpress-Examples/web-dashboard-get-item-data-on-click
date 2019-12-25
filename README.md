<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebApp/Default.aspx)
* [Default.aspx.cs](./CS/WebApp/Default.aspx.cs)
<!-- default file list end -->
# Web Dashboard - How to get data from a clicked dashboard item


<p>This example shows how to get data from a clicked dashboard item using the client-side <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboard#js_ASPxClientDashboard_ItemClick">ASPxClientDashboard.ItemClick</a> event.</p>

The event handler receives arguments of the <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs">ASPxClientDashboardItemClickEventArgs</a> type, which allows you to get data displayed in a clicked item: grid rows, series points, cards, etc.
Note that some dashboard items display multidimensional data. See the <a href="https://docs.devexpress.com/Dashboard/18078/create-the-designer-and-viewer-applications/web-dashboard/aspnet-web-forms-dashboard-control/obtain-underlying-and-displayed-data">Obtaining Underlying and Displayed Data</a> help topic for more information about the general data structure. Use these steps to get data in the following order:
- Call the <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetData">GetData</a> method to request the <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData">ASPxClientDashboardItemData<a> object that provides all information about item data.
- Get a list of displayed axes by calling the <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetAxisNames">ASPxClientDashboardItemData.GetAxisNames</a> method.
- Get information about dimensions corresponding to each axis using the <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetDimensions_axisName_">GetDimensions</a> and <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemClickEventArgs#js_ASPxClientDashboardItemClickEventArgs_GetAxisPoint_axisName_">GetAxisPoint</a> methods.
- To get the last level measure values, divide data by displayed axis points using the <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetSlice_tuple_">GetSlice</a> method and call the <a href="https://docs.devexpress.com/Dashboard/js-ASPxClientDashboardItemData#js_ASPxClientDashboardItemData_GetMeasureValue_measureId_">GetMeasureValue</a> method.
