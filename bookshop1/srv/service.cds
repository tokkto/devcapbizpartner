using { bookshop1 as my } from '../db/schema.cds';

@path : '/service/bookshop1Service'
service bookshop1Service
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

annotate bookshop1Service with @requires :
[
    'authenticated-user'
];
