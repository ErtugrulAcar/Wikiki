window.onload = function (ev) {
    var textBox = new Vue({
        el : "#textBox",
        data : {
            titleBox : "",
            titleBaslik : "",
            subject : ""
        },
        methods : {
            anaBaslikBtn : function () {
                previewBox.pg1.innerText = this.titleBox;
                previewBox.underImg.innerText = this.titleBox;
            },
            createDivWithButton : function () {
                var div = document.createElement("div");
                var closeButton = document.createElement("img");

                var rightPageHeader = document.createElement("a");
                rightPageHeader.classList.add("saginp");
                rightPageHeader.innerText = this.titleBaslik;
                var rightHeaderSide = document.getElementById("konuBasliklari");
                rightHeaderSide.appendChild(rightPageHeader);
                closeButton.setAttribute("src", "img/redclose.png");
                closeButton.classList.add("imgclose");
                closeButton.addEventListener("click", function (ev1) {
                    textBox.titleBaslik = "";
                    textBox.subject = "";
                    document.getElementById("td1").removeChild(this.parentNode);
                    rightHeaderSide.removeChild(rightPageHeader);
                });
                div.appendChild(closeButton);
                return div;
            },
            getParagBtn : function () {
                var div = this.createDivWithButton();
                var innerDiv = document.createElement("div");
                divH6 = document.createElement("h6");
                divH6.classList.add("divH6");
                divH6.innerText = this.titleBaslik;
                divP = document.createElement("p");
                divP.classList.add("divP");
                divP.innerText = this.subject;
                this.clearTitleAndSubject();
                innerDiv.appendChild(divH6);
                innerDiv.appendChild(divP);
                innerDiv.style.border = "2px solid transparent";
                innerDiv.addEventListener("mouseover", function (ev1) {
                    this.style.border = "2px blue dotted";
                    this.style.cursor = "pointer";
                });
                innerDiv.addEventListener("mouseout", function (ev1) {
                    this.style.border = "2px solid transparent";
                });
                innerDiv.addEventListener("click", function (ev1) {
                    textBox.titleBaslik = this.getElementsByTagName("h6").item(0).innerText;
                    textBox.subject = this.getElementsByTagName("p").item(0).innerText;
                });
                div.appendChild(innerDiv);
                document.getElementById("td1").appendChild(div);
            },
            clearTitleAndSubject : function () {
                this.titleBaslik = "";
                this.subject = "";
            }
        }
    });



    var previewBox = new Vue({
        el : "#previewBox",
        data : {
            pg1 : null,
            underImg : null
        },
        mounted : function () {
            this.pg1 = document.getElementById("pg1");
            this.underImg = document.getElementById("underimg");
        }

    });
};