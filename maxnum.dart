import 'dart:io';
void main(){
	print("Enter x value");
	int x=int.parse(stdin.readLineSync()!);
	print("Enter y value");
	int y=int.parse(stdin.readLineSync()!);
	print("Enter z value");
	int z=int.parse(stdin.readLineSync()!);
	if(x>y && x>z)
		print("$x is Big number");
	else{
		if(y>x && y>z)
			print("$y is Big Number");
		else{
			print("$z is Big Number");
		}
	}	
}
