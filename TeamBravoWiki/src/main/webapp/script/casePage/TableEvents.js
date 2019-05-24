window.onload = function (ev) {
    var cases = document.getElementsByClassName("wikiCases");

    for (var i = 0; i < cases.length; i++) {
        cases[i].addEventListener("mouseover", function () {
            this.style.backgroundColor = "#80b3ff";
            this.style.color = "white";
        });
        cases[i].addEventListener("mouseout", function () {
            if (parseInt(this.id) % 2 == 0) {
                this.style.backgroundColor = "#F9F9F9";
            } else {
                this.style.backgroundColor = "#FFFFFF";
            }
            this.style.color = "black";
        });
    }
};
