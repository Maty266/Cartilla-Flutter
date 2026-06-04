import 'dart:io';
void main(){
  int numero=0, div=0, digito=0, i=1, total=0;
  stdout.write("Ingrese un numero: ");
  numero = int.parse(stdin.readLineSync()!);
  while(i <= numero){
    if(numero ~/ i == 0){
      div++;
    }
  }
  if(div == 2){
    while(numero != 0){
      digito = numero % 10;
      while(i<=digito){
        if(digito ~/ i == 0){
          total++;
        }
      }
    }
    print("El numero tiene: $total Divisores.");
  }else{
    print("No es primo");
  }
  numero = numero ~/ 10;
}