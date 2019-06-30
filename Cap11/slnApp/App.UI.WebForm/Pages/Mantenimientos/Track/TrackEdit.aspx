<%@ Page Title="Administración de Tack" Language="C#"
    MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="TrackEdit.aspx.cs" Inherits="App.UI.WebForm.Pages.Mantenimientos.Track.TrackEdit" %>
<asp:Content ID="Asp1" ContentPlaceHolderID="contentHead" runat="server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="contentMain" runat="server">

<form runat="server">
     <asp:ValidationSummary
        ID="validationSummary"
        runat="server"
        DisplayMode="BulletList"
        >

    </asp:ValidationSummary>


    <table style="width:100%;">
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label1" runat="server" Text="Nombre (*):"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ErrorMessage="El campo nombre es requerido"
                    ControlToValidate="txtNombre"
                    >*
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label2" runat="server" Text="Album:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlAlbum" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label3" runat="server" Text="Medio:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMedio" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label4" runat="server" Text="Género:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlGenero" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label5" runat="server" Text="Compositor:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCompositor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="El campo compositor es requerido"
                    ControlToValidate="txtCompositor"
                    ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label6" runat="server" Text="Duración"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDuracion" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="El campo duración es requerido" 
                    ControlToValidate="txtDuracion"
                    Display="Dynamic"
                    ></asp:RequiredFieldValidator>

                <asp:RangeValidator ID="RangeValidator1" 
                    runat="server" 
                    ErrorMessage="La duración debe estar entre 1 a 10 minutos"
                    ControlToValidate="txtDuracion"
                    MinimumValue="1" MaximumValue="10"
                    Type="Integer"
                     Display="Dynamic"
                    ></asp:RangeValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label7" runat="server" Text="Peso:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPeso" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="El campo pero es requerido" 
                    ControlToValidate="txtPeso"
                    Display="Dynamic"
                    ></asp:RequiredFieldValidator>

                <asp:RangeValidator ID="RangeValidator2" 
                    runat="server" 
                    ErrorMessage="El peso debe estar entre 1MB y 10MB"
                    ControlToValidate="txtPeso"
                    MinimumValue="1" MaximumValue="10"
                    Type="Integer"
                     Display="Dynamic"
                    ></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label8" runat="server" Text="Precio:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="El campo precio es requerido" 
                    ControlToValidate="txtPrecio"
                    Display="Dynamic"
                    ></asp:RequiredFieldValidator>

                <asp:RangeValidator ID="RangeValidator3" 
                    runat="server" 
                    ErrorMessage="El precio debe estar entre 1-100"
                    ControlToValidate="txtPrecio"
                    MinimumValue="1" MaximumValue="100"
                    Type="Double"
                     Display="Dynamic"
                    ></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">&nbsp;</td>
            <td>
                <asp:Button ID="btnGuardar" runat="server"
                    Text="Guardar" OnClick="btnGuardar_Click" 
                    CausesValidation="true"
                    />
            </td>
        </tr>
        <tr>
            <td style="width: 151px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
    
   

</asp:Content>