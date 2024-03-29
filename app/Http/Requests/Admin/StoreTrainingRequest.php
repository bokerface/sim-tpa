<?php

namespace App\Http\Requests\Admin;

use App\Enums\CostEnum;
use App\Enums\GenderRequirementEnum;
use App\Enums\ParticipantTypeEnum;
use App\Enums\TrainingTypeEnum;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\Enum;

class StoreTrainingRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => ['required', 'string'],
            'description' => ['required', 'string'],
            'image' =>  ['required', 'image', 'mimes:jpg,png', 'max:512'],
            'background_certificate' =>  ['required', 'image', 'mimes:jpg,png', 'max:512'],
            'start_date' => ['required', 'date'],
            'end_date' => ['required', 'date', 'after:start_date'],
            'place' => ['required', 'string'],
            // 'type' => ['required', new Enum(TrainingTypeEnum::class)],
            'cost' => ['required', new Enum(CostEnum::class)],
            // 'trainer_id' => ['required', 'numeric', 'exists:trainers,id'],
            'category_id' => ['required', 'array'],
            'category_id.*' => ['sometimes', 'numeric', 'exists:categories,id'],
            // optionals price field
            'quota' => ['nullable', 'numeric'],
            // 'price_earlybird' => ['required_if:cost,paid', 'numeric', 'nullable'],
            // 'earlybird_end' => ['required_if:cost,paid', 'date', 'nullable'],
            'price_normal' => ['required_if:cost,paid', 'numeric', 'nullable'],
            // 'price_onsite' => ['required_if:cost,paid', 'numeric', 'nullable'],
            'gender_requirement' => ['required', new Enum(GenderRequirementEnum::class)],
            'date_of_birth_requirement' => ['nullable', 'date'],
            'participant_type' => ['required', new Enum(ParticipantTypeEnum::class)],
        ];
    }
}
