<?php defined('BASEPATH') or exit('No direct script access allowed');

class ApiApp_model  extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }


    public function function_name()
    {
        
    }
}

/* End of file ApiApp_model.php */