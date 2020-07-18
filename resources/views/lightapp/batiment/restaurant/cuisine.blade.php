@extends('lightapp.page3')

@section('main-content')

<style type="text/css">
	
.iot-device{
	width: 500px;
	display: flex;
	align-items: center;
	padding: 30px
}

.iot-device-title{
	font-weight: bold;
	font-size: 1.2em
}

.iot-device-body{
	font-weight: bold;
	flex-grow: 1
}

.iot-device-items span{
	margin-right: 20px
}

</style>

  <div>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.domaine') }}">Tableau de bord</a></li>
        <li class="breadcrumb-item active" aria-current="page">Batiments</li>
      </ol>
    </nav>
  </div>

<div class="d-flex justify-content-around">

	<div>
		<div class="iot-device border rounded">
			<div class="">
				<img class="resac-w-100" src="{{ asset('asset/imgs/app/frigo.svg') }}">
			</div>
			<div class="iot-device-body">
				<div class="iot-device-title">
					Réfrigérateur	
				</div>
				<div class="iot-device-items">
					<span class="text-success"><i class="fa fa-1x fa-"></i></span>
					<span text-muted><i class="fa fa-1x fa-"></i></span>
					<span class="text-muted"><i class="fa fa-1x fa-wifi"></i></span>
				</div>
				<hr>
			</div>
		</div>
	</div>
	
</div>

@endsection