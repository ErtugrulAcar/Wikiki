<html>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<body>
<div id="app">
    <img :src="imgData" style="height: 800px; width:600px;">

</div>

</body>
</html>


<script>
    var app = new Vue({
        el : '#app',
        data : {
            base64  : "data:image/*;base64, ",
            imgData : null
        },
        methods : {
            setImgData : function (img) {
                this.imgData = this.base64 + img;
                axios({
                    url : "http://localhost:8084/WikiWebService_war/webapi/image/user/upload",
                    method : "post",
                    data : {
                        "id" : 5,
                        "image" : img
                    }

                }).then(response => (console.log(response)));
            }
        },
        beforeCreate : function () {
            axios({
                url : "http://104.248.129.101:8080/WikiWebService/webapi/image/user/1",
                method : "get",
            }).then(response => (this.setImgData(response["data"])));


        }
    });
</script>