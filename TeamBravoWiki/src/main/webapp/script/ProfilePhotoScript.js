$('#uploadBtn').on('click', function() {
    var formData,
        data = p.getData();

    formData = new FormData();
    formData.append('file', data.file);
    // Crop size ( Final image size )
    formData.append('cropHeight', data.cropHeight);
    formData.append('cropWidth', data.cropWidth);
    // Image X and Y position
    formData.append('x', data.x);
    formData.append('y', data.y);
    // New image size (the size needed to position the image)
    formData.append('newWidth', data.width);
    formData.append('newHeight', data.height);
    // Zoom/Scale; 0.1 = 10%
    formData.append('zoom', data.zoom);
    // Original image size (if needed)
    formData.append('originalWidth', data.originalWidth);
    formData.append('originalHeight', data.originalHeight);

    $.ajax({
        url: "LOCALHOST URLSI",
        data: formData,
        processData: false,
        type: 'POST',
        contentType: 'multipart/form-data', 
        mimeType: 'multipart/form-data', 
        success: function (data) {
            console.log(data);
        }
    });
    
});
//
//Sending already croppend (DataURL) to backend (Check security issues)
//Backend should save the image file with the DataURL content

/*$('#uploadBtn').on('click', function() {
    var image = p.getAsDataURL();

    $.post("fakeserver/upload", { image: image });
    
});  */
