<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'Home';
$route['translate_uri_dashes'] = FALSE;
$route['404_override'] = '';


/*$route['noticies'] = 'noticies_controller/index';*/
$route[''] = 'Home/index';

$route['login'] = 'Login_controller/login'; 
$route['logout'] = 'Login_controller/logout'; 


/* ADMIN */ 
$route['adminUsuarios'] = 'Admin_controller/adminUsuarios'; 
$route['user_groups'] = 'Admin_controller/user_groups'; 
$route['groups'] = 'Admin_controller/groups'; 
$route['incidencia'] = 'Admin_controller/incidencia'; 
$route['infocontacto'] = 'Admin_controller/infocontacto'; 
$route['mail'] = 'Admin_controller/mail'; 
$route['material'] = 'Admin_controller/material'; 
$route['noticia'] = 'Admin_controller/noticia'; 

$route['passwdchange'] = 'UpdatePassword_controller/index'; 
$route['updatePassword'] = 'UpdatePassword_controller/updatePassword'; 


$route['nuevareparacion'] = 'Nuevareparacion_controller/index'; 
$route['anadirnuevareparacion'] = 'Reparaciones_controller/anadirnuevareparacion'; 

$route['misreparaciones'] = 'Reparaciones_controller/index'; 

$route['anuncios'] = 'Anuncio_controller/index';


$route['todasLasIncidencias'] = 'Gestor_controller/todasLasIncidencias'; 
$route['todasLasIncidencias/add'] = 'Gestor_controller/todasLasIncidencias/add';
$route['todasLasIncidencias/insert'] = 'Gestor_controller/todasLasIncidencias/insert';
$route['todasLasIncidencias/insert_validation'] = 'Gestor_controller/todasLasIncidencias/insert_validation';
$route['todasLasIncidencias/success/:num'] = 'Gestor_controller/todasLasIncidencias/success';
$route['todasLasIncidencias/delete/:num'] = 'Gestor_controller/todasLasIncidencias/delete';
$route['todasLasIncidencias/edit/:num'] = 'Gestor_controller/todasLasIncidencias/edit';
$route['todasLasIncidencias/clone/:num'] = 'Gestor_controller/todasLasIncidencias/clone';
$route['todasLasIncidencias/update_validation/:num'] = 'Gestor_controller/todasLasIncidencias/update_validation';
$route['todasLasIncidencias/update/:num'] = 'Gestor_controller/todasLasIncidencias/update';
$route['todasLasIncidencias/ajax_list_info'] = 'Gestor_controller/todasLasIncidencias/ajax_list_info';
$route['todasLasIncidencias/ajax_list'] = 'Gestor_controller/todasLasIncidencias/ajax_list';
$route['todasLasIncidencias/read/:num'] = 'Gestor_controller/todasLasIncidencias/read';
$route['todasLasIncidencias/export'] = 'Gestor_controller/todasLasIncidencias/export';



$route['register'] = 'Register_controller/index'; 
$route['create_user'] = 'Register_controller/create_user'; 
$route['update_password'] = 'UpdatePassword_controller/update_password'; 


$route['Nosotros'] = 'Nosotros/index'; 
$route['Contactanos'] = 'Contactanos/index'; 

$route['noticies/index'] = 'noticies_controller/index'; 

$route['noticies/create'] = 'noticies_controller/create'; 

$route['noticies/edit/(:any)'] = 'noticies_controller/edit/$1'; 

$route['noticies/delete/(:any)'] = 'noticies_controller/delete/$1'; 

$route['noticies/(:any)'] = 'noticies_controller/view/$1'; 

/**pdf */
$route['pdf'] = "pdf_controller/index";

$route['api/noticies'] = "Api_Noticies/noticies";

$route['private/noticies'] = "ApiJwt_controller/noticies";
$route['private/login'] = "ApiJwt_controller/params";





/* ###################################################################### */

$route['(:any)/add'] = 'Admin_controller/$1/add';
$route['(:any)/insert'] = 'Admin_controller/$1/insert';
$route['(:any)/insert_validation'] = 'Admin_controller/$1/insert_validation';
$route['(:any)/success/:num'] = 'Admin_controller/$1/success';
$route['(:any)/delete/:num'] = 'Admin_controller/$1/delete';
$route['(:any)/edit/:num'] = 'Admin_controller/$1/edit';
$route['(:any)/clone/:num'] = 'Admin_controller/$1/clone';
$route['(:any)/update_validation/:num'] = 'Admin_controller/$1/update_validation';
$route['(:any)/update/:num'] = 'Admin_controller/$1/update';
$route['(:any)/ajax_list_info'] = 'Admin_controller/$1/ajax_list_info';
$route['(:any)/ajax_list'] = 'Admin_controller/$1/ajax_list';
$route['(:any)/read/:num'] = 'Admin_controller/$1/read';
$route['(:any)/export'] = 'Admin_controller/$1/export';
