<?php 

/**
* 
*/
class MainController extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if($this->session->username==''){
			redirect(base_url().'LoginController');
		}

		
	}
	public function index(){
		$this->load->view("head");
		$this->load->view("student/main");
		$this->load->view("footer");

	}
	public function en_fa(){
		$data["tbl"]=$this->AutoModel->tbl_fetch("word_meaning")->result();

		$this->load->view("head");
		$this->load->view("student/en_fa",$data);
		$this->load->view("footer");
	}
	public function fa_en(){
		$data["tbl"]=$this->AutoModel->tbl_fetch("fa_en_list")->result();

		$this->load->view("head");
		$this->load->view("student/fa_en_list",$data);
		$this->load->view("footer");
	}

	public function word_Meaning_Select(){
		$this->load->model("StudentModel");
		$data['semester_list']=$this->StudentModel->semester_distinc()->result();
		
		$data['user_progress_exam']=$this->AutoModel->tbl_fetch("exam_list_word_count",array('user_id'=>$this->session->id))->result();
		$this->load->view("head");
		$this->load->view("student/word_Meaning_Select_form",$data);
		

		$this->load->view("footer");


	}
	public function new_exam_list(){

		$data=$this->input->post(NULL);
		$data['user_id']=$this->session->id;
		$this->AutoModel->insert_data("exam_list",$data);
		$this->session->set_flashdata('error',"Your new test has been saved ");
		redirect(base_url()."MainController/word_Meaning_Select");


	}
	public function openExamTest(){
$list_id=base64_decode($this->uri->segment(3));
$sem=base64_decode($this->uri->segment(4));
$book=base64_decode($this->uri->segment(5));
$data['sem']=$sem;
$data['book']=$book;
$filter_data=array(
	'sem'	=>$sem,
	'book'	=>$book
	);
$this->load->model("StudentModel");
if($this->StudentModel->random_word_exam($list_id,$filter_data)->num_rows()>0){	
$select_word=$this->StudentModel->random_word_exam($list_id,$filter_data)->result()[0];
		$fourth_question_select=$this->StudentModel->fourth_question_select($select_word->word)->result();
		$myData[0]=$select_word->meaning;
		$myData[1]=$fourth_question_select[0]->meaning;
		$myData[2] =$fourth_question_select[1]->meaning;
		$myData[3]=$fourth_question_select[2]->meaning;
$success_faild_score=$this->AutoModel->tbl_fetch("exam_list_word_count",array('user_id'=>$this->session->id,'id'=>$list_id))->result()[0];
$data['success']=$success_faild_score->success_record;
$data['faild']=$success_faild_score->faild_record;

		shuffle($myData);
		$data['word']=$select_word->word;
		$data['myMeaning']=$myData;
$data['exact_meaning']=$select_word->meaning;
$data['total_record']=$this->AutoModel->tbl_fetch('word_meaning',0,$filter_data)->num_rows();
$data['total_answer']=$this->AutoModel->tbl_fetch('exam_record',array('list_id'=>$list_id))->num_rows();
$data['word_id']=$select_word->id;




		$this->load->view("head");
		$this->load->view("student/openExamTest",$data);

		$this->load->view("footer");

	}
	else{
		$data['user_progress_exam']=$this->AutoModel->tbl_fetch("exam_list_word_count",array('user_id'=>$this->session->id,'id'=>$list_id))->result();

		$data['resultTble']=$this->StudentModel->each_exam_result($list_id)->result();
		$this->load->view("head");
		$this->load->view("student/examResult",$data);

		$this->load->view("footer");		



	}

	}



	public function insert_exam_record(){
		
		$data['list_id']=$this->input->post("list_id");
		$data['word']=$this->input->post("word");
		$data['response']=$this->input->post("response");
		$data1['meaning']=$this->input->post("meaning");
		$data['true_false']=$data1['meaning']==$data['response']?1:0;
		$data1['sem']=base64_encode($this->input->post("sem"));
		$data1['book']=base64_encode($this->input->post("book"));
		$english=$this->input->post("english");
		if($english==1)
			$direction="openExamTest";
		else
			$direction="PersianEnglishTest";
		//print_r($data);
		$this->AutoModel->insert_data('exam_record',$data);
		redirect(base_url()."MainController/$direction/".base64_encode($data['list_id'])."/".$data1['sem']."/".$data1['book']);


	}

	public function top20(){

		$this->load->model("StudentModel");
		$data['list']=$this->StudentModel->top20()->result();





		$this->load->view("head");
		$this->load->view("student/top20",$data);
		$this->load->view("footer");

	}

	public function selfScores(){



		$this->load->model("StudentModel");
		$data['list']=$this->StudentModel->selfScores($this->session->id)->result();

		$this->load->view("head");
		$this->load->view("student/selfScores",$data);
		$this->load->view("footer");		
	}







	public function PersianEnglishTest(){
$list_id=base64_decode($this->uri->segment(3));
$sem=base64_decode($this->uri->segment(4));
$book=base64_decode($this->uri->segment(5));
$data['sem']=$sem;
$data['book']=$book;
$filter_data=array(
	'sem'	=>$sem,
	'book'	=>$book
	);
$this->load->model("StudentModel");
if($this->StudentModel->random_word_exam($list_id,$filter_data)->num_rows()>0){	
$select_word=$this->StudentModel->random_word_exam($list_id,$filter_data)->result()[0];
		$fourth_question_select=$this->StudentModel->fourth_question_select($select_word->word)->result();
		$myData[0]=$select_word->word;
		$myData[1]=$fourth_question_select[0]->word;
		$myData[2] =$fourth_question_select[1]->word;
		$myData[3]=$fourth_question_select[2]->word;
$success_faild_score=$this->AutoModel->tbl_fetch("exam_list_word_count",array('user_id'=>$this->session->id,'id'=>$list_id))->result()[0];
$data['success']=$success_faild_score->success_record;
$data['faild']=$success_faild_score->faild_record;

		shuffle($myData);
		$data['word']=$select_word->meaning;
		$data['myMeaning']=$myData;
$data['exact_meaning']=$select_word->word;
$data['total_record']=$this->AutoModel->tbl_fetch('word_meaning',0,$filter_data)->num_rows();
$data['total_answer']=$this->AutoModel->tbl_fetch('exam_record',array('list_id'=>$list_id))->num_rows();
$data['word_id']=$select_word->id;




		$this->load->view("head");
		$this->load->view("student/PersianEnglishTest",$data);

		$this->load->view("footer");

	}
	else{
		$data['user_progress_exam']=$this->AutoModel->tbl_fetch("exam_list_word_count",array('user_id'=>$this->session->id,'id'=>$list_id))->result();

		$data['resultTble']=$this->StudentModel->each_exam_result($list_id)->result();
		$this->load->view("head");
		$this->load->view("student/examResult",$data);

		$this->load->view("footer");		



	}

	}








}
