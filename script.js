document.addEventListener("DOMContentLoaded", function () {
    
    let echo = document.getElementById("echo");

    if (!echo) {
        return;
    }

    echo.addEventListener("click", function () {
        alert("echo!");
    });

});
