<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    public function rules(): array
    {
        return [
            'type_id' => 'required|integer|exists:product_types,id',
            'name'    => 'required|string|min:1|max:255',
            'article' => 'required|string|min:1|max:255',
            'price'   => 'required|numeric|min:0',
        ];
    }

    public function messages(): array {
        return [
            'required' => 'Обязательно для заполнения',
            'string' => 'Должно быть строкой',
            'integer' => 'Должно быть целым числом',
            'numeric' => 'Должно быть числом',
            'exists' => 'Должно существовать',
            'min' => 'Минимум :min',
            'max' => 'Максимум :max',
        ];
    }
}
