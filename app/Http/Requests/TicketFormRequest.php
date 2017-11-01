<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class TicketFormRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'uname' => 'required|min:1',
            'email' => 'required|min:3',
            'title' => 'required|min:3',
            'category' => 'required|min:2',
            'content'=> 'required|min:10',
        ];
    }
}
