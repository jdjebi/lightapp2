@extends('lightapp.page3')

@section('main-content')

  <div>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.hub') }}">Tableau de bord</a></li>
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.batiment') }}">Batiments</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('lightapp.batiment.dp') }}">Direction pédagogique</a></li>
      </ol>
    </nav>
  </div>

<div class="text-center h2 mb-4 text-light-tech">Direction de la Pédagogique</div>

<div class="d-flex flex-wrap">

  <div class="iot-box border rounded">
    <div class="iot-device">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ asset('asset/imgs/app/computer.svg') }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
          Ordinateur de Bureau 
        </div>
        <div class="iot-device-items">
          <span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
          <span class="wifi-indicator text-primary active"><i class="fa fa-1x fa-wifi"></i></span>
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#control-laptop" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">0</div>
            <div>Problème</div>
          </div>
          <div class="stats">
            <div class="data">600 kWh</div>
            <div>Conso</div>
          </div>
          <div class="stats">
            <div class="data">Allumé</div>
            <div>Etat</div>
          </div>
        </div>
      </div>
    </div>
    <div class="iot-device-control">
      <div id="control-laptop" class="collapse p-2">
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
          Neon de couloir 
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
            <div class="data">50%</div>
            <div>Intensité</div>
          </div>
        </div>
      </div>
    </div>
    <div class="iot-device-control">
      <div id="control-neon" class="collapse p-2">
        <hr>
        <form>
          <div class="form-group">
            <label for="formControlRange">Réglage de l'intensité</label>
            <input type="range" value="50" class="form-control-range" id="formControlRange">
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="iot-box border rounded">
    <div class="iot-device ">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ asset('asset/imgs/app/sensor_presence.svg') }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
          Détecteur de présence
        </div>
        <div class="iot-device-items">
          <span class="text-success status-device active"><i class="fa fa-1x fa-circle"></i></span>
          <span class="text-primary wifi-indicator active"><i class="fa fa-1x fa-wifi"></i></span>
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#presence-sensor" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-sliders-h"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">Vide</div>
            <div>Couloir</div>
          </div>
          <div class="stats">
            <div class="data"><span id="temperature-sensor">30</span>cm</div>
            <div>Seuil Proximité</div>
          </div>
        </div>
      </div>
    </div>
    <div class="iot-device-control ">
        <div id="presence-sensor" class="collapse p-2">
          <hr>
          <form class="mt-2 form-inline">
            <input type="text" class="form-control form-control-sm mr-2" value="28">
            <button class="btn btn-sm btn-primary">Envoyer</button>
          </form>
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