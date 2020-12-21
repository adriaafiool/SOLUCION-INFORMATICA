void dibujaLogo1 (){
  image (imgLogo, margenX, margenY, Logo1W, Logo1H);  
}
  
//void dibujaResumenGeneral (){
  // stroke (0);
   //rect (margenX, ((2*margenY) + Logo1H), ResumenGeneralW, ResumenGeneralH, 20);
//}
 
void dibujaBloqueDestacados (){
   stroke (1);
   rect (2*margenX + ResumenGeneralW, 2*margenY + 100, BloqueDestacadosW, BloqueDestacadosH);
}

void dibujaLogo2 (){
  image (imgLogo, margenX, margenY, Logo2W, Logo2H);
}

void dibujaPerfil2 (){
  stroke (255,0,0);
  rect (width - margenX - Perfil2W, margenY, Perfil2W, Perfil2H);
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

void dibujaAnadirItem () {
  stroke (255,0,0);
  rect (margenX, 2*margenY + Logo2H + FlechaRegresoH, AnadirItemW, AnadirItemH);
}

void dibujaCrearItem (){
  stroke (255,0,0);
  rect (margenX, 3*margenY + Logo2H + FlechaRegresoH + AnadirItemH, CrearItemW, CrearItemH);
}

void dibujaResumenDia (){
  stroke (255,0,0);
  rect (2*margenX + AnadirItemW, 3*margenY + Logo2H + FlechaRegresoH + AnadirItemH, ResuDiaW, ResuDiaH);
}

void dibujaInfoDia (){
  stroke (255,0,0);
  rect (2*margenX + AnadirItemW, 4*margenY + Logo2H + FlechaRegresoH + AnadirItemH + AnadirItemH, InfoDiaW, InfoDiaH);
}

void dibujaResumenSemanal () {
  stroke (255,0,0);
  rect (3*margenX + AnadirItemW + ResuDiaW, 3*margenY + Logo2H + FlechaRegresoH + AnadirItemH, ResuSemanalW, ResuSemanalH);
}
