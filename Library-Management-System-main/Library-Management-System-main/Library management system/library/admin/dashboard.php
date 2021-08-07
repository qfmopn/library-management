<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
  { 
header('location:index.php');
}
else{?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Library Management System | Admin Dash Board</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">ADMIN DASHBOARD</h4>
                
                            </div>

        </div>
             
             <div class="row">
             <div class="col-md-4 col-sm-6 rscol-xs-12">
                      <div class="alert alert-info back-widget-set text-center">
                            <i class="fa fa-file-archive-o fa-5x"></i>
<?php 
$sql8 ="SELECT id from genre ";
$query8 = $dbh -> prepare($sql5);
$query8->execute();
$results8=$query8->fetchAll(PDO::FETCH_OBJ);
?>

                            <h3><?php echo htmlentities($addcat);?> </h3>
                           <a href="add-category.php"><span>Add genre</span></a>
                        </div>
                    </div>      

<div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="alert alert-success back-widget-set text-center">
                            <i class="fa fa-user fa-5x"></i>
<?php 
$sql9 ="SELECT id from authors ";
$query9 = $dbh -> prepare($sql4);
$query9->execute();
$results9=$query9->fetchAll(PDO::FETCH_OBJ);
?>


                            <h3><?php echo htmlentities($addathrs);?></h3>
                      <a href="add-author.php"><span> Add Authors </span></a>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="alert alert-success back-widget-set text-center">
                     <a href="issue-book.php"><i class="fa fa-book fa-5x"></i></a>
<?php 
$sql6 ="SELECT id from authors ";
$query6 = $dbh -> prepare($sql6);
$query6->execute();
$results6=$query6->fetchAll(PDO::FETCH_OBJ);
?>


                            <h3><?php echo htmlentities($issuedbooks);?></h3>
                      <a href="issue-book.php"><span>Issue a Book</span></a>
                        </div>
                    </div>
                 

 <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="alert alert-success back-widget-set text-center">
                            <i class="fa fa-book fa-5x"></i>
<?php 
$sql ="SELECT id from books ";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$listdbooks=$query->rowCount();
?>


                            <h3><?php echo htmlentities($listdbooks);?></h3>
                            <a href="manage-books.php"><span>Books Listed</span></a>
                            

                        </div>
                    </div>

            
                 <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="alert alert-info back-widget-set text-center">
                            <i class="fa fa-bars fa-5x"></i>
<?php 
$sql1 ="SELECT id from borrowbooks ";
$query1 = $dbh -> prepare($sql1);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$issuedbooks=$query1->rowCount();
?>

                            <h3><?php echo htmlentities($issuedbooks);?> </h3>
                           <a href="manage-issued-books.php"><span>Issued Books</span></a>
                            
                            
                            
                            
                        </div>
                    </div>
             
               
               <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="alert alert-danger back-widget-set text-center">
                            <i class="fa fa-users fa-5x"></i>
                            <?php 
$sql3 ="SELECT id from users ";
$query3 = $dbh -> prepare($sql3);
$query3->execute();
$results3=$query3->fetchAll(PDO::FETCH_OBJ);
$regstds=$query3->rowCount();
?>
                            <h3><?php echo htmlentities($regstds);?></h3>
                           <a href="reg-students.php"><span>Registered Users</span></a>
                        </div>
                    </div>

        </div>
<div class="row">

 <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="alert alert-success back-widget-set text-center">
                            <i class="fa fa-user fa-5x"></i>
<?php 
$sql4 ="SELECT id from authors ";
$query4 = $dbh -> prepare($sql4);
$query4->execute();
$results4=$query4->fetchAll(PDO::FETCH_OBJ);
$listdathrs=$query4->rowCount();
?>


                            <h3><?php echo htmlentities($listdathrs);?></h3>
                      <a href="manage-authors.php"><span>Authors Listed</span></a>
                        </div>
                    </div>

            
                 <div class="col-md-4 col-sm-6 rscol-xs-12">
                      <div class="alert alert-info back-widget-set text-center">
                            <i class="fa fa-file-archive-o fa-5x"></i>
<?php 
$sql5 ="SELECT id from genre ";
$query5 = $dbh -> prepare($sql5);
$query5->execute();
$results5=$query5->fetchAll(PDO::FETCH_OBJ);
$listdcats=$query5->rowCount();
?>

                            <h3><?php echo htmlentities($listdcats);?> </h3>
                           <a href="manage-categories.php"><span>Genre</span></a>
                        </div>
                    </div>
             <div class="col-md-4 col-sm-6 rscol-xs-12">
                      <div class="alert alert-info back-widget-set text-center">
                            <i class="fa fa-book fa-5x"></i>
<?php 
$sql7 ="SELECT id from books";
$query7 = $dbh -> prepare($sql7);
$query7->execute();
$results7=$query7->fetchAll(PDO::FETCH_OBJ);
$addbook=$query7->rowCount();
?>

                            <h3><?php echo htmlentities($addbook);?> </h3>
                           <a href="add-book.php"><span>Add a book</span></a>
                        </div>
                    </div>           
             </div>
            
    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->
<?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>
<?php } ?>
