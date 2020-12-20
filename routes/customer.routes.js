module.exports = app => {
    const customers = require("../controllers/customer.controller.js");
  
  
    // Retrieve all employees for each resturants customerID
    // http://test.vona.ai:3000/employee/fogoDeChao 
    app.get("/employee/:customerId", customers.findAll);
  
    // Get average salary value for each resturant 
    // http://test.vona.ai:3000/average/fogoDeChao 
    app.get("/average/:customerId", customers.calAverage); 

    // Get average 
    // http:// test.vona.ai:3000/bonus/fogoDeChao
    app.get("/bonus/:customerId", customers.findTop); 

    // Populate airtable per its endpoints 
    // currently only populated the employee. However I did not find the correlation between employees and salary and bonus. I stopeed here. 
    // it should be that I did not retrieve all the records from the airtable. There is a offset field I do not know how to use that to pagination. 
    // http://test.vona.ai:3000/table/employees 
    app.get("/table/:path", customers.getAirTable); 

  };