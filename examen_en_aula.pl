"LG-510".
"Samsung B125".
"LG Batimix".
"Samsung L-200".
"Bose".
"LG".
entretenimiento.
electrodomestico.
batidora.
lavadora.
parlantes.

% categoria GLOBAL
producto.

esProducto("LG-510").
esProducto("Samsung B125").
esProducto("LG Batimix").
esProducto("Samsung L-200").
esProducto("Bose").
esProducto("LG").

esCategoria(entretenimiento).
esCategoria(electrodomestico).
esCategoria(batidora).
esCategoria(lavadora).
esCategoria(parlantes).
esCategoria(producto).

estaEnCategoria("LG-510", batidora).
estaEnCategoria("Samsung B125", batidora).
estaEnCategoria("LG Batimix", lavadora).
estaEnCategoria("Samsung L-200", lavadora).
estaEnCategoria("Bose", parlantes).
estaEnCategoria("LG", parlantes).

% categoria dentro de categoria
estaEnCategoria(batidora, electrodomestico).
estaEnCategoria(lavadora, electrodomestico).
estaEnCategoria(parlantes, entretenimiento).

% categoria en categoria global
estaEnCategoria(electrodomestico, producto).
estaEnCategoria(lavadora, producto).

esProductoDentrodeCategoria(Producto, Categoia):-esProducto(Producto),esCategoria(Categoria),estaEnCategoria(Producto, Categoria).
esProductoDentrodeCategoria(Producto, Categoria):-estaEnCategoria(Categoria2, Categoria),esProductoDentrodeCategoria(Producto, Categoria2).
