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
      
float IconoApartadoW = 80,
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
float CPGX = CrearItemX + CrearItemW/2,
      CPGY = CrearItemY + CrearItemH/2,
      CPGR = CrearItemW/4;

      
 //HIDRATACION//
float AnadirAguaX = margenX,
      AnadirAguaY = AnadirItemY,
      AnadirAguaW = AnadirItemW,
      AnadirAguaH = 360;
      
float EditarAguaX = AnadirAguaX,
      EditarAguaY = AnadirItemY + AnadirAguaH + 10,
      EditarAguaW = AnadirAguaW,
      EditarAguaH = HEIGHT - EditarAguaY - margenY;  

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
      
