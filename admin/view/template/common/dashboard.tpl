<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">


  <?php if (isset($manager_status) && $manager_status) { ?>
        <?php if (isset($manager_success) && $manager_success) { ?>
            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $manager_success; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
          <?php } ?>
        
        <?php if (isset($manager_error) && $manager_error) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $manager_error; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
          <?php } ?>
        <?php } ?>


    <?php if ($error_install) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_install; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>

    <?php if (isset($manager_status) && $manager_status) { ?>
        <?php echo $manager; ?>
      <?php } ?>

      
    <?php foreach ($rows as $row) { ?>
    <div class="row"<?php echo (isset($manager_hide_dashboard) && $manager_hide_dashboard ? ' style="display: none;"' : ''); ?>>
      <?php foreach ($row as $dashboard_1) { ?>
      <?php $class = 'col-lg-' . $dashboard_1['width'] . ' col-md-3 col-sm-6'; ?>
      <?php foreach ($row as $dashboard_2) { ?>
      <?php if ($dashboard_2['width'] > 3) { ?>
      <?php $class = 'col-lg-' . $dashboard_1['width'] . ' col-md-12 col-sm-12'; ?>
      <?php } ?>
      <?php } ?>
      <div class="<?php echo $class; ?>"><?php echo $dashboard_1['output']; ?></div>
      <?php } ?>
    </div>
    <?php } ?>
  </div>
</div>
<?php echo $footer; ?>