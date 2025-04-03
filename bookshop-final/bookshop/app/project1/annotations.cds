using AdminService as service from '../../srv/admin-service';
using from '@sap/cds/common';
using from '../../db/schema';


annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author_ID',
                Value : author_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'genre_ID',
                Value : genre_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currency_code',
                Value : currency_code,
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
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Titulo',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Autor',
            Value : author_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genero',
            Value : genre_ID,
        },
    ],
    UI.SelectionFields : [
        ID,
        texts.title,
        author.name,
    ],
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
        Common.Text : author.name,
    )
};

annotate service.Books with {
    ID @(
        Common.Label : '{i18n>Id}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'ID',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Books with {
    price @(
        Common.Label : 'Autor',
        Common.Text : author.name,
        )
};

annotate service.Books with {
    currency @(Common.Label : 'Titulo',
        Common.Text : descr,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : currency_code,
                    ValueListProperty : 'title',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
)};

annotate service.Currencies with {
    code @Common.Text : descr
};

annotate service.Books with {
    genre @Common.Text : genre.descr
};

annotate service.Books.texts with {
    title @(
        Common.Label : '{i18n>Titulo}',
        Common.Text : descr,
    )
};

annotate service.Authors with {
    name @Common.Label : '{i18n>Autor}'
};

