


	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
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
				<div class="col-md-12 ">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					<div class="portlet box green-haze">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> Please provide the meaning
							</div>
							<div class="tools">
								<a href="" class="collapse">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							
								
<br>
				<!-- <label>Inline Radio</label> -->
		

<h4 style="float: left;">&emsp;Question<?php echo $total_answer;?>/<?php echo $total_record;?></h4>

<h4 style="float: right;">Success &emsp;<?php echo $success." | ".$faild;?>&emsp;Faild&emsp;</h4><br>
<hr>
<style type="text/css">
	
	span{
		font-size: 20px;
	}


</style>

<form action="<?php echo base_url();?>/MainController/insert_exam_record" method="post">

<h2 dir="rtl">&emsp;لطفا معنی <?php echo $word;?> را انتخاب نمایید</h2>
				
	<div class="form-group" dir="rtl">

		&emsp;&emsp;
		<label onclick="this.form.submit()">
			<input name="response"class="form-control" type="radio" value="<?php echo $myMeaning[0];?>" />
			<span><?php echo $myMeaning[0];?></span>
		</label><br>
		&emsp;&emsp;
		<label onclick="this.form.submit()" >
			<input name="response" class="form-control" type="radio" value="<?php echo $myMeaning[1];?>" />
			<span><?php echo $myMeaning[1];?></span>
		</label ><br>
		&emsp;&emsp;
		<label onclick="this.form.submit()">
			<input name="response" class="form-control" type="radio" value="<?php echo $myMeaning[2];?>" />
			<span><?php echo $myMeaning[2];?></span>
		</label><br>
		&emsp;&emsp;
		<label onclick="this.form.submit()" >
			<input name="response" class="form-control" type="radio" value="<?php echo $myMeaning[3];?>" />
			<span><?php echo $myMeaning[3];?></span>
		</label><br>
				
	</div>

	<input type="hidden" name="word" value="<?php echo $word_id;?>" />
	<input type="hidden" name="meaning" value="<?php echo $exact_meaning;?>" />
	<input type="hidden" name="list_id" value="<?php echo base64_decode($this->uri->segment(3));?>" />
	<input type="hidden" name="sem" value="<?php echo base64_decode($this->uri->segment(4));?>" />
	<input type="hidden" name="book" value="<?php echo base64_decode($this->uri->segment(5));?>" />
<input type="hidden" name="english" value="1" />



</form>




								<!-- <div dir="rtl"class="form-group">
									&emsp;&emsp;<button type="button" class="btn default">بازگشت</button>
									<button type="submit" class="btn blue">انتخاب</button>
								</div> -->
					<br>
						</div>

				<!-- END SAMPLE FORM PORTLET-->
			
<br>

						</div>














					
				</div>
			
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>