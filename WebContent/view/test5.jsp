<form id="form1"  enctype="multipart/form-data" method = "post">
    <span style ="font-family:Arial">Click to add files</span>&nbsp;&nbsp;
    <input id="Button1" type="button" value="add" onclick = "AddFileUpload()" />
    <br /><br />
    <div id = "FileUploadContainer">
    </div>
    <br />
</form>
<script type = "text/javascript">
var counter = 0;
function AddFileUpload()
{
     var div = document.createElement('DIV');
     div.innerHTML = '<input id="file' + counter + '" name = "file' + counter +
                     '" type="file" />' +
                     '<input id="Button' + counter + '" type="button" ' +
                     'value="Remove" onclick = "RemoveFileUpload(this)" />';
     document.getElementById("FileUploadContainer").appendChild(div);
     counter++;
}
function RemoveFileUpload(div)
{
     document.getElementById("FileUploadContainer").removeChild(div.parentNode);
}
</script>