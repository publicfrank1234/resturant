const sql = require("./db.js");

// constructor
const Customer = function(customer) {
  this.email = customer.email;
  this.first_name = customer.first_name;
  this.last_name = customer.last_name;
  this.base = customer.base;
  this.bonus = customer.bonus;
  this.role = customer.division; 
};

Customer.getAll = (customerId, result) => {
  //console.log("tabke is", this.name); 
  //let query = `SELECT * FROM ${this.name}`; 
  sql.query(`select * from ${customerId}`, (err, res) => {
    if (err) {
      console.log("[getAll] error: ", err);
      result(null, err);
      return;
    }

    console.log("getall result sent ");
    result(null, res);
  });
};


Customer.calAverage = (customerId, result) => {
    sql.query(`SELECT AVG(base) as average_salary, count(*) as total_emp FROM ${customerId}`, (err, res) => {
      if (err) {
        console.log("[average] error: ", err);
        result(null, err);
        return;
      }
  
      console.log("average : ", res);
      result(null, res);
    });
  };

  
Customer.findTop = (customerId, result)  => {
    console.log(" in findTop ");
    let q = `SELECT a.first_name, a.last_name, a.division, a.bonus FROM ${customerId} AS a WHERE 
    (SELECT COUNT(*) FROM ${customerId} AS b 
    WHERE b.division = a.division AND b.bonus >= a.bonus) <= 3 
    ORDER BY a.division ASC, a.bonus DESC; `
    sql.query(q, (err, res) => {
        if (err) {
        console.log("[average] error: ", err);
        result(null, err);
        return;
        }

        console.log("average : ", res);
        result(null, res);
    });
};

module.exports = Customer;