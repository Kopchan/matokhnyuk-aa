<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductRequest;
use App\Models\Product;
use App\Models\ProductType;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with('type')->get();
        return view('products.index', compact('products'));
    }

    public function create()
    {
        $types = ProductType::all();
        return view('products.create', compact('types'));
    }

    public function store(ProductRequest $request)
    {
        $product = Product::create($request->validated());
        return redirect()->route('products.show', $product);
    }

    public function show(Product $product)
    {
        $product->load('type');
        return view('products.show', compact('product'));
    }

    public function edit(Product $product)
    {
        $types = ProductType::all();
        return view('products.edit', compact('product', 'types'));
    }

    public function update(ProductRequest $request, Product $product)
    {
        $product->update($request->validated());
        return redirect()->route('products.show', $product);
    }

    public function destroy(Product $product)
    {
        //$product->delete();
        //return redirect()->route('products.index');
    }
}
