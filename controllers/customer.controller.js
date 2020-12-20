const Customer = require("../models/customer.model.js");
const AirTable = require("../models/airTable.js");

// Retrieve all Customers from the database.
exports.findAll = (req, res) => {
  Customer.getAll(req.params.customerId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving customers."
      });
    else res.send(data);
  });
};


exports.calAverage = (req, res) => {
  console.log("in average"); 
  Customer.calAverage(req.params.customerId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving customers."
      });
    else res.send(data);
  });
};


exports.findTop = (req, res) => {
  console.log("in findTop"); 
  Customer.findTop(req.params.customerId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving customers."
      });
    else res.send(data);
  });
};


exports.getAirTable = (req, res) => {
  console.log("in getAirTable"); 
  AirTable.getAll(req.params.path, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving customers."
      });
    else res.send(data);
  });
};

