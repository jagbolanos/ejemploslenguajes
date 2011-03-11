
type Nombre = String
type Apellido = String
type Edad = Int
type Persona = (Nombre, Apellido, Edad)


nombre :: Persona -> String
nombre (n,_,_) = n

--Grafo
type Vertice = Int
type Arista = (Vertice, Vertice, Double)
type Grafo = ([Vertice],[Arista])

buscar :: [Persona] -> String -> Persona

profundidad :: Grafo -> Vertice -> ([Vertice], [Arista])
