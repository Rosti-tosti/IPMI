 // Ruben Darío Zapata - 88082/6 - Comisión 3

//creación de las variables
 
PFont Fuente1;                                          //variable para fuente
PImage Foto1, Foto2, Foto3;                             //variables para fotos
int Pantalla;                                           //variable de pantalla
int Temporizador;                                       //variable de temporizador
float x;                                                //variable para movimiento en x
float y;                                                //variable para movimiento en y
float opacidad;                                         //variable para opacidad
boolean DentrodelBoton;                                 //variable para determinar si estoy en el botón

void setup(){
  
  //tamaño
  
  size(640, 480);  
  
  //Carga de imagenes
  
  Foto1 = loadImage("Obra1.png");
  Foto2 = loadImage("Obra2.png");
  Foto3 = loadImage("Obra3.png");
  
  //carga de fuentes
            
  Fuente1 = createFont("Underdog-Regular.ttf", 32);
            textFont(Fuente1);
            
  //Variables
  
  Pantalla = 0;
  Temporizador = 0;
  
 
  //Framerate
  
  frameRate(30);
 
}

void draw(){
  
  
  if (Pantalla == 0){
    
        image(Foto1,0 ,0, width, height);                    //imagen 1
        y = map(Temporizador, 0, 150, 0, height);            //mapeo de rangos temporizador en y hasta 480 (alto máximo)
        fill(211, 9, 208);
        textSize(32);
        text("Visuales de live coding para Whisky \nPalacio Alsina de Buenos Aires\nMUTEK 2019-Flor de Fuego", 0, y); //efecto movimiento en y
    
  }  else if (Pantalla == 1){
    
        image(Foto2,0 ,0, width, height);                   //imagen 2
        opacidad = map(Temporizador, 0, 150, 0, 255);       //mapeo de rangos temporizador en opacidad y hasta 255 (rango de opacidad máximo)
        fill(211, 9, 208, opacidad);                        //efecto opacidad creciente
        text("Flor de Fuego es una artista-orfebre \ndigital que utiliza principalmente \ncódigo y programación en tiempo \nreal para producir experiencias \nperformáticas",0 ,40);
    
  }  else if (Pantalla == 2){
    
        image(Foto3,0 ,0, width, height);                    //imagen3
        x = map(Temporizador, 0, 150, 0, width);             //mapeo de rangos temporizador en x y hasta 640 (largo máximo)
        fill(211, 9, 208);                                   
        text("Flor de fuego se dedicó a crear live coding para \ncomplementar y modificar el trabajo musical de Wisky \nen el festival Mutek, generando patrones \nvisuales y sonoros aleatorios",x ,200); //efecto movimiento en x
  
  }  else if (Pantalla == 3){                                //pantalla frezzeframe para poder reiniciar
    
        image(Foto3,0 ,0, width, height);
 
        noStroke();
        fill(0);
        rect(540, 420, 80, 50);                           //botón de reinicio
        fill(255);
        textSize(15);
        text("Reiniciar", 550, 450);
  }
  
     Temporizador++;                                     //temporizador aumenta hasta 150
       if(Temporizador>150){
     
           Temporizador = 0;                               //si sobrepasa 150, reinicia y suma 1 a la pantalla
           Pantalla ++;
     
             if (Pantalla > 3){                              //si la pantalla supera 3, se queda en la 3 (frezzeframe con botón)
       
                 Pantalla = 3;
     }
   }
  DentrodelBoton = Pantalla == 3 & mouseX > 540 & mouseX < 540+80 & mouseY > 420 & mouseY < 470 ;      //delimito la zona del botón
}

void mousePressed() {                             

      if (DentrodelBoton) {
       Pantalla = 0;
       Temporizador = 0;
  }

}
