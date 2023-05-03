package customer

// El cliente es la estructura de un cliente.
type Customer struct {
	name    string
	address string
	phone   string
}

// Nuevo devuelve un nuevo cliente.
func New(name, address, phone string) Customer {
	return Customer{name, address, phone}
}
