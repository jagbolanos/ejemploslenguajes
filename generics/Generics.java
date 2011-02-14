public class Generics {

	public static <T extends Comparable<T>> T max_generico(T x, T y) {
		return x.compareTo(y) > 0 ? x : y;
	}

	public static void main(String args[]) {
		System.out.println("Max (5, 6):" + max_generico(5, 6));
		System.out.println("Max (6.6, 5.5):" + max_generico(6.6, 5.5));
	}
}
