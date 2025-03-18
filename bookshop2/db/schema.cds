namespace bookshop2;

entity Books2
{
    key ID : UUID;
    name : String(100);
    descripcion : String(100);
    stock : String(100);
    price : String(100);
    autores : Association to one Autores;
    genero : Association to one Genero;
}

entity Autores
{
    key ID : UUID;
    name : String(100);
    email : String(100);
    phone : String(100);
    books2 : Association to one Books2 on books2.autores = $self;
}

entity Genero
{
    key ID : UUID;
    tipo : String(100);
    books2 : Composition of many Books2 on books2.genero = $self;
}
