namespace employee.travel;
using{cuid, managed} from '@sap/cds/common';
type commonType : String(30);
type common : String(10);

entity Employee: cuid,managed {
   key name: commonType @title : 'Name';
    address: commonType @title : 'Address';
       email: commonType @title : 'EMAIL';
       department: commonType @title : 'Department';
       request : Composition of  many TravelRequest on request.employee=$self;
}

entity TravelRequest : cuid {
    destination: commonType;
    startdate : Date;
    enddate: Date;
    reason: commonType @title : '{i18n>reason}';
    status: common @title : '{i18n>status}';
    employee : Association to Employee;
    Manapproval: Association to ManagerApproval;
}

entity ManagerApproval : cuid {
    key name: commonType;
    Decision: localized common;
    Comments: commonType; 
}