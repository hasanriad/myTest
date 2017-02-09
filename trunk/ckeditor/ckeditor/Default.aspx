<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  ValidateRequest="false" CodeBehind="Default.aspx.cs" Inherits="ckeditor._Default" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/ckeditor/ckeditor.js"></script>
    <script src="Scripts/ckeditor/adapters/jquery.js"></script>
    <script src="Scripts/ckeditor/plugins/clipboard/dialogs/paste.js"></script>
    
    
    <asp:TextBox ID="txtCkEditor" runat="server" TextMode="MultiLine"></asp:TextBox>
    
    <br />
    <asp:Button ID="btnSend" runat="server" OnClientClick="SendPreview()" Text="Test" OnClick="btnSend_Click" />
            <script>
                $(document).ready(function () {
                    CKEDITOR.replace('<%=txtCkEditor.ClientID %>', { filebrowserImageUploadUrl: 'Upload.ashx' });
                    CKEDITOR.config.extraPlugins = "base64image";
                    CKEDITOR.config.extraPlugins = 'dialog';
                    CKEDITOR.config.extraPlugins = 'pastebase64';
                    
                });

                function SendPreview() {
                   // var value = CKEDITOR.instances['editor1'].getData();
                   // alert(value);
                }
 
                
            </script>
    
    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
    <br />
    <asp:Button ID="btnSend1" runat="server" Text="Test" OnClick="btnSend_Click" />
   

</asp:Content>
