<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.16.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Dashboard.v18.2.Web.WebForms, Version=18.2.16.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script>
		function onItemClick(s, args) {
			if (args.ItemName == "chartDashboardItem1") {
				var itemData = args.GetData(),
					axes = itemData.GetAxisNames(),
					measures = itemData.GetMeasures(),
					dimensionName = "",
					dimensionVal = "",
					measureName = "",
					measureVal = "";
				$.each(axes, function (_, axis) {
					var axisPoint = args.GetAxisPoint(axis);
					var dimensions = itemData.GetDimensions(axis);
					$.each(dimensions, function (_, dimension) {
						var dimensionValue = axisPoint.GetDimensionValue(dimension.Id);
						if (dimensionValue != null) {
							dimensionName = dimension.Name;
							dimensionVal = dimensionValue.GetDisplayText();
						}
					});
				});
				var dataSlice = itemData;
				$.each(axes, function (_, axis) {
					var axisPoint = args.GetAxisPoint(axis);
					dataSlice = dataSlice.GetSlice(axisPoint);

				});
				$.each(measures, function (_, measure) {
					var measureValue = dataSlice.GetMeasureValue(measure.Id);
					measureName = measure.Name;
					measureVal = measureValue.GetValue();
				});
				const popupContentTemplate = function () {
					return $('<div>').append(
						$(`<p><b>Dimension: </b></p>`),
						$(`<p><span>${dimensionName}</span> - <span>${dimensionVal}</span></p>`),
						$(`<p><b>Measure: </b></p>`),
						$(`<p><span>${measureName}</span> - <span>${measureVal}</span></p>`)
					);
				}
				$popupContent = popup.content();
				$popupContent.empty();
				$popupContent.append(popupContentTemplate);
				popup.show();
			}
		}
		var popup;
		function initPopup() {
			popup = $("#myPopup").dxPopup({
				width: 300, height: 300,
				title: "Clicked data",
				showCloseButton: true,
				closeOnOutsideClick: true
			}).dxPopup('instance');
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<div id="myPopup"></div>
			<dx:ASPxDashboard ID="ASPxDashboard1" runat="server" WorkingMode="ViewerOnly">
				<ClientSideEvents
					ItemClick="onItemClick"
					Init="function(s, e) { initPopup(); }" />
			</dx:ASPxDashboard>
		</div>
	</form>
</body>
</html>

