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
                Label : '{i18n>Titulo}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Descripcion}',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Precio}',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Value : author_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Overview}',
            ID : 'i18nOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeneratedFacet1',
                    Label : '{i18n>GeneralInformation}',
                    Target : '@UI.FieldGroup#GeneratedGroup',
                },
            ],
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
            Label : '{i18n>Titulo}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : descr,
            Label : '{i18n>Descripcion}',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : '{i18n>Precio}',
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
            Label : 'stock',
        },
        {
            $Type : 'UI.DataField',
            Value : author.name,
            Label : '{i18n>Autor}',
        },
    ],
    UI.SelectionFields : [
        title,
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
    },
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
                Label : 'stock',
            },
        ],
    },
);

annotate service.Books with {
    author @(
        Common.Label : '{i18n>Autor}',
        Common.Text : author.name,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Authors',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.Books with {
    title @(
        Common.Label : '{i18n>Title}',
        )
};

annotate service.Authors with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Authors',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};

annotate service.Authors with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : name,
    }
);

annotate service.Authors with {
    ID @Common.Text : name
};

