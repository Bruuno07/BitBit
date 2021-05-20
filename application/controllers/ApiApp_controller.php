<?php defined('BASEPATH') or exit('No direct script access allowed');

class ApiApp_controller  extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model('noticies_model');
        $this->load->helper('url');
    }


    public function params_post()
    {
        $user = $this->post('username');
        $pass = $this->post('password');

        $this->login($user, $pass);
    }
}

/* End of file ApiApp_controller.php */