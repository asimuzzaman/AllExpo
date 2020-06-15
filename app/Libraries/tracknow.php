<?php
	/*
	this file contains the IP tracker function to make it
	to make it available application wide
	*/
	if (!function_exists('getUserIP')) {
		//IP tracking starts here
		function getUserIP() {
			// Get real visitor IP behind CloudFlare network
			if (isset($_SERVER["HTTP_CF_CONNECTING_IP"])) {
					$_SERVER['REMOTE_ADDR'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
					$_SERVER['HTTP_CLIENT_IP'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
			}
			$client  = @$_SERVER['HTTP_CLIENT_IP'];
			$forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
			$remote  = $_SERVER['REMOTE_ADDR'];

			if(filter_var($client, FILTER_VALIDATE_IP))
			{
				$ip = $client;
			}
			elseif(filter_var($forward, FILTER_VALIDATE_IP))
			{
				$ip = $forward;
			}
			else
			{
				$ip = $remote;
			}

			return $ip;
		}
	}

	if (!function_exists('trackIP')) {
		/*
		Takes no @param
		@returns nothing
		gets current user IP and updaetes or insert IP and time accordingly
		*/
	    function trackIP(){
	        $addr = getUserIP();

	        if(isset($_COOKIE['client_ip'])) {
                \App\GeoTrack::updateOrCreate(
	            	['addr' => $addr],
	            	['last_login' => time()]
	            );
	        }
	        else { //totally new user
	            setcookie('client_ip', getUserIP(), time() + (86400 * 7), "/");

	            \App\GeoTrack::updateOrCreate(
	            	['addr' => $addr],
	            	['last_login' => time()]
	            );
	        }
	    }
	}
