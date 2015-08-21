<html>  
<head><title>Upload page</title></head>  
<script type="text/javascript">  
  
function dothat() {  
   var div = document.getElementById('fileuploads');  
    var field = div.getElementsByTagName('input')[0];  
      
    div.appendChild(document.createElement("br"));  
    div.appendChild(field.cloneNode(false));  
}  
  
</script>  
</p> <p><body>  
<td align="center"><b>Multipale file Upload</td>  
<form action="upload_file_multiple.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">  
     
   <table border="2" align="left">  
       <tr>  
                 
           </tr>  
       <tr>  
   <div id="fileuploads" align="left">  
     
        <input type="file" name="fileField" id="fileField" />  
        </div>  
    </tr><td align="left">  
      
    <input type="button" name="addmore" id="addmore" value="Add More" onClick="dothat();" />  
    <input type="submit" name="button" id="button" value="Submit" />  
  
                   </td>  
         
             
                   </table>  
          
</form>  
</body>  
</html> 