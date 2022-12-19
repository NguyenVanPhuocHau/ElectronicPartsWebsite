window.onload = function swap_content() {
    const listTitle = document.getElementsByClassName('swap_title');
    const listContent = document.getElementsByClassName('part_show');
    var check = 0;
    for (let i = 0; i < listTitle.length; i++) {
        listTitle[i].onclick = function () {
            if (check == i) {
                listContent[check].style.backgroundColor = "#ffe165";
            } else {
                listContent[i].style.backgroundColor = "#ffe165";
                listContent[check].style.backgroundColor = "#1f3646";
                check = i;
            }

        };


    }
}

function navigator() {
    const manager_flight = document.getElementById("manager_flight");
    manager_flight.addEventListener("click", function () {
        window.location = "http://localhost:8080/projectLTW/admin_flight";
    })
    const manager_ticket = document.getElementById("manager_ticket");
    manager_ticket.addEventListener("click", function () {
        window.location = "http://localhost:8080/projectLTW/admin_ticket";
    })
}

$(document).ready(function () {
    // Activate tooltip
    $('[data-toggle="tooltip"]').tooltip();

    // Select/Deselect checkboxes
    var checkbox = $('table tbody input[type="checkbox"]');
    $("#selectAll").click(function () {

        if (this.checked) {
            checkbox.each(function () {
                this.checked = true;
            });
        } else {
            checkbox.each(function () {
                this.checked = false;
            });
        }
    });
    checkbox.click(function () {
        if (!this.checked) {
            $("#selectAll").prop("checked", false);
        }
    });

    function addTicket() { //add Flight into the table
        var FlightName = document.getElementById('FlightName');
        var FlightID = document.getElementById('FlightID');
        var DeparturePlace = document.getElementById('DeparturePlace');
        var ArrivalPlace = document.getElementById('ArrivalPlace');
        var Price = document.getElementById('Price');

        var table = document.getElementsByTagName('table') [0];
        var row = table.insertRow(3);

        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);

        cell1.innerHTML = FlightName;
        cell2.innerHTML = FlightID;
        cell3.innerHTML = DeparturePlace;
        cell4.innerHTML = ArrivalPlace;
        cell5.innerHTML = Price;
    }
});
function addTicket(){
    const  choose=document.getElementById("addEmployeeModal");
    const show = document.getElementById("part_show")
    show.style.display="none";
    choose.style.display="block";


}
function cancel(){
    const  choose=document.getElementById("addEmployeeModal");
    const show = document.getElementById("part_show")
    show.style.display="block";
    choose.style.display="none";

}
function editTicket(){
    const  choose=document.getElementById("editEmployeeModal");
    const show = document.getElementById("part_show")
    show.style.display="none";
    choose.style.display="block";
    const listData=document.getElementsByClassName("data");
    const value=document.getElementById('maCB');
    const vvvv=document.getElementById('taxID_up');
    // vvvv.innerHTML=value.innerText;
    // console.log(value);
    // for(let i=0;i<listData.length;i++){
    //     console.log(listData[i].)
    //     listData[i].value();
    // }
    // console.log(listData[0].value);
    // console.log(listData[3].getElementsByClassName("macb").item());
    console.log(listData.length);


}
function cancels(){
    const  choose=document.getElementById("editEmployeeModal");
    const show = document.getElementById("part_show")
    show.style.display="block";
    choose.style.display="none";


}
function cancelss(){
    const  choose=document.getElementById("deleteEmployeeModal");
    const show = document.getElementById("part_show")
    show.style.display="block";
    choose.style.display="none";


}
function deleteTicket(){
    const  choose=document.getElementById("deleteEmployeeModal");
    const show = document.getElementById("part_show")
    show.style.display="none";
    choose.style.display="block";


}



