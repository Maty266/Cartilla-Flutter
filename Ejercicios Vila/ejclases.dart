class Alumno{ 
  final String nombre;
  final String? apellido;
  final int edad; 
  final double nota1;
  final double nota2;
  final double nota3;

  Alumno({
    required this.nombre,
    this.apellido,
    required this.edad,
    required this.nota1,
    required this.nota2,
    required this.nota3,
  });
  //Metodo
  double calcularPromedio(){
    double suma = nota1 + nota2 + nota3;
    return suma/3;
  }
  String? mostrarEstado(double x){
    if (x>=6){
      return ('Aprobado');
    }if (x>=4){
      return ('Recuperatorio');
    }else{ 
      return ('Desaprobado');
    }
  }
  @override
  String toString(){
    double promedio = calcularPromedio();
    String? estado = mostrarEstado(promedio);
    return '$nombre $apellido (edad: $edad) -Promedio: $promedio - $estado';
    
  }
}
void main(){
  var Matias = Alumno(nombre: 'Matias', apellido: 'Valdez', edad: 18, nota1: 5, nota2: 5, nota3: 5);
  var Jere = Alumno(nombre: 'Jeremias', apellido: 'Garcia', edad: 20, nota1: 6, nota2: 6, nota3: 6);
  var Facundo = Alumno(nombre: 'Facundo',apellido: 'Ten' , edad: 18, nota1: 3, nota2: 3, nota3: 3);
  var Agustin = Alumno(nombre: 'Agustin',apellido: 'Vila', edad: 28, nota1: 10, nota2: 9, nota3: 8);
  var Alejo = Alumno(nombre: 'Alejo',apellido: 'Puentes', edad: 18, nota1: 6, nota2: 7, nota3: 6);
  print (Matias);
  print (Jere);
  print (Facundo);
  print (Agustin);
  print (Alejo);

}