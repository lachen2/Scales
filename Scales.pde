float p = 0;
//color purple
boolean shift = true;
int bezierNum = 0;
//number of scales
int j = 0;
void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

void draw() {
  //your code here
 for (int shiftY = -10; shiftY < 530; shiftY += 50) {
    for (int shiftX = -10; shiftX < 530; shiftX += 50) {
    if (shift == true)
      scale(shiftX, shiftY);
    else
      scale(shiftX, shiftY);
    }
  } 
}

void scale(int x, int y) {
    //your code here
    fill(10, 200, 100);
    strokeWeight(4);
    stroke(153, 255, 219);
    
    if (shift == true)
      //shift scale
      bezier(x - 40, y + 55, x  - 45, y - 33, x + 45, y - 33, x + 40, y + 55);
    else
      bezier(x - 40 - 10, y + 55, x  - 45 - 10, y - 33, x + 45 - 10, y - 33, x + 40 - 10, y + 55);
      //outside scale design
      
    while(j < 60) {
    bezierNum++;
    fill(20 + p, p, 20 + p);
    strokeWeight(2);

    
    //change color of stroke for inside scale
    stroke(255 - (p), 255 - (p * 2), 255 - (p * 3 / 2));
    
    if (shift == true) {
      //inside scale design
      bezier(x - 23 + j, y + 55, x  - 45, y - 30, x + 45, y - 30, x + 23 - j, y + 55);
      //horn
      fill(180, 240, 250);
      stroke(120, 220, 250);
      beginShape();
      curveVertex(x - 15, y - 8);
      curveVertex(x - 15, y - 8);
      curveVertex(x - 13, y - 4);
      curveVertex(x, y + 13);
      curveVertex(x + 5, y + 8);
      curveVertex(x + 5, y + 8);
      endShape(); 
    }
    else {
      bezier(x - 23 + j - 10, y + 55, x  - 45 - 10, y - 30, x + 45 - 10, y - 30, x + 23 - j - 10, y + 55);
      //horn
      fill(180, 240, 250);
      stroke(120, 220, 250);
      beginShape();
      curveVertex(x - 15 - 10, y - 8);
      curveVertex(x - 15 - 10, y - 8);
      curveVertex(x - 13 - 10, y - 4);
      curveVertex(x - 10, y + 13);
      curveVertex(x - 10 + 5, y + 8);
      curveVertex(x - 10 + 5, y + 8);
      endShape(); 
    }
    
    //slowly change color of scale
    p += 0.8;
    
    j += 15;
  }
    j = 0;
    
    if (shift == true)
      shift = false;
    else
      shift = true;

}
