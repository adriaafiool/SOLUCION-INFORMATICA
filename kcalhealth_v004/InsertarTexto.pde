class CampoTexto {
  // Propietats del camp de text
  float x, y, h, w;
  
  // Colors
  color bgColor = color (236, 237, 239);
  color fgColor = color(0, 0, 0);
  
  // Text del camp
  String text = "";
  int textLength = 0;
  int textSize = 12;

  boolean selected = false;
   
  // Constructor
  CampoTexto (float x, float y, float w, float h) {
      this.x = x; this.y = y; this.w = w; this.h = h;
   }
  
  // Dibuixa el Camp de Text
  void display() {
      pushStyle();
      fill(bgColor);

      noStroke();
      rect(x, y, w, h, 8);
      
      fill(fgColor);
      textSize(textSize);
      text(text, this.x, this.y + (this.h/2));
      popStyle();
   }
   
   // Afegeix, lleva el text que es tecleja
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
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
