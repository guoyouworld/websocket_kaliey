<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
    <head lang="en">
        <meta charset="UTF-8">
        <script src="${pageContext.request.contextPath}/js/sockjs-0.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/jquery/jquery-3.2.1.js"></script>

		<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
		<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/csshake.min.css">
		
        <title>webSocket-测试用户</title>
        <script type="text/javascript">
            $(function() {
            	$("#chat").click(function(){
        			$("#bcount").text("0");
             		$("#bcount").removeAttr("style");
             		$("#bell").removeAttr("style");
             		$("#chat").removeAttr("class");
        			$('#full').modal('show');
        		});
        		$("#full").on("hidden.bs.modal",function(e){
        			$("#bcount").text("0");
        	 		$("#bcount").removeAttr("style");
        	 		$("#bell").removeAttr("style");
        	 		$("#chat").removeAttr("class");
         		});
            });
        </script>
    </head>
 
    <body>
    	<div class="container">
			<div class="row" >
		    	<li id="chat">
		       		<a href="#" >
		        		<span id="bell" class="glyphicon glyphicon-bell "></span>&nbsp;<span id="bcount" class="badge">0</span>
		       		</a>
		        </li>
	     	</div>
    	</div>
        <div class="modal fade" id="full" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
	    <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	            <div class="modal-body">
					<iframe id="SelectUser" src="${pageContext.request.contextPath}/chat.do" style="width: 850px;height: 570px;display: inline;">
	                </iframe>
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
    </body>
 
</html>
