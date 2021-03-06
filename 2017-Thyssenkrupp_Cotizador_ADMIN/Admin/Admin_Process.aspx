﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Process.aspx.cs" Inherits="_2017_Thyssenkrupp_Cotizador_ADMIN.Admin.Admin_Process" %>
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
					<li class="active"><a href="/Admin/Admin_Process.aspx">Process</a></li>
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
	<div class="container" id="page-content-wrapper" style="position: fixed; overflow: scroll; height:100%">
	    
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->
		<div class="alert alert-dismissible alert-info">
		  <h1><strong>Process</strong></h1>	
		</div>
		<!-- Page Title ---------------------------------------------------------------------------------------------------------------->

		<div class="row" style="height: 1100px;">
			<h2>Material Ownership</h2>
			<!-- WebPageContent -------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_MaterialOwnership" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True" AutoGenerateColumns="False" 
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceMaterialOwnership">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="materialOwnership_id" DataSourceID="SqlDataSourceMaterialOwnership" >
					   
						<Columns>
							<telerik:GridBoundColumn DataField="materialOwnership_id" DataType="System.Int32" FilterControlAltText="Filter materialOwnership_id column" HeaderText="Material Ownership ID" ReadOnly="True" SortExpression="materialOwnership_id" UniqueName="materialOwnership_id">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="materialOwnership_name" FilterControlAltText="Filter materialOwnership_name column" HeaderText="Name" SortExpression="materialOwnership_name" UniqueName="materialOwnership_name">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceMaterialOwnership" runat="server" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" SelectCommand="SELECT * FROM [MaterialOwnership] ORDER BY [materialOwnership_name]"></asp:SqlDataSource>
</div>
			<div>
			</div>
			<p>&nbsp;</p>
			<h2>Process</h2>
			<!-- GridView for Users ------------------------------------------------------------------------------------------------------->
			<div class="col-sm-12 col-md-12 col-lg-12">
				<telerik:RadGrid ID="RadGrid_Process" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" 
					RenderMode="Lightweight" Skin="Office2010Blue" Width="100%" AllowPaging="True" PageSize="100" DataSourceID="SqlDataSourceProcess">
					<ClientSettings>
						<Scrolling AllowScroll="True" UseStaticHeaders="True" />
					</ClientSettings>
					<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
					<ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
						<Scrolling AllowScroll="True" UseStaticHeaders="False" SaveScrollPosition="True" FrozenColumnsCount="1"></Scrolling>
					</ClientSettings>

					<MasterTableView DataKeyNames="process_id"  CommandItemDisplay="Top" DataSourceID="SqlDataSourceProcess">
					   
						<Columns>
							<telerik:GridBoundColumn DataField="process_id" DataType="System.Int32" FilterControlAltText="Filter process_id column" HeaderText="process_id" ReadOnly="True" SortExpression="process_id" UniqueName="process_id" Visible="False">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="process_materialOwnership_id" DataType="System.Int32" FilterControlAltText="Filter process_materialOwnership_id column" HeaderText="Material Ownership ID" SortExpression="process_materialOwnership_id" UniqueName="process_materialOwnership_id" HeaderTooltip="Enter the value from the previous table">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="process_typeProcess" FilterControlAltText="Filter process_typeProcess column" HeaderText="Name" SortExpression="process_typeProcess" UniqueName="process_typeProcess">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="process_isExternal" DefaultInsertValue="YES" FilterControlAltText="Filter process_isExternal column" HeaderText="is External (YES-NO)" HeaderTooltip="Only accept &quot;YES&quot; or &quot;NO&quot;" SortExpression="process_isExternal" UniqueName="process_isExternal">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="process_cost" DataType="System.Decimal" FilterControlAltText="Filter process_cost column" HeaderText="Cost" SortExpression="process_cost" UniqueName="process_cost">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="process_unitOfQuote" FilterControlAltText="Filter process_unitOfQuote column" HeaderText="Unit of Quote" SortExpression="process_unitOfQuote" UniqueName="process_unitOfQuote">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="process_description" FilterControlAltText="Filter process_description column" HeaderText="Description" SortExpression="process_description" UniqueName="process_description">
							</telerik:GridBoundColumn>
						</Columns>
					   
					</MasterTableView>

					<FilterMenu RenderMode="Lightweight"></FilterMenu>

					<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
				</telerik:RadGrid>
				<asp:SqlDataSource ID="SqlDataSourceProcess" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThykDBCotizadorConnectionString %>" DeleteCommand="DELETE FROM [Process] WHERE [process_id] = @original_process_id AND (([process_materialOwnership_id] = @original_process_materialOwnership_id) OR ([process_materialOwnership_id] IS NULL AND @original_process_materialOwnership_id IS NULL)) AND (([process_typeProcess] = @original_process_typeProcess) OR ([process_typeProcess] IS NULL AND @original_process_typeProcess IS NULL)) AND (([process_isExternal] = @original_process_isExternal) OR ([process_isExternal] IS NULL AND @original_process_isExternal IS NULL)) AND (([process_cost] = @original_process_cost) OR ([process_cost] IS NULL AND @original_process_cost IS NULL)) AND (([process_unitOfQuote] = @original_process_unitOfQuote) OR ([process_unitOfQuote] IS NULL AND @original_process_unitOfQuote IS NULL)) AND (([process_description] = @original_process_description) OR ([process_description] IS NULL AND @original_process_description IS NULL))" InsertCommand="INSERT INTO [Process] ([process_materialOwnership_id], [process_typeProcess], [process_isExternal], [process_cost], [process_unitOfQuote], [process_description]) VALUES (@process_materialOwnership_id, @process_typeProcess, @process_isExternal, @process_cost, @process_unitOfQuote, @process_description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Process] ORDER BY [process_description]" UpdateCommand="UPDATE [Process] SET [process_materialOwnership_id] = @process_materialOwnership_id, [process_typeProcess] = @process_typeProcess, [process_isExternal] = @process_isExternal, [process_cost] = @process_cost, [process_unitOfQuote] = @process_unitOfQuote, [process_description] = @process_description WHERE [process_id] = @original_process_id AND (([process_materialOwnership_id] = @original_process_materialOwnership_id) OR ([process_materialOwnership_id] IS NULL AND @original_process_materialOwnership_id IS NULL)) AND (([process_typeProcess] = @original_process_typeProcess) OR ([process_typeProcess] IS NULL AND @original_process_typeProcess IS NULL)) AND (([process_isExternal] = @original_process_isExternal) OR ([process_isExternal] IS NULL AND @original_process_isExternal IS NULL)) AND (([process_cost] = @original_process_cost) OR ([process_cost] IS NULL AND @original_process_cost IS NULL)) AND (([process_unitOfQuote] = @original_process_unitOfQuote) OR ([process_unitOfQuote] IS NULL AND @original_process_unitOfQuote IS NULL)) AND (([process_description] = @original_process_description) OR ([process_description] IS NULL AND @original_process_description IS NULL))">
					<DeleteParameters>
						<asp:Parameter Name="original_process_id" Type="Int32" />
						<asp:Parameter Name="original_process_materialOwnership_id" Type="Int32" />
						<asp:Parameter Name="original_process_typeProcess" Type="String" />
						<asp:Parameter Name="original_process_isExternal" Type="String" />
						<asp:Parameter Name="original_process_cost" Type="Decimal" />
						<asp:Parameter Name="original_process_unitOfQuote" Type="String" />
						<asp:Parameter Name="original_process_description" Type="String" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="process_materialOwnership_id" Type="Int32" />
						<asp:Parameter Name="process_typeProcess" Type="String" />
						<asp:Parameter Name="process_isExternal" Type="String" />
						<asp:Parameter Name="process_cost" Type="Decimal" />
						<asp:Parameter Name="process_unitOfQuote" Type="String" />
						<asp:Parameter Name="process_description" Type="String" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="process_materialOwnership_id" Type="Int32" />
						<asp:Parameter Name="process_typeProcess" Type="String" />
						<asp:Parameter Name="process_isExternal" Type="String" />
						<asp:Parameter Name="process_cost" Type="Decimal" />
						<asp:Parameter Name="process_unitOfQuote" Type="String" />
						<asp:Parameter Name="process_description" Type="String" />
						<asp:Parameter Name="original_process_id" Type="Int32" />
						<asp:Parameter Name="original_process_materialOwnership_id" Type="Int32" />
						<asp:Parameter Name="original_process_typeProcess" Type="String" />
						<asp:Parameter Name="original_process_isExternal" Type="String" />
						<asp:Parameter Name="original_process_cost" Type="Decimal" />
						<asp:Parameter Name="original_process_unitOfQuote" Type="String" />
						<asp:Parameter Name="original_process_description" Type="String" />
					</UpdateParameters>
				</asp:SqlDataSource>
</div>
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
