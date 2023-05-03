package invoiceitem

type Item struct {
	id      uint
	product string
	value   float64
}

func New(id uint, product string, value float64) Item {
	return Item{id, product, value}
}

func (i Item) Value() float64 {
	return i.value
}
