<?php

/**
* 
*/
class StudentModel extends CI_Model
{
	
	public function semester_distinc(){
		$this->db->select("sem ");
		$this->db->distinct();
		$this->db->order_by("sem", "asc");

		return $this->db->get("tbl_dictionary");
	}
	public function random_word_exam($id,$data){
		$this->db->select("*");

		$this->db->where("id NOT IN (SELECT word FROM exam_record WHERE list_id=$id)");
		$this->db->where($data);
		
		$this->db->order_by("word","random");
		return $this->db->get("tbl_dictionary");
	}
	public function fourth_question_select($word){
		$this->db->select("*");

		$this->db->where("word!=","$word");
		$this->db->order_by("id","random");
		return $this->db->get("tbl_dictionary",3);
	}

	public function each_exam_result($list_id){

		$this->db->select("b.word,a.response,b.meaning,a.true_false");

		$this->db->join("tbl_dictionary b","a.word=b.id",'left');
		$this->db->where("a.list_id",$list_id);
		$this->db->order_by("a.true_false");
		return $this->db->get("exam_record a");

	}
	public function top20(){
		$this->db->select("*");
		$this->db->order_by("average","DESC");
		return $this->db->get("eachstudentscore",20);
	}

	public function selfScores($user){
		$this->db->select("*");
		$this->db->where("user_id",$user);
		return $this->db->get("exam_list_word_count",20);
	}





}

// SELECT
//     *,
//     (SELECT COUNT(`id`) FROM `tbl_dictionary`  WHERE `sem`=a.`sem`  AND `book`=a.`book`)AS total_record,
//     (SELECT COUNT(`record_id`) FROM `exam_record` WHERE `list_id`=`id`) AS passed_record,
//     (SELECT COUNT(`record_id`) FROM `exam_record` WHERE `list_id`=`id` AND `true_false`=1) AS success_record,
//     (SELECT COUNT(`record_id`) FROM `exam_record` WHERE `list_id`=`id` AND `true_false`=0) AS faild_record,
//     ROUND(((SELECT COUNT(`record_id`) FROM `exam_record` WHERE `list_id`=`id` AND `true_false`=1)*100)/(SELECT COUNT(`id`) FROM `tbl_dictionary`  WHERE `sem`=a.`sem`  AND `book`=a.`book`),0) AS average
// FROM
//     `exam_list` AS a 
// WHERE
//     1