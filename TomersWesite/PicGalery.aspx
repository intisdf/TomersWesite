<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PicGalery.aspx.cs" Inherits="TomersWesite.PicGalery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <HEAD>

        <title>גלריית תמונות</title>
        <script language="javascript">
         function picShow(pic)
           { bigPic.src = pic;}

        </script>

        <style>
            .imgCell {
                width: 120px;
                height: 80px;
                border: 1px solid gray;
            }

            .bigPicImg {
                width: 250px;
                height: 170px;
                border: 1px solid gray;
            }
        </style>

    </HEAD>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <center>
            <h3> גלרית תמונות</h3>
        </center>
        <table style="margin: 0px auto;">

            <TR>
                <TD>
                    <img class ="imgCell" src="Pics/Pic14.png" onMouseover="picShow('Pics/Pic14.png')" /></TD>
               <TD>
                    <img class="imgCell" src="Pics/Pic15.png" onMouseover="picShow('Pics/Pic15.png')" /></TD>
                <TD>
                    <img class="imgCell" src="Pics/Pic16.png" onMouseover="picShow('Pics/Pic16.png')" /></TD>
                <TD>
                    <img class="imgCell" src="Pics/Pic17.png" onMouseover="picShow('Pics/Pic17.png')" /></TD>
          </TR>
             <TR>
                <TD>
                    <img class="imgCell" src="Pics/Pic21.png" onMouseover="picShow('Pics/Pic21.png')" /></TD>
                <TD rowspan="2" colspan="2">
                    <img class="bigPicImg" id="bigPic" src="Pics/Pic11.png" />
                </td>
                <td>
                    <img class="imgCell" src="Pics/Pic24.png" onMouseover="picShow('Pics/Pic24.png)" />
                </td>
            </tr>
            <tr>
                <td>
                    <img class="imgCell" src="Pics/Pic31.png" onMouseover="picShow('Pics/Pic31.png')" /></td>
                <td>
                    <img class="imgCell" src="Pics/Pic34.png" onMouseover="picShow('Pics/Pic34.png')" /></td>
            </tr>
            <tr>
                <td>
                    <img class="imgCell" src="Pics/Pic41.png" onMouseover="picShow('Pics/Pic41.png')" /></td>
                <td>
                    <img class="imgCell" src="Pics/Pic42.png" onMouseover="picShow('Pics/Pic42.png')" /></td>
                <td>
                    <img class="imgCell" src="Pics/Pic43.png" onMouseover="picShow('Pics/Pic43.png')" /></td>
                <td>
                    <img class="imgCell" src="Pics/Pic44.png" onMouseover="picShow('Pics/Pic44.png')" /></td>
            </tr>
        </table>
    </body>
</asp:Content>
