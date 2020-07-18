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

<div class="container-fluid">
  <div class="row">
    @include('lightapp.side_nav')

    <main role="main" class="mt-4 col-md-9 ml-sm-auto col-lg-10 px-md-4">
      @yield('main-content')
    </main>

  </div>
</div>

@endsection
