<?php

/* Check the absolute path to the Social Auto Poster directory. */
if (!defined('SAP_APP_PATH')) {
  // If SAP_APP_PATH constant is not defined, perform some action, show an error, or exit the script
  // Or exit the script if required
  exit();
}

global $router, $match;
$user_id = sap_get_current_user_id();
if (!empty($user_id) && isset($this->settings) && !empty($this->settings)) {
  $user_options = $this->settings->get_user_setting('sap_general_options', $user_id);



  $timezone = (!empty($user_options['timezone'])) ? $user_options['timezone'] : ''; // user timezone

  //Update time zone based on user setting
  if (!empty($timezone)) { // set default timezone
    date_default_timezone_set($timezone);
  }
}
$settings_object      = new SAP_Settings();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Test page</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/vendors/feather/feather.css'; ?>">
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/vendors/ti-icons/css/themify-icons.css'; ?>">
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/vendors/css/vendor.bundle.base.css'; ?>">
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/vendors/font-awesome/css/font-awesome.min.css'; ?>">
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/vendors/mdi/css/materialdesignicons.min.css'; ?>">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- <link rel="stylesheet" href="assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css"> -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/vendors/datatables.net-bs5/dataTables.bootstrap5.css'; ?>">
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/vendors/ti-icons/css/themify-icons.css'; ?>">
  <link rel="stylesheet" type="text/css" href="<?php echo SAP_SITE_URL . '/dist/assets/js/select.dataTables.min.css'; ?>">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/dist/assets/css/style.css'; ?>">
  <!-- endinject -->
  <link rel="shortcut icon" href="<?php echo SAP_SITE_URL . '/dist/assets/images/favicon.png'; ?>" />




  <!-- ------------------------------------------link from previous header-------------------------------------------------- -->




  <?php if (!empty($settings_object->get_options('NextLogon_meta_title'))) { ?>
    <meta name="title" content="<?php echo $settings_object->get_options('NextLogon_meta_title'); ?>">
  <?php } ?>
  <?php if (!empty($settings_object->get_options('mingle_meta_description'))) { ?>
    <meta name="description" content="<?php echo $settings_object->get_options('NextLogon_meta_description'); ?>">
  <?php } ?>
  <title>Mingle - <?php echo empty($settings_object->get_options('NextLogon_site_name')) ? SAP_NAME : $settings_object->get_options('NextLogon_site_name'); ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <?php
  if (!empty($settings_object->get_options('mingle_favicon'))) { ?>

    <link rel="icon" href="<?php echo SAP_IMG_URL . $settings_object->get_options('mingle_favicon'); ?>" type="image/png" sizes="32x32">
  <?php } else { ?>
    <link rel="icon" href="<?php echo SAP_SITE_URL . '/assets/images/favicon.png'; ?>" type="image/png" sizes="32x32">
  <?php } ?>



  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/bootstrap.min.css'; ?>">
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/bootstrap-datetimepicker.css'; ?>">
  <?php
  if ($match['name'] == 'report') { ?>
    <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/bootstrap-datepicker.min.css'; ?>">
  <?php
  } ?>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/font-awesome.min.css'; ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/mingle-social-auto-poster.min.css'; ?>">

  <?php

  if ($match['name'] == 'addpost' || $match['name'] == 'viewpost' ||  $match['name'] == 'settings' || $match['name'] == 'quick_posts' || $match['name'] == 'quick_posts_with_id'  || $match['name'] == 'quick_viewpost' || $match['name'] == 'general_settings') {
    echo '<link rel="stylesheet" href="' . SAP_SITE_URL . '/assets/css/select2.min.css">';
    echo '<link rel="stylesheet" href="' . SAP_SITE_URL . '/assets/css/fileinput.css">';
  } ?>
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/_all-skins.min.css'; ?>">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/flat/blue.css'; ?>">
  <!-- bootstrap wysihtml5 - text editor -->

  <!-- style -->
  <link rel="stylesheet" href="<?php echo SAP_SITE_URL . '/assets/css/style.css'; ?>">
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <!-- dataTable Start -->
  <link rel="stylesheet" type="text/css" href="<?php echo SAP_SITE_URL . '/assets/dataTables/css/dataTables.bootstrap.min.css'; ?>">
  <!-- dataTable End -->
  <?php

  $sap_general_options = $settings_object->get_options('sap_general_options');
  if (!empty($sap_general_options['timezone'])) {
    echo '<script> var SapTimeZone = "' . $sap_general_options['timezone'] . '"; </script>';
  } else {
    echo '<script> var SapTimeZone = "' . date_default_timezone_get() . '"; </script>';
  } ?>

  <script>
    var SAP_SITE_URL = "<?php echo SAP_SITE_URL; ?>";
  </script>



  <!-- ------------------------------------------link from previous header-------------------------------------------------- -->

</head>

<body>
  <div class="container-scroller">




    <!-- partial:partials/_navbar.html -->
    <nav id="fix" class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
        <a class="navbar-brand brand-logo me-5" href="index.html"><img src="../dist/assets/images/logo.svg" class="me-2"
            alt="logo" /></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../dist/assets/images/logo-mini.svg"
            alt="logo" /></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">

        </ul>
        <ul class="navbar-nav navbar-nav-right">



          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#"
              data-bs-toggle="dropdown">
              <i class="mdi mdi-web mx-0" style="font-size: 30px;"></i>

            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
              aria-labelledby="notificationDropdown">

              <!-- <a class="dropdown-item preview-item">
                <div class="preview-item-content"> -->


                  <form method="POST" action="" class="m-0 p-0"> <!-- No margin or padding for the form -->
                    <!-- Show only the language not currently selected -->
                    <?php if ($_SESSION['lang'] === 'en'): ?>
                      <button type="submit" name="toggle_language" value="fr" class="btn  btn-block  text-black">
                        Français
                      </button>
                    <?php else: ?>
                      <button type="submit" name="toggle_language" value="en" class="btn  btn-block  text-black">
                        English
                      </button>
                    <?php endif; ?>
                  </form>

                <!-- </div>
              </a> -->


            </div>
          </li>



          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
              <i class="mdi mdi-account-circle mx-0 " style="font-size: 30px;"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">

              <a class="dropdown-item" href="<?php echo SAP_SITE_URL . '/my-account/'; ?>">
                <i class="fa fa-users"></i><?php echo $sap_common->lang('my_acc'); ?>
              </a>

              <a class="dropdown-item" href="<?php echo SAP_SITE_URL . '/logout/'; ?>">
                <i class="fa fa-sign-out"></i><?php echo $sap_common->lang('singout'); ?>
              </a>

            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center " style="padding-left: 34px; font-size: 24px; " type="button"
          data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>

      </div>
    </nav>
    <!-- partial -->