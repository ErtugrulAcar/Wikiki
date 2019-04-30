var userInfos = new Vue({
el : "#userInfos",
data : {
id : <%=session.getAttribute("userId")%>,
socialMediaLinks : document.getElementById("socialMedia").getElementsByTagName("a"),
userbio : document.getElementById("userbio"),
userInterests : document.getElementById("userInterests"),
emailPhone : document.getElementById("emailPhone").getElementsByTagName("div")

},
methods : {
setSocialMedia : function (facebook, twitter, instagram, linkedin) {
axios({
url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateLinks/" + this.id,
method : "put",
data : {
"facebook" : facebook,
"twitter" : twitter,
"instagram" : instagram,
"linkedIn" : linkedin
}
}).then(response => (console.log(response)))
this.socialMediaLinks[0].href = facebook;
this.socialMediaLinks[1].href = twitter;
this.socialMediaLinks[2].href = instagram;
this.socialMediaLinks[3].href = linkedin;
},
setUserBio : function (textVal) {
axios({
url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateBio/" + this.id,
method : "put",
data : {
"userBio" : textVal
}
}).then(response => (console.log(response)))
this.userbio.innerText = textVal;
},
setInterests : function (textVal) {
axios({
url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateInterest/" + this.id,
method : "put",
data : {
"userInterest" : textVal
}
}).then(response => (console.log(response)))
this.userInterests.innerText = textVal;
},
setEmailPhone : function (email, phone) {
axios({
url : "http://104.248.129.101:8080/WikiWebService/webapi/user/updateEmailPhone/" + this.id,
method : "put",
data : {
"userEmail" : email,
"userPhone" : phone
}
}).then(response => (console.log(response)))
this.emailPhone[0].innerText = email;
this.emailPhone[1].innerText = phone;
}
}
});