<?php

$conn = oci_connect('pwu','123toomany', '//dbserver.engr.scu.edu/db11g');
if($conn) {
  $p = $_GET['town'];
  
  $curs = "";
  $stid = oci_parse($conn, "begin :r := get_average_rent(:p); end;");
  oci_bind_by_name($stid, ":r", $curs, 400);
  oci_bind_by_name($stid, ":p", $p);


  oci_execute($stid);

  echo $curs;

} else {
       $e = oci_error;
       print "<br> connection failed:";
       print htmlentities($e['message']);
       exit;
}
OCILogoff($conn);
?>