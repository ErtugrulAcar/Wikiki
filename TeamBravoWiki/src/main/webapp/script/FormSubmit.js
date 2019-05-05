function GetSocVal(){
	var faceVal = document.getElementById('facebookVal').value;
	var TwiVal = document.getElementById('twitterVal').value;
	var InsVal = document.getElementById('instagramVal').value;
	var LinVal = document.getElementById('linkedinVal').value;
	userInfos.setSocialMedia(faceVal,TwiVal,InsVal,LinVal);
	}
function GetBioVal(){
	var BioVal = document.getElementById('BioEditing').value;
	userInfos.setUserBio(BioVal);
	}
function GetIntVal(){
	var IntVal = document.getElementById('IntEditing').value;
	console.log(IntVal);
	userInfos.setInterests(IntVal);
	}
function GetUserVal(){
	var EpostaVal = document.getElementById('EpostaEditing').value;
	var TelVal = document.getElementById('TelEditing').value;
	userInfos.setEmailPhone(EpostaVal,TelVal);
	}
