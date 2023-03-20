<?php 
/**
* 
*/
class LoginController extends CI_Controller
{
	
	public function index(){
		$this->load->view("login");
	}
	public function login_check(){
		
		$data=$this->input->post(NULL,TRUE);
		

		
		if($this->AutoModel->search($data,"tbl_user")->num_rows()>0){
			$user=$this->AutoModel->search($data,"tbl_user")->result()[0];
			if($user->active!=0){

			$session=array(
				'id'				=>$user->user_id,
				'roll_number'		=>$user->roll_number,
				'type'				=>$user->type,
				'name'				=>$user->name,
				'father_name'		=>$user->father_name,
				'last_name'			=>$user->last_name,
				'username'			=>$user->username,
				'active'			=>$user->active
				);
			$this->session->set_userdata($session);



			redirect(base_url().'MainController');	

			}
			else{
        $this->session->set_flashdata('Error','Your Account is Deactive');
        redirect(base_url().'LoginController');					
			}
		}
		else{
        $this->session->set_flashdata('Error','Your Email or Password is Incorrect');
        redirect(base_url().'LoginController');			
		}
	}
	public function logout(){
		$this->session->sess_destroy();
		redirect(base_url().'LoginController');	
	}
}