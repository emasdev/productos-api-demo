<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;

class ProductosController extends Controller
{
    public function index()
    {
        return Producto::orderBy('nombre')->get();
    }

    public function filterByNombre($nombre)
    {
        return Producto::where('nombre', 'like', '%' . $nombre . '%')->orderBy('nombre')->get();
        // return Producto::where('nombre', $nombre)->orderBy('nombre')->get();
    }

    public function filterBySku($sku)
    {
        return Producto::where('sku', 'like', '%' . $sku . '%')->orderBy('nombre')->get();
    }

    public function filterByRange($min, $max)
    {
        return Producto::where('precio', '>=', $min)->where('precio', '<=', $max)->orderBy('nombre')->get();
    }

    public function store(Request $request)
    {
        $request['sku'] =  'pro-' . random_int(100, 999) . substr($request->nombre, -3);
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
