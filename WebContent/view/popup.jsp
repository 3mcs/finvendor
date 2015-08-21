<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/resources/css/popup.css" type="text/css" rel="stylesheet" />
<div id="normalModal" class="modal fade">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">Modal title</h4>
	      </div>
	      <div class="modal-body">
	         <input type="file" name="fileUpload">
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div> 
	  </div> 
</div> 
<script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/resources/js/popup.js" type="text/javascript"></script>