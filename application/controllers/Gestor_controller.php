<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Gestor_controller extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->database();
        $this->load->helper('url');
        $this->load->library("session");
        $this->load->library('Grocery_CRUD');
        $this->load->model('users_model');
        $this->load->helper('url_helper');
        $this->load->helper(array('form', 'url'));
        $this->load->library("form_validation");
        $this->load->library("ion_auth");
        $this->load->model('users_model');
    }

    public function todasLasIncidencias()
    {
        if ($this->ion_auth->in_group('gestor')) {
            $crud = new grocery_CRUD();
            $crud->set_table('incidencia');
            $crud->set_theme('incidencies');
            $crud->set_relation('id_user', 'users', 'username');
            $crud->set_relation('id_tecnico', 'users', 'username');
            $crud->set_relation('id_Estado','tipo_estado','descrip');
            $crud->fields('uuid');
            $crud->field_type('uuid', 'invisible');
            $crud->callback_before_insert(array($this,'uuid_callback'));
            $crud->columns('id_incidencia', 'id_user', 'id_Estado','id_tecnico', 'desc_averia', 'Fecha_entrada', 'Diagnostico_prev');

            $crud->add_fields('id_user','id_Estado','id_tecnico','desc_averia','Fecha_entrada','Marca','Modelo','Numero_serie','Diagnostico_prev','Telf','tiempo_reparcion');
            $crud->edit_fields('id_tecnico','id_Estado','Diagnostico_prev');


            
            $output = $crud->render();
            $this->output($output);
        } else {
            $this->session->set_flashdata('access', "¡No tienes permisos para acceder!");
            redirect('');
        }
    }


    public function changePassword()
    {

        $data['user'] = $this->ion_auth->user()->row();

        $this->load->view('templates/headerInisdeGestor', $data);
        $this->load->view('pages/changePassword.php');
    }


    function uuid_callback($post_array)
    {
        $this->load->library('uuid');
        $user = $this->ion_auth->user()->row();

        //Output a v4 UUID 
        $id = $this->uuid->v4();
        $id = str_replace('-', '', $id);

        $post_array['uuid'] = $id;

        $this->db->set('uuid', $post_array['uuid']);
        $this->db->where('id_user', $user->id);
        $this->db->where('id_incidencia', $post_array['id_incidencia']);
        $this->db->update('incidencia');

        return $post_array;

    }

    function output($output = null)
    {
        $data['user'] = $this->ion_auth->user()->row();
        $this->load->view('templates/headerInisdeGestor', $data);
        $this->load->view('grocery/index.php', $output);
    }
}
