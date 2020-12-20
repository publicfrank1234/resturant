module.exports = app => {
    const customers = require("../controllers/customer.controller.js");
  
  
    // Retrieve all Customers
    app.get("/employee/:customerId", customers.findAll);
  
    // Get average 
    app.get("/average/:customerId", customers.calAverage); 

    // Get average 
    app.get("/bonus/:customerId", customers.findTop); 

    // Get airtable 
    app.get("/table/:path", customers.getAirTable); 

  };