<footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2024 from BootstrapDash.
              All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i
                class="ti-heart text-danger ms-1"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/vendors/js/vendor.bundle.base.js' ;?>"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/vendors/chart.js/chart.umd.js' ;?>"></script>
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/vendors/datatables.net/jquery.dataTables.js' ;?>"></script>
  <!-- <script src="assets/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script> -->
  <script src="<?php echo SAP_SITE_URL . 'assets/vendors/datatables.net-bs5/dataTables.bootstrap5.js' ;?>"></script>
  <script src="<?php echo SAP_SITE_URL . 'assets/js/dataTables.select.min.' ;?>"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/js/off-canvas.js' ;?>"></script>
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/js/template.js' ;?>"></script>
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/js/settings.js' ;?>"></script>
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/js/todolist.js' ;?>"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/js/jquery.cookie.js' ;?>" type="text/javascript"></script>
  <script src="<?php echo SAP_SITE_URL . '/dist/assets/js/dashboard.js' ;?>"></script>
  <!-- <script src="assets/js/Chart.roundedBarCharts.js"></script> -->
  <!-- End custom js for this page-->



<!-- ------------------------------------------link from previous footer-------------------------------------------------- -->



  <?php if ($match['name'] == 'viewpost' || $match['name'] == 'addpost' || $match['name'] == 'quick_posts' || $match['name'] == 'quick_posts_with_id' || $match['name'] == 'quick_viewpost') { ?>
    <script src="<?php echo SAP_SITE_URL . '/assets/js/moment.js'; ?>" defer onload=''></script>
    <script src="<?php echo SAP_SITE_URL . '/assets/js/moment-timezone-with-data.js'; ?>" defer onload=''></script>
    <?php }
?>
<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="<?php echo SAP_SITE_URL . '/assets/js/jquery.min.js'; ?>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo SAP_SITE_URL . '/assets/js/bootstrap.min.js'; ?>" defer onload=''></script>
<?php if ($match['name'] != 'report' || $match['name'] == 'quick_viewpost') { ?>
    <script src="<?php echo SAP_SITE_URL . '/assets/js/bootstrap-datetimepicker.js'; ?>" defer onload=''></script>
    <?php }
?>
<!-- social-auto-poster -->
<script src="<?php echo SAP_SITE_URL . '/assets/js/mingle-social-auto-poster.min.js'; ?>" defer onload=''></script>
<!-- jvectormap -->

<?php



//Js for Plans and Members
if ( $match['name'] == 'add_plan' || $match['name'] == 'edit_plan' || $match['name'] == 'add_member' || $match['name'] == 'edit_member' || $match['name'] == 'add_membership' ) {
    
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/jQuery-validate/jquery.validate.js"></script>';
}

//Js for Users
if ($match['name'] == 'my_account') {
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/jQuery-validate/jquery.validate.js"></script>';
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/users.js"></script>';
}

if ($match['name'] == 'addpost' || $match['name'] == 'viewpost' || $match['name'] == 'general_settings' || $match['name'] == 'settings' || $match['name'] == 'quick_posts' || $match['name'] == 'quick_posts_with_id' || $match['name'] == 'quick_viewpost') {
    echo '<script src="' . SAP_SITE_URL . '/assets/js/select2.js"></script>';
    echo '<script src="' . SAP_SITE_URL . '/assets/js/icheck.min.js"></script>';
}
?>

<!-- search -->
<script src="<?php echo SAP_SITE_URL . '/assets/js/jquery.search.min.js'; ?>" defer onload=''></script>
<!-- custom -->
<script src="<?php echo SAP_SITE_URL . '/assets/js/custom.js'; ?>" defer onload=''></script>
<!-- dataTable Start -->
<script type="text/javascript" src="<?php echo SAP_SITE_URL . '/assets/dataTables/js/jquery.dataTables.min.js'; ?>" defer onload=''></script>
<script type="text/javascript" src="<?php echo SAP_SITE_URL . '/assets/dataTables/js/dataTables.bootstrap.min.js'; ?>" defer onload=''></script>
<script type="text/javascript" src="<?php echo SAP_SITE_URL . '/assets/dataTables/js/dataTable-init.js'; ?>" defer onload=''></script>
<!-- dataTable End -->
<?php
if ($match['name'] == 'addpost' || $match['name'] == 'settings' || $match['name'] == 'general_settings' || $match['name'] == 'viewpost' || $match['name'] == 'quick_posts' || $match['name'] == 'quick_posts_with_id' || $match['name'] == 'quick_viewpost') {
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/fileinput.js" defer onload=""></script>';
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/posts/add-posts.js" defer onload=""></script>';
}

//Js for settings
if ($match['name'] == 'settings') {
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/jQuery-validate/jquery.validate.js"></script>';
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/settings.js"></script>';
}

//Js for update 
if ($match['name'] == 'mingle_update') {
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/jQuery-validate/jquery.validate.js"></script>';
    echo '<script type="text/javascript" src="' . SAP_SITE_URL . '/assets/js/mingle-update.js"></script>';
}

?>
<script type="text/javascript" src="https://js.stripe.com/v1/"></script>



<!-- ------------------------------------------link from previous footer-------------------------------------------------- -->

</body>

</html>