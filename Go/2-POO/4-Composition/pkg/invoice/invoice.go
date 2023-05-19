package invoice

import (
	"github.com/ypnqh/composition/pkg/customer"
	"github.com/ypnqh/composition/pkg/invoiceitem"
)

// Invoice is a struct of a invoice
type Invoice struct {
	country string
	city    string
	total   float64
	client  customer.Customer
	items   []invoiceitem.Item
}

func New(country, city string, client customer.Customer, items []invoiceitem.Item) Invoice {
	return Invoice{country: country,
		city:   city,
		client: client,
		items:  items,
	}
}

// SetTotal is the setter of invoice.total
func (i *Invoice) SetTotal() {
	for _, item := range i.items {
		i.total += item.Value()
	}
}
