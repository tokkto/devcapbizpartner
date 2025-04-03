using { sap.capire.bookshop as my } from '../db/schema';
service CatalogService @(path:'/browse') { 

  entity Books as select from my.Books {*,
    author.name as author
  } excluding { createdBy, modifiedBy };

  @requires: 'authenticated-user'
  action submitOrder (book: Books:ID, quantity: Integer);
}

annotate CatalogService.Books with @odata.draft.enabled; 

