function getAnaBaslikBtn(){
	var konu = document.getElementById("titleBox").value;
	document.getElementById("pg1").innerHTML = konu;
	document.getElementById("underimg").innerHTML = konu;
}

function getParagBtn(){
		var KonuPrg = document.getElementById("titleBaslik").value;
		var KonuAltPrg = document.getElementById("subject").value;
	    var creatediv = document.createElement('div');
	    var editbtn = document.createElement('img');
	    editbtn.classList.add('imgedit');
	    editbtn.setAttribute('src','img/editIcon.png');
	    var editbtn2 = document.createElement('img');
	    editbtn2.classList.add('imgedit2');
	    editbtn2.setAttribute('src','img/yesiltik.png');
	    creatediv.classList.add('previewParagDiv');
		var PrgInput = document.createElement('h2');
		PrgInput.id='h2Id';
		PrgInput.innerHTML=KonuPrg;
		var closebutton=document.createElement('img');
		closebutton.id='closebtnId';
		closebutton.setAttribute('src','img/redclose.png');
		closebutton.classList.add('imgclose');
		var AltPrgInput = document.createElement('p');
		AltPrgInput.id='pId';
		AltPrgInput.innerHTML=KonuAltPrg;
		creatediv.appendChild(editbtn);
		creatediv.appendChild(editbtn2);
		creatediv.appendChild(closebutton);
		creatediv.appendChild(PrgInput);
		creatediv.appendChild(AltPrgInput);
		document.getElementById("td1").appendChild(creatediv);
		document.getElementById("subject").value="";
		document.getElementById("titleBaslik").value="";

		closebutton.onclick = function () {
			document.getElementById("subject").value="";
			document.getElementById("titleBaslik").value="";
			document.getElementById("td1").removeChild(creatediv);
			
		}
		AltPrgInput.onmouseover = function () {
			  creatediv.style.border = "1px black dotted";
		}
		AltPrgInput.onmouseout = function () {
			  creatediv.style.border = "";
		}
		PrgInput.onmouseover = function () {
		  creatediv.style.border = "1px black dotted";
		}
		PrgInput.onmouseout = function () {
			  creatediv.style.border = "";
		}
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
				document.getElementById("subject").value="";
				document.getElementById("titleBaslik").value="";
		}
}
