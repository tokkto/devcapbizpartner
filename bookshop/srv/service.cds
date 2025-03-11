using { bookshop as my } from '../db/schema.cds';

@path : '/service/bookshopService'
service bookshopService
{
    @odata.draft.enabled
    entity Books as
        projection on my.Books
        {
            *
        };

    action submitOrder
    (
        amount : Integer,
        books_id : Integer
    );
}

annotate bookshopService with @requires :
[
    'authenticated-user'
];
