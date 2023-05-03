package main

import (
	"fmt"

	"github.com/ypnqh/composition/pkg/customer"
	"github.com/ypnqh/composition/pkg/invoice"
	"github.com/ypnqh/composition/pkg/invoiceitem"
)

func main() {
	i := invoice.New(
		"Perú",
		"Cusco",
		customer.New("Yerson", "cl 22 # 32-4", "9312193"),
		[]invoiceitem.Item{
			invoiceitem.New(1, "Curso de Go", 12.34),
			invoiceitem.New(2, "Curso de POO", 23.45),
			invoiceitem.New(3, "Curso de BD", 34.56),
		},
	)
	i.SetTotal()
	fmt.Printf("%+v", i)
}
