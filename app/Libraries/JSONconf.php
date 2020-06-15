<?php
/*
*	Configuration file handler helpder functions
*/
	if (!function_exists('getConfig')) {
		# code...
		function getConfig($fileName) {
			$path = base_path('storage/app/').$fileName;

			$data = json_decode(Storage::get($fileName), true);
			return $data;
		}
	}

	if (!function_exists('setConfig')) {
		# code...
		function setConfig($fileName, $data) {
			Storage::put($fileName, json_encode($data));
		}
	}
?>