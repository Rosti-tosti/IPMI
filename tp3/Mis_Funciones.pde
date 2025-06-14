//Función con Ciclos for anidados para Dibujar mi grilla:

void dibujargrilla( float x_, float y_, float w_, float h_, int cantA_, int cantB_) { //CantA y CantB son los Indices para calcular número de Columna y Fila
  
  for (int a=0; a<cantA_; a++) { // Para a en 0 y que sea menor al Indice dado se ejecutará el siguiente for y hará sumatoria
    for (int b=0; b<cantB_; b++) { // Para b en 0 y que sea menor al Indice dado se ejecuta y hará sumatoria
    
      float ancho = w_/cantA_; // Define el ancho tomando la variable dada y dividiendola por el Indice A
      float alto = h_/cantB_; // Define el alto tomando la variable dada y dividiendola por el Indice B
      
      //Invoco mi función de modulo y paso las variables
      modulo(x_+a*ancho, y_+b*alto, ancho, alto, b, a);//ejecutará el modulo cada ciclo un poco más corrido en relación a los Indices
    }                                                   
  }
}

//Función de dibujo que se ejecuta en cada ciclo for:
void modulo( float x_, float y_, float w_, float h_, int cantB_, int cantA_){ //requiere las variables de tamaño y los dos Indices

// Mi modulo serán los circulos de manera individual, por ende:

  push();
 
  noFill();// Sin Relleno
  if ( espar (cantB_) & espar (cantA_)){ //Si ambos indices son pares (invoco mi función para determinar si es par):
  stroke(R1, G1, 110);
  strokeWeight(Strk1);
  } else if (!espar (cantB_) & !espar (cantA_)){ //Si ambos indices son impares (invoco y volteo mi función para determinar si es par):
  stroke(53, 134, 110);
  strokeWeight(Strk2);
  } else if (!espar (cantB_) & espar (cantA_)){ //Si Indice B es Impar e Indice A es par:
  stroke(R2, 173, B2);
  strokeWeight(1.5);
  } else { //Si Indice B es par e Indice A es impar:
  stroke(R2, 173, B2);
  strokeWeight(Strk3);
}
  ellipse( x_+w_/2, y_+h_/2, w_/2, h_/2); //Dibuja mi elipse en el centro del módulo
 
  pop();
}

//Función que NO retorna valor y me ayuda a calcular si es par
boolean espar ( float num_ ) {
  if ( num_%2==0) {
    return true;
  } else {
    return false;
  }
}
