
def crearmultiplosdedos(i:Int) : List[Int] = if (i <= 1) List(2) else crearmultiplosdedos(i-1) ++ List(i*2)

//def goldenration(x:Int) : List[Double]

def fibonacci(a:Int, x:Int, b:Int) :Double  = x match {
	case 0 => 0
	case 1 => 1
	case 2 => a+b
	case n => fibonacci(b,x-1,a+b)
}

def fib2(x:Int) :Double = fibonacci(0,x,1)

def goldenRatio2(x:Int):List[Double] = x match {
	case 0 => Nil 
	case n => goldenRatio2(x-1)++List((fibonacci(0,x,1)/fibonacci(0,x-1,1)))
}


 
def goldenRatioFib(x:Int, a:Int, b:Int) : List[Double] = if (x < 2) List() else  List[Double](b.toDouble/a.toDouble) ++ goldenRatioFib(x - 1, b, a + b)

def goldenRatio(x:Int) : List[Double] = 
  goldenRatioFib(x,1,1)

def sumatoria(lista:List[Int]) : Int = lista match {
	case Nil => 0
	case cabeza :: cola => cabeza + sumatoria(cola)
} 

def invertir(lista:List[Int]) : List[Int] = lista match {
	case Nil => Nil
	case cabeza :: cola => invertir(cola) ++ List(cabeza)
}

def longitud(lista:List[Any]) : Int = lista match {
	case Nil => 0
	case cabeza :: cola => 1 + longitud(cola)
}

def extraermultiplosde2(lista:List[Int]) : List[Int] = lista match {
	case Nil => Nil
	case cabeza :: cola => if (cabeza % 2 == 0) cabeza :: extraermultiplosde2(cola) else extraermultiplosde2(cola)
}

 
