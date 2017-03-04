<?php

$conn = oci_connect('pwu', password, '//dbserver.engr.scu.edu/db11g');
if($conn) {
  $p = $_GET['firstname'];
  $q = $_GET['lastname'];
 
  $curs = "";
  $stid = oci_parse($conn, "begin :r := get_lease_agreement(:p, :q); end;");
  oci_bind_by_name($stid, ":r", $curs, 200);
  oci_bind_by_name($stid, ":p", $p);
  oci_bind_by_name($stid, ":q", $q);

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
