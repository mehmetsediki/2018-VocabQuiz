<?php

/**
* 
*/
class AutoModel extends CI_Model
{
	
	public function search($data,$table){
		$this->db->where($data);
		return $this->db->get($table);
		
	}
	public function tbl_fetch($table,$where=0,$like=0){
		if($where!=0){
			$this->db->where($where);
		}
		if($like!=0){
			$this->db->like($like);
		}
		return $this->db->get($table);
	}
	public function insert_data($tbl,$data){
		$this->db->insert($tbl,$data);
	}


}