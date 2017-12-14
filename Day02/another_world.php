#!/usr/bin/php
<?php
  $tx = trim($argv[1]);
  $count = 1;
  while ($count != 0)
      $tx = preg_replace('/  /',' ',$tx, -1, $count);
tx."\n";
?>
