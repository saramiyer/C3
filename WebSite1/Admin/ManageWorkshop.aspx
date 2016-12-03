﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ManageWorkshop.aspx.vb" Inherits="Admin_ManageWorkshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="Dashboard.aspx">Dashboard <span class="sr-only">(current)</span></a></li>
            <li><a href="ManageProduct.aspx">Manage Products</a></li>
            <li class ="active"><a href="ManageWorkshop.aspx">Manage Workshops</a></li>
            <li><a href="ManageCourse.aspx">Manage eCourses</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="Settings.aspx">Settings</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <div class="col-md-5">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="True" AllowSorting="True" DataSourceID="sqldsWorkshop" AutoGenerateColumns="False" Width="750px">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                        <asp:BoundField DataField="Time &amp; Date" HeaderText="Time &amp; Date" SortExpression="Time &amp; Date" />
                        <asp:BoundField DataField="TopicID" HeaderText="TopicID" SortExpression="TopicID" />
<asp:BoundField DataField="FirmID" HeaderText="FirmID" SortExpression="FirmID"></asp:BoundField>
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="InstructorId" HeaderText="InstructorId" SortExpression="InstructorId" />
                    </Columns>
                <PagerSettings Position="Top" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqldsWorkshop" runat="server" ConnectionString="<%$ ConnectionStrings:M418_group3ConnectionString %>" InsertCommand="INSERT INTO [platformWorkshop] ([city], [location], [dateTime], [topicID], [firmID], [price], [quantity], [instructorID]) VALUES (@city, @location, @dateTime, @topicID, @firmID, @price, @quantity, @instructorID)" SelectCommand="SELECT city AS City, location AS Location, dateTime AS [Time &amp; Date], topicID AS TopicID, firmID AS FirmID, price AS Price, quantity AS Quantity, instructorID AS InstructorId FROM platformWorkshop" DeleteCommand="DELETE FROM [platformWorkshop] WHERE [workshopID] = @workshopID" UpdateCommand="UPDATE [platformWorkshop] SET [city] = @city, [location] = @location, [dateTime] = @dateTime, [topicID] = @topicID, [firmID] = @firmID, [price] = @price, [quantity] = @quantity, [instructorID] = @instructorID WHERE [workshopID] = @workshopID">
                <DeleteParameters>
                    <asp:Parameter Name="workshopID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="dateTime" Type="DateTime" />
                    <asp:Parameter Name="topicID" Type="Int32" />
                    <asp:Parameter Name="firmID" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="instructorID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="dateTime" Type="DateTime" />
                    <asp:Parameter Name="topicID" Type="Int32" />
                    <asp:Parameter Name="firmID" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="instructorID" Type="Int32" />
                    <asp:Parameter Name="workshopID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
                <div class="panel-group">
                 <div class="panel panel-default">
                  <div class="panel-heading">
                   <h4 class="panel-title">
                    <a data-toggle="collapse" href="#collapse1">Add Workshops</a>
                   </h4>
                 </div>
                 <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body"><div><div style="float:left;width:209px; height: 50px;"></div></div></div>
                 </div>
                </div>
               </div>
                <div class ="form-group row"><div style="float:left;width:165px; height: 50px;">
                    City:
                <asp:TextBox ID="City" runat="server"></asp:TextBox>
                </div>
                    <div style="float:left;width:192px; height: 50px;">
                        Location:
                <asp:TextBox ID="Location" runat="server"></asp:TextBox>
                    </div>
                    <div style="float:left;width:205px; height: 50px;">
                        Date&amp;Time<asp:TextBox ID="Date" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
&nbsp;<br />
&nbsp;<br />
                <div class ="form-group row"><div style="float:left;width:209px; height: 50px;">
                        TopicID:
                <asp:TextBox ID="TopicID" runat="server"></asp:TextBox>
                    </div>
                    <div style="float:left;width:209px; height: 50px;">
                        FirmID:
                <asp:TextBox ID="FirmID" runat="server"></asp:TextBox>
                    </div>
                    <div style="float:left;width:209px; height: 50px;">
                        Price:
                <asp:TextBox ID="Price" runat="server"></asp:TextBox>
                    </div>
                    </div>
                <br />
                <br />
&nbsp;<br />
                <div class ="form-group row"><div style="float:left;width:209px; height: 50px;">
                        Quantity:
                <asp:TextBox ID="Quantity" runat="server"></asp:TextBox>
                    </div>
                    <div style="float:left;width:209px; height: 50px;">
                        InstructorID:
                <asp:TextBox ID="InstructorID" runat="server"></asp:TextBox>
                    </div>
                </div>

                <br />

            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="sqldsInstructors" Height="50px" Width="125px" DataKeyNames="instructorID">
                <Fields>
                    <asp:BoundField DataField="instructorID" HeaderText="instructorID" SortExpression="instructorID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                    <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                    <asp:BoundField DataField="hireDate" HeaderText="hireDate" SortExpression="hireDate" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="sqldsInstructors" runat="server" ConnectionString="<%$ ConnectionStrings:M418_group3ConnectionString %>" DeleteCommand="DELETE FROM [platformInstructor] WHERE [instructorID] = @instructorID" InsertCommand="INSERT INTO platformInstructor(lastName, firstName) VALUES (@lastName, @firstName)" SelectCommand="SELECT platformInstructor.* FROM platformInstructor" UpdateCommand="UPDATE platformInstructor SET lastName = @lastName, firstName = @firstName, hireDate = @hireDate WHERE (instructorID = @instructorID)">
                <DeleteParameters>
                    <asp:Parameter Name="instructorID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="firstName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="hireDate" Type="DateTime" />
                    <asp:Parameter Name="instructorID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
      </div>
    </div>
   </div>
</asp:Content>
