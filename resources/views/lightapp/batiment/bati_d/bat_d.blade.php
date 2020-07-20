@extends('lightapp.page3')

@section('main-content')

  <div>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.hub') }}">Tableau de bord</a></li>
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.batiment') }}">Batiments</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('lightapp.batiment.dp') }}">Batiment D</a></li>
      </ol>
    </nav>
  </div>

<div class="text-center h2 mb-4 text-light-tech">Batiment D</div>


<h4 id="salle_eau" class="mt-3 text-light-tech">Salle d'eau</h4>
<hr>
<div class="d-flex flex-wrap">

  <div class="iot-box border rounded">
    <div class="iot-device">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ asset('asset/imgs/app/sink.svg') }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
          Robinet Salle d'eau
        </div>
        <div class="iot-device-items">
          <span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
          <span class="wifi-indicator text-primary active"><i class="fa fa-1x fa-wifi"></i></span>
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#control-sink" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">0</div>
            <div>Problème</div>
          </div>
          <div class="stats">
            <div class="data">30 Lh</div>
            <div>Conso en eau</div>
          </div>
        </div>
      </div>
    </div>
  </div>

    <div class="iot-box border rounded">
    <div class="iot-device">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ asset('asset/imgs/app/urinal.svg') }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
          Urinoire Salle d'eau
        </div>
        <div class="iot-device-items">
          <span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
          <span class="wifi-indicator text-muted active"><i class="fa fa-1x fa-wifi"></i></span>
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#control-urinal" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">0</div>
            <div>Problème</div>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>

<h4 id="classe" class="mt-3 text-light-tech">Salle de classe</h4>
<hr>
<div class="d-flex flex-wrap mb-5">
  <div class="iot-box border rounded">
    <div class="iot-device">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ asset('asset/imgs/app/projector.svg') }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
          Projecteur SRIT2A
        </div>
        <div class="iot-device-items">
          <span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
          <span class="text-primary wifi-indicator active"><i class="fa fa-1x fa-wifi"></i></span>
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#control-projector" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">0</div>
            <div>Problème</div>
          </div>
          <div class="stats">
            <div class="data">Allumé</div>
            <div>Etat</div>
          </div>
        </div>
      </div>
    </div>
    <div class="iot-device-control">
      <div id="control-projector" class="collapse p-2">
        <hr>
        <a href=""><i class="fa fa-1x fa-power-off"></i> Allumer ou éteindre</a>
      </div>
    </div>
  </div>

  <div class="iot-box border rounded">
    <div class="iot-device ">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ asset('asset/imgs/app/air-conditioner.svg') }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
          Climatiseur SRIT2A
        </div>
        <div class="iot-device-items">
          <span class="text-success status-device active"><i class="fa fa-1x fa-circle"></i></span>
          <span class="text-primary wifi-indicator active"><i class="fa fa-1x fa-wifi"></i></span>
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#control-air-conditioner" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">2</div>
            <div>Quantité</div>
          </div>
          <div class="stats">
            <div class="data">0</div>
            <div>Problème</div>
          </div>
          <div class="stats">
            <div class="data"><span id="control-air-conditioner">Allumé</span></div>
            <div>Etat</div>
          </div>
        </div>
      </div>
    </div>
    <div class="iot-device-control ">
        <div id="control-air-conditioner" class="collapse p-2">
          <hr>
          <a href=""><i class="fa fa-1x fa-power-off"></i> Allumer ou éteindre</a>
        </div>
      </div>
  </div>

  <div class="iot-box border rounded">
    <div class="iot-device">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ asset('asset/imgs/app/eco-light.svg') }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
          Neon SRIT2A
        </div>
        <div class="iot-device-items">
          <span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
          <span class="text-primary wifi-indicator active"><i class="fa fa-1x fa-wifi"></i></span>
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#control-neon" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">0</div>
            <div>Problème</div>
          </div>
          <div class="stats">
            <div class="data">6</div>
            <div>Quantité</div>
          </div>
          <div class="stats">
            <div class="data">Allumé</div>
            <div>Etat</div>
          </div>
        </div>
      </div>
    </div>
    <div class="iot-device-control">
      <div id="control-neon" class="collapse p-2">
        <hr>
        <a href=""><i class="fa fa-1x fa-power-off"></i> Allumer ou éteindre</a>
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

  var esp_ip_get_temp_cuisine = ESP_IP + "/cuisine/temperature/get/";
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