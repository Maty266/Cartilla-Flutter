double promedio(List<double> notas){
  double suma = 0;
  for(int i=0; i<notas.length; i++){
    suma += notas[i];
  }
  return suma / notas.length;
}

void vocales_consonantes(List<String> nombres){
  int vocales = 0, consonantes = 0;
  String nombre; 
  for(int i=0; i<nombres.length; i++){
    nombre = nombres[i];
    for(int j=0; j<nombre.length; j++){
      if(nombre[j] == 'A' || nombre[j] == 'E' || nombre[j] == 'I' || nombre[j] == 'O' || nombre[j] == 'U'){ 
        vocales++;
      }
      else{
        consonantes++;
      }
    }
    print('El nombre: $nombre Tiene $vocales Vocales y $consonantes Consonantes.');
    vocales=0;
    consonantes=0;
  }
}

void primos(List<int> numeros){
  int primos=0, divisores=0, numero=0;
  for(int i=0; i<numeros.length; i++){
    numero = numeros[i];
    for(int j=1; j<numero;j++){
      if(numero/j == 0){
        divisores++;
      }
    }
    if(divisores <= 2){
      primos++;
    }
    divisores=0;
  }
  print('La lista de Numeros tiene: $primos Numeros Primos');
}
void main(){
  List<double> notas = [6,6,6,6,6];
  List<String> nombres = ['MATIAS','MAXIMILIANO','JEREMIAS','FACUNDO','LEONEL','AGUSTIN','FRANCO','IVAN'];
  List<int> numeros = [2,3,5,7,11];
  print(promedio(notas));
  vocales_consonantes(nombres);
  primos(numeros);
}