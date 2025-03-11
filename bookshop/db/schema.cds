namespace bookshop;

entity Books
{
    key ID : UUID;
    dscr : String(100);
    price : Decimal(28,0);
    stock : Integer;
    title : String(100);
    authors : Association to one Author;
    geners : Association to one Geners;
}

entity Author
{
    key ID : UUID;
    name : String(100);
    books : Association to one Books on books.authors = $self;
}

entity Geners
{
    key ID : UUID;
    books : Composition of many Books on books.geners = $self;
}
