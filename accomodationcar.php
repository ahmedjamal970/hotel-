  <?php
$msg = "";

if(isset($_POST['booknow'])){

    $days =0;
    $day = dateDiff($_SESSION['arrival'],$_SESSION['departure']);  

   if($day <= 0){
      $totalRENT = $_POST['RENT'] *1;
      $days = 1;
    }else{
      $totalRENT = $_POST['RENT'] * $day;
      $days = $day;
    }
     
      addtocart($_POST['CARID'],$days, $totalRENT,$_SESSION['arrival'],$_SESSION['departure'],0);

      redirect(WEB_ROOT. 'bookings/'); 

}
 

 if(!isset($_SESSION['arrival'])){
   $_SESSION['arrival'] = date_create('Y-m-d');
 }
if(!isset($_SESSION['departure'])) {
  $_SESSION['departure'] =  date_create('Y-m-d') ;
}


if(isset($_POST['booknowA'])){ 


 $days = dateDiff($_POST['arrival'],$_POST['departure']); 

if($days <= 0){
  $msg = 'Available CAR today';
}else{
   $msg =  'Available CAR From:'.$_POST['arrival']. ' To: ' .$_POST['departure'];

} 


$_SESSION['arrival'] = date_format(date_create( $_POST['arrival']),"Y-m-d");
$_SESSION['departure'] =date_format(date_create($_POST['departure']),"Y-m-d");


 
$query = "SELECT * FROM `tblcarrental`";


}elseif(isset($_GET['q'])){

    $query = "SELECT * FROM `tblcarrental`";

   
 
  
  }

   $accomodation = ' | ' . $_GET['q'];
  ?>



<div id="accom-title"  > 
    <div  class="pagetitle">   
            <h1  ><?php print $title ; ?>
                <small><?php print  $accomodation; ?></small>
                 
            </h1> 
        </div> 
  </div>

<div id="bread">
   <ol class="breadcrumb">
      <li><a href="<?php echo WEB_ROOT ;?>index.php">Home</a>
      </li>
      <li class="active"><?php print $title  ; ?></li>
      <li  style="color: #02aace; float:right"> <?php print  $msg; ?></li>
  </ol> 
</div>
   
  <div id="main" class="site-main clr"> 
    <div id="primary" class="content-area clr"> 
        <div id="content-wrap">
          <!--  <h1 class="page-title"><?php print $title . $accomodation; ?></h1>  --> 
           
           <div class="col-lg-9">
            <div class="tabs-wrapper clr"> 
               <div class="row"> 
               
                <?php 
 
                  $arrival =  $_SESSION['arrival'];
                  $departure =  $_SESSION['departure'] ;

                   $mydb->setQuery($query);
                   $cur = $mydb->loadResultList(); 
                      foreach ($cur as $result) { 


// filtering the CARs
 // ======================================================================================================
                    $mydb->setQuery("SELECT * FROM `tblreservation`     WHERE ((
                        '$arrival' >= DATE_FORMAT(`ARRIVAL`,'%Y-%m-%d')
                        AND  '$arrival' <= DATE_FORMAT(`DEPARTURE`,'%Y-%m-%d')
                        )
                        OR (
                        '$departure' >= DATE_FORMAT(`ARRIVAL`,'%Y-%m-%d')
                        AND  '$departure' <= DATE_FORMAT(`DEPARTURE`,'%Y-%m-%d')
                        )
                        OR (
                        DATE_FORMAT(`ARRIVAL`,'%Y-%m-%d') >=  '$arrival'
                        AND DATE_FORMAT(`ARRIVAL`,'%Y-%m-%d') <=  '$departure'
                        )
                        )
                        AND CARID =".$result->CARID);

                  $curs = $mydb->loadResultList(); 
                     
                     $resNum = $result->OCARNUM - count($curs) ;
                         


                    $stats = $mydb->executeQuery();
                    $rows = mysqli_fetch_assoc($stats);
                    $status=$rows['STATUS'];

                     
                    //$availCAR = $result->CARNUM;


              if($resNum==0){

             if($status=='Confirmed'){
                $btn =  '<div style="margin-top:10px; color: rgba(0,0,0,1); font-size:16px;"><strong>Fully Reserve!</strong></div>';
                 $img_title = ' 

                           <figcaption class="img-title-active">
                                <h5>Reserve!</h5>    
                            </figcaption>


                    ';
              }elseif($status=='Checkedin'){
                $btn =  '<div style="margin-top:10px; color: rgba(0,0,0,1); font-size:16px;"><strong>Fully Book!</strong></div>';
                 $img_title = ' 

                           <figcaption class="img-title-active">
                                <h5>Book!</h5>    
                            </figcaption>


                    ';
              }else{
                 $btn =  '
                 <div class="form-group">
                        <div class="row">
                          <div class="col-xs-12 col-sm-12">
                            <input type="submit" class="btn dragonhouse-btn  btn-primary btn-sm" id="booknow" name="booknow" onclick="return validateBook();" value="Book Now!"/>
                                                   
                           </div>
                        </div>
                      </div>';
                    $img_title = ' 

                           <figcaption class="img-title">
                                <h5>'.$result->CAR . ' <br/> '.$result->CARDESC.'  <br/>
                                 
                                 RENT: $'.$result->RENT.'</h5>    
                            </figcaption>


                    ';
                   
              }
                   
              }else{
                $btn =  '
                 <div class="form-group">
                        <div class="row">
                          <div class="col-xs-12 col-sm-12">
                            <input type="submit" class="btn dragonhouse-btn  btn-primary btn-sm" id="booknow" name="booknow" onclick="return validateBook();" value="Book Now!"/>
                                                   
                           </div>
                        </div>
                      </div>';
                    $img_title = ' 
     <figcaption class="img-title">
                                <h5>'.$result->CAR . ' <br/> '.$result->CARDESC.'  <br/>
                                 
                                 RENT: $'.$result->RENT.'</h5>    
                            </figcaption>



                    ';
                   

              }      
// ============================================================================================================================


 
                ?>
                 <form method="POST" action="index.php?p=accomodation">
                 <input type="hidden" name="RENT" value="<?php echo $result->RENT ;?>">
                  <input type="hidden" name="CARID" value="<?php echo $result->CARID ;?>">

                  <div id="CARimg" class="col-md-4 img-portfolio">
                    <div  class="wrapper clearfix">
                    <a href="#" >
                        <figure class="gallery-item ">
                   
                            <img class="img-responsive img-hover"  src="<?php echo WEB_ROOT .'admin/mod_carrental/'.$result->CARIMAGE; ?>">
                    
                             <!-- <?php echo $img_title; ?> -->
                            <figcaption class="img-title-active">
                                <h5>  &euro; <?php echo $result->RENT ;?></h5>    
                            </figcaption>

             
                        </figure> 
                       </a>  
                    </div> 
                      <div class="descCAR">
                        <ul><h4><p><?php echo $result->CAR ;?></p></h4>
                        <li><?php echo $result->CARDESC ;?></li>
                          <li>Remaining CARs :<?php echo  $resNum ;?></li>   
                        <li style="list-style:none;"><?php echo $btn ;?></li>  
                        </ul>
                    </div>
                </div> 

              </form>
                <?php  
 
                 }

                ?>

              </div> 
          </div>
    
         </div>

             <div class="col-lg-3"> 
        <div class="row">
          <?php  require_once('sidebar.php') ; ?>
        </div>
      </div>
    
    </div>
    </div>
   
  </div>

 