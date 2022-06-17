const sql = require("mssql/msnodesqlv8");
const conn1 = new sql.ConnectionPool( {
    server:'LAPTOP-140FDP4P',
    driver: 'msnodesqlv8',
    database:'WC_USA',
    options:{
        trustedConnection: true
    }
});

const conn2 = new sql.ConnectionPool( {
    server:'LAPTOP-RHFFFTGS',
    driver: 'msnodesqlv8',
    database:'WC_USA',
    options:{
        trustedConnection: true
    }
});

const conn = new sql.ConnectionPool( {//Joshua
    server:'DESKTOP-U9I8H26\\SQLEXPRESS',
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