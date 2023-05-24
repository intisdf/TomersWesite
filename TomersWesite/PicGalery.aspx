<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="picGalery.aspx.cs" Inherits="TomersWesite.picGalery" %>

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
        <table style="margin: 0px auto;">

            <TR>
                <TD>
                    <img class="imgCell" src="pics/pic11.jpeg" onMouseover="picShow('pics/pic11.jpeg')" /></TD>
               <TD>
                    <img class="imgCell" src="pics/pic12.jpg" onMouseover="picShow('pics/pic12.jpg')" /></TD>
                <TD>
                    <img class="imgCell" src="pics/pic13.jpeg" onMouseover="picShow('pics/pic13.jpeg')" /></TD>
                <TD>
                    <img class="imgCell" src="pics/pic14.jpg" onMouseover="picShow('pics/pic14.jpg')" /></TD>
          </TR>
             <TR>
                <TD>
                    <img class="imgCell" src="pics/pic21.jpeg" onMouseover="picShow('pics/pic21.jpeg')" /></TD>
                <TD rowspan="2" colspan="2">
                    <img class="bigPicImg" id="bigPic" src="pics/pic11.jpeg" />
                </td>
                <td>
                    <img class="imgCell" src="pics/pic24.jpeg" onMouseover="picShow('pics/pic24.jpeg')" />
                </td>
            </tr>
            <tr>
                <td>
                    <img class="imgCell" src="pics/pic31.jpg" onMouseover="picShow('pics/pic31.jpg')" /></td>
                <td>
                    <img class="imgCell" src="pics/pic34.jepg.jpg" onMouseover="picShow('pics/pic34.jepg.jpg')" /></td>
            </tr>
            <tr>
                <td>
                    <img class="imgCell" src="pics/pic41.jpg" onMouseover="picShow('pics/pic41.jpg')" /></td>
                <td>
                    <img class="imgCell" src="pics/pic42.jpg" onMouseover="picShow('pics/pic42.jpg')" /></td>
                <td>
                    <img class="imgCell" src="pics/pic43.jpeg" onMouseover="picShow('pics/pic43.jpeg')" /></td>
                <td>
                    <img class="imgCell" src="pics/pic44.jpeg" onMouseover="picShow('pics/pic44.jpeg')" /></td>
            </tr>
        </table>
    </body>
</asp:Content>
