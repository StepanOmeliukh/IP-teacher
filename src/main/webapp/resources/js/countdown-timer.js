const script = document.createElement('script');
script.src = 'https://code.jquery.com/jquery-3.4.1.min.js';
script.type = 'text/javascript';
document.getElementsByTagName('head')[0].appendChild(script);


var minutes;
var seconds;
var c;
var d;

function func() {
    let a = $('#ip').html()
    if (a !== "" && a !== "You have any tries!") {
        start();
    }
}

function start() {
    // for (; ;) {
    //     c = prompt("Enter number of minutes");
    //     c = parseInt(c);
    //     if (c => 0 && c < 60) break;
    //     else alert("Enter number between 0 and 60")
    // }
    //
    // for (; ;) {
    //     d = prompt("Enter number of seconds");
    //     d = parseInt(d);
    //     if (d => 0 && d < 60) break;
    //     else alert("Enter number between 0 and 60")
    // }
    c = 45;
    d = 0;

    var yourDateToGo = new Date();
    yourDateToGo.setMinutes(yourDateToGo.getMinutes() + c);
    yourDateToGo.setSeconds(yourDateToGo.getSeconds() + d);

    var timing = setInterval(
        function () {

            var currentDate = new Date().getTime();
            var timeLeft = yourDateToGo - currentDate;

            minutes = Math.floor((timeLeft % (1000 * 60 * 60)) / (1000 * 60));
            if (minutes < 10) minutes = "0" + minutes;
            seconds = Math.floor((timeLeft % (1000 * 60)) / 1000);
            if (seconds < 10) seconds = "0" + seconds;

            document.getElementById("countdown").innerHTML = minutes + "m " + seconds + "s";

            if (timeLeft <= 0) {
                // clearInterval();
                formSend();
            }
        }, 1000);
}

function formSend() {
    var form = document.forms.namedItem("tasks");
    time(form);
    form.submit();
}

function time(form) {
    var time = minutes * 60 + seconds;
    if (time === null)
        time = 0;

    let element = form.elements.namedItem('time');
    element.value = (c * 60 + d) - Number(time);
}