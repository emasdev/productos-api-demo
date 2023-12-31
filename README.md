# Laravel Productos REST API
API para CRUD de productos

![Screen Shot 2023-10-20 at 10 33 46 AM](https://github.com/emasdev/productos-api-demo/assets/13182632/0acd8605-cd16-4502-a6ef-5fbd4b48a382)


#### Modelos
* Producto

#### Usage
Clonar repositorio.

##### Base de datos
importar esquema s4b_productos.sql. O hacer nueva base de datos llamada: s4b_productos
##### .env
Configurar base de datos en el .env
##### Composer Install
en el root folder correr.
###### `composer install`
##### Generate Key
generar una nueva key.
###### `php artisan key:generate`
##### Run Migration
Correr las migraciones para la base de datos.
###### `php artisan migrate`
##### Database Seeding
Agregar datos dummy a db
###### `php artisan db:seed`
##### Start server
Iniciar servidor
###### `php artisan serve`

### API EndPoints

##### Producto
* GET All `http://localhost:8000/api/v1/productos`

* GET Single `http://localhost:8000/api/v1/productos/{id}`

* POST Create `http://localhost:8000/api/v1/productos` body `{
        "nombre": "Producto",
        "descripcion": "Aliquid laudantium laboriosam et molestiae eligendi.",
        "precio": 324.83,
        "cantidad": 944,
        "imagen": "https://via.placeholder.com/640x480.png/0011ff?text=producto+nuevo"
}`
* PUT Update `http://localhost:8000/api/v1/productos/{id}` body `{
        "nombre": "Producto",
        "descripcion": "Aliquid laudantium laboriosam et molestiae eligendi.",
        "precio": 324.83,
        "cantidad": 944,
        "imagen": "https://via.placeholder.com/640x480.png/0011ff?text=producto+nuevo"
}`

* DELETE destroy `http://localhost:8000/api/v1/productos/{id}`

* GET Filter by name `http://127.0.0.1:8000/api/v1/productos/nombre/{nombre}`

* GET Filter by SKU `http://127.0.0.1:8000/api/v1/productos/sku/{sku}`
git 
* GET Filter by rango de precios `http://127.0.0.1:8000/api/v1/productos/sku/{min}/{max}`
