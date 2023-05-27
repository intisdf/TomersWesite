<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="TomersWesite.Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         h1 {
            text-align: right;
            font-size: 25px;
        }
         ul {
            text-align: right;
            font-size: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>
            גלישת גלים היא ספורט גלשן, הגולש עומד על גלשן, הנושא אותו על פני גל. גלישת הגלים מתבצעת
        </h1>
        <h1>:באמצעות גלשני גלים ייעודיים אשר מחולקים למספר קטגוריות</h1>
        <ul>
            <li>גלשנים קלאסיים (Short-Board) – הסוג הנפוץ ביותר. גלשן קטן בעל יכולת תמרון גבוהה</li>
            <li>גלשני פאן (Fun-Board) – בעלי יותר נפח וציפה ולפיכך קלים לגלישה ומתאימים לשלבי הלימוד המוקדמים</li>
            <li>גלשנים ארוכים (Long-Board) – בשל גודלם, קשים יותר לתמרון. מאידך, כושר הציפה הגבוה של גלשנים אלו מעמיד לרשות הגולש מגוון רחב יותר של אפשרויות</li>
            <li>גלשני גאן (Gun) – אלו גלשנים המיועדים לגלים גבוהים החל מארבעה מטרים. גלשנים אלו ארוכים (פחות מה long-bord) יחסית צרים ומחודדים בקצוות. זאת על-מנת לאפשר יציבות מחד, אך חוסר בתמרון כמו בגלשן הקלאסי מאידך</li>
            <li>גלשני סופטבורד (Soft-Board) – אלו גלשנים המיועדים לגולשים בשלבי לימוד מוקדמים, בעלי יותר נפח וציפה מהפאן, הגלשן מצופה בשכבת ספוג וממולא בקלקר, ולכן הוא רך, ומשם השם סופטבורד, אשר בפירוש לעברית נוצר השם גלשן רך</li>
        </ul>
    </div>
</asp:Content>
