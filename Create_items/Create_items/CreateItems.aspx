<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateItems.aspx.cs" Inherits="Create_items.Create_Items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create New Items</title>

    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="assets/css/style.css" rel="stylesheet"/>
    <link href="assets/css/responsive.css" rel="stylesheet"/>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
              <img class="logo" alt="Brand" src="assets/img/logo1.png" />
          </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling  <span class="sr-only">(current)</span>-->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li class="active"><a href="CreateItems">Create Item</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search"/>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

    <div class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            <h3>Create A New Item</h3>
                            <div class="contact-form">

                                <form id="contactForm" runat="server">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtItemCode" runat="server" placeholder="Item Code Will Auto Genarate" Enabled="true"></asp:TextBox>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="txtItemFullName" runat="server" placeholder="Item Full Name"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:Label ID="txtID" runat="server" Text="" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
                                                    <asp:RequiredFieldValidator ID="itemName" runat="server" ControlToValidate="txtItemFullName" ErrorMessage="Please Enter The Item Full Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtItemShortName" runat="server" placeholder="Item Short Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnSubmit" runat="server" Text="Save Item" type="submit" value="Send Message" OnClick="btnSubmit_Click"/>
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete Item" type="submit" value="Delete Item" OnClick="btnDelete_Click"/>    
                                    
                                    <div class="row">
                                    <div class="col-md-8">
                                        <asp:GridView ID="itemGridView" runat="server" class="table table-textcenter" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="itemGridView_SelectedIndexChanged">
                                             <AlternatingRowStyle BackColor="White" />

                                             <Columns>
                                                 <asp:CommandField ShowSelectButton="True" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor="Blue" ItemStyle-Height="25px" HeaderText="Edit">
                                                     <ItemStyle HorizontalAlign="Center" ForeColor="Blue" Height="25px" Width="40px"></ItemStyle>
                                                 </asp:CommandField>

                                                 <asp:BoundField DataField="id" HeaderText="ID" />
                                                 <asp:BoundField DataField="itemCode" HeaderText="Item Code">
                                                     <ItemStyle HorizontalAlign="Center" />
                                                     <HeaderStyle HorizontalAlign="Center" />
                                                 </asp:BoundField>
                                                 <asp:BoundField DataField="itemName" HeaderText="Item Full Name" />
                                                 <asp:BoundField DataField="itemShortName" HeaderText="Item Short Name" />
                                             </Columns>

                                             <EditRowStyle BackColor="#2461BF" />
                                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                             <RowStyle BackColor="#EFF3FB" />
                                             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                             <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                             <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                             <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                         </asp:GridView> 
                                        </div> 
                                        </div>                              
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>
