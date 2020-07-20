@extends('lightapp.page')

@section('extras_style')
<style media="screen">
  body{
    background-color: #f1f3f6;
    background-image: url({{ asset('asset/imgs/intro/bgs/etu4.jpg') }});
    background-size: cover;
    background-repeat: no-repeat;
    border-color: transparent !important
  }
  @@media(max-width: 768px) {
    body{
      background-color: #fff;
      background-image: none
    }
    #login-box{
      border-color: transparent !important
    }
  }
</style>
@endsection

@section('content')

<div class="container">
  <div class="row">
    <div class="col-lg-6 d-flex align-items-center justify-content-center">
      <img class="resac-w-400" src="{{ asset('asset/imgs/logos/light-logo-white.png') }}" alt="">
    </div>
    <div class="col-lg-6">
      <div id="v-login" class="container mt-5">
        <div class="row justify-content-center p-2">
          <div id="login-box" class="col-lg-12 bg-white border rounded p-5">
            <form v-on:submit.prevent="onSubmit">
              @csrf
              <div class="text-center">
                <img class="text-center" src="{{ asset('asset/imgs/undraw/login.svg') }}" alt="" width="80px">
              </div>
              <h3 class="mt-3 mb-4 text-center text-muted">Bienvenue sur ECOTIC</h3>
              <div v-if="is_error" id="error-box" class="alert alert-danger d-none">
                @{{ error_message }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="form-group mb-4 mt-5">
                <input class="form-control" type="text" name="email" id="email" placeholder="Adresse E-mail">
              </div>
              <div class="form-group">
                <input id="pass-input" class="form-control" type="password" name="password" id="password" placeholder="Mot de passe">
              </div>
              <div class="mt-4">
                <button id="submit-btn" class="btn btn-block text-white" name="button" v-bind:disabled="submit_btn" style="background-color: #009688;">
                <span v-if="!submit_btn">Connexion</span>
                <div v-if="submit_btn" class="loader spinner-border text-white spinner-border-sm d-none" role="status">
                  <span class="sr-only">Loading...</span>
                </div>
                </button>
                <div class="text-center mt-3 small">
                  <a href="{{ route("app.reset.email") }}">Mot de passe oublié</a>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection

@section('scripts')
<script src="asset/js/vue.js" type="text/javascript"></script>
<script type="text/javascript">
var url_profil = "{{ $default_redirect_url }}";
var url_redirect = "{{ $redirect_url }}" ;

var vm = new Vue({
  el: "#v-login",
  data:{
    url: "{{ route('api_login') }}",
    submit_btn: false,
    is_error: false,
    error_message: "test",
    pass_input: $('#pass-input')
  },
  beforeCreate: function(){
    $('#submit-btn .loader').removeClass("d-none");
    $('#error-box').removeClass("d-none");
  },
  methods:{
    onSubmit: function(event){
      this.submit_btn = true;
      this.submit(event.target);
    },
    submit: function(form){
      var vm = this;
      var form_data = $(form).serializeArray();
      $.post({
        url: vm.url,
        data: form_data,
        dataType: 'json',
        success: vm.onSuccess,
        error: vm.onError
      });
    },
    onSuccess: function(data,status){
      this.submit_btn = false;
      if(data.is_error){
        this.is_error = true;
        this.error_message = data.errors.messages.global;
        $('#pass-input').val("");
      }else{
        if(url_redirect != "")
          url = url_redirect;
        else
          url = url_profil;

        window.location = url;
      }
    },
    onError: function (data,status,error){
      alert("Une erreur c'est produite. Contactez l'administrateur.");
      console.log(error);
      $('#pass-input').val("");
      this.submit_btn = false;
    },
  }
});
</script>
@endsection
