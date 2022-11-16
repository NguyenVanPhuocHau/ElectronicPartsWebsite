function ValidateEmail(inputText) {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    const notification_email = document.getElementById("notification_email");
    if (inputText.value.match(mailformat)) {
        return true;
    } else {
        notification_email.style.display = "block";
        notification_email.innerText = "You entered the";
        return false;
    }
}


function sign_in() {
    var sign_in = document.getElementById("tab-1");
    window.location = "login.js"


}
function register() {
    var register = document.getElementById("tab-2");
    window.location = "../../register.jsp"


}
function onButton(){
    var element= document.getElementsByClassName(".offShow");
    element.classList.add('onShow');
    element.classList.remove('offShow');

}


