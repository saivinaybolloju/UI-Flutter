import 'dart:io';
void main(){
	var name="Vinayyyy";
	print(name);
	stdout.write("22AG1A6709");
	print(" is the Roll Number");
	String? marks=stdin.readLineSync();
	String? address=stdin.readLineSync();

	stdout.write("Marks ");
	print(marks);
	stdout.write("Address ");
	print(address);

	String? Newvar=null;
	//String Dept=stdin.readLineSync()!;
	//print(Dept);
	
	int x=int.parse(stdin.readLineSync()!);
	int y=int.parse(stdin.readLineSync()!);
	stdout.write("Addition ");
	print(x+y);
	print('The value of x,y is : ${x+y}');
	stdout.write("Subtraction ");
	print(x-y);
	stdout.write("Multiplication ");
	print(x*y);
	stdout.write("Division ");
	print(x/y);
	stdout.write("Modulo ");
	print(x%y);

}