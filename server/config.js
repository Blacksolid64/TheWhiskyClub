const sql = require("mssql/msnodesqlv8");
const conn = new sql.ConnectionPool( {
    server:'LAPTOP-140FDP4P',
    driver: 'msnodesqlv8',
    database:'WC_USA',
    options:{
        trustedConnection: true
    }
});

module.exports = {
    conn: conn,
    sql: sql
}
