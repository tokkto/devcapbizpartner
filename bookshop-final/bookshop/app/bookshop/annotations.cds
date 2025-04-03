using CatalogService as service from '../../srv/cat-service';
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Id}',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Título}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Descripción}',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Autor}',
                Value : author,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Overview',
            ID : 'Overview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Detalles}',
                    ID : 'i18nDetalles',
                    Target : '@UI.FieldGroup#i18nDetalles',
                },
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Id}',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Título}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Descripción}',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Autor}',
            Value : author,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Gnero}',
            Value : genre_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
        },
    ],
    UI.SelectionFields : [
        author,
        price,
        stock,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : author,
        },
        TypeImageUrl : 'sap-icon://alert',
    },
    UI.FieldGroup #i18nDetalles : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Precio}',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Moneda}',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Stock1}',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Género',
                Value : genre_ID,
            },
        ],
    },
);

annotate service.Books with {
    stock @Common.Label : '{i18n>Stock}'
};

annotate service.Books with {
    price @Common.Label : '{i18n>Precio}'
};

annotate service.Books with {
    title @(
        Common.Label : '{i18n>TtuloDelLibro}',
        )
};

annotate service.Books with {
    author @(
        Common.Label : '{i18n>Autor}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author,
                    ValueListProperty : 'author',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : title,
            ![@UI.TextArrangement] : #TextSeparate
        },
    )
};

annotate service.Books with {
    ID @Common.Label : 'ID'
};

