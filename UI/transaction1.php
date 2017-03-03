<?php

$conn = oci_connect('pwu', password, '//dbserver.engr.scu.edu/db11g');
if($conn) {
  $p = $_GET['branchNo'];
  
  $curs = "";
  $stid = oci_parse($conn, 'begin :r := get_rental_properties(:p); end;');
  oci_bind_by_name($stid, ':p', $p);
  oci_bind_by_name($stid, ':r', $curs, 1000);


  oci_execute($stid);
  echo $curs;

} else {
       $e = oci_error;
       print '<br> connection failed:';
       print htmlentities($e['message']);
       exit;
}
OCILogoff($conn);
?>
