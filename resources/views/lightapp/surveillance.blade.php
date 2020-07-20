@extends('lightapp.page3')

@section('main-content')


<style type="text/css">
  
.iot-device{
  display: block;
}

.bg-light-tech {
    background-color: #f55942;
}

.breadcrumb-item a{
  color: #f55942;
  font-weight: 500;
}

a{
  color: #f55942;
  font-weight: 500;
}

.sidebar .nav-link.active{
  color: #f55942;
}


</style>


<div>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.hub') }}">Tableau de bord</a></li>
      <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('appareils.index') }}">Surveillance</a></li>
    </ol>
  </nav>
</div>


<div class="d-flex justify-content-center align-items-center mt-5 shadow-lg p-3 mb-5 bg-white rounded" style="height: 400px">

  <div class="">
    <div class="text-center p-3">
      <img src="{{ asset('asset/imgs/app/smoke2.svg') }}" width="150"> 
    </div>
    <div class="h3">Alerte incendie dans la cuisine !</div>
  </div>

</div>

<style type="text/css">
  
  .h3  {
   animation-duration: .8s;
   animation-name: clignoter;
   animation-iteration-count: infinite;
   transition: none;
  color: 
}
@keyframes clignoter {
  0%   { color:#000000; }
  40%   {color:#F1A200; }
  100% { opacity:#000000; }
}
</style>

@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('asset/js/extras/sweetalert2.all.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('asset/js/error_modal.js') }}"></script>
<script type="text/javascript" src="{{ asset('asset/js/lightapp/esp.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
@endsection