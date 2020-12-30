
//MENU GENERAL//
void dibujaLogo1 (){
  fill (255,255,255); noStroke();
  rect (margenX, margenY, Logo1W, Logo1H, 8);
  image (imgLogo, margenX, margenY, Logo1W, Logo1H); 
}

void dibujaIconoPerfil (){  
  fill (255,255,255); noStroke();
  rect ( width - margenX - 100, margenY, Perfil1W, Perfil1H, 8);
  biIconoPerfil.display();

}
  
void dibujaBloqueDestacados (){
   noStroke (); fill (255,255,255);  
   rect (2*margenX + ResumenGeneralW, 2*margenY + 100, BloqueDestacadosW, BloqueDestacadosH);
 }

//comunes
void dibujaLogo2 (){
  fill (255,255,255); noStroke();
  rect (margenX, margenY, Logo2W, Logo2H, 8);
  image (imgLogo, margenX, margenY, Logo2W, Logo2H);
}

void dibujaIconoApartado (){
  PImage iconoapartado;
  switch (pantalla){
    case MENUALIMENTACION : iconoapartado = imgIconoAlimentacion; break;
    case MENUACTIVIDAD : iconoapartado = imgIconoHidratacion; break;
    case MENUHIDRATACION : iconoapartado = imgIconoActividad; break; 
  }
  //image (iconoapartado, 2*margenX + Logo2W, margenY, 100, 100);
  
}


//alimentación y actividad
void dibujaAnadirItem () {
  stroke (255,0,0);
  rect (margenX, margenY + Logo2H + biAtrasH, AnadirItemW, AnadirItemH);
}

void dibujaCrearItem (){
  stroke (255,0,0);
  rect (margenX, 1.5*margenY + Logo2H + biAtrasH + AnadirItemH, CrearItemW, CrearItemH);
}

void dibujaResumenDia (){
  stroke (255,0,0);
  rect (margenX + AnadirItemW, 1.5*margenY + Logo2H + biAtrasH + AnadirItemH, ResuDiaW, ResuDiaH);
}

void dibujaInfoDia (){
  stroke (255,0,0);
  rect (margenX + AnadirItemW, 2*margenY + Logo2H +  biAtrasH + AnadirItemH + AnadirItemH, InfoDiaW, InfoDiaH);
}

void dibujaResumenSemanal () {
  stroke (255,0,0);
  rect (1.5*margenX + AnadirItemW + ResuDiaW, 1.5*margenY + Logo2H + biAtrasH + AnadirItemH, ResuSemanalW, ResuSemanalH);
}


//hidratacion

void dibujaAnadirAgua (){
  noStroke();
  fill (255,255,255);
  rect (1.25*margenX, margenY + Logo2H + biAtrasH, AnadirAguaW, AnadirAguaH,10);
}
