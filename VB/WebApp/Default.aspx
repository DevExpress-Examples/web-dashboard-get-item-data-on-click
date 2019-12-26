<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApp.Default" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Dashboard.v18.2.Web.WebForms, Version=18.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function onItemClick(s, args) {
            if(args.ItemName == "chartDashboardItem1") {
                var itemData = args.GetData(),
                    axes = itemData.GetAxisNames(),
                    measures = itemData.GetMeasures(),
                    row = [],
                    rowText = "";
                $.each(axes, function(_, axis) {
                    rowText = rowText + axis + "\n";
                    var axisPoint = args.GetAxisPoint(axis);
                    var dimensions = itemData.GetDimensions(axis);
                    $.each(dimensions, function(_, dimension) {
                        var dimensionValue = axisPoint.GetDimensionValue(dimension.Id);
                        if(dimensionValue != null) {
                            row.push(dimensionValue.GetDisplayText());
                            rowText = rowText + "    " + dimension.Name + ": " + dimensionValue.GetDisplayText() + "\n";
                        }
                    });
                });
                var dataSlice = itemData;
                $.each(axes, function(_, axis) {
                    var axisPoint = args.GetAxisPoint(axis);
                    dataSlice = dataSlice.GetSlice(axisPoint);

                });
                rowText = rowText + "Measures:\n";
                $.each(measures, function(_, measure) {
                    var measureValue = dataSlice.GetMeasureValue(measure.Id);
                    row.push(measureValue.GetValue());
                    rowText = rowText + "   " + measureValue.GetValue() + "; ";
                });
                alert(rowText);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" WorkingMode="ViewerOnly">
                <ClientSideEvents
                    ItemClick="onItemClick" />
            </dx:ASPxDashboard>
        </div>
    </form>
</body>
</html>

