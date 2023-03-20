<script type="text/javascript">
$(function(){
$("#load_form").hide();

});
function show_hide_tbl(){
	if(document.getElementById('new').checked){
		//alert("new");
		$("#new_form").show();
		$("#load_form").hide();
	}
	else if(document.getElementById('load').checked){
		//alert("load");
		$("#new_form").hide();
		$("#load_form").show();
	}

}


</script>


	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE HEADER-->
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>Vocabulary<small>   Persian - English </small></h1>
				</div>
				<!-- END PAGE TITLE -->
	
			</div>
			<!-- END PAGE HEAD -->
	
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12 ">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					<div class="portlet box green-haze">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> Select your Requerment
							</div>
							<div class="tools">
								<a href="" class="collapse">
								</a>
							</div>
						</div>
						
							<div class="portlet-body form">
								
<br>
				<!-- <label>Inline Radio</label> -->
				<div style="margin-left: 10px;" class="radio-list">
					<label class="radio-inline">
					<input onclick="show_hide_tbl()" checked="" type="radio" name="suttion" id="new" value="1" >New</label>
					<label class="radio-inline">
					<input onclick="show_hide_tbl()" type="radio" name="suttion" id="load" value="0">Load</label>
					
				</div>
			


<hr>






						<div id="new_form">
						<?php if($this->session->flashdata("error")):?>
						<alert  class="alert alert-success col col-md-12" >
								<?php echo $this->session->flashdata("error");?>
						</alert>

						<?php endif;?>
							<form role="form" method="post" action="<?php echo base_url();?>MainController/new_exam_list">
								<div class="form-body">
									





									<div class="form-group">
										<label>Select name for your test</label>
										<input required="" type="text" name="name" class="form-control" />
									</div>





									<div class="form-group">
										<label>Semester</label>
										<select required="" class="form-control" name="sem">
										<option disabled="" selected="">Select your requere Semester</option>
							<?php foreach($semester_list as $row): ?>
								

									<option><?php echo $row->sem;?></option>

							<?php endforeach;?>
										</select>
									</div>
									
									<div class="form-group">
										<label>Book</label>
										<select required="required" class="form-control" name="book">
										<option disabled="" selected="">Select your requere Book</option>
											<option>Speaking</option>
											<option>Listening</option>
											
										</select>
									</div>
									
									


									<div class="form-group">
									
										<div class="radio-list">
											<label class="radio-inline">
											<input type="radio" name="en_fa_fa_en" id="en_fa" value="1" checked >English-Persian</label>
											<label class="radio-inline">
											<input type="radio" name="en_fa_fa_en" id="fa_en"   value="0">Persian-English</label>
											
										</div>
									</div>







									
									
								</div>
								<div class="form-actions">
									<button type="submit" class="btn blue">Submit</button>
									<button type="button" class="btn default">Cancel</button>
								</div>
							</form>
						</div>

				<!-- END SAMPLE FORM PORTLET-->
			
						<div id="load_form">
							
							<div class="table-responsive">
								<table class="table table-bordered table-striped table-condensed flip-content">
								<thead class="flip-content">
							<tr>
								<th>
									 ID
								</th>
								<th>
									 Name
								</th>
								<th>Semester</th>
								<th>Book</th>
								<th>Type</th>
								<th>Success</th>
								<th>Faild</th>
								<th>Progress</th>
								<th>Average</th>

								

								
							</tr>
							</thead>
							<tbody>
							<?php $id=1; foreach ($user_progress_exam as $row ) :

$type=$row->en_fa_fa_en==1?"English - Persian":"Persian - English";

							?>

								<tr>
									<td><?php echo $id;?></td>
									<?php if($row->total_record>0){
										if($row->en_fa_fa_en==1){
											$direction="openExamTest";
										}
										else{
											$direction="PersianEnglishTest";
										}

									 ?>
									<td>
<a href="<?php echo base_url();?>MainController/<?php echo $direction;?>/<?php echo base64_encode($row->id);?>/<?php echo base64_encode($row->sem);?>/<?php echo base64_encode($row->book);?>" >

									<?php echo $row->name;?>

</a>
									</td>
								<?php }?>

									<?php if($row->total_record<=0): ?>
									<td>
									<?php echo $row->name;?>


									</td>
								<?php endif;?>

									<td><?php echo $row->sem;?></td>
									<td><?php echo $row->book;?></td>
									<td><?php echo $type;?></td>
									<td><?php echo $row->success_record." / ".$row->total_record;?></td>
									<td><?php echo $row->faild_record." / ".$row->total_record;?></td>
									<td><?php echo $row->passed_record." / ".$row->total_record;?></td>
									<td><?php echo $row->average."  %";?></td>

								</tr>



							<?php $id++; endforeach;?>

							</tbody>
							</table>
<br>

						</div>














			
				</div>
			
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
</div>