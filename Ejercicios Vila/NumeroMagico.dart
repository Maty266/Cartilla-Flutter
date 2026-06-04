import 'dart:io';
void main(){
  int numero=0, div=0, i=1, digito=0, suma=0;
  stdout.write("Ingrese un numero: ");
  numero = int.parse(stdin.readLineSync()!);
  while(numero != 0){
    digito = numero % 10;
    suma = suma + digito;
    numero = numero ~/ 10;
  }
  if(suma % 2 != 0){
    while(i<suma){
      if(suma % i == 0){
        div++;
      }
      i++;
    }
    if(div >= 3){
      print("Es mágico.");
    }
  }else{
    print("No es mágico.");
  }
}