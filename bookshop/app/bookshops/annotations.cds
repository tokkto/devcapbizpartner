using AdminService as service from '../../srv/admin-service';
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
                Label : '{i18n>Titulo}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : author.name,
                Label : '{i18n>Autor}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Descripcion}',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Stock}',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Precio}',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>DescripcinGeneral}',
            ID : 'Descripcingeneral',
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
            Label : '{i18n>Titulo}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : author.books.author.name,
            Label : '{i18n>Autor}',
        },
        {
            $Type : 'UI.DataField',
            Value : author.books.genre.name,
            Label : '{i18n>Genero}',
        },
    ],
    UI.SelectionFields : [
        author_ID,
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
            Value : title,
        },
        TypeImageUrl : 'sap-icon://alert',
    },
    UI.FieldGroup #i18nDetalles : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
);

annotate service.Books with {
    author @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Authors',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.Label : '{i18n>Autor}',
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Authors with {
    ID @Common.Text : name
};

