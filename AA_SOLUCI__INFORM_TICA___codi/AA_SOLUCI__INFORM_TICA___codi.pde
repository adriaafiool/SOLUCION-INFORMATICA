
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
  
}

void draw() {
 
  
  switch (pantalla) {
    case MENUPRINCIPAL : dibujaPantallaMenuPrincipal (); break;
    case MENUALIMENTACION : dibujaPantallaMenuAlimentacion (); break;
    case MENUACTIVIDAD : dibujaPantallaMenuActividad (); break;
    case MENUHIDRATACION : dibujaPantallaMenuHidratacion (); break;
    case ALIMENTACIONREGISTRO : dibujaPantallaAlimentacionRegistro (); break;
    case ALIMENTACIONRECETAS : dibujaPantallaAlimentacionRecetas (); break;
    case ACTIVIDADREGISTRO : dibujaPantallaActividadRegistro (); break;
    case ACTIVIDADRUTINAS : dibujaPantallaActividadRutinas (); break;
    case AJUSTES : dibujaPantallaAjustes (); break;
  }
  
  println ("X: " + mouseX + "Y:" + mouseY);
}
  
//Cuando se clicla el ratón

  
  
  
