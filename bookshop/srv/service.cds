using { bookshop as my } from '../db/schema.cds';

@path : '/service/BookshopService'
service BookshopService
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

annotate BookshopService with @requires :
[
    'authenticated-user'
];
