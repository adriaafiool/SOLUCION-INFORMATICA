float WIDTH = 1000,
      HEIGHT = 600,
      margenX = 40,
      margenY = 40;
      
color rojobase = color (255, 133, 133),
      grisfuerte = color (105, 109, 125),
      grisflojo = color (236, 237, 239);
      


//MENÚ GENERAL//

float Logo1X = margenX,
      Logo1Y = margenY,
      Logo1W = 300,
      Logo1H = 100;
      
float Perfil1W = 100,
      Perfil1H = Perfil1W,
      Perfil1X = WIDTH - margenX - (Perfil1W/2),
      Perfil1Y = margenY + (Perfil1W/2);    
      
float FondoIconosX = 40,
      FondoIconosY = 165,
      FondoIconosW = 380,
      FondoIconosH = 350;
   
float BloqueDestacadosX = 2*FondoIconosX + FondoIconosW,
      BloqueDestacadosY = FondoIconosY,
      BloqueDestacadosW = WIDTH - FondoIconosW - 3*FondoIconosX,
      BloqueDestacadosH = FondoIconosH;
      
float IconoAlimentacionX = 1.45*margenX + 80,
      IconoAlimentacionY = 255,
      IconoAlimentacionW = 160,
      IconoAlimentacionH = 150,
      
      IconoHidratacionX = 1.5*margenX + 180 + 80,
      IconoHidratacionY = 255,
      IconoHidratacionW = 180,
      IconoHidratacionH = 150,
      
      IconoActividadX = 225,
      IconoActividadY = 425,
      IconoActividadW = 150,
      IconoActividadH = 150;
  
float TextoAlimentacionX = IconoAlimentacionX,
      TextoAlimentacionY = IconoAlimentacionY  + (IconoAlimentacionH/2),
      
      TextoHidratacionX = IconoHidratacionX,
      TextoHidratacionY = IconoHidratacionY  + (IconoHidratacionH/2),
      
      TextoActividadX = IconoActividadX,
      TextoActividadY = IconoActividadY  + (IconoActividadH/2) - 15;
           

//COMUNES//

float Logo2X = margenX,
      Logo2Y = margenY,
      Logo2W = 240,
      Logo2H = 80;
      
float Perfil2W = 80,
      Perfil2H = Perfil2W,
      Perfil2X = WIDTH - margenX - (Perfil2W/2),
      Perfil2Y = margenY + (Perfil2W/2);
      
float IconoApartadoX = margenX + Logo2W + 10, 
      IconoApartadoY = margenY,
      IconoApartadoW = 80,
      IconoApartadoH = 80;
      
float bAtrasX = margenX,
      bAtrasY = 1.2*margenY + Logo2H,
      bAtrasW = 40,
      bAtrasH = 15;
      
float AnadirItemX = margenX, //40
      AnadirItemY = 1.3*margenY + Logo2H + bAtrasH, //(147)
      AnadirItemW = 120, //120
      AnadirItemH = (HEIGHT - AnadirItemY - 1.2*margenY)/2, //202,5
      AnadirItemIconoW = 40,
      AnadirItemIconoH = 38;
      
float CrearItemX = AnadirItemX,
      CrearItemY = 1.5*margenY + Logo2H + bAtrasH + AnadirItemH,
      CrearItemW = AnadirItemW,
      CrearItemH = AnadirItemH,
      CrearItemIconoW = AnadirItemIconoW,
      CrearItemIconoH = AnadirItemIconoH;
      
float ResuDiaX = AnadirItemW + 2*margenX,
      ResuDiaY = AnadirItemY,
      ResuDiaW = 1.5*AnadirItemW + 10,
      ResuDiaH = AnadirItemH;
      
float InfoDiaX = ResuDiaX,
      InfoDiaY = CrearItemY,
      InfoDiaW = ResuDiaW,
      InfoDiaH = ResuDiaH;

float GrafAlimeX = ResuDiaX + ResuDiaW + 10,
      GrafAlimeY = AnadirItemY + 80,
      GrafAlimeW = WIDTH - 2.5*AnadirItemW - 3.5*margenX, //560
      GrafAlimeH = HEIGHT - AnadirItemY - 80 - margenY;
      
float ResuSemanalX = GrafAlimeX,
      ResuSemanalY = AnadirItemY,
      ResuSemanalH = HEIGHT - AnadirItemY - margenY - GrafAlimeH - 10,
      
      Al1Y = ResuSemanalY + (ResuSemanalH/2),
      Al1R = (ResuSemanalH - 25) / 2,
      Al1X = ResuSemanalX + 1.5*Al1R,
      
      Al2X = Al1X + 3*Al1R,
      Al2Y = Al1Y,
      Al2R = Al1R,
      
      Al3X = Al1X + 6*Al1R,
      Al3Y = Al1Y,
      Al3R = Al1R,
      
      Al4X = Al1X + 9*Al1R,
      Al4Y = Al1Y,
      Al4R = Al1R,
      
      Al5X = Al1X + 12*Al1R,
      Al5Y = Al1Y,
      Al5R = Al1R,
      
      Al6X = Al1X + 15*Al1R,
      Al6Y = Al1Y,
      Al6R = Al1R,
      
      Al7X = Al1X + 18*Al1R,
      Al7Y = Al1Y,
      Al7R = Al1R,
  
      ResuSemanalW = (Al7X + 1.5*Al1R) - ResuSemanalX;

      
float MediaSemanalX = ResuSemanalX + ResuSemanalW + 10,
      MediaSemanalY = ResuSemanalY,
      MediaSemanalW = Perfil2W,
      MediaSemanalH = ResuSemanalH;        
      
      
      
//ALIMENTACION//
float CPGX = InfoDiaX + InfoDiaW/2,
      CPGY = InfoDiaY + InfoDiaH/3,
      CPGR = InfoDiaW/4;
String[] CPGT = {"CARBOHIDRATOS", "PROTEINAS", "GRASAS"};
float[] CPGV = {400, 600, 100};
color[] CPGC = {color(255, 133, 133), color(170, 206, 11), color(122, 225, 225)};

float CalIngX = ResuDiaX + ResuDiaW/2,
      CalIngY = ResuDiaY + 2*(ResuDiaH/5),
      CalIngR = ResuDiaW/4;
String[] CalIngT = {"800/1000", "CALORIAS INGERIDAS"};
float[] CalIngV = {800, 200};
color[] CalIngC = {color(170, 206, 11), color(236, 237, 239)};


  

  
//ACTIVIDAD//
float CalQueX = ResuDiaX + ResuDiaW/2,
      CalQueY = ResuDiaY + 2*(ResuDiaH/5),
      CalQueR = ResuDiaW/4;
String[]CalQueT = {"1000/1400", "CALORIAS QUEMADAS"};
float[] CalQueV = {800, 200};
color[] CalQueC = {color(255, 140, 66), color(236, 237, 239)};

float DeportesX = InfoDiaX + InfoDiaW/2,
      DeportesY = InfoDiaY + InfoDiaH/3,
      DeportesR = InfoDiaW/4;
String[] DeportesT = {"CORRER", "PADLE", "CAMINAR", "FUTBOL", "PESAS"};
float[] DeportesV = {400, 600, 100, 300, 200};
color[] DeportesC = {color(255, 66, 66), color(255, 94, 66), color(255, 122, 66), color (255, 122, 66), color (231, 131, 90)}; 

      
//HIDRATACION//
float AnadirAguaX = margenX,
      AnadirAguaY = AnadirItemY,
      AnadirAguaW = AnadirItemW,
      AnadirAguaH = 360;
      
float bEditarAguaX = AnadirAguaX,
      bEditarAguaY = AnadirItemY + AnadirAguaH + 10,
      bEditarAguaW = AnadirAguaW,
      bEditarAguaH = HEIGHT - bEditarAguaY - margenY;  

float AnadirManualX = AnadirAguaX + 10,
      AnadirManualY = AnadirAguaY + 10,
      AnadirManualW = 60,
      AnadirManualH = 30,
      
      OKAnadirManualR = 15,
      OKAnadirManualX = (AnadirManualX + AnadirManualW) + (AnadirAguaW - AnadirManualW - 35),
      OKAnadirManualY = AnadirManualY + (AnadirManualH/2);
      
float VasoX = margenX + (AnadirAguaW/2),
      VasoW = 40,
      VasoH = 48,    
      
      Vaso1Y = AnadirAguaY + AnadirManualH + 25 + 30,
      Vaso2Y = AnadirAguaY + AnadirManualH + 50 + 30 + 1*VasoH,
      Vaso3Y = AnadirAguaY + AnadirManualH + 75 + 30 + 2*VasoH,
      Vaso4Y = AnadirAguaY + AnadirManualH + 100 + 30 + 3*VasoH,
      
      VasoTextoX = VasoX,
      VasoTexto1Y = Vaso1Y + 5,
      VasoTexto2Y = Vaso2Y + 5,
      VasoTexto3Y = Vaso3Y + 5,
      VasoTexto4Y = Vaso4Y + 5;
      
float MlBebX = ResuDiaX + ResuDiaW/2,
      MlBebY = ResuDiaY + 2*(ResuDiaH/5),
      MlBebR = ResuDiaW/4;
String[]MlBebT = {"1500/2200", "ML BEBIDOS"};
float[] MlBebV = {800, 200};
color[] MlBebC = {color(122, 225, 225), color(236, 237, 239)};

float AguaHorarioX = InfoDiaX + InfoDiaW/2,
      AguaHorarioY = InfoDiaY + InfoDiaH/3,
      AguaHorarioR = InfoDiaW/4;
String[]AguaHorarioT = {"MADRUGADA (- 6:00)", "MAÑANANA  (-12:00)", "MEDIODIA  (-16:00)", "TARDE     (-20:00)", "NOCHE     (-00:00)"};
float[] AguaHorarioV = {500, 600, 250, 600, 250};
color[] AguaHorarioC = {color(148, 199, 199), color(122, 225, 225), color(122, 199, 225), color (122, 173, 225), color (121, 147, 224)}; 


//SUBPANTALLAS//
float BuscarItemsX = AnadirItemX, //40
      BuscarItemsY = AnadirItemY, //147
      BuscarItemsW = 1.5*AnadirItemW, //180
      BuscarItemsH = AnadirItemH + CrearItemH + 10,
      
      CTBuscarItemsX = BuscarItemsX + 10,
      CTBuscarItemsY = BuscarItemsY + 10,
      CTBuscarItemsW = BuscarItemsW - 20,
      CTBuscarItemsH = 40,
      
      AjustarItemsX = BuscarItemsX + BuscarItemsW + 10, // 230
      AjustarItemsY = BuscarItemsY, //147
      AjustarItemsW = WIDTH - 2*margenX - BuscarItemsW - 10,
      AjustarItemsH = BuscarItemsH;
      
float bRegistrarX = WIDTH - 150,
      bRegistrarY = bAtrasY + 30, 
      bRegistrarW = 100, 
      bRegistrarH = 40;
      
      
//ALIMENTACIÓN REGISTRO//
float NombreItX = AjustarItemsX + 10, //240
      NombreItY = AjustarItemsY + 30, //177
      
      TaPorX = NombreItX + 20,
      TaPorY = NombreItY + 30,
      
      HoraX = TaPorX, //260
      HoraY = NombreItY + 30 + 70, //277
      
      FechaX = TaPorX,
      FechaY = NombreItY + 30 + 140, //347
      
      PropiedadesX = FechaX + 220,
      PropiedadesY = FechaY,
      
      IRecX = PropiedadesX + 220,
      IRecY = FechaY;
      
float CTCantidadItemsX = TaPorX,
      CTCantidadItemsY = TaPorY + 10,
      CTCantidadItemsW = (AjustarItemsW - 2*(CTCantidadItemsX-AjustarItemsX)) / 4 - 10,
      CTCantidadItemsH = 20,

      sMedidaItemX = CTCantidadItemsX + CTCantidadItemsW + 20,
      sMedidaItemY = CTCantidadItemsY,
      sMedidaItemW = CTCantidadItemsW,
      sMedidaItemH = CTCantidadItemsH,
            
      CalTotX = sMedidaItemX + sMedidaItemW + 40,
      CalTotY = TaPorY;
      
String[] sMedidaItemA = {"g", "Kg", "tablespoon", "teaspoon"};

float CaloriasItemX = CalTotX,
      CaloriasItemY = CTCantidadItemsY,
      CaloriasItemW = CTCantidadItemsW,
      CaloriasItemH = CTCantidadItemsH;
 
float bDesayunoX = HoraX,
      bDesayunoY = HoraY + 10,
      bDesayunoW = 80,
      bDesayunoH = 20,
      
      bMananaX = bDesayunoX + bDesayunoW + 20,
      bMananaY = bDesayunoY,
      bMananaW = bDesayunoW,
      bMananaH = bDesayunoH,
  
      bAlmuerzoX = bMananaX + bMananaW + 20,
      bAlmuerzoY = bDesayunoY,
      bAlmuerzoW = bDesayunoW,
      bAlmuerzoH = bDesayunoH,
      
      bMeriendaX = bAlmuerzoX + bAlmuerzoW + 20,
      bMeriendaY = bDesayunoY,
      bMeriendaW = bDesayunoW,
      bMeriendaH = bDesayunoH,
 
      bCenaX = bMeriendaX + bMeriendaW + 20,
      bCenaY = bDesayunoY,
      bCenaW = bDesayunoW,
      bCenaH = bDesayunoH,
      
      bNocheX = bCenaX + bCenaW + 20,
      bNocheY = bDesayunoY,
      bNocheW = bDesayunoW,
      bNocheH = bDesayunoH;
      
int   cDiaRegistroX = 260,
      cDiaRegistroY = 375,
      cDiaRegistroW = 200,
      cDiaRegistroH = 165;
      
//

float tCPGW = 800, tCPGH = 300;

int files = 6, columnes = 5;

// Títols de les columnes 
String[] headers = {"Id", "Nom", "Llinatges", "Edat", "Sexe"};

// Amplades de les columnes
float[] colWidths = {10, 20, 40, 10, 20};

// Dades de la taula
String[][] info = {
                     {"1", "Pere", "Soler Miralles", "33", "Home"},
                     {"2", "Maria", "Garcia Lopez", "25", "Dona"},
                     {"3", "Joan", "Melis Cabrer", "47", "Home"},
                     {"4", "Bel", "Riera Mates", "52", "Dona"},
                     {"5", "Jose", "Perez Galdós", "37", "Home"},
                  };
      
 //
 
 
float   btItemRec1X = IRecX, 
        btItemRec1Y = IRecY + 25, 
        btItemRec1R = 20,
        
        btItemRec2X = btItemRec1X, 
        btItemRec2Y = btItemRec1Y + btItemRec1R + 40, 
        btItemRec2R = btItemRec1R,
        
        btItemRec3X = btItemRec1X, 
        btItemRec3Y = btItemRec2Y + btItemRec2R + 40, 
        btItemRec3R = btItemRec1R,
        
        btItemRec1TX = btItemRec1X + btItemRec1R + 10,
        btItemRec1TY = btItemRec1Y + btItemRec1R - 15,
        
        btItemRec2TX = btItemRec2X + btItemRec1R + 10,
        btItemRec2TY = btItemRec2Y + btItemRec1R - 15,
        
        btItemRec3TX = btItemRec3X + btItemRec1R + 10,
        btItemRec3TY = btItemRec3Y + btItemRec1R - 15;
        
float  CTCantidadItemRec1X = btItemRec1X + 20, 
       CTCantidadItemRec1Y = btItemRec1Y + btItemRec1R - 5, 
       CTCantidadItemRec1W = 60, 
       CTCantidadItemRec1H = 15,
       
       CTCantidadItemRec2X = CTCantidadItemRec1X ,
       CTCantidadItemRec2Y = btItemRec2Y + btItemRec2R - 5, 
       CTCantidadItemRec2W = CTCantidadItemRec1W, 
       CTCantidadItemRec2H = CTCantidadItemRec1H,
       
       CTCantidadItemRec3X = CTCantidadItemRec1X, 
       CTCantidadItemRec3Y = btItemRec3Y + btItemRec3R - 5, 
       CTCantidadItemRec3W = CTCantidadItemRec1W, 
       CTCantidadItemRec3H = CTCantidadItemRec1H,
  
       sMedidaItemRec1X = CTCantidadItemRec1X + CTCantidadItemRec1W + 10,
       sMedidaItemRec1Y = CTCantidadItemRec1Y, 
       sMedidaItemRec1W = CTCantidadItemRec1W, 
       sMedidaItemRec1H = CTCantidadItemRec1H,
       
       sMedidaItemRec2X = sMedidaItemRec1X,
       sMedidaItemRec2Y = CTCantidadItemRec2Y,
       sMedidaItemRec2W = sMedidaItemRec1W, 
       sMedidaItemRec2H = sMedidaItemRec1H,
       
       sMedidaItemRec3X = sMedidaItemRec1X, 
       sMedidaItemRec3Y = CTCantidadItemRec3Y, 
       sMedidaItemRec3W = sMedidaItemRec1W, 
       sMedidaItemRec3H = sMedidaItemRec1H,
       
       CaloriasItemRec1X = sMedidaItemRec1X + sMedidaItemRec1W + 10, 
       CaloriasItemRec1Y = sMedidaItemRec1Y, 
       CaloriasItemRec1W = CTCantidadItemRec1W, 
       CaloriasItemRec1H = CTCantidadItemRec1H,
       
       CaloriasItemRec2X = CaloriasItemRec1X, 
       CaloriasItemRec2Y = sMedidaItemRec2Y, 
       CaloriasItemRec2W = CaloriasItemRec1W,
       CaloriasItemRec2H = CaloriasItemRec1H,
       
       CaloriasItemRec3X = CaloriasItemRec1X,
       CaloriasItemRec3Y = sMedidaItemRec3Y, 
       CaloriasItemRec3W = CaloriasItemRec1W,
       CaloriasItemRec3H = CaloriasItemRec1H;
       
       
//ALIMENTACIÓN RECETAS//
float  difEntreItems = 30,
       
       Item1X = TaPorX,
       Item1Y = TaPorY,
       
       Item2X = Item1X,
       Item2Y = Item1Y + difEntreItems,
       
       Item3X = Item1X,
       Item3Y = Item2Y + difEntreItems,
       
       Item4X = Item1X,
       Item4Y = Item3Y + difEntreItems,
       
       Item5X = Item1X,
       Item5Y = Item4Y + difEntreItems,
       
       Item6X = Item1X,
       Item6Y = Item5Y + difEntreItems;


//ACTIVIDAD REGISTRO//
float  EmpiezaX = TaPorX,
       EmpiezaY = TaPorY,
       
       DuradaX = HoraX,
       DuradaY = HoraY,
       
       CalTotQueX = EmpiezaX + CTCantidadItemsW + 60,
       CalTotQueY = DuradaY;
       
float  CTEmpiezaX = CTCantidadItemsX,
       CTEmpiezaY = CTCantidadItemsY, 
       CTEmpiezaW = CTCantidadItemsW, 
       CTEmpiezaH = CTCantidadItemsH,
       
       CTDuradaX = bDesayunoX, 
       CTDuradaY = bDesayunoY, 
       CTDuradaW = CTEmpiezaW,
       CTDuradaH = CTEmpiezaH,
       
       CaloriasQuemadasX = CalTotQueX,
       CaloriasQuemadasY = CTDuradaY,
       CaloriasQuemadasW = CTEmpiezaW,
       CaloriasQuemadasH = CTEmpiezaH;
