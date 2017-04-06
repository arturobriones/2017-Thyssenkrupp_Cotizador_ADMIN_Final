﻿<%@ Page Title="Status Quote" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_StatusQuote.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN.Admin.Admin_StatusQuote" %>


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
					<li><a href="/Admin/Admin_WeightCoilCalculation.aspx">Weight Coil Calculation</a></li>
					<li><a href="/Admin/Admin_MaterialType.aspx">Material Type</a></li>
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
					<li><a href="/Admin/Admin_IHS.aspx">IHS</a></li>
					<li><a href="/Admin/Admin_Process.aspx">Process</a></li>
					<li class="divider"></li>
					<li class="active"><a href="/Admin/Admin_StatusQuote.aspx">Status Quote</a></li>
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
	<div class="container" id="page-content-wrapper" style="position: fixed; overflow: scroll; height:100%">
	    
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->
		<div class="alert alert-dismissible alert-info">
		  <h1><strong>Status Quote</strong></h1>	
		</div>
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->        

		<div class="row" style="height: 1100px;">
			<h2>Status Quote</h2>
			<!-- WebPageContent -------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_StatusQuote" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" 
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceStatusQuote">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="statusQuote_id"  CommandItemDisplay="Top" DataSourceID="SqlDataSourceStatusQuote">
					   
						<Columns>
							<telerik:GridBoundColumn DataField="statusQuote_id" DataType="System.Int32" FilterControlAltText="Filter statusQuote_id column" HeaderText="statusQuote_id" ReadOnly="True" SortExpression="statusQuote_id" UniqueName="statusQuote_id" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="statusQuote_name" FilterControlAltText="Filter statusQuote_name column" HeaderText="Status" SortExpression="statusQuote_name" UniqueName="statusQuote_name">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="statusQuote_description" FilterControlAltText="Filter statusQuote_description column" HeaderText="Description" SortExpression="statusQuote_description" UniqueName="statusQuote_description">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceStatusQuote" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" DeleteCommand="DELETE FROM [StatusQuote] WHERE [statusQuote_id] = @original_statusQuote_id AND [statusQuote_name] = @original_statusQuote_name AND (([statusQuote_description] = @original_statusQuote_description) OR ([statusQuote_description] IS NULL AND @original_statusQuote_description IS NULL))" InsertCommand="INSERT INTO [StatusQuote] ([statusQuote_name], [statusQuote_description]) VALUES (@statusQuote_name, @statusQuote_description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StatusQuote] ORDER BY [statusQuote_name]" UpdateCommand="UPDATE [StatusQuote] SET [statusQuote_name] = @statusQuote_name, [statusQuote_description] = @statusQuote_description WHERE [statusQuote_id] = @original_statusQuote_id AND [statusQuote_name] = @original_statusQuote_name AND (([statusQuote_description] = @original_statusQuote_description) OR ([statusQuote_description] IS NULL AND @original_statusQuote_description IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_statusQuote_id" Type="Int32" />
						<asp:Parameter Name="original_statusQuote_name" Type="String" />
						<asp:Parameter Name="original_statusQuote_description" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="statusQuote_name" Type="String" />
						<asp:Parameter Name="statusQuote_description" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="statusQuote_name" Type="String" />
						<asp:Parameter Name="statusQuote_description" Type="String" />
						<asp:Parameter Name="original_statusQuote_id" Type="Int32" />
						<asp:Parameter Name="original_statusQuote_name" Type="String" />
						<asp:Parameter Name="original_statusQuote_description" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</div>
			<p>&nbsp;</p>
			<h2></h2>
			<!-- GridView for Users ------------------------------------------------------------------------------------------------------->

			<!-- End GridView for Users ---------------------------------------------------------------------------------------------------->
			<!-- End WebPageContent ---------------------------------------------------------------------------------------------------->
			<p>&nbsp;</p>
		    <p>&copy; Copyright <%: DateTime.Now.Year %> - Thyssenkrupp Mexico</p>
		</div>
		<div>
			
		</div>
	</div>


	<footer>
	</footer>


</asp:Content>
