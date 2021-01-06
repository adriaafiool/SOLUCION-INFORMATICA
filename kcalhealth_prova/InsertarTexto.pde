class CampoTexto {
  // Propietats del camp de text
  float x, y, h, w;
  
  // Text del camp
  String text = "";
  int textLength = 0;
  float s;
  boolean enabled; 

  boolean selected = false;
   
  // Constructor
  CampoTexto (float x, float y, float w, float h, float s) {
      this.x = x; 
      this.y = y; 
      this.w = w; 
      this.h = h; 
      this.s = s;
      this.enabled = true;
   }
  
  
void setEnabled(boolean b){
   this.enabled = b;
 }
 
  // Dibuixa el Camp de Text
  void display() {
      pushStyle();
      fill(236, 237, 239);

      noStroke();
      rect(x, y, w, h, 8);
      
      fill(0);
      textFont(fuente1); textSize(s);
      text(text, this.x, this.y + (this.h/2));
      popStyle();
   }
   
   // Afegeix, lleva el text que es tecleja
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (mousePressed && (bAtras.mouseOverButton() || bHecho.mouseOverButton())){
             eliminaTodoTexto();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
            
           boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
           boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
           boolean isKeyNumber = (key >= '0' && key <= '9');
      
           if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
               addText(key);
           }
         }
      }
   }
   
   // Afegeix la lletra c al final del text
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   // Lleva la darrera lletra del text
   void removeText() {
      if (textLength - 1 >= 0) {
         text = text.substring(0, textLength - 1);
         textLength--;
      }
   }
   
   void eliminaTodoTexto (){
     this.text = " ";
   }

   // Indica si el ratolí està sobre el camp de text
   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }
   
   // Selecciona el camp de text si pitjam a sobre
   // Deselecciona el camp de text si pitjam a fora
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
      } else {
         selected = false;
      }
   }
   
}
