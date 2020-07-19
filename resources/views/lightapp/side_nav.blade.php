<style type="text/css">
.sidebar .nav-link.active{
  color: #009688;
}
</style>
<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
  <div class="sidebar-sticky pt-3">

    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link active" href="{{ route('lightapp.domaine') }}">
          <i class="fa fa-tachometer-alt"></i>
          Tableau de bord
        </a>
      </li>
    </ul>

    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
      <span>Général</span>
      <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
        <i class="fa fa-plus"></i>
      </a>
    </h6>
    <ul class="nav flex-column mb-2">
      <li class="nav-item">
        <a class="nav-link" href="{{ route('lightapp.batiment') }}">
          <i class="fa fa-building"></i>
          Batiments
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">
          <i class="fa fa-laptop" style="color: #3f51b5"></i>
          Hyperviseur
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">
          <i class="fa fa-exclamation-triangle text-danger"></i>
          Signalement
        </a>
      </li>
    </ul>

    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
      <span>Batiments</span>
    </h6>
    <ul class="nav flex-column mb-2">
       <li class="nav-item">
        <a class="nav-link" href="{{ route('lightapp.batiment.cuisine') }}">
          <i class="fa fa-hamburger" style="color: #feb43b"></i> Restaurant
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{ route('lightapp.batiment.dp') }}">
          <i class="fa fa-hotel" style="color: #69a7ff"></i> Direction de la pédagogie
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="{{ route('lightapp.batiment.batd') }}#classe">
          <i class="fa fa-store-alt" style="color: #6d6413"></i> Salle de classe
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="{{ route('lightapp.batiment.batd') }}#salle_eau">
          <i class="fa fa-toilet-paper" style="color: #607d8b"></i> Salle d'eau
        </a>
      </li>

    </ul>
  </div>
</nav>
