<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>
      @if(isset($title))
        {{ $title }}
      @elseif(isset($title2))
        LightApp - {{ $title2 }}
      @else
        LightApp
      @endif
    </title>
    <link rel="stylesheet" href="{{ asset('asset/css/cerulean/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('asset/css/fontawsome/all.css') }}">
    <link rel="stylesheet" href="{{ asset('asset/mobile/css/main.css') }}">
    <link rel="stylesheet" href="{{ asset('asset/css/resac/resac.css') }}">
    <style media="screen">
      body{
          padding-top: 64px
      }
    </style>
    @yield('extras_style')
  </head>
  <body>
    @yield('content')
    <script src="{{ asset('asset/js/jquery-3.4.1.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('asset/js/bootstrap.min.js') }}" type="text/javascript"></script>
    @yield('scripts')
  </body>
</html>
