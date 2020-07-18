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
      <span>Patrimoine</span>
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
          <i class="fa fa-store-alt"></i>
          Salles
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">
          <i class="fa fa-toolbox"></i>
          Appareils
        </a>
      </li>
    </ul>
  </div>
</nav>
