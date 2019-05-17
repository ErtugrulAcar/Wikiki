
/*
* function getParagBtn(){
		var KonuPrg = document.getElementById("titleBaslik").value;
		var KonuAltPrg = document.getElementById("subject").value;
	    var creatediv = document.createElement('div');
	    creatediv.style.border = "1px solid transparent";
	    var editbtn = document.createElement('img');
	    editbtn.classList.add('imgedit');
	    editbtn.setAttribute('src','img/editIcon.png');
	    var editbtn2 = document.createElement('img');
	    editbtn2.classList.add('imgedit2');
	    editbtn2.setAttribute('src','img/yesiltik.png');
	    creatediv.classList.add('previewParagDiv');
	    var SagPrgInput = document.createElement('a');
	    SagPrgInput.innerHTML=KonuPrg;
	    SagPrgInput.classList.add('saginp');
		var PrgInput = document.createElement('h2');
		PrgInput.classList.add("divH2");
		PrgInput.innerHTML=KonuPrg;
		var closebutton=document.createElement('img');
		closebutton.id='closebtnId';
		closebutton.setAttribute('src','img/redclose.png');
		closebutton.classList.add('imgclose');



		var AltPrgInput = document.createElement('p');
		AltPrgInput.classList.add("divP");
		AltPrgInput.innerHTML=KonuAltPrg;
		creatediv.appendChild(editbtn);
		creatediv.appendChild(editbtn2);
		creatediv.appendChild(closebutton);
		creatediv.appendChild(PrgInput);
		creatediv.appendChild(AltPrgInput);
		document.getElementById("td1").appendChild(creatediv);
		document.getElementById("konuBasliklari").appendChild(SagPrgInput);

		function empty(){
			document.getElementById("subject").value="";
			document.getElementById("titleBaslik").value="";
		}
		empty();

		closebutton.onclick = function () {
			empty();
			document.getElementById("td1").removeChild(creatediv);
			document.getElementById("konuBasliklari").removeChild(SagPrgInput);
			//this.parentNode.parentNode.removeChild(this.parentNodegetParagBtn);

		};
		AltPrgInput.onmouseover = function () {
			  creatediv.style.border = "2px blue dotted";
		};
		AltPrgInput.onmouseout = function () {
			  creatediv.style.border = "2px solid transparent";
		};
		PrgInput.onmouseover = function () {
		  creatediv.style.border = "2px blue dotted";
		};
		PrgInput.onmouseout = function () {
			  creatediv.style.border = "2px solid transparent";
		};
		editbtn.onclick = function () {
				document.getElementById("titleBaslik").value=KonuPrg;
				document.getElementById("subject").value=KonuAltPrg;
				creatediv.style.border = "1px black dotted";
		}
		editbtn2.onclick = function () {
				KonuPrg = document.getElementById("titleBaslik").value;
				KonuAltPrg = document.getElementById("subject").value;
				PrgInput.innerHTML=KonuPrg;
				AltPrgInput.innerHTML=KonuAltPrg;
				creatediv.style.border = "";
				empty();
		}
}
*
* */

/*
function getAltParagBtn(){
	var KonuPrg = document.getElementById("titleBaslik").value;
	var KonuAltPrg = document.getElementById("subject").value;
    var Altcreatediv = document.createElement('div');
    Altcreatediv.style.border = "1px solid transparent";
    var editbtn = document.createElement('img');
    editbtn.classList.add('imgedit');
    editbtn.setAttribute('src','img/editIcon.png');
    var editbtn2 = document.createElement('img');
    editbtn2.classList.add('imgedit2');
    editbtn2.setAttribute('src','img/yesiltik.png');
    Altcreatediv.classList.add('AltpreviewParagDiv');
    var AltSagPrgInput = document.createElement('a');
    AltSagPrgInput.innerHTML=KonuPrg;
    AltSagPrgInput.classList.add('sagAltinP');
	var PrgInput = document.createElement('h2');
	PrgInput.classList.add("divH2");
	PrgInput.innerHTML=KonuPrg;
	var closebutton=document.createElement('img');
	closebutton.id='closebtnId';
	closebutton.setAttribute('src','img/redclose.png');
	closebutton.classList.add('imgclose');
	var AltPrgInput = document.createElement('p');
	AltPrgInput.classList.add("divP");
	AltPrgInput.innerHTML=KonuAltPrg;
	Altcreatediv.appendChild(editbtn);
	Altcreatediv.appendChild(editbtn2);
	Altcreatediv.appendChild(closebutton);
	Altcreatediv.appendChild(PrgInput);
	Altcreatediv.appendChild(AltPrgInput);
	document.getElementById("td1").appendChild(Altcreatediv);
	document.getElementById("konuBasliklari").appendChild(AltSagPrgInput);
	
	function empty(){
		document.getElementById("subject").value="";
		document.getElementById("titleBaslik").value="";
	}
	empty();
	
	closebutton.onclick = function () {
		empty();
		document.getElementById("td1").removeChild(Altcreatediv);
		document.getElementById("konuBasliklari").removeChild(AltSagPrgInput);
		//this.parentNode.parentNode.removeChild(this.parentNodegetParagBtn);
		
	};
	AltPrgInput.onmouseover = function () {
		Altcreatediv.style.border = "2px blue dotted";
	};
	AltPrgInput.onmouseout = function () {
		Altcreatediv.style.border = "2px solid transparent";
	};
	PrgInput.onmouseover = function () {
		Altcreatediv.style.border = "2px blue dotted";
	};
	PrgInput.onmouseout = function () {
		Altcreatediv.style.border = "2px solid transparent";
	};
	editbtn.onclick = function () {
			document.getElementById("titleBaslik").value=KonuPrg;
			document.getElementById("subject").value=KonuAltPrg;
			Altcreatediv.style.border = "1px black dotted";
	}
	editbtn2.onclick = function () {
			KonuPrg = document.getElementById("titleBaslik").value;
			KonuAltPrg = document.getElementById("subject").value;
			PrgInput.innerHTML=KonuPrg;
			AltPrgInput.innerHTML=KonuAltPrg;
			Altcreatediv.style.border = "";
			empty();
	}
}
*/