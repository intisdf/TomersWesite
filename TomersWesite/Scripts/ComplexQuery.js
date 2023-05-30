function detectField1() {
    if (document.getElementById("field1").value == "gender") {
        document.getElementById("query1").innerHTML =
            "<input type='radio' name='value1' value='male' checked='checked' />זכר" +
            "<input type='radio' name='value1' value='female' /> נקבה";
    }
    else {
        if (document.getElementById("field1").value == "yearBorn") {
            var yearStr = "<select name='value1'><option value='0'>בחר שנה</option>";
            var currYear = new Date().getFullYear();
            var fromYear = currYear - 40;
            var toYear = currYear - 10;
            for (var i = fromYear; i < toYear; i++)
                yearStr += "<option value='" + i + "'>" + i + "</option>\n";
            document.getElementById("query1").innerHTML = yearStr + "</select>";
        }
        else
            if (document.getElementById("field1").value == "prefix") {
                var prefixStr = "<select name='value1'>";
                prefixStr += "<option value='050'>050</option>";
                prefixStr += "<option value='052'>052</option>";
                prefixStr += "<option value='054'>054</option>";
                prefixStr += "<option value='057'>057</option>";
                prefixStr += "<option value='058'>058</option>";
                prefixStr += "<option value='077'>077</option>";
                prefixStr += "<option value='03'>03</option>";
                prefixStr += "<option value='02'>02</option>";
                prefixStr += "<option value='04'>04</option>";
                prefixStr += "<option value='08'>08</option>";
                prefixStr += "<option value='09'>09</option>";
                prefixStr += "</select>";

                document.getElementById("query1").innerHTML = prefixStr;
            }
            else
                if (document.getElementById("field1").value == "hobies") {
                    var hobbyStr = "<select name='value1'>";
                    hobbyStr += "<option value='1'>כדורגל</option>";
                    hobbyStr += "<option value='2'>טניס</option>";
                    hobbyStr += "<option value='3'>מחשבים</option>";
                    hobbyStr += "<option value='4'>ריקוד</option>";
                    hobbyStr += "<option value='5'>אחר</option>";
                    hobbyStr += "</select>";
                    document.getElementById("query1").innerHTML = hobbyStr;
                }
                else
                    document.getElementById("query1").innerHTML = "<input type='text' name='value1' />";
    }
}
function detectField2() {
    if (document.getElementById("field2").value == "gender") {
        document.getElementById("query2").innerHTML =
            "<input type='radio' name='value2' value='male' checked='checked' />זכר" +
            "<input type='radio' name='value2' value='female' /> נקבה";
    }
    else {
        if (document.getElementById("field2").value == "yearBorn") {
            var yearStr = "<select name='value2'><option value='0'>בחר שנה</option>";
            var currYear = new Date().getFullYear();
            var fromYear = currYear - 40;
            var toYear = currYear - 10;
            for (var i = fromYear; i < toYear; i++)
                yearStr += "<option value='" + i + "'>" + i + "</option>\n";
            document.getElementById("query2").innerHTML = yearStr + "</select>";
        }
        else
            if (document.getElementById("field2").value == "prefix") {
                var prefixStr = "<select name='value2'>";
                prefixStr += "<option value='050'>050</option>";
                prefixStr += "<option value='052'>052</option>";
                prefixStr += "<option value='054'>054</option>";
                prefixStr += "<option value='057'>057</option>";
                prefixStr += "<option value='058'>058</option>";
                prefixStr += "<option value='077'>077</option>";
                prefixStr += "<option value='03'>03</option>";
                prefixStr += "<option value='02'>02</option>";
                prefixStr += "<option value='04'>04</option>";
                prefixStr += "<option value='08'>08</option>";
                prefixStr += "<option value='09'>09</option>";
                prefixStr += "</select>";

                document.getElementById("query2").innerHTML = prefixStr;
            }
            else
                if (document.getElementById("field2").value == "hobies") {
                    var hobbyStr = "<select name='value2'>";
                    hobbyStr += "<option value='1'>כדורגל</option>";
                    hobbyStr += "<option value='2'>טניס</option>";
                    hobbyStr += "<option value='3'>מחשבים</option>";
                    hobbyStr += "<option value='4'>ריקוד</option>";
                    hobbyStr += "<option value='5'>אחר</option>";
                    hobbyStr += "</select>";
                    document.getElementById("query2").innerHTML = hobbyStr;
                }
                else
                    document.getElementById("query2").innerHTML = "<input type='text' name='value2' />";
    }
}