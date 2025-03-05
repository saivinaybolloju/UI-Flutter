import 'dart:io';
void main(){
	print("Enter x value");
	int x=int.parse(stdin.readLineSync()!);
	print("Enter y value");
	int y=int.parse(stdin.readLineSync()!);
	print(sum(x,y));
	print(sub(x,y));
	print(div(x,y));
	print(muldoub(x.toDouble(),y.toDouble()));
	print(mulint(x,y));
}

int sum(int x,int y)=>x+y;
int sub(int x,int y)=> x-y;
double div(int x,int y)=> x/y;
int muldoub(double x,double y)=> x~/y;
int mulint(int x,int y)=> x*y;
