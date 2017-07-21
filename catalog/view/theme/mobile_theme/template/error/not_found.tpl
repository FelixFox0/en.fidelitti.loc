<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="large-12 not-found"><?php echo $content_top; ?>
      <h1>Ой...кажется, <br>на сайте <br>нет того, что <br>вы ищете</h1>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="/dlya-zhenshchin/sumki/" class="btn btn-primary">ПОВЕЗЕТ В ЭТОТ РАЗ</a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
