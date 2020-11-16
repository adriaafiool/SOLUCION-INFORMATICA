void setup(){
  size (1000,600);
}

void draw() {
  background (255);
  
  //MENÚ GENERAL//
  stroke (1);
  rect (margenX, margenY, Logo1W, Logo1H);
  rect (width - margenX - Perfil1W, margenY, Perfil1W, Perfil1H);
  rect (margenX, ((2*margenY) + Logo1H), ResumenGeneralW, ResumenGeneralH);
  rect (2*margenX + ResumenGeneralW, 2*margenY + Perfil1H, BloqueDestacadosW, BloqueDestacadosH);
  
  //MENÚ ESPECÍFICO//
  stroke (255,0,0);
  rect (margenX, margenY, Logo2W, Logo2H);
  
  println ("X: " + mouseX + "Y:" + mouseY);
}
  
  
  
