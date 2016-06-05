<?php

$conn = oci_connect('pwu','123toomany', '//dbserver.engr.scu.edu/db11g');
if($conn) {
  $p = $_GET['firstname'];
  $q = $_GET['lastname'];
  $r = $_GET['branch'];
 
  $curs = "";
  $stid = oci_parse($conn, "begin :n := rental_property_list(:p, :q, :r); end;");
  oci_bind_by_name($stid, ":n", $curs, 300);
  oci_bind_by_name($stid, ":p", $p);
  oci_bind_by_name($stid, ":q", $q);
  oci_bind_by_name($stid, ":r", $r);

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