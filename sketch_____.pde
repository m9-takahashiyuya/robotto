float baseH = 30;
float armL1 = 50;
float armL2 = 40;
float armL3 = 40;
float armW1 = 10;
float armW2 = 10;
float armW3 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float dif = 1.0;
void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}
void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'e'){
      angle2 = angle2 + dif;
    }
    if(key == 'E'){
      angle2 = angle2 - dif;
    }
  }   
  if(mousePressed == true){
    l3 = l3 + dif ;
  }
  if(mousePressed == false){
    l3 = l3 - dif ;
  }
  l3=constrain(l3,0,30);
   //base
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(175);
  box(60,60,baseH);
  
  //1st link
  rotateX(radians(angle1));
  translate(0,armL1/2+armW1/2,baseH/2+armW1/2);
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(0,armL2/2,0);
  rotateY(radians(angle2));  
  //go to center of 2nd joint
  translate(armL2/2-armW2/2,armW2,0);
  fill(125);
  box(armL2,armW2,armW2);
  
  //3rd link
  translate(l3, 0, 0);
  fill(100);
  box(armL3,armW3,armW3);

}
