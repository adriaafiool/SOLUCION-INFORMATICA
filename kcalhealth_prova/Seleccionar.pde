class Select {
  
  float x, y, w, h;          // Posició i dimensions
  String[] texts;            // Valors possibles
  String selectedValue;      // Valor Seleccionat
  
  boolean collapsed = true;  // Plegat / Desplegat
  boolean enabled;           // Abilitat / desabilitat
  
  float lineSpace = 15;      // Espai entre línies
  
  Select(String[] texts, float x, float y, float w, float h){
    
    this.texts = texts;
    this.selectedValue = "";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.collapsed = true;
  }
  
  void display(){
    
    noStroke(); fill(236, 237, 239);
    rect(this.x, this.y, this.w, this.h, 8);
    
    fill(grisfuerte);
    rect(this.x + this.w - (this.w/5), this.y, this.w/5, this.h, 8);
    
    
    fill(0); textFont(fuente1); textSize(12);
    text(selectedValue, this.x + 10, this.y + 20);
    
    if(!this.collapsed){
      
      fill(255); noStroke();
      rect(this.x, this.y+h, this.w, (this.h + lineSpace)*texts.length);
      
      for(int i=0; i<texts.length; i++){
        
        if(i== clickedOption()){
          fill(200); noStroke();
          rect(this.x+4, this.y+4 + this.h + (this.h + lineSpace)*i - 2, this.w -8, this.h + lineSpace - 8);
        }
        
        fill(0);
        text(texts[i], this.x + 10, this.y + this.h + 25 + (this.h + lineSpace)*i);
      }
    }
    
  }
  
  void setCollapsed(boolean b){
    this.collapsed = b;
  }
  
  void toggle(){
    this.collapsed = !this.collapsed;
  }
  
  
  void update(){
    int option = clickedOption();
    selectedValue = texts[option];
  }
  
 // Indica si el cursor està sobre el select
 boolean mouseOverSelect(){
   if(this.collapsed){
     return (mouseX >= x) && 
            (mouseX <= x + w) && 
            (mouseY >= y) && 
            (mouseY <= y + h); 
   }
   else {
     return (mouseX>= x) && 
            (mouseX<= x + w) && 
            (mouseY>= y) && 
            (mouseY<= y + h + (h + lineSpace)*texts.length); 
   }
 }
 
 int clickedOption(){
   int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*texts.length, 
                            0, texts.length);
   return i;
 }
  
}
