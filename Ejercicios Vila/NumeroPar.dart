import 'dart:io';
void main(){
  int numero;
  stdout.write("Ingrese un numero: ");
  numero = int.parse(stdin.readLineSync()!);
  if (numero % 2 == 0){
    print("El numero es par.");
  }else{
    print("El numero no es par.");
  }
}