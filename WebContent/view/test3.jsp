<!doctype html>
<html>
<head>
<title>Proper Title</title>
</head>
    
<body>
	
	<form id="myForm" method="post" enctype="multipart/form-data">

        Files: <input type="file" id="files" name="files" multiple><br/>

        <div id="selectedFiles"></div>

        <!-- <input type="submit"> -->
	</form>

	<script>
	
	var selDiv = "";
		
	document.addEventListener("DOMContentLoaded", init, false);
	
	function init() {
		document.querySelector('#files').addEventListener('change', handleFileSelect, false);
		selDiv = document.querySelector("#selectedFiles");
	}
		
	function handleFileSelect(e) {
		if(!e.target.files) return;
		
		selDiv.innerHTML = "";
		
		var files = e.target.files;
		for(var i=0; i<files.length; i++) {
			var f = files[i];
			
			selDiv.innerHTML += f.name + "<br/>";

		}
		
	}
	</script>

</body>
</html>