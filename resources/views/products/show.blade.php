@extends('layout')
@section('title', "Продукт \"$product->name\"")
@section('back', route('products.index'))
@section('buttons')
    <a class="btn" href="{{ route('products.edit', $product) }}">Изменить</a>
@endsection
@section('content')
    <div class="product column gap6">
        <div class="label-group">
            <label>Название</label>
            <p>{{ $product->name }}</p>
        </div>
        <div class="label-group">
            <label>Тип</label>
            <p>{{ $product->type->name }}</p>
        </div>
        <div class="label-group">
            <label>Артикул</label>
            <p>{{ $product->article }}</p>
        </div>
        <div class="label-group">
            <label>Цена</label>
            <p>{{ $product->price }}</p>
        </div>
    </div>
@endsection
