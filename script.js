document.addEventListener("DOMContentLoaded", function () {
    
    const echo = document.getElementById("echo");

    if (!echo) {
        return;
    }

    echo.addEventListener("click", function (event) {

        const date = new Date();

        const formattedDate = date.toLocaleString('de-DE');

        event.target.dispatchEvent(new CustomEvent("notify", {
            bubbles: true,
            detail: {
                text: formattedDate + " - Echo!"
            },
        }));

    });

});
