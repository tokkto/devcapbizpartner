using AdminService as service from '../../srv/admin-service';
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
    ],
    UI.SelectionFields : [
        ID,
        title,
        descr,
        author_ID,
        genre_ID,
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
        Common.Label : '{i18n>Authorid}',
        Common.Text : descr,
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Books with {
    descr @(
        Common.Label : '{i18n>Description}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : descr,
                    ValueListProperty : 'title',
                },
            ],
            Label : 'Description',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Authors with {
    name @Common.Label : 'author/name'
};

annotate service.Authors with {
    ID @Common.Label : 'author/ID'
};

annotate service.Books with {
    title @(
        Common.Label : '{i18n>Title}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : title,
                    ValueListProperty : 'title',
                },
            ],
            Label : 'Title',
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : descr,
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
                    ValueListProperty : 'author_ID',
                },
            ],
            Label : 'ID',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Books with {
    genre @(
        Common.Label : '{i18n>Genreid}',
        Common.ValueListWithFixedValues : true,
    )
};

