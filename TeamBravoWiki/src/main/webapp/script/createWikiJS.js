function getKonuBtn(){
	var konu = document.getElementById("titleBox").value;
	document.getElementById("pg1").innerHTML = konu;
	document.getElementById("underimg").innerHTML = konu;
}
function getKonuBaslik(){
	var konuBaslik = document.getElementById("titleBaslik").value;
	document.getElementById("konuBasliklari").innerHTML = konuBaslik;
	document.getElementById("konuBasliklari1").innerHTML = konuBaslik;
}
function getParagBtn(){
	var parag = document.getElementById("subject").value;
	document.getElementById("pg2").innerHTML = parag;
}