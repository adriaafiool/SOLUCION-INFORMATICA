//Enumeración de las pantallas
enum PANTALLA {MENUPRINCIPAL, MENUALIMENTACION, MENUACTIVIDAD, MENUHIDRATACION, 
     
   ALIMENTACIONREGISTRO,ALIMENTACIONRECETAS, ACTIVIDADREGISTRO, ACTIVIDADRUTINAS, AJUSTES}

//Iniciar con la pantalla de menu general

PANTALLA pantalla = PANTALLA.MENUPRINCIPAL;
void setup(){
  size (1000,600); 
  cargarImagenes();
  cargarFuentes();
  setGUI();
  desactivaTodos();
  activaBotonesMenuPrincipal();
  
}

void draw() {
  fill (255,255,255); noStroke();
  
  switch (pantalla) {
    case MENUPRINCIPAL :  dibujaPantallaMenuPrincipal();  break;
    case MENUALIMENTACION : dibujaPantallaMenuAlimentacion (); break;
    case MENUACTIVIDAD : dibujaPantallaMenuActividad (); break;
    case MENUHIDRATACION : dibujaPantallaMenuHidratacion (); break;
    case ALIMENTACIONREGISTRO : dibujaPantallaAlimentacionRegistro (); break;
    case ALIMENTACIONRECETAS : dibujaPantallaAlimentacionRecetas (); break;
    case ACTIVIDADREGISTRO : dibujaPantallaActividadRegistro (); break;
    case ACTIVIDADRUTINAS : dibujaPantallaActividadRutinas (); break;
    case AJUSTES : dibujaPantallaAjustes (); break;
  }
  
  println ("X: "+mouseX+", Y:"+mouseY+"");
  
}
void mousePressed(){
    CTAnadirManual.isPressed();
    CTBuscarItems.isPressed();
    CTCantidadItems.isPressed();
    
  if(biIconoAlimentacion.mouseOverButton() && biIconoAlimentacion.enabled){
      desactivaTodos();
      pantalla = PANTALLA.MENUALIMENTACION;
      activaBotonesMenuAlimentacion();
  }
  else if (biIconoHidratacion.mouseOverButton() && biIconoHidratacion.enabled){
      desactivaTodos();
      pantalla = PANTALLA.MENUHIDRATACION;
      activaBotonesMenuHidratacion();
}
  else if (biIconoActividad.mouseOverButton() && biIconoActividad.enabled){
      desactivaTodos();
      pantalla = PANTALLA.MENUACTIVIDAD;
      activaBotonesMenuActividad();
}


 else if (bAtras.mouseOverButton() && bAtras.enabled && (pantalla == PANTALLA.MENUALIMENTACION || pantalla == PANTALLA.MENUACTIVIDAD || pantalla == PANTALLA.MENUHIDRATACION || pantalla == PANTALLA.AJUSTES)){
      desactivaTodos();
      pantalla = PANTALLA.MENUPRINCIPAL;
      activaBotonesMenuPrincipal();
 }
 else if (bHecho.mouseOverButton() && bHecho.enabled && (pantalla == PANTALLA.ALIMENTACIONREGISTRO || pantalla == PANTALLA.ALIMENTACIONRECETAS)){
      desactivaTodos();
      pantalla = PANTALLA.MENUALIMENTACION;
      activaBotonesMenuAlimentacion();
 }
 else if (bHecho.mouseOverButton() && bHecho.enabled && (pantalla == PANTALLA.ACTIVIDADREGISTRO || pantalla == PANTALLA.ACTIVIDADRUTINAS)){
      desactivaTodos();
      pantalla = PANTALLA.MENUACTIVIDAD;
      activaBotonesMenuActividad();
 }
 
 
 else if (bifIconoAnadir.mouseOverButton() && bifIconoAnadir.enabled && pantalla == PANTALLA.MENUALIMENTACION){
      desactivaTodos();
      pantalla = PANTALLA.ALIMENTACIONREGISTRO;
      activaBotonesAlimentacionRegistro();
 }
 else if (bifIconoCrear.mouseOverButton() && bifIconoCrear.enabled && pantalla == PANTALLA.MENUALIMENTACION){
      desactivaTodos();
      pantalla = PANTALLA.ALIMENTACIONRECETAS;
      activaBotonesAlimentacionRecetas();
 }
 else if (bifIconoAnadir.mouseOverButton() && bifIconoAnadir.enabled && pantalla == PANTALLA.MENUACTIVIDAD){
      desactivaTodos();
      pantalla = PANTALLA.ACTIVIDADREGISTRO;
      activaBotonesActividadRegistro();
 }
 else if (bifIconoCrear.mouseOverButton() && bifIconoCrear.enabled && pantalla == PANTALLA.MENUACTIVIDAD){
      desactivaTodos();
      pantalla = PANTALLA.ACTIVIDADRUTINAS;
      activaBotonesActividadRutinas();
 }
 
 else if(sMedidaItem.mouseOverSelect() && sMedidaItem.enabled){
    if(!sMedidaItem.collapsed){
      sMedidaItem.update();      // Actualitzar valor  
    }
    sMedidaItem.toggle();        // Plegar o desplegar
  }
  
  
  
 else if (bDesayuno.mouseOverButton()){
   if (bDesayuno.enabled){
     activaBotonesAlimentacionRegistro ();
     bDesayuno.setEnabled(false);
   }
   else {
     bDesayuno.setEnabled(true);
   }
 }
  else if(bManana.mouseOverButton()){
   if (bManana.enabled){
     activaBotonesAlimentacionRegistro ();
     bManana.setEnabled(false);
   }
   else {
     bManana.setEnabled(true);
   }
 }
  else if (bAlmuerzo.mouseOverButton()){
   if (bAlmuerzo.enabled){
     activaBotonesAlimentacionRegistro ();
     bAlmuerzo.setEnabled(false);
   }
   else {
     bAlmuerzo.setEnabled(true);
   }
 }
  else if (bMerienda.mouseOverButton()){
   if (bMerienda.enabled){
     activaBotonesAlimentacionRegistro ();
     bMerienda.setEnabled(false);
   }
   else {
     bMerienda.setEnabled(true);
   }
 } else if (bCena.mouseOverButton()){
   if (bCena.enabled){
     activaBotonesAlimentacionRegistro ();
     bCena.setEnabled(false);
   }
   else {
     bCena.setEnabled(true);
   }
 }
  else if (bNoche.mouseOverButton()){
   if (bNoche.enabled){
     activaBotonesAlimentacionRegistro ();
     bNoche.setEnabled(false);
   }
   else {
     bNoche.setEnabled(true);
   }
 }
}
 
void keyPressed() {
  if(CTAnadirManual.mouseOverTextField() && CTAnadirManual.enabled){
   CTAnadirManual.keyPressed(key, (int)keyCode);
  }
  else if (CTBuscarItems.mouseOverTextField() && CTBuscarItems.enabled){
   CTBuscarItems.keyPressed(key, (int)keyCode);
  }
  else if (CTCantidadItems.mouseOverTextField() && CTCantidadItems.enabled){
   CTCantidadItems.keyPressed(key, (int)keyCode);
}
}






  
  
  
