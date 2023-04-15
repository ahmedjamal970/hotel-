  <?php
$msg = "";

 

 if(!isset($_SESSION['arrival'])){
   $_SESSION['arrival'] = date_create('Y-m-d');
 }
if(!isset($_SESSION['departure'])) {
  $_SESSION['departure'] =  date_create('Y-m-d') ;
}


if(isset($_POST['booknowA'])){ 


 $days = dateDiff($_POST['arrival'],$_POST['departure']); 

if($days <= 0){
  $msg = 'Available room today';
}else{
   $msg =  'Available room From:'.$_POST['arrival']. ' To: ' .$_POST['departure'];

} 


$_SESSION['arrival'] = date_format(date_create( $_POST['arrival']),"Y-m-d");
$_SESSION['departure'] =date_format(date_create($_POST['departure']),"Y-m-d");


 
 $query = "SELECT * FROM tblhotel ";
    

}elseif(isset($_GET['q'])){

    $query = "SELECT * FROM tblhotel ";
  
  }else{
$query = "SELECT * FROM tblhotel ";  }

   $accomodation = ' | ' . @$_GET['q'];
  ?>
  <div class="row">
        <div class="col">
          <div class="card-columns">

 
               
                <?php 
 
                  $arrival =  $_SESSION['arrival'];
                  $departure =  $_SESSION['departure'] ;

                   $mydb->setQuery($query);
                   $cur = $mydb->loadResultList(); 
                      foreach ($cur as $result) { 


// filtering the rooms
 // ======================================================================================================
                   
                    $mydb->setQuery("SELECT * FROM tblhotel ");

                    

                     $curs = $mydb->loadResultList(); 
                     
                          


                 
                     
                    //$availRoom = $result->ROOMNUM;


 
// ============================================================================================================================

 
                ?>



                
                <br>
                 <form method="POST" action="index.php?p=accomodation">
                   <input type="hidden" name="HOTELID" value="<?php echo $result->HOTELID ;?>">

                      <div class="card">
                        <img class="card-img-top"   src="<?php echo WEB_ROOT .'admin/mod_hotel/'.$result->HOTELIMAGE; ?>" alt="Hotel image description"  height="250px" width="100px">
                        <div class="card-body">
                        	 <div class="rooms_title"><a href="index.php?p=rooms&roomNO=<?php echo $result->HOTELID ;?>"><h2><?php echo $result->HOTEL ;?>  </h2></a></div> 
                         
                            </div>
                         </div>
                      
                  

                  </form>

        
                <?php  
 
                 }

                ?>

              </div> 
          </div>
    
    
 </div>