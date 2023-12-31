﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DulceSimonna_Web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater ID="repetidor" runat="server">
            <ItemTemplate>

                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title bg-danger-subtle"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
