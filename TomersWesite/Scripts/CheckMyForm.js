function chkForm() {
    //--- בדיקת שם משתמש ---
    var uName = document.getElementById("uName").value;
    //alert("uName = " + uName);
    if (!userNameOK(uName))
        return false;
}

function userNameOK(name) {
    var msg = "";

    if (name.length < 6)
        msg = "שם משתמש קצר מדי או לא קיים ";
    else if (name.length > 30)
        msg = "שם משתמש יהיה בין 6-30 תווים";
    else if (isHebrew(name))
        msg = "שם משתמש אינו יכול להכיל תווים בעברית";

    if (msg != "") {
        document.getElementById("mUName").value = msg;
        document.getElementById("mUName").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mUName").style.display = "none";
    if (isBadChars(name))
        msg = "שם משתמש יכול להכיל אותיות ו/או ספרות בלבד"
    return true;
}
//-- מכיל תווים אסורים--
function isBadChars(str)
{
    var badChr = "$%^&*()! []{}<>?"
    var len = badChr.length;

    var i = 0, pos, ch;
    while (i < len)
    {
        ch = badChr.charAt(i);
        pos = str.indexOf(ch);
        if (pos != -1)
        {
            return true
        }
        i++
    }
    return false;
}

//--- מכיל תווים בעברית ---
function isHebrew(str) {
    for (var i = 0; i < str.length; i++) {
        if (str.charAt(i) >= 'א' && str.charAt(i) <= 'ת')
            return true;
    }
    return false;
}
