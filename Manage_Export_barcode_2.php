		<? 	include"Db_connect.php";  
			include"nav_test.php";
			include"Date_th.php";
			session_start();
			ob_start();
		?>
<html>
	<head>
		<title>Manage_export_barcode</title>

		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.12/css/jquery.dataTables.css">	
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.12/js/jquery.dataTables.js"></script>
		
		<script>
			$( function() {
				$('#date_start').datepicker({ dateFormat: 'yy-mm-dd' });
				$('#date_end').datepicker({ dateFormat: 'yy-mm-dd' });
				$('#example').dataTable();
			});
			
			function printpr()
			{
			var OLECMDID = 7;
			/* OLECMDID values:
			* 6 - print
			* 7 - print preview
			* 1 - open window
			* 4 - Save As
			*/
			var PROMPT = 1; // 2 DONTPROMPTUSER
			var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>';
			document.body.insertAdjacentHTML('beforeEnd', WebBrowser);
			WebBrowser1.ExecWB(OLECMDID, PROMPT);
			WebBrowser1.outerHTML = "";
			}
		</script>
		
		<style>
			body {
				background-color: rgba(0, 162, 158, .4);
			}
			h2{
				font-size: 20px;
				text-align: center;
				color: white;
				line-height: 50%;
				font-weight: bold;
			}
			.panel .panel-heading{
				background-color: rgb(0, 162, 158);
				padding: 0px 16px 0px 16px;
				border-top-right-radius: 2px;
				border-top-left-radius: 2px;
				padding-top: 5px; 
				padding-bottom: 10px;
			}
			.modal-header{
				background-color: rgb(0, 162, 158);
				border-top-right-radius: 3px;
				border-top-left-radius: 3px;
			}
			label{
				text-align: right;
			}
			.btn btn-danger{
				width: 28.81px; 
				height: 20px;
			}
			th{
				text-align: center;
				color: white;
			}
			.modal-dialog{
				position: relative;
				display: table;
				overflow-y: auto;    
				overflow-x: auto;
				width: auto;
				min-width: 800px;  
			}
			.panel panel-default{
				margin-right:20px;
			}
			#setting2{
				border-bottom: solid 3px #00a29e;
				color: #00a29e;
			}
			#Exp_pop_books{
				border-bottom: solid 3px #00a29e;
				color: #00a29e;
			}
		</style>
	</head>
	
	<body>
		

	
		<div class="col-xs-12">
			<div class="panel panel-default" style="margin-right:20px; display: block; visibility: visible; opacity: 1; transform: translateY(0px);" data-widget='{"draggable": "false"}' data-widget-static="">
				<div class="panel-heading" >
					<h2>บาร์โค๊ต</h2>
				</div>
				<div class="panel-body">
					<form action="" method="post" >
						<table class="table table-bordered" id="example"> 
								
							
								<?php
									
									echo '<tr>';
										for($j=0 ,$i = 0;$j<count($_POST["vehicle1"]);$j++,$i = ($i+1)%3){
											if($_POST["vehicle1"][$j] != " ")
											{
												$sql = "SELECT Call_number, CONCAT(COALESCE(Aud_name, ''), COALESCE(Mag_name, ''), COALESCE(Boo_name, '')) AS name
														FROM call_number 
														left join audiovisual_ ON call_number.Call_id =audiovisual_.Aud_Call_id 
														left JOIN book_ ON call_number.Call_id = book_.Boo_Call_id 
														left join magzine_ on call_number.Call_id = magzine_.Mag_Call_id
														where Call_number = '".$_POST["vehicle1"][$j]."' ";
												$result = $conn->query($sql);
												if ($result->num_rows > 0) {
													while($row = $result->fetch_assoc()) { 	
												//echo  $row["name"];
												//echo $_POST["vehicle1"][$j];
											?>			
												<td style="text-align:center;font-size:12px ">
													<div class="row"><label><? echo  $row["name"]; ?></label></div>
													<img style="width:180px;" src="barcode.php?barcode=<?php echo $_POST["vehicle1"][$j].'&width=280&height=75'; ?>" />
													<div class="row"><label><? echo  'บริษัท สยาม เด็นโซ่ แมนูแฟคเจอริ่ง จำกัด' ?></label></div>
												</td>
												
										<?	
													}
												}	
											}
											if($i == 2)
											echo '</tr><tr>';
										}
									echo '</tr>';										
									?>
						</table>
						<div style='float: right;'>
							<input name="btnPrint" type="button" id="btnPrint" class="btn btn-success" value="สั่งพิมพ์" onClick="JavaScript:this.style.display='none';printpr();">
						</div>
					</form>
				</div>		
			</div>		
		</div>
	</body>
</html>