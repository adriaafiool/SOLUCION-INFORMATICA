Diagrama CPG;



void draw(){
  background(255);
  // Dibuix del Diagrama de Sectors
  s.display();
}
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
  
}
void mousePressed(){
  
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
 else if (bAtras.mouseOverButton() && bAtras.enabled){
     desactivaTodos();
      pantalla = PANTALLA.MENUPRINCIPAL;
      activaBotonesMenuPrincipal();
 }

println ("X: "+mouseX+", Y:"+mouseY+"");
//Cuando se clicla el ratón

}




  
  
  
