#!/usr/bin/php
<?php
	$tx = file_get_contents($argv[1]);
	// if (preg_match('/(\<a.*\>)([\w|\s]+)/', $tx, $matches) == TRUE)
	// {
	// 	$tx = preg_replace_callback('/(\<a.*\>)([\w| ]+)/',
	// 		function ($m){
	// 			return $m[1].strtoupper($m[2]);
	// 		},
	// 		$tx);
	// }
	if (preg_match('/\<(?:span|p)\>)(?=([^\<]+))/', $tx, $matches) == TRUE)
	 {
	 	print_r($matches);
		$tx = preg_replace_callback('/(\<(?:span|p)\>)(?=([^\<]+))/',
			function ($m){
				return $m[1].strtoupper($m[2]);
			},
			$tx);
	}
	if (preg_match('/(\<a.*\>)(?=([^\<]+))/', $tx, $matches) == TRUE)
	 {
		print_r($matches);
		$tx = preg_replace_callback('/(\<a.*\>(?=([^\<]+))/',
			function ($m){
				return $m[1].strtoupper($m[2]);
			},
			$tx);
	}
	if ( preg_match('/"([\w|\s]+)"/', $tx, $matches) == TRUE)
	{
		$tx = preg_replace_callback('/"([\w| ]+)"/',
			function ($m){
				return strtoupper($m[0]);
			},
			$tx);
	}
	echo $tx."\n";
?>
