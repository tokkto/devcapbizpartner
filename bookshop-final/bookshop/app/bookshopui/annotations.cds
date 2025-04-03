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
            Value : author_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Value : genre_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : title,
        },
    ],
    UI.SelectionFields : [
        author_ID,
    ],
);

annotate service.Books with {
    author @(
        Common.Label : '{i18n>Authorid}',
        )
};

annotate service.Books with {
    descr @(
        Common.Label : '{i18n>Description}',
        )
};

annotate service.Authors with {
    name @Common.Label : 'author/name'
};

annotate service.Authors with {
    ID @(
        Common.Label : 'author/ID',
        )
};

annotate service.Books with {
    title @(
        Common.Label : '{i18n>Title}',
        )
};

annotate service.Books with {
    ID @(
        Common.Label : '{i18n>Id}',
        )
};

annotate service.Books with {
    genre @(
        Common.Label : '{i18n>Genreid}',
        Common.ValueListWithFixedValues : true,
    )
};

