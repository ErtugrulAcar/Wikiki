var wiki_page_header;
var wiki_page_header_content = {};
var wiki_page_content = {};
var wiki_page_image;
var countHeader = 0;
var countContent = 0;
var doubledot = ":";
var zero ="0";
var one = "1";

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
                previewBox.pg1.innerText = this.titleBox;
                previewBox.underImg.innerText = this.titleBox;
                wiki_page_header = (this.titleBox);
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
            	
            	var wiki_page_header_content_String = JSON.stringify(wiki_page_header_content);
            	var wiki_page_content_String = JSON.stringify(wiki_page_content);
            	var obj = {
            			"wiki_page_header" : wiki_page_header,
            			"wiki_page_header_content" : wiki_page_header_content_String,
            			"wiki_page_content" : wiki_page_content_String,
            			"wiki_page_image" : wiki_page_image,
            			"wiki_page_owner" : 3
            		};
            	axios({
            		url:"http://104.248.129.101:8080/WikiWebService/webapi/page/wiki/add",
            		method:"post",
            		data:obj
            	})
            	console.log(wiki_page_header);
            	console.log(wiki_page_header_content_String);
            	console.log(wiki_page_content_String);
            	console.log(wiki_page_image);
            	alert("Olusturma isteginiz basariyla gonderilmistir");
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
                wiki_page_header_content[countHeader+doubledot+zero] = divH6.innerText;
                wiki_page_header_content[countHeader+doubledot+one] = divP.innerText;
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
                wiki_page_content[(countHeader-1)+doubledot+countContent] = divH6.innerText;
                wiki_page_content[(countHeader-1)+doubledot+countContent] = divP.innerText;
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
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#jpg1')
                .attr('src', e.target.result);
            wiki_page_image = (e.target.result);
               };

        reader.readAsDataURL(input.files[0]);
        
    }
}