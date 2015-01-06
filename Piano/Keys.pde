class Keys{
 Keys(boolean black,int x,int y, char n){
  int keyWidth = 50;
  int keyLength = 200;
   if(black){
     fill(0);
     keyWidth = 30;
     keyLength = 100;
   }
   rect(x,y,keyWidth,keyLength);
 }
}
