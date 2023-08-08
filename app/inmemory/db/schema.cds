namespace guitarstore;

entity Product {
  key ID: UUID;
  productName: String(200);
  productDescription: String(500);
  targetAudiencePitch: String(500);
  warehouse: Association to Warehouse;
  discount: Association to Discount;
}

entity Warehouse {
  key ID: UUID;
  stockQuantity: Integer;
  products: Association to many Product on products.warehouse = $self;
}

entity Discount {
  key ID: UUID;
  discountPercentage: Double;
  discountDescription: String(500);
  products: Association to many Product on products.discount = $self;
}

