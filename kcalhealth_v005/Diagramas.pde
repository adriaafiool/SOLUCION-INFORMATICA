class Diagrama {
  
  // Dimensions del Diagrama de Sectors
  float x, y, r, g;
  
  // Informació del diagrama (textos, valors i colors)
  String[] textos;
  float[] valores;
  float[] percentages;
  color[] colores;
  
  // Suma total dels valors
  float total;
  
  // Constructor
  
  Diagrama(float x, float y, float r, float g){
    this.x = x; this.y = y; this.r = r; this.g = g;
  }
  
  // Setters
  
  void setTexts(String[] t){
    this.textos = t;
  }
  
  void setValues(float[] v){
    this.valores = v;
    this.total = 0;
    for(int i=0; i<valores.length; i++){
      this.total += this.valores[i];
    }
    
    this.percentages = new float[valores.length];
    for(int i=0; i<percentages.length; i++){
      this.percentages[i] = (this.valores[i] / this.total)*100;
    }
  }
  
  void setColors(color[] c){
    this.colores = c;
  }
  
  // Dibuixa el Diagrama de Sectors
  
  void display(){
    pushStyle();
    
    float angStart = 0;
    for(int i=0; i<this.valores.length; i++){
      
      float sectorValue = (this.valores[i] / this.total)*TWO_PI;
      float angEnd = angStart + sectorValue;
      
      fill(colores[i]); noStroke(); 
      arc(this.x, this.y, 2*this.r, 2*this.r, angStart, angEnd);
      
      float textX = this.x - 1.5*this.r;
      float textY = this.y + 1.5*this.r + this.g*i;
      fill(0); textAlign(CORNER); textFont (fuente1); textSize(this.g);
      text(this.textos[i], textX, textY);
      
      float percX = this.x + 0.8*this.r;  //hauria d ser diferent depenent de la grossor de la lletra
      float percY = this.y + 1.5*this.r + this.g * i;
      String percentage = nf(this.percentages[i], 2, 2);
      text(percentage+"%", percX, percY);
      
      angStart = angEnd;
    }
    popStyle();
  }
  
}
