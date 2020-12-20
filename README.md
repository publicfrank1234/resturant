
1. start Mysql database based on docker 
mysql-docker.yml: it will spin the mysql and adminer. It will also mount the csv file.
popTable.sh will populate the csv into each tables in Mysql 

    cd /path-to/mysql-docker folder 
    docker-compose -f mysql-docker.yml up
    source popTable.sh 

NOTE: this step will populate all csv but not airtable. 

2. nodejs express server 
incoming req -> server routes -> data controller -> database model 

The following endpoints are created. The first two are 

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
    app.get("/table/:path", customers.getAirTable); // should be post also but do not have time to correct all those. 
    //TO-DO: needs more work with airtable. 

3. react(I did not finish). so I did not upload it here and it is also huge. 

