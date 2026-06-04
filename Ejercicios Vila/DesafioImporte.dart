import 'dart:io';
void main(){
  int hentrada, mentrada, hsalida, msalida, horas, importe, minutos, opc, precio=1500;
  stdout.write("ingrese hora de entrada: ");
  hentrada = int.parse(stdin.readLineSync()!);
  stdout.write("ingrese minuto de entrada: ");
  mentrada = int.parse(stdin.readLineSync()!);
  stdout.write("ingrese hora de salida: ");
  hsalida = int.parse(stdin.readLineSync()!);
  stdout.write("ingrese minuto de salida: ");
  msalida = int.parse(stdin.readLineSync()!);
  horas = hsalida - hentrada;
  if(horas < 0){
    horas = horas * -1;
  }
  minutos = msalida - mentrada;
  if(minutos > 59){
    minutos = minutos - 60;
    horas++;
  }
  if(minutos > 1){
    horas++;
  }
  print("hora de entrada $hentrada:$mentrada");
  print("hora de salida $hsalida:$msalida");
  print("1. Motocicleta");
  print("2- Automovil");
  print("3. Camioneta");
  stdout.write("Ingrese opcion: ");
  opc = int.parse(stdin.readLineSync()!);
  switch(opc){
    case 1: {importe = precio * horas;
      print("Importe a pagar: $importe");break;}
    case 2: {importe = (precio * horas)*2;
      print("Importe a pagar: $importe");break;}
    case 3: {importe = (precio * horas)*3;
      print("Importe a pagar: $importe");break;}
    default: {print("Opcion incorrecta.");break;}
  }
}