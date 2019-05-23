var WikiMain = [];
var WikiHeader = [];
var WikiContent = [];
var WikiImage = [];
var countHeader = 0;
var countContent = 0;

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
            	if(this.titleBox==""){
            		alert("Lütfen Boş Bırakmayınız.");
            	}
            	else{
            	WikiMain.pop();
                previewBox.pg1.innerText = this.titleBox;
                previewBox.underImg.innerText = this.titleBox;
                WikiMain.push(this.titleBox);
                this.titleBox="";
            	}
            },
            createDivWithButton : function () {
                var div = document.createElement("div");
               /* var closeButton = document.createElement("img");
                closeButton.setAttribute("src", "img/yesiltik.png");
                closeButton.classList.add("imgclose");
                closeButton.addEventListener("click", function (ev1) {
                	this.tit = this.titleBaslik;
                	this.sub = this.subject;
                    //document.getElementById("td1").removeChild(this.parentNode);
                  //  rightHeaderSide.removeChild(rightPageHeader);
                });
                div.appendChild(closeButton);*/
                return div;
            },
            createPG : function(){
            	console.log(WikiMain);
            	console.log(WikiHeader);
            	console.log(WikiContent);
            	console.log(WikiImage);
            },
            getParagBtn : function () {
            	if((this.titleBaslik || this.subject)==""){
            		alert("Lütfen Boş Bırakmayınız.")
            	}
            	else{
                var div = this.createDivWithButton();
                var innerDiv = document.createElement("div");
                divH6 = document.createElement("h6");
                divH6.classList.add("divH6");
                divH6.innerText = this.titleBaslik; 
                divP = document.createElement("p");
                divP.classList.add("divP");
                divP.innerText = this.subject;
                var rightPageHeader = document.createElement("a");
                rightPageHeader.classList.add("saginp");
                rightPageHeader.innerText = this.titleBaslik;
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
                document.getElementById("konuBasliklari").appendChild(rightPageHeader);
                WikiHeader.push('"'+countHeader+':'+"0"+'"'+':'+'"'+divH6.innerText+'"');
                WikiHeader.push('"'+countHeader+':'+"1"+'"'+':'+'"'+divP.innerText+'"');
                countHeader++;
                countContent=0;
            	}
            },
            getAltParagBtn : function () {
            	if((this.titleBaslik || this.subject)==""){
            		alert("Lütfen Boş Bırakmayınız.")
            	}
            	else{
            	var div = this.createDivWithButton();
            	div.classList.add("marginAlt");
                var innerDiv = document.createElement("div");
                divH6 = document.createElement("h6");
                divH6.classList.add("divH6");
                divH6.innerText = this.titleBaslik;
                divP = document.createElement("p");
                divP.classList.add("divP");
                divP.innerText = this.subject;
                var rightHeaderSide = document.createElement('a');
                rightHeaderSide.classList.add("margininp");
                rightHeaderSide.innerText = this.titleBaslik;
                this.clearTitleAndSubject();
                innerDiv.appendChild(divH6);
                innerDiv.appendChild(divP);
                innerDiv.style.border = "2px solid transparent";
                innerDiv.addEventListener("mouseover", function (ev1) {
                this.style.border = "2px red dotted";
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
                document.getElementById("konuBasliklari").appendChild(rightHeaderSide);
                WikiContent.push('"'+(countHeader-1)+':'+countContent+'"'+':'+'"'+divH6.innerText+'"');
                WikiContent.push('"'+(countHeader-1)+':'+countContent+'"'+':'+'"'+divP.innerText+'"');
                countContent++;
            	}
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
function readURL(input) {
	WikiImage.pop();
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#jpg1')
                .attr('src', e.target.result);
            WikiImage.push(e.target.result);
               };

        reader.readAsDataURL(input.files[0]);
        
    }
}