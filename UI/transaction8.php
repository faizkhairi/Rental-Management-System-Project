<?php

$conn = oci_connect('pwu','123toomany', '//dbserver.engr.scu.edu/db11g');
if($conn) {
  
  $curs = "";
  $stid = oci_parse($conn, 'begin :r := more_than_one_rental(); end;');
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