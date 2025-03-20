using { bookshop2 as my } from '../db/schema.cds';

@path : '/service/bookshop2Service'
service bookshop2Service
{
}

annotate bookshop2Service with @requires :
[
    'authenticated-user'
];
