using { guitarstoreSrv } from '../srv/service.cds';

annotate guitarstoreSrv.Product with @odata.draft.enabled;
annotate guitarstoreSrv.Warehouse with @odata.draft.enabled;
annotate guitarstoreSrv.Discount with @odata.draft.enabled;
annotate guitarstoreSrv.Warehouse with @cds.odata.valuelist;
annotate guitarstoreSrv.Discount with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productName } };
annotate guitarstoreSrv.Product with {
  ID @Common.Text: { $value: productName, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Product with @UI.Identification: [{ Value: productName }];
annotate guitarstoreSrv.Product with {
  productName @title: 'Product Name';
  productDescription @title: 'Product Description';
  targetAudiencePitch @title: 'Target Audience Pitch'
};

annotate guitarstoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: targetAudiencePitch },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouse_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
];

annotate guitarstoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: targetAudiencePitch },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouse_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
  ]
};

annotate guitarstoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses', Title: { Value: stockQuantity } };
annotate guitarstoreSrv.Warehouse with {
  ID @Common.Text: { $value: stockQuantity, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Warehouse with @UI.Identification: [{ Value: stockQuantity }];
annotate guitarstoreSrv.Warehouse with {
  stockQuantity @title: 'Stock Quantity'
};

annotate guitarstoreSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: stockQuantity }
];

annotate guitarstoreSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: stockQuantity }
  ]
};

annotate guitarstoreSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Discount with @UI.HeaderInfo: { TypeName: 'Discount', TypeNamePlural: 'Discounts', Title: { Value: discountPercentage } };
annotate guitarstoreSrv.Discount with {
  ID @Common.Text: { $value: discountPercentage, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Discount with @UI.Identification: [{ Value: discountPercentage }];
annotate guitarstoreSrv.Discount with {
  discountPercentage @title: 'Discount Percentage';
  discountDescription @title: 'Discount Description'
};

annotate guitarstoreSrv.Discount with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: discountPercentage },
    { $Type: 'UI.DataField', Value: discountDescription }
];

annotate guitarstoreSrv.Discount with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: discountPercentage },
    { $Type: 'UI.DataField', Value: discountDescription }
  ]
};

annotate guitarstoreSrv.Discount with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

