@extends('layout')
@section('title', "Продукт \"$product->name\"")
@section('back', route('products.index'))
@section('buttons')
    <a class="btn" href="{{ route('products.edit', $product) }}">Изменить</a>
@endsection
@section('content')
    <div class="product column gap6 block">
        <h3 class="bottom12">Общая информация</h3>
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
    <div class="block">
        <h3 class="bottom12">История реализации</h3>
        @if (count($product->sales))
            <table>
                <tr>
                    <th>ИД</th>
                    <th>Партнёр</th>
                    <th>Кол-во</th>
                    <th>Дата</th>
                </tr>
                @foreach($product->sales as $sale)
                    <tr>
                        <td>#{{ str_pad($sale->id, 3, '0', STR_PAD_LEFT) }}</td>
                        <td>{{ $sale->partner->name }}</td>
                        <td>{{ $sale->quantity }}</td>
                        <td>{{ date_format(new DateTime($sale->date), 'd.m.Y') }}</td>
                    </tr>
                @endforeach
            </table>
        @else
            <p>Этот продукт ещё не разу не реализовался</p>
        @endif
    </div>
@endsection
