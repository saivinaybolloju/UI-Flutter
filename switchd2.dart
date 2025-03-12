String switchd2(String a){
	var x=switch(a){
			'hot'||'sunny'=>"SUMMER",		
 			'cool'||'breeze'=>"WINTER",		
			_=>"NOT FOUND"
	};
	return x;
}