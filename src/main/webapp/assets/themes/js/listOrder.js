

window.onclick = function remove() {
    const listContent = document.getElementsByClassName("delete_detail");
    const listShow = document.getElementsByClassName("shows");
    const listChoose = document.getElementsByClassName("choose");

    // for (let i = 0; i < listChoose.length; i++) {
    //     listChoose[i].onclick = function () {
    //         // alert("Đã thêm");
    //         window.location.href="cart-item.jsp";
    //     }
    // }
    // ;
    for (let i = 0; i < listContent.length; i++) {
        listContent[i].onclick = function () {
            // listContent[i].addEventListener("fullscreenchange", function () {
            listShow[i].style.display = "none";
            console.log(i);
            // listContent[i].style.background = "";


        };

    }
}
window.onload = function show() {
    const listContent = document.getElementsByClassName("show_detail");
    const listShow = document.getElementsByClassName("shows");

    for (let i = 0; i < listContent.length; i++) {
        listContent[i].onclick = function () {
            listShow[i].style.display = "block";

        }
    }
    ;


}

function addCart() {
    const listChoose = document.getElementsByClassName("choose");

    for (let i = 0; i < listChoose.length; i++) {
        listChoose[i].onclick = function () {
            alert("Đã thêm");
        }
    }
    ;
}