<?php

use Carbon\Carbon;
use Faker\Generator as Faker;

$factory->define(App\Customer::class, function (Faker $faker) {
    return [
        "name" => $faker->name,
        "phone" => $faker->phoneNumber,
        "email" => $faker->safeEmail,
        "district" => $faker->city,
        "created_at" => Carbon::now()
    ];
});
