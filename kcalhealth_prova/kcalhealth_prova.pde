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
    case MENUPRINCIPAL :         dibujaPantallaMenuPrincipal();  break;
    case MENUALIMENTACION :      dibujaPantallaMenuAlimentacion (); break;
    case MENUACTIVIDAD :         dibujaPantallaMenuActividad (); break;
    case MENUHIDRATACION :       dibujaPantallaMenuHidratacion (); break;
    case ALIMENTACIONREGISTRO :  dibujaPantallaAlimentacionRegistro (); break;
    case ALIMENTACIONRECETAS :   dibujaPantallaAlimentacionRecetas (); break;
    case ACTIVIDADREGISTRO :     dibujaPantallaActividadRegistro (); break;
    case ACTIVIDADRUTINAS :      dibujaPantallaActividadRutinas (); break;
    case AJUSTES :               dibujaPantallaAjustes (); break;
  }
  
  println ("X: "+mouseX+", Y:"+mouseY+"");
  
}
void mousePressed(){
    CTAnadirManual.isPressed();
    CTBuscarItems.isPressed();
    CTCantidadItems.isPressed();
    CTCantidadItemRec1.isPressed();
    CTCantidadItemRec2.isPressed();
    CTCantidadItemRec3.isPressed();
    CTEmpieza.isPressed();
    CTDurada.isPressed();
    
    cDiaRegistro.checkButtons();
    cDiaRegistroActividad.checkButtons();

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
 
  else if(btItemRec1.onMouseOver()){
    btItemRec1.toggle();
  }
  else if(btItemRec2.onMouseOver()){
    btItemRec2.toggle();
  }
  else if(btItemRec3.onMouseOver()){
    btItemRec3.toggle();
  }


 else if(sMedidaItemRec1.mouseOverSelect() && sMedidaItemRec1.enabled){
    if(!sMedidaItemRec1.collapsed){
      sMedidaItemRec1.update();      // Actualitzar valor  
    }
    sMedidaItemRec1.toggle();        // Plegar o desplegar
  }
   else if(sMedidaItemRec2.mouseOverSelect() && sMedidaItemRec2.enabled){
    if(!sMedidaItemRec2.collapsed){
      sMedidaItemRec2.update();      // Actualitzar valor  
    }
    sMedidaItemRec2.toggle();        // Plegar o desplegar
  }
     else if(sMedidaItemRec3.mouseOverSelect() && sMedidaItemRec3.enabled){
    if(!sMedidaItemRec3.collapsed){
      sMedidaItemRec3.update();      // Actualitzar valor  
    }
    sMedidaItemRec3.toggle();        // Plegar o desplegar
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
  else if (CTCantidadItemRec1.mouseOverTextField() && CTCantidadItemRec1.enabled){
   CTCantidadItemRec1.keyPressed(key, (int)keyCode);
  }
  else if (CTCantidadItemRec2.mouseOverTextField() && CTCantidadItemRec2.enabled){
   CTCantidadItemRec2.keyPressed(key, (int)keyCode);
  }
  else if (CTCantidadItemRec3.mouseOverTextField() && CTCantidadItemRec3.enabled){
   CTCantidadItemRec3.keyPressed(key, (int)keyCode);
  }
  else if (CTEmpieza.mouseOverTextField() && CTEmpieza.enabled){
   CTEmpieza.keyPressed(key, (int)keyCode);
  }
  else if (CTDurada.mouseOverTextField() && CTDurada.enabled){
   CTDurada.keyPressed(key, (int)keyCode);
  }
  
  
  else if(keyCode==LEFT){
   cDiaRegistro.prevMonth();
   println("PREV MONTH");
  }
  // Anar un mes endavant
  else if(keyCode==RIGHT){
   cDiaRegistro.nextMonth();
   println("PREV MONTH");
  }
  
  else if(keyCode==LEFT){
   cDiaRegistroActividad.prevMonth();
   println("PREV MONTH");
  }
  // Anar un mes endavant
  else if(keyCode==RIGHT){
   cDiaRegistroActividad.nextMonth();
   println("PREV MONTH");
  }
  
  
}






  
  
  
