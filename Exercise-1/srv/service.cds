using { employee.travel as emp } from '../db/schema';

Service Employeeservice {
    entity Employee as projection on emp.Employee;
    entity TravelRequest as projection on emp.TravelRequest;
    entity ManagerApproval as projection on emp.ManagerApproval;
}