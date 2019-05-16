function getAnaBaslikBtn(){
	var konu = document.getElementById("titleBox").value;
	document.getElementById("pg1").innerHTML = konu;
	document.getElementById("underimg").innerHTML = konu;
}

function getParagBtn(){
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
		
		function empty(){
			document.getElementById("subject").value="";
			document.getElementById("titleBaslik").value="";
		}
		empty();
		
		closebutton.onclick = function () {
			empty();
			document.getElementById("td1").removeChild(creatediv);
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
