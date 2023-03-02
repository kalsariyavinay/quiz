<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
      <li class="nav-item">
        <a class="nav-link" href="{{route('dashboard')}}">
          <i class="mdi mdi-grid-large menu-icon"></i>
          <span class="menu-title">Dashboard</span>
        </a>
      </li>
      <li class="nav-item nav-category">Quize</li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
          <i class="menu-icon mdi mdi-floor-plan"></i>
          <span class="menu-title">Quiz add</span>
          <i class="menu-arrow"></i> 
        </a>
        <div class="collapse" id="ui-basic">
          <ul class="nav flex-column sub-menu">

            <li class="nav-item">
              <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                  <span>{{ __('User Management') }}</span>
              </a>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                  <div class="bg-white py-2 collapse-inner rounded">
                      <a class="collapse-item {{ request()->is('admin/permissions') || request()->is('admin/permissions/*') ? 'active' : '' }}" href=""> <i class="fa fa-briefcase mr-2"></i> {{ __('Permissions') }}</a>
                      <a class="collapse-item {{ request()->is('admin/roles') || request()->is('admin/roles/*') ? 'active' : '' }}" href=""><i class="fa fa-briefcase mr-2"></i> {{ __('Roles') }}</a>
                      <a class="collapse-item {{ request()->is('admin/users') || request()->is('admin/users/*') ? 'active' : '' }}" href=""> <i class="fa fa-user mr-2"></i> {{ __('Users') }}</a>
                  </div>
              </div>
          </li>

            <li class="nav-item {{ request()->is('admin/categories') || request()->is('admin/categories') ? 'active' : '' }}">
              <a class="nav-link" href="{{ route('admin.categories.index') }}">
                  <i class="fas fa-cogs"></i>
                  <span>{{ __('Category') }}</span></a>
          </li>

          <li class="nav-item {{ request()->is('admin/questions') || request()->is('admin/questions') ? 'active' : '' }}">
              <a class="nav-link" href="">
                  <i class="fas fa-cogs"></i>
                  <span>{{ __('Question') }}</span></a>
          </li>

          <li class="nav-item {{ request()->is('admin/options') || request()->is('admin/options') ? 'active' : '' }}">
              <a class="nav-link" href="">
                  <i class="fas fa-cogs"></i>
                  <span>{{ __('Option') }}</span></a>
          </li>

          <li class="nav-item {{ request()->is('admin/results') || request()->is('admin/results') ? 'active' : '' }}">
              <a class="nav-link" href="">
                  <i class="fas fa-cogs"></i>
                  <span>{{ __('Result') }}</span></a>
          </li>


          </ul>
        </div>
      </li>
     
    </ul>
  </nav>