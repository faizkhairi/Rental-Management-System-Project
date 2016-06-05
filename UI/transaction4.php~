<?php

$conn = oci_connect('pwu','123toomany', '//dbserver.engr.scu.edu/db11g');
if($conn) {
  $p = $_GET['city'];
  $q = $_GET['rooms'];
  $r = $_GET['range_rent'];
  $curs = "";
  $stid = oci_parse($conn, "begin :n := prop_names_4(:p, :q, :r); end;");
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