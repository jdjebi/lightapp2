@extends('lightapp.page3')

@section('main-content')

  <div>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.domaine') }}">Tableau de bord</a></li>
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.batiment') }}">Batiments</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('lightapp.batiment.cuisine') }}">Cuisine</a></li>
      </ol>
    </nav>
  </div>

<div class="d-flex flex-wrap ">

	<div>
		<div class="iot-device border rounded">
			<div class="iot-device-ico">
				<img class="resac-w-100" src="{{ asset('asset/imgs/app/frigo.svg') }}">
			</div>
			<div class="iot-device-body">
				<div class="iot-device-title">
					Réfrigérateur	
				</div>
				<div class="iot-device-items">
					<span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
					<span class="text-primary"><i class="fa fa-1x fa-thermometer-half"></i> -5°C </span>
					<span class="wifi-indicator text-muted"><i class="fa fa-1x fa-wifi"></i></span>
				</div>
				<hr>
				<div class="iot-device-body2">
					<div class="stats">
						<div class="data">0</div>
						<div>Problème</div>
					</div>
					<div class="stats">
						<div class="data">10w</div>
						<div>Conso</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div>
		<div class="iot-device border rounded">
			<div class="iot-device-ico">
				<img class="resac-w-100" src="{{ asset('asset/imgs/app/gaz.svg') }}">
			</div>
			<div class="iot-device-body">
				<div class="iot-device-title">
					Gazinière	
				</div>
				<div class="iot-device-items">
					<span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
					<span class="text-muted wifi-indicator"><i class="fa fa-1x fa-wifi"></i></span>
				</div>
				<hr>
				<div class="iot-device-body2">
					<div class="stats">
						<div class="data">0</div>
						<div>Problème</div>
					</div>
					<div class="stats">
						<div class="data">2/5L</div>
						<div>Approximation</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div>
		<div class="iot-device border rounded">
			<div class="iot-device-ico">
				<img class="resac-w-100" src="{{ asset('asset/imgs/app/smoke2.svg') }}">
			</div>
			<div class="iot-device-body">
				<div class="iot-device-title">
					Détecteur d'incendie
				</div>
				<div class="iot-device-items">
					<span class="text-success status-device active"><i class="fa fa-1x fa-circle"></i></span>
					<span class="text-primary wifi-indicator active"><i class="fa fa-1x fa-wifi"></i></span>
					<span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#temp-sensor" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
				</div>
				<hr>
				<div class="iot-device-body2">
					<div class="stats">
						<div class="data">RAS</div>
						<div>Alerte incendie</div>
					</div>
					<div class="stats">
						<div class="data"><span id="temperature-sensor">30</span>°C</div>
						<div>Température</div>
					</div>
				</div>
				<div id="temp-sensor" class="collapse">
					<form class="mt-2">
						<input type="text" class="form-control form-control-sm" value="28">
						<button class="mt-2 btn btn-block btn-sm btn-primary">Envoyer</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('asset/js/extras/sweetalert2.all.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('asset/js/error_modal.js') }}"></script>
<script type="text/javascript" src="{{ asset('asset/js/esp.js') }}"></script>

<script type="text/javascript">

function get_temperature_cuisine(){

	var esp_ip_get_temp_cuisine = ESP_PI + "/cuisine/temperature/get/";
	var temperature = "30";

	x = $.get({

		url: esp_ip_get_temp_cuisine,

		timeout: 10000,

		success: function(data){  
			// console.log(data);
			temperature = data;

			$("#temperature-sensor").text(temperature);	

			$('.wifi-indicator.active').each(function(){

	     		$(this).removeClass('text-danger');
	     		$(this).addClass("text-primary");

	     	});

	    },

	    error: function(data,status,error){

	    	console.log(status);
			console.log(error);

	     	$('.wifi-indicator.active').each(function(){

	     		$(this).removeClass(['text-muted', "text-primary"]);
	     		$(this).addClass('text-danger');

	     	});

	    },

	});


}


function interval_get_temperature_cuisine(){
	get_temperature_cuisine();	
}


setInterval(interval_get_temperature_cuisine, 3000);
	
</script>
@endsection