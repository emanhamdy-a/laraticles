<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
        <script>window.laravel={ csrfToken:'{{ csrf_token() }}' }
        </script>
        <title>Laravel</title>
    </head>
    <body>
    <div id='app'>
      <nav-bar></nav-bar>
      <div class="contaner">
        <example-component></example-component>
      </div>
    </div>
    <script src="{{ asset('js/jquery-3.5.1.slim.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="/js/app.js"></script>
    </body>
</html>
