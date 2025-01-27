<div id="pt" class="container-fluid   page-body-wrapper" > 
<!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
					<a class="nav-link" href="<?php echo $router->generate('quick_posts'); ?>">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title"><?php echo $sap_common->lang('quick_single_post'); ?></span>
            </a>
          </li>

          <li class="nav-item">
					<a class="nav-link" href="<?php echo $router->generate('posts'); ?>">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title"><?php echo $sap_common->lang('multi-post'); ?></span>
            </a>
          </li>

          <li class="nav-item">
					<a class="nav-link" href="<?php echo $router->generate('settings'); ?>">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title"><?php echo $sap_common->lang('settings'); ?></span>
            </a>
          </li>


          <li class="nav-item">
					<a class="nav-link" href="<?php echo $router->generate('report'); ?>">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title"><?php echo $sap_common->lang('report'); ?></span>
            </a>
          </li>


          <li class="nav-item">
					<a class="nav-link" href="<?php echo $router->generate('logs'); ?>">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title"><?php echo $sap_common->lang('posting_logs'); ?></span>
            </a>
          </li>



          <li class="nav-item">
					<a class="nav-link" href="<?php echo $router->generate('debug'); ?>">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title"><?php echo $sap_common->lang('debug_logs'); ?></span>
            </a>
          </li>


          <li class="nav-item">
					<a class="nav-link" href="<?php echo $router->generate('your-subscription'); ?>">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title"><?php echo $sap_common->lang('your_subscription'); ?></span>
            </a>
          </li>


        </ul>
      </nav>




      <div class="main-panel">
