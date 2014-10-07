package mx.nissan

class Proveedor implements Serializable{

  String idProveedor
  String nombre
  String ubicacion
  Date dateCreated
  Date lastUpdated

  static constraints = {
    ubicacion nullable: true
  }

  static mapping = {
    table 'PROVEEDOR'
    id generator: 'identity'
  }

  String toString() {
    nombre
  }

}