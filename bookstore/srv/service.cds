using { bookstore as my } from '../db/schema.cds';

@path : '/service/bookshopService'
service bookstoreService
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

annotate bookstoreService with @requires :
[
    'authenticated-user'
];