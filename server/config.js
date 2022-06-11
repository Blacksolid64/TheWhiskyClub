const sql = require("mssql/msnodesqlv8");
const conn = new sql.ConnectionPool( {
    server:'LAPTOP-140FDP4P',
    driver: 'msnodesqlv8',
    database:'Biblioteca',
    options:{
        trustedConnection: true
    }
});

module.exports = {
    conn: conn,
    sql: sql
}
