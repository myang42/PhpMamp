<?php
echo "On cherche le pseudo...";

	if (!isset($_SERVER['PHP_AUTH_USER']))
	{
		header('WWW-Authenticate: Basic');
		header('HTTP/1.0 401 Unauthorized');
		echo "fail\n";
	}
	else
	{
		echo "<p>, {$_SERVER['PHP_AUTH_USER']}.</p>";
		echo "<p>Votre mot de passe est {$_SERVER['PHP_AUTH_PW']}.</p>";
	}
	echo "On cherche le pseudo";
	// header('Location: http://www.mysite.com/someotherpage.php')
?>

<html><body>
	Bonjour <br />
</body></html>
