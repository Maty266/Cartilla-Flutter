import 'dart:io';
void main(){
  List<int> vector = [];
  int cant, numero;
  stdout.write("Ingrese la cantidad de numero a ingresar en el vector: ");
  cant = int.parse(stdin.readLineSync()!);
  for(int i=0; i<cant; i++){
    stdout.write("$i .Ingrese Numero: ");
    numero = int.parse(stdin.readLineSync()!);
    vector.add(numero);
  }
  print(vector);
}