namespace my;

entity Employee{
    key ID : Integer;
    name   : String;
    salary : Integer;
    dept : Association to Dept;
}

entity Dept{
    key ID : Integer;
    name   : String;
    create_date : Date;
    employee : Association to many Employee on employee.dept = $self;
}
