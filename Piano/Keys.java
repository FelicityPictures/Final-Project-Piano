public class Keys{
    //Instance variables: width, length, x/y coordinate, color; note
    int w,l,x,y,c;
    char note;
    
    //constructor
    Keys(boolean col,int x, int y, char note){
	setx(x);
	sety(y);
	setNote(note);
	if(col){
	    setw(30);
	    setl(100);
	    setColor(0);
	}else{
	    setw(50);
	    setl(200);
	    setColor(1);
	}
    }

    public int getx(){
	return x;
    }
    private void setx(int xcor){
	x=xcor;
    }

    public int gety(){
	return y;
    }
    private void sety(int ycor){
	y=ycor;
    }

    public int getw(){
	return w;
    }
    private void setw(int wide){
	w=wide;
    }
    
    public int getl(){
	return l;
    }
    private void setl(int high){
	l=high;
    }

    public int getColor(){
	return c;
    }
    private void setColor(int col){
	c=col;
    }

    public char getNote(){
	return note;
    }
    private void setNote(char n){
	note=n;
    }

    //used by Piano to change color and play note
    public void pressed(){
	int before = getColor();
	setColor(2);
	//show
	//go back to normal
	setColor(before);
    }
    
    public void show(){
	rect(x,y,w,l);
    }
    
}