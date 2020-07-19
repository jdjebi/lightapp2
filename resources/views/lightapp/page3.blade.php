@extends('lightapp.page2')

@section('content')
<style media="screen">
  .font-20{
    font-size: 20px
  }
  .font-40{
    font-size: 40px
  }
  .action-pad-item{
    width: 250px
  }
  .action-pad-item-link:hover{
    text-decoration: none;
    color: inherit;
  }
</style>
<style media="screen">
  .m-10{
    margin-top: 10em
  }
</style>
<style type="text/css">
  
.iot-box{
  margin: 5px
}

.iot-device{
  width: 500px;
  display: flex;
  align-items: center;
  padding: 20px;
  flex-wrap: wrap;
  margin: 5px
}

.iot-device-control{
  padding-left: 20px;
  padding-right: 20px;
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

.iot-device-body2{
  display: flex;
  text-align: center;
  font-weight: 100
}

.iot-device-body2 .data{
  font-weight: 500
}

.iot-device-body2 .stats{
  margin-right: 20px;
  font-size: 1.2em;
}

.iot-device-ico{
  margin-right: 20px
}

</style>

<div class="container-fluid">
  <div class="row">
    @include('lightapp.side_nav')

    <main role="main" class="mt-4 col-md-9 ml-sm-auto col-lg-10 px-md-4">
      @yield('main-content')
    </main>

  </div>
</div>

@endsection
