<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">


  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>{{ config('app.name', 'Laravel') }}</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="{{asset('backend/feather/feather.css')}}">
  <link rel="stylesheet" href="{{asset('backend/vendors/mdi/css/materialdesignicons.min.css')}}">
  <link rel="stylesheet" href="{{asset('backend/vendors/ti-icons/css/themify-icons.css')}}">
  <link rel="stylesheet" href="{{asset('backend/vendors/typicons/typicons.css')}}">
  <link rel="stylesheet" href="{{asset('backend/vendors/simple-line-icons/css/simple-line-icons.css')}}">
  <link rel="stylesheet" href="{{asset('backend/vendors/css/vendor.bundle.base.css')}}">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="{{asset('backend/vendors/datatables.net-bs4/dataTables.bootstrap4.css')}}">
  <link rel="stylesheet" href="{{asset('backend/select.dataTables.min.css')}}">
  {{-- auth link --}}
  <link rel="dns-prefetch" href="//fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
  <!-- Styles -->
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="{{asset('backend/css/vertical-layout-light/style.css')}}">
  <!-- endinject -->
  <link rel="shortcut icon" href="{{asset('backend/images/favicon.png')}}" />


 <!-- plugins:js -->
 <script src="{{asset('backend/vendors/js/vendor.bundle.base.js')}}"></script>
 <!-- endinject -->
 <!-- Plugin js for this page -->
 <script src="{{asset('backend/vendors/chart.js/Chart.min.js')}}"></script>
 <script src="{{asset('backend/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js')}}"></script>
 <script src="{{asset('backend/vendors/progressbar.js/progressbar.min.js')}}"></script>
 <script src="{{ asset('js/app.js') }}" defer></script>
 <!-- End plugin js for this page -->
 <!-- inject:js -->
 <script src="{{asset('backend/js/off-canvas.js')}}"></script>
 <script src="{{asset('backend/js/hoverable-collapse.js')}}"></script>
 <script src="{{asset('backend/js/template.js')}}"></script>
 <script src="{{asset('backend/js/settings.js')}}"></script>
 <script src="{{asset('backend/js/todolist.js')}}"></script>
 <!-- endinject -->
 <!-- Custom js for this page-->
 <script src="{{asset('backend/js/jquery.cookie.js')}}" type="text/javascript"></script>
 <script src="{{asset('backend/js/dashboard.js')}}"></script>
 <script src="{{asset('backend/js/Chart.roundedBarCharts.js')}}"></script>
 <!-- End custom js for this page-->

<body>
    <div class="wrapper">
   
        @include('admin.inn.nav')
        @include('admin.inn.sp')
        @include('admin.inn.sidebar')
        @yield('content') 
        @include('admin.inn.footer')

    </div>
    <!-- ./wrapper -->

    <script>
        function showFrontendAlert(type, message){
            Swal.fire({
                position: 'center',
                icon: type,
                title: message,
                showConfirmButton: false,
                timer: 1500
            })
        }

    </script>
    @if(Session::has('message'))
        <script>
            showFrontendAlert('{{ Session::get("errormsg") }}', '{{ Session::get("message") }}');
        </script>
    @endif
    
</body>

</html>




   