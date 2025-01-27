<?php

/* Check the absolute path to the Social Auto Poster directory. */
if ( !defined( 'SAP_APP_PATH' ) ) {
    // If SAP_APP_PATH constant is not defined, perform some action, show an error, or exit the script
    // Or exit the script if required
    exit();
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Users
 *
 * @author PC10
 */

 require_once(CLASS_PATH . 'Settings.php');



 class SAP_Test{


    public $common;
	private $settings;
	public $flash;

    public function __construct(){

		$this->common = new Common();
		$this->settings = new SAP_Settings();
		$this->flash = new Flash();

    }
    public function test_one(){

        $template_path = $this->common->get_template_path('Test_pages' . DS . 'index.php');

        if (file_exists($template_path)) {
            include_once($template_path);
        } else {
            // Handle error if the file is not found
            echo "Error: Template file not found at path: $template_path";
        }
    }
 }