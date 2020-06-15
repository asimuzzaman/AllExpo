<?php
namespace App\Libraries;

use App\GeoTrack;

//This class contains static function and API key to populate DB based on Geo Info
class GeoTracker {
	private $apiKey; //API key for https://ipgeolocation.io/

	public function __construct($apiKey) {
		$this->apiKey = $apiKey;
	}

	//this method fetches data using API and populates Model
	public function populate() {
		$newIP = GeoTrack::whereNull('country')->get(); //getting all non populated IP entries

		foreach ($newIP as $value) {

			$location = $this->get_geolocation($this->apiKey, $value->addr);
			$decodedLocation = json_decode($location, true);

			//updating data in database
			GeoTrack::where('addr', $value->addr)->update([
				'continent' => $decodedLocation['continent_name']." (".$decodedLocation['continent_code'].")",
				'country' => $decodedLocation['country_name']." (".$decodedLocation['country_code2'].")",
				'org' => $decodedLocation['organization'],
				'isp' => $decodedLocation['isp'],
				'lang' => $decodedLocation['languages'],
				'currency' => $decodedLocation['currency']['name'],
				'timezone' => $decodedLocation['time_zone']['name']
			]);			
		}
	}

	private function get_geolocation($apiKey, $ip, $lang = "en", $fields = "*", $excludes = "") {
		$url = "https://api.ipgeolocation.io/ipgeo?apiKey=".$apiKey."&ip=".$ip."&lang=".$lang."&fields=".$fields."&excludes=".$excludes;
		$cURL = curl_init();

		curl_setopt($cURL, CURLOPT_URL, $url);
		curl_setopt($cURL, CURLOPT_HTTPGET, true);
		curl_setopt($cURL, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($cURL, CURLOPT_HTTPHEADER, array(
		  'Content-Type: application/json',
		  'Accept: application/json'
		));
		
		return curl_exec($cURL);
	}
}

?>