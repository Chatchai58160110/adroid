<html>
	<head>
		<title>Manage_export_barcode</title>
		<? 	include"Db_connect.php";  
			include"nav_test.php";
			include"Date_th.php";
			session_start();
			ob_start();
		?>
		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.12/css/jquery.dataTables.css">	
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.12/js/jquery.dataTables.js"></script>
		<script href="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
		<link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css ">
		<script href="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script href="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js "></script>
		<link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.11/css/dataTables.checkboxes.css" rel="stylesheet" />
		<script type="text/javascript" src="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.11/js/dataTables.checkboxes.min.js"></script>
		
		
		<script language="JavaScript">
			
			function filterGlobal () {
			$('#example').DataTable().search( 
				$('#global_filter').val(),
				$('#global_regex').prop('checked'),
				$('#global_smart').prop('checked')	
				).draw();

			}
			
			function filterColumn ( i ) {
				$('#example').DataTable().column( i ).search( 
					$('#col'+i+'_filter').val(),
					$('#col'+i+'_regex').prop('checked'), 
					$('#col'+i+'_smart').prop('checked')
				).draw();
			}
			
			
			$(function(){
				var table =	$('#example').dataTable( {
					"columnDefs": [{ "orderable": false, "targets": 0 }],
					"lengthMenu": [[10, 25, 50,100,250,500, -1], [10, 25, 50,100,250,500, "All"]]
				});
				// $('#CheckAll').click(function () {
					// if(this.checked) {
						// $('input[type="checkbox"]').each(function () {
						// $(this).prop("checked", true);});
					// }else{
						// $('input[type="checkbox"]').each(function () {
						// $(this).prop("checked", false);});
					// }
				// });
				
				$('body').on('change', '#CheckAll', function() {
					var rows, checked;
					rows = $('#example').find('tbody tr');
					checked = $(this).prop('checked');
					$.each(rows, function() {
						var checkbox = $($(this).find('td').eq(0)).find('input').prop('checked', checked);
					});
				});
				
				$('input.global_filter').on( 'keyup click', function () {
					filterGlobal();
				} );
				
				 $('input.column_filter').on( 'keyup click', function () {
					filterColumn( $(this).parents('tr').attr('data-column') );
				} );
			});
			
				

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
					<table align="center">
							<tr id="filter_global" data-column="1">
								<td>ค้นหาด้วยเลขเรียกรายการ: </td>
								<td align="center"><input class="global_filter" id="global_filter" type="textarea" value=""></td>
								<td align="center"><input style="display:none" class="global_filter" id="global_regex" type="checkbox" checked="checked" ></td>
								<td align="center"><input style="display:none" class="global_filter" id="global_smart" type="checkbox" ></td>
							</tr>
					</table>
					<p align="center">ตัวอย่างการค้นหาหลายรายการ: 000.410.100|000.410.99</p>
					<form name="frm-example" id="frm-example" method="post" action="Manage_Export_barcode_2.php" > <!---->
						<table class="table table-bordered" id="example">
							<thead>
								<tr bgcolor="rgba(0, 162, 158, .6)" >
									<th>
										<!-- <input name="example-select-all" id="example-select-all" type="checkbox" value="1"></input> -->
										<input name="CheckAll" type="checkbox" id="CheckAll">
									</th>
									<th>ลำดับ</th>
									<th>เลขเรียกหนังสือ</th>
									<th>ชื่อหนังสือ</th>
									<th>บาร์โค๊ต</th>
								</tr>
							</thead>
							<tbody>
								<?php
									$sql = "SELECT Call_number,CONCAT(COALESCE(Aud_name, ''), COALESCE(Mag_name, ''), COALESCE(Boo_name, '')) AS name
											FROM call_number
											left join audiovisual_ ON call_number.Call_id =audiovisual_.Aud_Call_id 
											left JOIN book_ ON call_number.Call_id = book_.Boo_Call_id 
											left join magzine_ on call_number.Call_id = magzine_.Mag_Call_id
											order by Boo_id DESC";
									$result = $conn->query($sql);
									if ($result->num_rows > 0) {
										$i = 0;
										while($row = $result->fetch_assoc()) { 
											$i++; ?>
											<tr>
												<td align="center"><input type="checkbox" name="vehicle1[]" id="vehicle1" value="<?php echo $row["Call_number"] ?>"></td>
												<td><?php echo $i ?></td>
												<td><?php echo $row["Call_number"] ?></td>
												<td><?php echo $row["name"] ?></td>
												<? 	$text=$row["Call_number"]; ?>
												<td align="center"><img src="barcode.php?barcode=<?php echo $text.'&width=320&height=100';?>" /></td>
												<? 	$_SESSION['Call_number']=$row["Call_number"]; 
													$_SESSION['Boo_name']=$row["Boo_name"]; 
												?>
												
											</tr>
										<?php }
									}
									//$conn->close();
								?>
							</tbody>
						</table>
						<div style='float: right;'>
							<button type="submit" id="bt_up" name="bt_up" class="btn btn-success" >ยืนยัน</button>
						<div>
					</form>
				</div>		
			</div>		
		</div>
	</body>
</html>