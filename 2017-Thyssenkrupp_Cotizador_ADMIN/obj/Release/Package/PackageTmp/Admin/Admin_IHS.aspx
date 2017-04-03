﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_IHS.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN.Admin.Admin_IHS" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


	<telerik:RadSkinManager ID="RadSkinManagerAdmin" runat="server" ShowChooser="False" Skin="MetroTouch"></telerik:RadSkinManager>

	<telerik:RadAjaxManager runat="server" ID="RadAjaxManagerAdmin" DefaultLoadingPanelID="RadAjaxManagerAdmin">
		<AjaxSettings>
			<telerik:AjaxSetting AjaxControlID="OrientationButtonList">
				<UpdatedControls>
					<telerik:AjaxUpdatedControl ControlID="RadMenuAdmin" />
					<telerik:AjaxUpdatedControl ControlID="OrientationButtonList" />
				</UpdatedControls>
			</telerik:AjaxSetting>
		</AjaxSettings>
	</telerik:RadAjaxManager>
	<telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanelAdmin"></telerik:RadAjaxLoadingPanel>

	<!--<div align="left">
		&nbsp;
		<telerik:RadMenu runat="server" RenderMode="Lightweight" ID="RadMenuAdmin" EnableRoundedCorners="True" EnableShadows="True" Flow="Vertical" Skin="Metro">
			<Items>
				<telerik:RadMenuItem runat="server" Text="Usuarios">
				</telerik:RadMenuItem>
				<telerik:RadMenuItem runat="server" Text="Clientes">
				</telerik:RadMenuItem>
			</Items>
		</telerik:RadMenu>
	</div> -->

	<p></p>


	<div class="navbar navbar-inverse navbar-fixed-left bg-primary">
		<a class="navbar-brand" href="#">Menu</a>
		<ul class="nav navbar-nav">
			<li><a href="/Admin/AdminHome.aspx">Users</a></li>
			<li><a href="/Admin/AdminClients.aspx">Clients</a></li>
			<li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Engineering <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<!--Ingenieria-->
					<!--Ingenieria-->
					<li><a href="/Admin/Admin_ProductLine.aspx">Product Line</a></li>
					<li><a href="/Admin/Admin_BlanksInformation.aspx">Blanks Information</a></li>
					<li><a href="/Admin/Admin_ShapeOfBlank.aspx">Shape of Blank</a></li>
					<li><a href="/Admin/Admin_WeightCoilCalculation.aspx">Weight Coil Calculation</a></li>
					<<li><a href="/Admin/Admin_MaterialType.aspx">Material Type</a></li>
					<li><a href="/Admin/Admin_CoilSpec.aspx">Coil Specs</a></li>
					<li><a href="/Admin/Admin_RawMaterialSource.aspx">Raw Material Source</a></li>
					<li><a href="/Admin/Admin_Incoterm.aspx">Incoterm</a></li>
					<li class="divider"></li>
					<li><a href="/Admin/Admin_CutTolerance.aspx">Cut Tolerance</a></li>
					<li><a href="/Admin/Admin_DimensionTolerance.aspx">Dimension Tolerance</a></li>
					<li><a href="/Admin/Admin_WidthTolerance.aspx">Width Tolerance</a></li>
					<li><a href="/Admin/Admin_ConversionFactors.aspx">Conversion Factors</a></li>
					<li><a href="/Admin/Admin_Units.aspx">Units</a></li>
					<li class="divider"></li>
					<li class="active"><a href="/Admin/Admin_IHS.aspx">IHS</a></li>
					<li><a href="/Admin/Admin_Process.aspx">Process</a></li>
					<li class="divider"></li>
					<li><a href="/Admin/Admin_StatusQuote.aspx">Status Quote</a></li>
				</ul>
			</li>
			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Logistics <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<!--Logistica-->
					<li><a href="/Admin/Admin_ShipTo.aspx">Ship To</a></li>
					<li><a href="/Admin/Admin_Packaging.aspx">Packaging</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<div class="container" id="page-content-wrapper">
	
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->
		<div class="alert alert-dismissible alert-info">
		  <h1><strong>IHS</strong></h1>	
		</div>
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->

		<div class="row">
			<h2>IHS</h2>
			<!-- WebPageContent -------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_IHS" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True"
					AllowFilteringByColumn="True" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" 
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceIHS">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="ihs_id"  CommandItemDisplay="Top" DataSourceID="SqlDataSourceIHS">
					   
						<CommandItemSettings ShowExportToExcelButton="True" ShowExportToPdfButton="True" />
						<Columns>
							<telerik:GridBoundColumn DataField="ihs_id" DataType="System.Int32" FilterControlAltText="Filter ihs_id column" HeaderText="ihs_id" ReadOnly="True" SortExpression="ihs_id" UniqueName="ihs_id" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_oem" FilterControlAltText="Filter ihs_oem column" HeaderText="OEM" SortExpression="ihs_oem" UniqueName="ihs_oem">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_vehicle" FilterControlAltText="Filter ihs_vehicle column" HeaderText="Vehicle" SortExpression="ihs_vehicle" UniqueName="ihs_vehicle">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_sop" FilterControlAltText="Filter ihs_sop column" HeaderText="SOP" SortExpression="ihs_sop" UniqueName="ihs_sop">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_eop" FilterControlAltText="Filter ihs_eop column" HeaderText="EOP" SortExpression="ihs_eop" UniqueName="ihs_eop">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_maxVolumeNext4Years" DataType="System.Decimal" FilterControlAltText="Filter ihs_maxVolumeNext4Years column" HeaderText="Max Volume (Next 4 Years)" SortExpression="ihs_maxVolumeNext4Years" UniqueName="ihs_maxVolumeNext4Years">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_averageVolumeNext4Years" DataType="System.Decimal" FilterControlAltText="Filter ihs_averageVolumeNext4Years column" HeaderText="Average Volume (Next 4 Years)" SortExpression="ihs_averageVolumeNext4Years" UniqueName="ihs_averageVolumeNext4Years">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2016" DataType="System.Decimal" FilterControlAltText="Filter ihs_2016 column" HeaderText="Y-2016" SortExpression="ihs_2016" UniqueName="ihs_2016">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2017" DataType="System.Decimal" FilterControlAltText="Filter ihs_2017 column" HeaderText="Y-2017" SortExpression="ihs_2017" UniqueName="ihs_2017">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2018" DataType="System.Decimal" FilterControlAltText="Filter ihs_2018 column" HeaderText="Y-2018" SortExpression="ihs_2018" UniqueName="ihs_2018">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2019" DataType="System.Decimal" FilterControlAltText="Filter ihs_2019 column" HeaderText="Y-2019" SortExpression="ihs_2019" UniqueName="ihs_2019">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2020" DataType="System.Decimal" FilterControlAltText="Filter ihs_2020 column" HeaderText="Y-2020" SortExpression="ihs_2020" UniqueName="ihs_2020">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2021" DataType="System.Decimal" FilterControlAltText="Filter ihs_2021 column" HeaderText="Y-2021" SortExpression="ihs_2021" UniqueName="ihs_2021">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2022" DataType="System.Decimal" FilterControlAltText="Filter ihs_2022 column" HeaderText="Y-2022" SortExpression="ihs_2022" UniqueName="ihs_2022">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2023" DataType="System.Decimal" FilterControlAltText="Filter ihs_2023 column" HeaderText="Y-2023" SortExpression="ihs_2023" UniqueName="ihs_2023">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2024" DataType="System.Decimal" FilterControlAltText="Filter ihs_2024 column" HeaderText="Y-2024" SortExpression="ihs_2024" UniqueName="ihs_2024">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2025" DataType="System.Decimal" FilterControlAltText="Filter ihs_2025 column" HeaderText="Y-2025" SortExpression="ihs_2025" UniqueName="ihs_2025">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2026" DataType="System.Decimal" FilterControlAltText="Filter ihs_2026 column" HeaderText="Y-2026" SortExpression="ihs_2026" UniqueName="ihs_2026">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2027" DataType="System.Decimal" FilterControlAltText="Filter ihs_2027 column" HeaderText="Y-2027" SortExpression="ihs_2027" UniqueName="ihs_2027">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2028" DataType="System.Decimal" FilterControlAltText="Filter ihs_2028 column" HeaderText="Y-2028" SortExpression="ihs_2028" UniqueName="ihs_2028">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2029" DataType="System.Decimal" FilterControlAltText="Filter ihs_2029 column" HeaderText="Y-2029" SortExpression="ihs_2029" UniqueName="ihs_2029">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2030" DataType="System.Decimal" FilterControlAltText="Filter ihs_2030 column" HeaderText="Y-2030" SortExpression="ihs_2030" UniqueName="ihs_2030">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2031" DataType="System.Decimal" FilterControlAltText="Filter ihs_2031 column" HeaderText="Y-2031" SortExpression="ihs_2031" UniqueName="ihs_2031">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2032" DataType="System.Decimal" FilterControlAltText="Filter ihs_2032 column" HeaderText="Y-2032" SortExpression="ihs_2032" UniqueName="ihs_2032">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2033" DataType="System.Decimal" FilterControlAltText="Filter ihs_2033 column" HeaderText="Y-2033" SortExpression="ihs_2033" UniqueName="ihs_2033">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2034" DataType="System.Decimal" FilterControlAltText="Filter ihs_2034 column" HeaderText="Y-2034" SortExpression="ihs_2034" UniqueName="ihs_2034">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2035" DataType="System.Decimal" FilterControlAltText="Filter ihs_2035 column" HeaderText="Y-2035" SortExpression="ihs_2035" UniqueName="ihs_2035">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_2036" DataType="System.Decimal" FilterControlAltText="Filter ihs_2036 column" HeaderText="Y-2036" SortExpression="ihs_2036" UniqueName="ihs_2036">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ihs_descripcion" FilterControlAltText="Filter ihs_descripcion column" HeaderText="Description" SortExpression="ihs_descripcion" UniqueName="ihs_descripcion">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceIHS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" DeleteCommand="DELETE FROM [IHS] WHERE [ihs_id] = @original_ihs_id AND (([ihs_oem] = @original_ihs_oem) OR ([ihs_oem] IS NULL AND @original_ihs_oem IS NULL)) AND (([ihs_vehicle] = @original_ihs_vehicle) OR ([ihs_vehicle] IS NULL AND @original_ihs_vehicle IS NULL)) AND (([ihs_sop] = @original_ihs_sop) OR ([ihs_sop] IS NULL AND @original_ihs_sop IS NULL)) AND (([ihs_eop] = @original_ihs_eop) OR ([ihs_eop] IS NULL AND @original_ihs_eop IS NULL)) AND (([ihs_maxVolumeNext4Years] = @original_ihs_maxVolumeNext4Years) OR ([ihs_maxVolumeNext4Years] IS NULL AND @original_ihs_maxVolumeNext4Years IS NULL)) AND (([ihs_averageVolumeNext4Years] = @original_ihs_averageVolumeNext4Years) OR ([ihs_averageVolumeNext4Years] IS NULL AND @original_ihs_averageVolumeNext4Years IS NULL)) AND (([ihs_2016] = @original_ihs_2016) OR ([ihs_2016] IS NULL AND @original_ihs_2016 IS NULL)) AND (([ihs_2017] = @original_ihs_2017) OR ([ihs_2017] IS NULL AND @original_ihs_2017 IS NULL)) AND (([ihs_2018] = @original_ihs_2018) OR ([ihs_2018] IS NULL AND @original_ihs_2018 IS NULL)) AND (([ihs_2019] = @original_ihs_2019) OR ([ihs_2019] IS NULL AND @original_ihs_2019 IS NULL)) AND (([ihs_2020] = @original_ihs_2020) OR ([ihs_2020] IS NULL AND @original_ihs_2020 IS NULL)) AND (([ihs_2021] = @original_ihs_2021) OR ([ihs_2021] IS NULL AND @original_ihs_2021 IS NULL)) AND (([ihs_2022] = @original_ihs_2022) OR ([ihs_2022] IS NULL AND @original_ihs_2022 IS NULL)) AND (([ihs_2023] = @original_ihs_2023) OR ([ihs_2023] IS NULL AND @original_ihs_2023 IS NULL)) AND (([ihs_2024] = @original_ihs_2024) OR ([ihs_2024] IS NULL AND @original_ihs_2024 IS NULL)) AND (([ihs_2025] = @original_ihs_2025) OR ([ihs_2025] IS NULL AND @original_ihs_2025 IS NULL)) AND (([ihs_2026] = @original_ihs_2026) OR ([ihs_2026] IS NULL AND @original_ihs_2026 IS NULL)) AND (([ihs_2027] = @original_ihs_2027) OR ([ihs_2027] IS NULL AND @original_ihs_2027 IS NULL)) AND (([ihs_2028] = @original_ihs_2028) OR ([ihs_2028] IS NULL AND @original_ihs_2028 IS NULL)) AND (([ihs_2029] = @original_ihs_2029) OR ([ihs_2029] IS NULL AND @original_ihs_2029 IS NULL)) AND (([ihs_2030] = @original_ihs_2030) OR ([ihs_2030] IS NULL AND @original_ihs_2030 IS NULL)) AND (([ihs_2031] = @original_ihs_2031) OR ([ihs_2031] IS NULL AND @original_ihs_2031 IS NULL)) AND (([ihs_2032] = @original_ihs_2032) OR ([ihs_2032] IS NULL AND @original_ihs_2032 IS NULL)) AND (([ihs_2033] = @original_ihs_2033) OR ([ihs_2033] IS NULL AND @original_ihs_2033 IS NULL)) AND (([ihs_2034] = @original_ihs_2034) OR ([ihs_2034] IS NULL AND @original_ihs_2034 IS NULL)) AND (([ihs_2035] = @original_ihs_2035) OR ([ihs_2035] IS NULL AND @original_ihs_2035 IS NULL)) AND (([ihs_2036] = @original_ihs_2036) OR ([ihs_2036] IS NULL AND @original_ihs_2036 IS NULL)) AND (([ihs_descripcion] = @original_ihs_descripcion) OR ([ihs_descripcion] IS NULL AND @original_ihs_descripcion IS NULL))" InsertCommand="INSERT INTO [IHS] ([ihs_id], [ihs_oem], [ihs_vehicle], [ihs_sop], [ihs_eop], [ihs_maxVolumeNext4Years], [ihs_averageVolumeNext4Years], [ihs_2016], [ihs_2017], [ihs_2018], [ihs_2019], [ihs_2020], [ihs_2021], [ihs_2022], [ihs_2023], [ihs_2024], [ihs_2025], [ihs_2026], [ihs_2027], [ihs_2028], [ihs_2029], [ihs_2030], [ihs_2031], [ihs_2032], [ihs_2033], [ihs_2034], [ihs_2035], [ihs_2036], [ihs_descripcion]) VALUES (@ihs_id, @ihs_oem, @ihs_vehicle, @ihs_sop, @ihs_eop, @ihs_maxVolumeNext4Years, @ihs_averageVolumeNext4Years, @ihs_2016, @ihs_2017, @ihs_2018, @ihs_2019, @ihs_2020, @ihs_2021, @ihs_2022, @ihs_2023, @ihs_2024, @ihs_2025, @ihs_2026, @ihs_2027, @ihs_2028, @ihs_2029, @ihs_2030, @ihs_2031, @ihs_2032, @ihs_2033, @ihs_2034, @ihs_2035, @ihs_2036, @ihs_descripcion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [IHS] ORDER BY [ihs_oem]" UpdateCommand="UPDATE [IHS] SET [ihs_oem] = @ihs_oem, [ihs_vehicle] = @ihs_vehicle, [ihs_sop] = @ihs_sop, [ihs_eop] = @ihs_eop, [ihs_maxVolumeNext4Years] = @ihs_maxVolumeNext4Years, [ihs_averageVolumeNext4Years] = @ihs_averageVolumeNext4Years, [ihs_2016] = @ihs_2016, [ihs_2017] = @ihs_2017, [ihs_2018] = @ihs_2018, [ihs_2019] = @ihs_2019, [ihs_2020] = @ihs_2020, [ihs_2021] = @ihs_2021, [ihs_2022] = @ihs_2022, [ihs_2023] = @ihs_2023, [ihs_2024] = @ihs_2024, [ihs_2025] = @ihs_2025, [ihs_2026] = @ihs_2026, [ihs_2027] = @ihs_2027, [ihs_2028] = @ihs_2028, [ihs_2029] = @ihs_2029, [ihs_2030] = @ihs_2030, [ihs_2031] = @ihs_2031, [ihs_2032] = @ihs_2032, [ihs_2033] = @ihs_2033, [ihs_2034] = @ihs_2034, [ihs_2035] = @ihs_2035, [ihs_2036] = @ihs_2036, [ihs_descripcion] = @ihs_descripcion WHERE [ihs_id] = @original_ihs_id AND (([ihs_oem] = @original_ihs_oem) OR ([ihs_oem] IS NULL AND @original_ihs_oem IS NULL)) AND (([ihs_vehicle] = @original_ihs_vehicle) OR ([ihs_vehicle] IS NULL AND @original_ihs_vehicle IS NULL)) AND (([ihs_sop] = @original_ihs_sop) OR ([ihs_sop] IS NULL AND @original_ihs_sop IS NULL)) AND (([ihs_eop] = @original_ihs_eop) OR ([ihs_eop] IS NULL AND @original_ihs_eop IS NULL)) AND (([ihs_maxVolumeNext4Years] = @original_ihs_maxVolumeNext4Years) OR ([ihs_maxVolumeNext4Years] IS NULL AND @original_ihs_maxVolumeNext4Years IS NULL)) AND (([ihs_averageVolumeNext4Years] = @original_ihs_averageVolumeNext4Years) OR ([ihs_averageVolumeNext4Years] IS NULL AND @original_ihs_averageVolumeNext4Years IS NULL)) AND (([ihs_2016] = @original_ihs_2016) OR ([ihs_2016] IS NULL AND @original_ihs_2016 IS NULL)) AND (([ihs_2017] = @original_ihs_2017) OR ([ihs_2017] IS NULL AND @original_ihs_2017 IS NULL)) AND (([ihs_2018] = @original_ihs_2018) OR ([ihs_2018] IS NULL AND @original_ihs_2018 IS NULL)) AND (([ihs_2019] = @original_ihs_2019) OR ([ihs_2019] IS NULL AND @original_ihs_2019 IS NULL)) AND (([ihs_2020] = @original_ihs_2020) OR ([ihs_2020] IS NULL AND @original_ihs_2020 IS NULL)) AND (([ihs_2021] = @original_ihs_2021) OR ([ihs_2021] IS NULL AND @original_ihs_2021 IS NULL)) AND (([ihs_2022] = @original_ihs_2022) OR ([ihs_2022] IS NULL AND @original_ihs_2022 IS NULL)) AND (([ihs_2023] = @original_ihs_2023) OR ([ihs_2023] IS NULL AND @original_ihs_2023 IS NULL)) AND (([ihs_2024] = @original_ihs_2024) OR ([ihs_2024] IS NULL AND @original_ihs_2024 IS NULL)) AND (([ihs_2025] = @original_ihs_2025) OR ([ihs_2025] IS NULL AND @original_ihs_2025 IS NULL)) AND (([ihs_2026] = @original_ihs_2026) OR ([ihs_2026] IS NULL AND @original_ihs_2026 IS NULL)) AND (([ihs_2027] = @original_ihs_2027) OR ([ihs_2027] IS NULL AND @original_ihs_2027 IS NULL)) AND (([ihs_2028] = @original_ihs_2028) OR ([ihs_2028] IS NULL AND @original_ihs_2028 IS NULL)) AND (([ihs_2029] = @original_ihs_2029) OR ([ihs_2029] IS NULL AND @original_ihs_2029 IS NULL)) AND (([ihs_2030] = @original_ihs_2030) OR ([ihs_2030] IS NULL AND @original_ihs_2030 IS NULL)) AND (([ihs_2031] = @original_ihs_2031) OR ([ihs_2031] IS NULL AND @original_ihs_2031 IS NULL)) AND (([ihs_2032] = @original_ihs_2032) OR ([ihs_2032] IS NULL AND @original_ihs_2032 IS NULL)) AND (([ihs_2033] = @original_ihs_2033) OR ([ihs_2033] IS NULL AND @original_ihs_2033 IS NULL)) AND (([ihs_2034] = @original_ihs_2034) OR ([ihs_2034] IS NULL AND @original_ihs_2034 IS NULL)) AND (([ihs_2035] = @original_ihs_2035) OR ([ihs_2035] IS NULL AND @original_ihs_2035 IS NULL)) AND (([ihs_2036] = @original_ihs_2036) OR ([ihs_2036] IS NULL AND @original_ihs_2036 IS NULL)) AND (([ihs_descripcion] = @original_ihs_descripcion) OR ([ihs_descripcion] IS NULL AND @original_ihs_descripcion IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_ihs_id" Type="String" />
						<asp:Parameter Name="original_ihs_oem" Type="String" />
						<asp:Parameter Name="original_ihs_vehicle" Type="String" />
						<asp:Parameter Name="original_ihs_sop" Type="String" />
						<asp:Parameter Name="original_ihs_eop" Type="String" />
						<asp:Parameter Name="original_ihs_maxVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="original_ihs_averageVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2016" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2017" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2018" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2019" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2020" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2021" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2022" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2023" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2024" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2025" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2026" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2027" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2028" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2029" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2030" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2031" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2032" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2033" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2034" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2035" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2036" Type="Decimal" />
						<asp:Parameter Name="original_ihs_descripcion" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="ihs_id" Type="String" />
						<asp:Parameter Name="ihs_oem" Type="String" />
						<asp:Parameter Name="ihs_vehicle" Type="String" />
						<asp:Parameter Name="ihs_sop" Type="String" />
						<asp:Parameter Name="ihs_eop" Type="String" />
						<asp:Parameter Name="ihs_maxVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="ihs_averageVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="ihs_2016" Type="Decimal" />
						<asp:Parameter Name="ihs_2017" Type="Decimal" />
						<asp:Parameter Name="ihs_2018" Type="Decimal" />
						<asp:Parameter Name="ihs_2019" Type="Decimal" />
						<asp:Parameter Name="ihs_2020" Type="Decimal" />
						<asp:Parameter Name="ihs_2021" Type="Decimal" />
						<asp:Parameter Name="ihs_2022" Type="Decimal" />
						<asp:Parameter Name="ihs_2023" Type="Decimal" />
						<asp:Parameter Name="ihs_2024" Type="Decimal" />
						<asp:Parameter Name="ihs_2025" Type="Decimal" />
						<asp:Parameter Name="ihs_2026" Type="Decimal" />
						<asp:Parameter Name="ihs_2027" Type="Decimal" />
						<asp:Parameter Name="ihs_2028" Type="Decimal" />
						<asp:Parameter Name="ihs_2029" Type="Decimal" />
						<asp:Parameter Name="ihs_2030" Type="Decimal" />
						<asp:Parameter Name="ihs_2031" Type="Decimal" />
						<asp:Parameter Name="ihs_2032" Type="Decimal" />
						<asp:Parameter Name="ihs_2033" Type="Decimal" />
						<asp:Parameter Name="ihs_2034" Type="Decimal" />
						<asp:Parameter Name="ihs_2035" Type="Decimal" />
						<asp:Parameter Name="ihs_2036" Type="Decimal" />
						<asp:Parameter Name="ihs_descripcion" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="ihs_oem" Type="String" />
						<asp:Parameter Name="ihs_vehicle" Type="String" />
						<asp:Parameter Name="ihs_sop" Type="String" />
						<asp:Parameter Name="ihs_eop" Type="String" />
						<asp:Parameter Name="ihs_maxVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="ihs_averageVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="ihs_2016" Type="Decimal" />
						<asp:Parameter Name="ihs_2017" Type="Decimal" />
						<asp:Parameter Name="ihs_2018" Type="Decimal" />
						<asp:Parameter Name="ihs_2019" Type="Decimal" />
						<asp:Parameter Name="ihs_2020" Type="Decimal" />
						<asp:Parameter Name="ihs_2021" Type="Decimal" />
						<asp:Parameter Name="ihs_2022" Type="Decimal" />
						<asp:Parameter Name="ihs_2023" Type="Decimal" />
						<asp:Parameter Name="ihs_2024" Type="Decimal" />
						<asp:Parameter Name="ihs_2025" Type="Decimal" />
						<asp:Parameter Name="ihs_2026" Type="Decimal" />
						<asp:Parameter Name="ihs_2027" Type="Decimal" />
						<asp:Parameter Name="ihs_2028" Type="Decimal" />
						<asp:Parameter Name="ihs_2029" Type="Decimal" />
						<asp:Parameter Name="ihs_2030" Type="Decimal" />
						<asp:Parameter Name="ihs_2031" Type="Decimal" />
						<asp:Parameter Name="ihs_2032" Type="Decimal" />
						<asp:Parameter Name="ihs_2033" Type="Decimal" />
						<asp:Parameter Name="ihs_2034" Type="Decimal" />
						<asp:Parameter Name="ihs_2035" Type="Decimal" />
						<asp:Parameter Name="ihs_2036" Type="Decimal" />
						<asp:Parameter Name="ihs_descripcion" Type="String" />
						<asp:Parameter Name="original_ihs_id" Type="String" />
						<asp:Parameter Name="original_ihs_oem" Type="String" />
						<asp:Parameter Name="original_ihs_vehicle" Type="String" />
						<asp:Parameter Name="original_ihs_sop" Type="String" />
						<asp:Parameter Name="original_ihs_eop" Type="String" />
						<asp:Parameter Name="original_ihs_maxVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="original_ihs_averageVolumeNext4Years" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2016" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2017" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2018" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2019" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2020" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2021" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2022" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2023" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2024" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2025" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2026" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2027" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2028" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2029" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2030" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2031" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2032" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2033" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2034" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2035" Type="Decimal" />
						<asp:Parameter Name="original_ihs_2036" Type="Decimal" />
						<asp:Parameter Name="original_ihs_descripcion" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
</div>
			<div>
			</div>
			<p>&nbsp;</p>
			<h2></h2>
			<!-- GridView for Users ------------------------------------------------------------------------------------------------------->

			<!-- End GridView for Users ---------------------------------------------------------------------------------------------------->
			<!-- End WebPageContent ---------------------------------------------------------------------------------------------------->
			<p></p>
		</div>
		<div>
			<p>&copy; Copyright <%: DateTime.Now.Year %> - Thyssenkrupp Mexico</p>
		</div>
	</div>


	<footer>
	</footer>


</asp:Content>