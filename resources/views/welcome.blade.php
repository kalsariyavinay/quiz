@extends('layouts.client')
@section('content')

<body class="antialiased">
    <div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center py-4 sm:pt-0">
      
            <h1 class="text-center">Welcome to Quizzes!</h1><br>
            <div class="container">
                <h3 class="text-center"> Extend your campaign with a wonderful quiz. <br>  Assign points to answers and show messages or <br> redirect users to pages based on the user-score.</h3>
            </div>
            <div class="container">
                <div class="row"> 
                    <div class="col-lg-12 text-center"> 
                        <a href="{{route('client.test')}}" class=" btn btn-lg btn-block mt-3 rounded-pill" style="background:#ffd549"><b>Qize</b></a>
                    </div>

                    <div class="col-lg-12 text-center"> 
                        <a href="{{route('ask')}}" class=" btn btn-lg btn-block mt-3 rounded-pill" style="background:#ffd549"><b>Ask Question</b></a>
                    </div>
                    </div>
                </div>
            </div>          
        </div>
    </body>
@endsection
    

           