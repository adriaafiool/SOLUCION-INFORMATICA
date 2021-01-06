float WIDTH = 1000,
      HEIGHT = 600,
      margenX = 40,
      margenY = 40;
      


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
      
float AnadirItemX = margenX,
      AnadirItemY = 1.3*margenY + Logo2H + bAtrasH, //(147)
      AnadirItemW = 120,
      AnadirItemH = (HEIGHT - AnadirItemY - 1.2*margenY)/2,
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
      GrafAlimeW = WIDTH - 2.5*AnadirItemW - 3.5*margenX,
      GrafAlimeH = HEIGHT - AnadirItemY - 80 - margenY;
      
float ResuSemanalX = GrafAlimeX,
      ResuSemanalY = AnadirItemY,
      ResuSemanalW = GrafAlimeW,
      ResuSemanalH = HEIGHT - AnadirItemY - margenY - GrafAlimeH - 10;
      
      
      
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



      
