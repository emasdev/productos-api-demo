<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $nombre = $this->faker->word();
        $sku = "pro-";
        $sku .= strval($this->faker->randomNumber(3, false));
        $sku .= substr($nombre, -3);


        return [
            'nombre' => $nombre,
            'descripcion' => $this->faker->sentence(),
            'sku' => $sku,
            'precio' => $this->faker->randomFloat(2, 0, 1000),
            'cantidad' => $this->faker->randomNumber(3, false),
            'imagen' => $this->faker->imageUrl(640, 480, 'products', true),
        ];
    }
}
