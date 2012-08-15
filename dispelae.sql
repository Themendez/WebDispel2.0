CREATE TABLE usuarios (
  Clave INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(32) NOT NULL,
  apellido VARCHAR(40) NOT NULL,
  ID_usuario VARCHAR(15) NOT NULL,
  contrasena VARCHAR(15) BINARY NOT NULL,
  fecha_nac VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  direccion1 VARCHAR(30) NOT NULL,
  direccion2 VARCHAR(30) NOT NULL,
  pais VARCHAR(30) NOT NULL,
  ciudad VARCHAR(30) NOT NULL,
  estado VARCHAR(20) NULL,
  codigo_postal VARCHAR(20) NOT NULL,
  empresa VARCHAR(45) NULL,
  imagen VARCHAR(45) NOT NULL,
  telefono VARCHAR(10) NOT NULL,
  PRIMARY KEY(Clave)
)
TYPE=InnoDB;

CREATE TABLE carrito (
  id_producto VARCHAR(20) NOT NULL,
  id_usuario VARCHAR(20) NOT NULL,
  fecha TIMESTAMP NOT NULL,
  PRIMARY KEY(id_producto)
)
TYPE=InnoDB;

CREATE TABLE administradores (
  clave_administrador INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre_admin VARCHAR(30) NOT NULL,
  apellidos_admin VARCHAR(45) NOT NULL,
  id_admin VARCHAR(15) NOT NULL,
  contrasena VARCHAR(20) NOT NULL,
  fecha_nac DATE NOT NULL,
  pais VARCHAR(30) NOT NULL,
  estado VARCHAR(30) NOT NULL,
  ciudad VARCHAR(30) NOT NULL,
  PRIMARY KEY(clave_administrador)
)
TYPE=InnoDB;

CREATE TABLE ventas (
  no_pedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  carrito_id_producto VARCHAR(20) NOT NULL,
  id_comprador INTEGER UNSIGNED NOT NULL,
  forma_de_pago VARCHAR(20) NOT NULL,
  fecha_venta TIMESTAMP NOT NULL,
  tipo_envio VARCHAR(45) NOT NULL,
  PRIMARY KEY(no_pedido),
  INDEX ventas_FKIndex1(carrito_id_producto)
)
TYPE=InnoDB;

CREATE TABLE detalles_de_ventas (
  num_pedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_articulo INTEGER UNSIGNED NOT NULL,
  ventas_no_pedido INTEGER UNSIGNED NOT NULL,
  cantidad INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(num_pedido, id_articulo),
  INDEX detalles_de_ventas_FKIndex1(ventas_no_pedido)
)
TYPE=InnoDB;

CREATE TABLE productos (
  clave INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  carrito_id_producto VARCHAR(20) NOT NULL,
  usuarios_Clave INTEGER UNSIGNED NOT NULL,
  nombre VARCHAR(45) NULL,
  descripcion VARCHAR(255) NULL,
  imagen VARCHAR(45) NULL,
  medida VARCHAR(20) NULL,
  peso VARCHAR(20) NULL,
  precio_unitario FLOAT NULL,
  numero INTEGER UNSIGNED NULL,
  PRIMARY KEY(clave),
  INDEX productos_FKIndex1(usuarios_Clave),
  INDEX productos_FKIndex2(carrito_id_producto)
)
TYPE=InnoDB;


