def PI = 3.1416

def multiplicar(x: Int, y: Int) = x * y

def factorial(x:Int) : Int = x match {
	case 0 => 1
	case 1 => 1
	case n => n * factorial(n-1)
}

def fibonacci(x:Int) : Int  = x match {
	case 0 => 0
	case 1 => 1
	case n => fibonacci(n-1) + fibonacci(n-2)
}

def fibayuda(a: Int, b:Int, x: Int, i:Int) : Int = if (x == i) a+b else fibayuda(b, a+b, x, i+1)

def fib(x:Int) : Int = x match {
	case 0 => 0
	case 1 => 1
	case n => fibayuda(0, 1, n, 2)
}

def fibayuda2(a:Int, b:Int, x:Int) : Int = x match {
	case 2 => a + b
	case n => fibayuda2(b, a+b, x-1)
}

def fib2(x:Int) : Int = x match {
	case 0 => 0
	case 1 => 1
	case n => fibayuda2(0, 1, n)
}

//def fibLista(x:Int) : List[Int]

//def cuadratica(a:Double, b:Double, c:Double) : List(Double) 

def miOr(x:Boolean, y:Boolean) : Boolean = (x, y) match {
	case (false, false) => false
	case (true, _)  => true
	case (_, true) => true
}

def miAnd(x:Boolean, y:Boolean) = (x, y) match {
	case (true, true) => true
	case _ => false
}

def fibo(x:Int,a:Int,b:Int) : List[Int] = if(x==0) List(x) else List(b) ++ fibo(x-1,b,a+b)
def fibLista(x:Int) :List[Int] = fibo(x,0,1).sorted



def quadraticFormula(a:Int, b:Int, c:Int) : List[Double] = { 
  def d = discr(a,b,c) 
  if (d > 0)
    List((-b - d)/2*a, (-b + d)/2*a)
  else if (d == 0)
    List(-b/(2*a))
  else
    Nil
}

def discr(a:Int, b:Int, c:Int) : Double = math.sqrt(math.pow(b,2) - (4*a*c)) //determinar el discriminante

def sumatoria(lista:List[Int]) : Int = lista match {
	case Nil => 0
	case x :: xs => x + sumatoria(xs)
}
