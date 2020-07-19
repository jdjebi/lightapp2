@extends('lightapp.page3')

@section('main-content')

  <div>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('lightapp.domaine') }}">Tableau de bord</a></li>
        <li class="breadcrumb-item active" aria-current="page">Batiments</li>
      </ol>
    </nav>
  </div>

  <h2>Batiments</h2>
  <hr>

  <div class="m-5"></div>


  <div class="d-flex justify-content-around flex-wrap">

    <div id='action-pad'>
      <a class="action-pad-item-link" href="{{ route('lightapp.batiment.cuisine') }}">
        <div>
          <div class="border action-pad-item p-4">
            <div>
              <div class="text-center">
                <img class="resac-w-100" src="{{ asset('asset/imgs/app/restaurant.png') }}" alt="">
              </div>
            </div>
            <div class="text-center pt-3">
              <div class="text-muted">
                <span class="font-20">Restaurant</span>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>

    <div id='action-pad'>
      <a class="action-pad-item-link" href="{{ route('lightapp.batiment.dp') }}">
        <div>
          <div class="border action-pad-item p-4">
            <div>
              <div class="text-center">
                <img class="resac-w-100" src="{{ asset('asset/imgs/app/direction_p.svg') }}" alt="">
              </div>
            </div>
            <div class="text-center pt-3">
              <div class="text-muted">
                <span class="font-20">Direction P.</span>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>

    <div id='action-pad'>
      <a class="action-pad-item-link" href="{{ route('lightapp.batiment.dp') }}">
        <div>
          <div class="border action-pad-item p-4">
            <div>
              <div class="text-center">
                <img class="resac-w-100" src="{{ asset('asset/imgs/app/class2.svg') }}" alt="">
              </div>
            </div>
            <div class="text-center pt-3">
              <div class="text-muted">
                <span class="font-20">Batiment D</span>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>

  </div>
@endsection
