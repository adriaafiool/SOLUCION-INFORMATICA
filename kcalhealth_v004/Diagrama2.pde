class Diagrama2 {
  
  // Dimensions del Diagrama de Sectors
  float x, y, r;
  
  // Informació del diagrama (textos, valors i colors)
  String[] textos;
  float[] valores;
  float[] percentages;
  color[] colores;
  
  // Suma total dels valors
  float total;
  
  // Constructor
  
  Diagrama2(float x, float y, float r){
    this.x = x; this.y = y; this.r = r;
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
      fill(255,255,255); noStroke();
      circle(this.x, this.y, 1.2*this.r);
      
      float textY = this.y + 2*(this.r/5) + 20*i;
      fill(0); textAlign(CENTER); textFont (fuente1); textSize(12);
      text(this.textos[i], this.x, textY + this.r);
     
      angStart = angEnd;
    }
    popStyle();
  }
  
}
