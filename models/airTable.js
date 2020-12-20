const url = "https://api.airtable.com/v0/appX42ISdho4vdwsV";
const token = "Bearer keyw9eMTC6oHYMQcJ"
const fetch = require("node-fetch");
const sql = require("./db.js");


async function getTable(path, res){
    let resp = await fetch(url +"/"+ path,  
                            {
                                method: 'GET',
                                withCredentials: true,
                                credentials: 'include',
                                headers: {
                                    'Authorization': token,
                                }
                            });
    let data = await resp.json();
    data = data.records; 
    data.map(i =>  {
        console.log("record is ",  i);
        let {Email, Division} = i.fields; 
        let FN = i.fields["First name"]; 
        let LN = i.fields["Last name"]; 

        sql.query("insert into airTable (email, first_name, last_name, division) values (?, ?, ?, ?)", [Email, FN, LN, Division], (err, res) => {
            console.log("airtable result sent ");
          });
    }); 
    console.log("fetch got data ")
    res(null, data); 
}

const AirTable = function(){
    this.token = token;
    this.url = url; 
}


AirTable.getAll = (path, result) => {

    try {
        getTable(path, result); 
        console.log("getall result sent ");
        //result(null, res);
    } catch (e){
        console.log("[getAll] error: ", err);
        result(null, err);
    }

  };


module.exports = AirTable;
