#!/usr/bin/php
<?php
  $i = 1;
  date_default_timezone_set("Europe/Paris");
  $pattern = array('/([Jj]anvier)/','/[Ff][ée]vrier/','/([Mm]ars)/','/[Aa]vril/','/[Mm]ai/','/[Jj]uin/','/[Jj]uillet/','/[Aa]o[ûu]t/','/([Ss]eptembre)/','/[Oo]ctobre/','/[Nn]ovembre/','/[Dd][ée]cembre/');
  if ($argc == 2)
  {
    $date = $argv[1];
    if (preg_match('/^(([Ll]undi)|([Mm]ardi)|([Mm]ercredi)|([Jj]eudi)|([Vv]endredi)|([Ss]amedi)|([Dd]imanche)) ([1-3]?[0-9]{1}) (([Ss]eptembre)|([Mm](?:ai|ars))|([Aa](?:o[ûu]t|vril))|([Nn]ovembre)|([Jj](?:anvier|uillet|uin))|([Ff][ée]vrier)|([Oo]ctobre)|([Dd][ée]cembre)) (\\d{1,4}) ([0-2]{1}[0-9]{1})\\:([0-2]{1}[0-9]{1})\\:([0-2]{1}[0-9]{1})$/', $date) !== FALSE)
      {
        $date = explode(' ', $date);
        foreach($pattern as $elem)
          {
            if (($tr = preg_match($elem, $date[2])) == TRUE)
              break 1;
            $i++;
          }
          echo $i."\n";
        $datet = explode(':', $date[4]);
        echo "hour : ".$datet[0]."\t minutes".$datet[1]." second =".$datet[2]."\n";
                echo "month : ".$i."\t day ".$date[1]." yea =".$date[3]."\n";

        $ti = mktime($datet[0], $datet[1],$datet[2], $i, $date[1], $date[3]);
        echo "$ti\n";

      }
      else {
        echo "Wrong Format\n";
      }
    }
    else {
      echo "\n";
    }
?>
