PImage img;

void setup () { 
    size (800,400); // Tamaño
    background (107, 146, 132); //color de fondo verde opaco
    
    //FONDO 
    
    //CASA
        fill (161, 177, 209); //-------------------Color morado palido
          noStroke();
            beginShape();
                vertex(4, 0);
                vertex(351, 180);
                vertex(400, 108);
                vertex(196, 0);
            endShape();
    //Efecto perspectiva  
        fill (183, 212, 162); //--------------------Color verde claro, simula luz
          noStroke();
            triangle(351, 180, 400, 180, 400, 108);
        
     //VENTANA  
       fill (0); //---------------------------------Color negro
         noStroke(); //-----------------------------Sin contorno
            quad(137, 9, 156, 18, 148, 37, 129, 28);
    
       
   //REJA
        stroke(50); //--------------------------------Color gris oscuro
           strokeWeight(10); //--------------------------Lineas mas gruesas para el contorno de la reja
              strokeCap(SQUARE); //-------------------------Terminacion cuadrada
                line(0, 2, 58, 33);
                line( 58, 38, 71, 0);
                line( 109, 56, 124, 14);
                line( 105, 54, 352, 176);
                line( 350, 180, 380, 126);
                line(350, 176, 400, 178);
           strokeWeight(5); //---------------------------Lineas mas finas para la reja superior
                line(121, 18, 378, 140);
                line(375, 140, 400, 150);
    
  
   //CALLE
       fill (161, 177, 209); //----------------------color de las casas
         noStroke(); //--------------------------------sin contorno
           beginShape();
              vertex(0, 23);
              vertex(160, 136);
              vertex(400, 240);
              vertex(400, 400);
              vertex(170, 400);
              vertex(68, 173);
              vertex(50, 117);
              vertex(0, 88);
              vertex(0, 23);
           endShape();
       
    //PERSONA
    
    //torso
    
        fill(0); //--------------------------------------color negro
          quad(25, 236, 0, 264, 0, 363, 60, 300); //-------Brazo derecho
    
        fill(30); //-------------------------------------Gris oscuro (mas luz)
          arc(93, 252, 161, 100,  PI*5/6, PI*11/6); //-----Hombro derecho
    
        fill(60); //-------------------------------------Gris claro
          triangle(177, 400, 322, 329, 374, 400); //-------Brazo izquierdo
          
        fill(30);
          triangle(216, 400, 280, 400, 274, 362);//--------Sombra
    
       fill(60); //-------------------------------------Gris claro
          quad(22, 275, 164, 226, 277, 298, 21, 500); //---Pecho
    
    //LOGO DE LA CAMPERA
      fill (150); //-----------------------------------Color muy claro
        ellipse(80, 287, 20, 20); //-----------------
        ellipse(99, 297, 20, 20); //---------------------Base del logo
        ellipse(86, 310, 20, 20); //-----------------
        ellipse(68, 304, 20, 20); //-----------------
    
      fill(60); //--------------------------------------Color del pecho
        quad(75, 295, 90, 303, 110, 279, 92, 272); //-----Cuadrados del logo
        quad(72, 297, 88, 305, 75, 326, 55, 316); //------
    
    //MOCHILA
    
      fill(100);//--------------------------------------Color Mochila
        quad(20, 400, 300, 260, 323, 330, 196, 400);//----Mochila
    
    //------------------------------------------------Borde de la mochila
      strokeWeight(10); 
        stroke(255); //-----------------------------------Color blanco
          strokeCap(ROUND); //------------------------------Terminacion redonda
            line(20, 400, 282, 273);
            line(323, 330, 190, 410);
     
     //CAPUCHA
     
       fill(60);
         noStroke();
           ellipse(225, 236, 190, 100); //------------------base
       fill(30); //-------------------------------------Color gris oscuro
           triangle(168, 322, 260, 280, 155, 264); //-------
           triangle(161, 288, 130, 298, 126, 246); //------- Sombras
           arc(179, 236, 72, 70, PI/2, PI*3/2); //----------
 
       fill(75); //-------------------------------------gris claro
           triangle(241, 282, 310, 285, 322, 230); //-------solapa
    
       stroke(160, 162, 89); //--------------------------Amarillo
         strokeWeight(8);
           line(146, 265, 153, 271); //----------------------Anilla de cordon
       stroke(96, 98, 55); //---------------------------Amarillo oscuro
           line(190, 286, 203, 286); //----------------------Anilla de cordon 2
       stroke(60);
           line(196, 289, 160, 364); //----------------------Cordon 1
       stroke(70);
           line(150, 270, 98, 400); //-----------------------Cordon 2
    
           quad(174, 270, 175, 271, 169, 280, 167, 276); //--Cierre
   
   
   //dibujo la parte posterior del pelo para que este en una capa inferior (patilla derecha)
       fill(0); 
        noStroke();
           triangle(175, 115, 172, 22, 207, 0);
   
   
   
    //CUELLO
    
       fill(175, 143, 104); //---------------------------Piel sombreada
         noStroke();
           ellipse(230, 207, 110, 135); //-------------------
           triangle(178, 268, 220, 273, 177, 226); //-------- Cuello
     
       fill(232, 195, 150); //---------------------------Piel clara (aplica a toda la base)
     
           ellipse(320, 137, 50, 80); //---------------------Oreja
     
     //------------------------BASE DE LA CARA----------------------
     
     //piedadporfavor;-;
     
          ellipse(225, 207, 80, 50); //------------------puntos clave
          ellipse(276, 162, 80, 80);
          ellipse(194, 142, 60, 80);
          ellipse(255, 70, 140, 100);
     
         beginShape();  //-------------------------------conecta los puntos clave y da la forma final
           vertex(187, 212);
           vertex(165, 153);
           vertex(185, 67);
           vertex(324, 76);
           vertex(314, 171);
           vertex(292, 196);
           vertex(248, 226);
         endShape();
     
     //Sombras de cara
       fill(196, 156, 119); //color de sombras
           quad(245, 230, 301, 196, 312, 160, 280, 173);
           triangle(256, 187, 247, 172, 260, 174);
           triangle(185, 175, 180, 166, 183, 161);
     
           triangle(256, 40, 241, 65, 198, 50); //Sombra de pelo
           triangle(183, 75, 190, 44, 232, 45); //
           
           quad(191, 190, 240, 192, 223, 207, 201, 204); //Sombra del labio inferior
           
     //PELO
     
       fill(0);
           triangle(315,154, 345,96, 308, 93); // Patilla derecha
           ellipse(327, 65, 52, 80);           //Base del pelo
           ellipse(266, 0, 148, 100);
       fill(30); //-------------------------------gris mas claro (mas luz)
           quad(181, 55, 237, 49, 274, 0, 190,0); //Flequillo y pelo suelto
           triangle(310, 36, 354, 3, 346, 36);
           triangle(310, 36, 358, 30, 366, 65);
     
    //FACCIONES
    
    //Nariz
    
    //Base
      fill(250, 216, 177);
          ellipse(219, 153, 30, 30);
          ellipse(231, 157, 30, 25);
          ellipse(210, 151, 30, 25);
          quad(216, 144, 228, 149, 244, 98, 228, 97);
    
    //Sombra
    
      fill(196, 156, 119);
          quad(216, 140, 223,106, 210, 115, 200, 140);
          triangle(218, 169, 206, 165, 207, 155);
    
    //Orificios
    
      fill(0);
          triangle(234, 170, 226, 165, 221, 168);
          triangle(208, 164, 206, 160, 199, 160);
    
    //BOCA
    
      fill(230);
          rect(192, 180, 50, 10); //--------------Dientes
      fill(240, 162, 131);
        stroke(240, 162, 131);
          strokeWeight(4);
            line(196, 193, 183, 170); //------------Comisuras
            line(232, 194, 250, 178);
          strokeWeight(6);
            line(189, 176, 245, 180); //------------Labio superior
            arc(214, 189, 40, 13, 0, PI); //-Labio Inferior
    
    //OJOS
    
      fill(196, 156, 119);  //---------------------Color de Sombra
        noStroke();
          ellipse(200, 105, 38, 18); //----------------
          ellipse(203, 88, 45, 45); //---------------- Sombras
          quad(219, 102, 248, 106, 256, 94, 220, 86); //--
          ellipse( 271, 106, 55, 50);
    
      fill(250); //-------------------------------Color de ojos
          ellipse(200, 100, 35, 15); //---------------Globo Izquierdo
          ellipse(268, 111, 35, 15); //---------------""  "" derecho
    
      fill(0);
            ellipse(202, 100, 15, 15); //---------------Pupila izquierda
            ellipse(271, 111, 15, 15); //---------------""   "" derecha
            arc(272, 88, 40, 19, PI, 2*PI); //---------- Ceja derecha
            arc(203, 76, 40, 19, PI, 2*PI); //---------- "" "" Izquierda
    
       stroke(0);
         strokeWeight(2);
           noFill();
            arc(268, 107, 38, 17, PI, 2*PI); //---------Detalle parpado derecho
            arc(200, 94, 38, 15, PI, 2*PI); //----------""       ""     Izquierdo
    
    //ARITO
      fill(255);
        noStroke();
          rect(320, 168, 8, 15); //-------------------Base
      fill(100);
          rect(320, 187, 4, 18); //-------------------Cruz
          rect(314, 191, 15, 4); //
    
    //imagen y posicion
    
     img = loadImage ("Autoretrato.jpg");
     image(img, 400, 0, 400, 400 );
}

void draw ()  {
  
  //Ayuda de coordenadas
  
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
}
