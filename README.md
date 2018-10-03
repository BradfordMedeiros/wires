# wires

~~~~

module SUM {
	num1 number input
	num2 number input
	sum  string out

	wiring {
		value := num1 + num2 
		out value as sum  # implicit cast number to string
	}
}

port Print {
	printValue(value string) : bash {  # <-- : this maps to a lib, and the below is passed directly
		echo("wow some stuff %s, alue", value)
	}	
	printNative(value){
		a = 2
		r = a + 5
		echo(r)
	}
}

module Echoer uses Print {
	value  string input
	output string  output
	wiring {
		print(value)
		out output
	} 
}

summer := SUM
printer := Echoer
printer2 := Echoer 
summer.sum -> printer.value
2 -> summer.num1
3 -> summer.num2

print.output -> printer2
on summer.num2 -> 
	printer3 := Echoer
	print4 := Echoer
	summer.sum -> printer3.value
	[summer.sum, 3] -> printer4




~~~~