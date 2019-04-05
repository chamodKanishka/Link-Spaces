function validate(){

    var pwd = document.forms["regform"]["pwd"].value;
    var rptpwd = document.forms["regform"]["rptpwd"].value;

    if(!(pwd == rptpwd)){
        alert("Your Passwords do not match!"+pwd+"  "+rptpwd);
        return false;
    }
}

function validateStudent() {

    var uni = document.forms["regform"]["university"].value;
    var pwd = document.forms["regform"]["pwd"].value;
    var rptpwd = document.forms["regform"]["rptpwd"].value;

    if(uni == "none"){
        alert("Please select your University from the list.")
        return false;
    }

    if(!(pwd == rptpwd)){
        alert("Your Passwords do not match!"+pwd+"  "+rptpwd);
        return false;
    }
}