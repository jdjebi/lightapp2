@extends('lightapp.page3')

@section('main-content')


<style type="text/css">
  
.iot-device{
  display: block;
}
</style>
  <div>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.hub') }}">Tableau de bord</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('appareils.index') }}">Appareils</a></li>
      </ol>
    </nav>
  </div>

<div class="text-center h2 mb-4 text-light-tech">{{ count($appareils) }} Appareils</div>


@foreach($appareils as $appareil)

<div class="d-flex flex-wrap">
  <div class="iot-box">
    <div class="iot-device">
      <div class="iot-device-ico">
        <img class="resac-w-100" src="{{ $appareil->icone }}">
      </div>
      <div class="iot-device-body">
        <div class="iot-device-title">
             {{ $appareil->nom }}
        </div>
        <div class="iot-device-items mt-3">
          <span class="text-success status-device"><i class="fa fa-1x fa-circle"></i></span>
          @if($appareil->control)
          <span class="text-primary wifi-indicator active"><i class="fa fa-1x fa-wifi"></i></span>
          @endif
          <span class="text-muted"><a class="text-dark" data-toggle="collapse" href="#device--control-{{ $appareil->id }}" role="button" aria-expanded="false" aria-controls="temp-sensor"><i class="fa fa-1x fa-cog"></i></a></span>
        </div>
        <hr>
        <div class="iot-device-body2">
          <div class="stats">
            <div class="data">{{ $appareil->quantite }}</div>
            <div>Quantité</div>
          </div>
          <div class="stats">
            <div class="data">{{ $appareil->conso }} {{ $appareil->unite }}</div>
            <div>Conso unitaire</div>
          </div>
          <div class="stats">
            <div class="data">{{ $appareil->conso_total() }} {{ $appareil->unite }}</div>
            <div>Conso total</div>
          </div>
        </div>
      </div>
    </div>
    <div class="iot-device-control">
      <div id="device--control-{{ $appareil->id }}" class="collapse p-2">
        <hr>
        <a href=""><i class="fa fa-1x fa-power-off"></i> Allumer ou éteindre</a>
      </div>
    </div>
  </div>
  <div>
    <canvas id="device-chart-{{ $appareil->id }}" width="400" height="300"></canvas>
  </div>
</div>

<hr>

@endforeach


@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('asset/js/extras/sweetalert2.all.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('asset/js/error_modal.js') }}"></script>
<script type="text/javascript" src="{{ asset('asset/js/lightapp/esp.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<script type="text/javascript">


@foreach($appareils as $appareil)

@if($appareil->type == "device")

var ctx = document.getElementById('device-chart-{{ $appareil->id }}').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: ['Lundi', 'Mardi', 'Mercredi'],
        datasets: [{
            label: 'Conso moyenne par heure sur 3 jours',
            backgroundColor: '#009688',
            borderColor: '#009688',
            data: {{ $appareil->conso_data() }}
        }]
    },

    // Configuration options go here
    options: {}
});

@endif

@endforeach


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


// setInterval(interval_get_temperature_cuisine, 3000);
  
</script>
@endsection