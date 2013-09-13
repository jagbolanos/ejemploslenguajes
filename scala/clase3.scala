def sumarListas(l1:List[Int], l2:List[Int]) : List[Int] = (l1, l2) match {
	case (Nil, Nil) => Nil
	case (c1 :: cola1, Nil) => c1 :: sumarListas(cola1,Nil)
	case (Nil, c2 :: cola2) => c2 :: sumarListas(Nil,cola2)
	case (c1::cola1, c2::cola2) => (c1+c2) :: sumarListas(cola1,cola2)
}

def mezclar(l1:List[Int], l2:List[Int]) : List[(Int,Int)] = (l1, l2) match {
	case (Nil, Nil) => Nil
	case (c1 :: cola1, Nil) => (c1,0) :: mezclar(cola1,Nil)
	case (Nil, c2 :: cola2) => (0,c2) :: mezclar(Nil,cola2)
	case (c1::cola1, c2::cola2) => (c1,c2) :: mezclar(cola1,cola2)
}

def voltear(l:List[Int]) : List[Int] = l match {
	case Nil => Nil
	case x :: xs => voltear(xs) ++ List(x)
}

def sumarOpuestos(l:List[Int]) : List[Int] = sumarListas(l, voltear(l))

def menoresoigual(x:Int, l:List[Int]) : List[Int] = l match {
	case Nil => Nil
	case y :: ys => if (y <= x) y :: menoresoigual(x, ys) else menoresoigual(x, ys)
}
def mayores(x:Int, l:List[Int]) : List[Int] = l match {
	case Nil => Nil
	case y :: ys => if (y > x) y :: mayores(x, ys) else mayores(x, ys)
}

def quicksort(l:List[Int]) : List[Int] = l match {
	case Nil => Nil
	case x :: xs => quicksort(menoresoigual(x, xs)) ++ List(x) ++ quicksort(mayores(x, xs))
}

abstract class Booleano
case class Verdadero() extends Booleano {
	override def toString = "V"
}

case class Falso() extends Booleano {
	override def toString = "F"
}

def miAnd(x:Booleano, y:Booleano) : Booleano = (x, y) match {
	case (Verdadero(), Verdadero()) => Verdadero()
	case _ => Falso()
}

abstract class Expresion {
	def evaluar : Int
}

case class Suma(izq: Expresion, der:Expresion) extends Expresion {
	override def evaluar = izq.evaluar + der.evaluar
}

case class Mult(izq: Expresion, der:Expresion) extends Expresion {
	override def evaluar = izq.evaluar * der.evaluar
}

case class Literal(x:Int) extends Expresion {
	override def evaluar = x
}


def evaluar(e:Expresion) : Int = e match {
	case Mult(x,y) => evaluar(x) * evaluar(y)
	case Suma(x,y) => evaluar(x) + evaluar(y)
	case Literal(x) => x
}


