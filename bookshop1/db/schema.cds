namespace bookshop1;

entity Books
{
    key ID : UUID;
    title : String(100);
    descr : String(100);
    stock : Integer;
    price : Decimal;
    authors : Association to one Authors on authors.books = $self;
    genres : Association to one Genres;
}

entity Authors
{
    key ID : UUID;
    name : String(100);
    books : Association to one Books;
}

entity Genres
{
    key ID : UUID;
    books : Composition of many Books on books.genres = $self;
}
