# Farm-System-Backend

BATCH INVENTORY:
id: number
category: [Livestock, Crops]
name: string ['Pigs', 'Chicken', 'Eggs']
unit: [Kilogram, Sack, Piece, Liter]
quantity: number
sellable_qty: number
unit_price: number
total_price: number
sell_status: [Raising, For Sale, Partial Sold, Sold]
supplier: string
stock_date: date
remarks: string


SALES RECORD:
id: number
batch_id: number
unit_sold: number
unit_price: number
total_price: number
amount_paid: number
buyer_name: string
sold_date: date
remarks: string


SUPPLY MASTER:
id: number
item_name: string
category: [Feed, Fertilizer, Medicine, Soil]
unit: [Kilogram, Sack, Piece, Liter]
qty_on_hand: number
reorder_level: number


STOCK-IN RECORD:
id: number
supply_id: number
qty_received: number
unit_cost: number
total_cost: number
supplier: string
delivery_date: date
remarks: string


STOCK-OUT RECORD:
id: number
supply_id: number
qty_issued: number
issued_date: number
