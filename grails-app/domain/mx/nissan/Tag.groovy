package mx.nissan

class Tag implements Serializable{

  String numTag
  Boolean asignado
  Transportista transportista
  TipoTransporte tipoTransporte
  Date dateCreated
  Date lastUpdated

  static constraints = {
  }

  static mapping = {
    table 'TAG'
    id generator: 'identity'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TAG_SEQ'])
  }

  String toString() {
    numTag
  }

}