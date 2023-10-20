# Laravel Productos REST API
API para CRUD de productos

![Screenshot](screenshot1.jpg)

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
* POST Create `http://localhost:8000/api/v1/productos` params `{}`
* PUT Update `http://localhost:8000/api/v1/productos/{id}`
* DELETE destroy `http://localhost:8000/api/v1/productos/{id}`

* GET Filter by name `http://127.0.0.1:8000/api/v1/productos/nombre/{nombre}`
* GET Filter by SKU `http://127.0.0.1:8000/api/v1/productos/sku/{sku}`
* GET Filter by rango de precios `http://127.0.0.1:8000/api/v1/productos/sku/{min}/{max}`