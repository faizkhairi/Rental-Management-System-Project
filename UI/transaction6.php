<?php

$conn = oci_connect('pwu', password, '//dbserver.engr.scu.edu/db11g');
if($conn) {
  $p = $_GET['propertynumber'];
  $q = $_GET['firstname'];
  $r = $_GET['lastname'];
  $s = $_GET['homephone'];
  $t = $_GET['workphone'];
  $u = $_GET['friendfirstname'];
  $v = $_GET['friendlastname'];
  $w = $_GET['friendphone'];
  $x = $_GET['startdate'];
  $y = $_GET['enddate'];

  $curs = "";
  $stid = oci_parse($conn, 'begin :n := create_lease_agreement(:p, :q, :r, :s, :t, :u, :v, :w, :x, :y); end;');
  oci_bind_by_name($stid, ':n', $curs, 500);
  oci_bind_by_name($stid, ':p', $p);
  oci_bind_by_name($stid, ':q', $q);
  oci_bind_by_name($stid, ':r', $r);
  oci_bind_by_name($stid, ':s', $s);
  oci_bind_by_name($stid, ':t', $t);
  oci_bind_by_name($stid, ':u', $u);
  oci_bind_by_name($stid, ':v', $v);
  oci_bind_by_name($stid, ':w', $w);
  oci_bind_by_name($stid, ':x', $x);
  oci_bind_by_name($stid, ':y', $y);

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
