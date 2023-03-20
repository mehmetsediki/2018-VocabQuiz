<script type="text/javascript">
	
$(function(){
$("#myTable").hide();
});
function table(){
	$("#myTable").show();
	$("#resultTable").hide();
}
function result(){
	$("#myTable").hide();
	$("#resultTable").show();	
}

</script>

	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
	
			<!-- BEGIN PAGE HEADER-->
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>Vocabulary<small>     <?php echo $book;?>  -  Semester <?php echo $sem;?> </small></h1>
				</div>
				<!-- END PAGE TITLE -->

			</div>
			<!-- END PAGE HEAD -->
	
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
				
				
					<!-- BEGIN SAMPLE TABLE PORTLET-->
					<div class="portlet box green-haze">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-list"></i>Your Result
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse">
								</a>
								
								</a>
							</div>
						</div>
						<div class="portlet-body">
<label>
	Result<input checked="" name="select" onclick="result();" type="radio"  />
</label>&emsp;
<label>
	List<input  name="select" onclick="table();" type="radio"  />
</label>
<div id="resultTable" >
		<table class="table table-bordered">
		<?php foreach ($user_progress_exam as $row):
$type=$row->en_fa_fa_en==1?"English - Persian":"Persian - English";
$resultPercentage=round(($row->success_record*100)/$row->total_record);

		?>
			<tr>
				<th style="width: 180px;">ID</th>
				<th><?php echo $row->id;?></th>
			</tr>
			<tr>
				<th>Name</th>
				<th><?php echo $row->name;?></th>
			</tr>
			<tr>
				<th>Type</th>
				<th><?php echo $type;?></th>
			</tr>
			<tr>
				<th>Semester</th>
				<th><?php echo $row->sem;?></th>
			</tr>
			<tr>
				<th>Book</th>
				<th><?php echo $row->book;?></th>
			</tr>
			<tr>
				<th>Total Record</th>
				<th><?php echo $row->total_record."  "."Words";?></th>
			</tr>
			<tr>
				<th>Passed</th>
				<th><?php echo $row->success_record."  "."Words";?>
				</th>
			</tr>
			<tr>
				<th>Faild</th>
				<th><?php echo $row->faild_record."  "."Words";?></th>
			</tr>
			<tr>
				<th>Percentage</th>
				<th><?php echo $resultPercentage."  %";?>
			

				</th>
			</tr>

		<?php endforeach;?>

		</table>

</div>					



							<div id="myTable" class="table-responsive">
								<table class="table table-bordered">
								<thead>
								<tr>
									<th style="width: 80px;">
										 Id									</th>
									<th>
										 Word
									</th>
									<th>
										 Answer
									</th>
									<th>
										Key
									</th>
									
								</tr>
								</thead>
								<tbody>
								<?php $id=1;foreach($resultTble as $row):
								if($row->true_false==0){
									$state="fa fa-times";
									$color="red";
								}
								else{
									$state="fa fa-check";
									$color="green";
								}

								?>

								<tr>
									<td><?php echo  $id;?></td>
									<td>
									<span class="<?php echo $state;?>" style="color:<?php echo $color;?>"></span>
									<?php echo  $row->word;?></td>
									<td><?php echo  $row->response;?></td>
									<td><?php echo  $row->meaning;?></td>

								</tr>


								<?php $id++; endforeach;?>
								</tbody>
								</table>
							</div>
						</div>
					</div>
				
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->