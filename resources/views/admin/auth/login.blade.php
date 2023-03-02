@extends('layouts.app')
@section('content')

<div class="container-scroller ">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5 rounded-circle" style="background-color:#2f386a52">
                        <h2 class="brand-text text-primary text-center ms-1">Admin Login</h2>
                        <form class="auth-login-form mt-2" action="{{route('adminLoginPost')}}" method="post">
                            @csrf

                            <div class="mb-2">
                                <label for="email" class="form-label ">Admin id</label>
                                <input type="text" class="form-control" placeholder="Admin id" id="email" name="email" value="{{old('email') }}" autofocus />
                                @if ($errors->has('email'))
                                    <span class="help-block font-red-min text-danger">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                            
                            <div class="mb-1">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label " for="password">Password</label>
                                    {{-- <a href="{{url('auth/forgot-password-basic')}}"><small>Forgot Password?</small></a> --}}
                                </div>
                                <div class="input-group input-group-merge form-password-toggle mb-3">
                                    <input type="password" class="form-control form-control-merge" placeholder="password" id="password" name="password"  autofocus />
                                    <span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
                                </div>
                                @if ($errors->has('password'))
                                <span class="help-block font-red-mint text-danger">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                                @endif
                            </div>
                            <div class="col-md-8 offset-md-5">
                                <button type="submit" class="btn btn-primary w-" tabindex="4">Sign in</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection