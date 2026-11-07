class AddSub{
int a,b;
void Add(int x,int y){
a=x;
b=y;
System.out.println("Addition="+(a+b));
}
void Sub(int x,int y){
a=x;
b=y;
System.out.println("Subtraction="+(a-b));
}
}
class MulDiv extends AddSub{
void Mul(int x,int y){
a=x;
b=y;
System.out.println("Multiplication="+(a*b));
}
void Div(int x,int y){
a=x;
b=y;
System.out.println("Division="+(a/b));
}
}
class MathOperation{
public static void main(String[] args){
MulDiv obj=new MulDiv();
obj.Add(20,10);
obj.Sub(20,10);
obj.Mul(20,10);
obj.Div(20,10);
}
}