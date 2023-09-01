var mysql = require("mysql");

module.exports = function(){
    return mysql.createConnection({
        host:"root",
        user:"",
        password:"@ITB123456",
        database:"athenashop",
        port: 3306
    });
}