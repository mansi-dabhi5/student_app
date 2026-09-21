namespace student.db; //uniquely identify table, we cna use student only

using {
    cuid,
    managed
} from '@sap/cds/common'; //use to get in-built entity list

type nameType : String(50); //replace writing same datatype again

//table creation, Table name start with CAP letter and end with 's'
//we can use cuid to remove key and use key from built-in aspects key
entity Students : cuid {
    //key studentID : UUID; // CAPM will create unique ID
    name    : nameType; // 50 is length of name string
    address : String;
    email   : nameType;
    mobile  : String;
    age     : Integer;
    gender  : String;
    //courses: Composition of many Courses;
}

entity Courses : cuid, managed {
    //key courseID : UUID;
    name     : nameType;
    cost     : Decimal(10, 2);
    trainer  : String;
    duration : Integer;
}

entity Address {
    key addressID   : Integer;
        description : String;
        city        : String;
        country     : String;
        pincode     : Integer;
}

entity Books: cuid {
    name: String;
    title: String;
    publishedDate: String;
    //authorID: String;//unmanaged way
    author: Association to Authors;// managed association
    }

entity Authors: cuid {
    name: String;
    books: Composition of many Books on books.author=$self;
    //books: Composition of many Books on books.authorID=Authors.ID;//unmanaged way
}