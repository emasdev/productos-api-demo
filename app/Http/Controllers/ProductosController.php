<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;

class ProductosController extends Controller
{
    public function index()
    {
        return Producto::all();
    }

    public function store(Request $request)
    {
        $inputs = $request->input();
        $producto = Producto::create($inputs);
        return response()->json([
            'data' => $producto,
            'mensaje' => "Se agregó un producto."
        ]);
    }

    public function show($id)
    {
        $producto = Producto::find($id);
        if (isset($producto)) {
            return response()->json([
                'data' => $producto,
                'mensaje' => "Se encontró el producto."
            ]);
        } else {
            return response()->json([
                'error' => true,
                'mensaje' => "No existe el producto."
            ]);
        }
    }

    public function update(Request $request, $id)
    {
        $producto = Producto::find($id);
        if (isset($producto)) {
            $producto->nombre = $request->nombre;
            $producto->descripcion = $request->descripcion;
            $producto->sku = $request->sku;
            $producto->precio = $request->precio;
            $producto->cantidad = $request->cantidad;
            $producto->imagen = $request->imagen;

            if ($producto->save()) {
                return response()->json([
                    'data' => $producto,
                    'mensaje' => "Se actualizó el producto."
                ]);
            }
        } else {
            return response()->json([
                'error' => true,
                'mensaje' => "No existe el producto."
            ]);
        }
        // $res = Producto::create($inputs);

    }

    public function destroy($id)
    {
        $producto = Producto::find($id);
        if (isset($producto)) {

            Producto::destroy($id);
            return response()->json([
                'data' => [$producto],
                'mensaje' => "Se eliminó el producto."
            ]);
        } else {
            return response()->json([
                'error' => true,
                'mensaje' => "No existe el producto."
            ]);
        }
    }
}
