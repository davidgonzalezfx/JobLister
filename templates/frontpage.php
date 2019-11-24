<?php include 'includes/header.php' ?>

  

  <div class="jumbotron">
    <h1 class="display-3">Find A Job</h1>
    <form action="index.php" method="GET">
      <select name="category" class="form-control">
        <option value="0">Choose category</option>
        <?php foreach($categories as $category): ?>
          <option value="<?php echo $category->id; ?>"><?php echo $category->name; ?></option>
        <?php endforeach ?>
      </select>
      <br>
      <input type="submit" class="btn btn-lg btn-success" value="FIND">
    </form>
  </div>
  <h3><?php echo $title; ?></h3>
  <?php foreach($jobs as $job): ?>
  <div class="row marketing">
    <div class="col-md-10">
      <h4><?php echo $job->job_title; ?></h4>
      <p><?php echo $job->description; ?></p>
    </div>
    <div class="col-md-2">
    	<a href="job.php?id=<?php echo $job->id;?>" class="btn btn-outline-success">View</a>
    </div>
  </div>
<?php endforeach ?>
  

	

  
<?php include 'includes/footer.php' ?>