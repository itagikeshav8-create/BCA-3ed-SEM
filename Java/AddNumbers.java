class AddNumbers{
void add(int a,int b){
int sum=a+b;
System.out.println("Sum of integers="+sum);
}
void add(float x,float y){
float sum=x+y;
System.out.println("Sum of floats="+sum);
}
void add(){
int a=5,b=10;
int sum=a+b;
System.out.println("Default sum (integer)="+sum);
}
public static void main(String[]args){
AddNumbers obj=new AddNumbers();
obj.add();
obj.add(8,12);
obj.add(2.5f,4.5f);
}
}
