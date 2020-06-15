@extends('layout/navbar')

@section('title','About')

@section('content')
    <h2>About us</h2>
    @php
        print_r($info);
    @endphp
    
    Data from route:
    <ol>
        @foreach($info as $infos) {{-- data fetched from Route --}}
            <li><?= $infos; ?></li>
        @endforeach
    </ol>

    <p>This is a multi national company</p>
@endsection