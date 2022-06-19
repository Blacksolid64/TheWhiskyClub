const sql = require("mssql/msnodesqlv8");

const conn = new sql.ConnectionPool( {
    server:'LAPTOP-140FDP4P',
    driver: 'msnodesqlv8',
    database:'WC_USA',
    options:{
        trustedConnection: true
    }
});

const conn1 = new sql.ConnectionPool( {
    server:'LAPTOP-RHFFFTGS',
    driver: 'msnodesqlv8',
    database:'WC_USA',
    options:{
        trustedConnection: true
    }
});

const conn2 = new sql.ConnectionPool( {//Joshua
    server:'DESKTOP-U9I8H26\\SQLEXPRESS',
    driver: 'msnodesqlv8',
    database:'WC_USA',
    options:{
        trustedConnection: true
    }
});

const conn_IR = new sql.ConnectionPool( {//Joshua
    server:'DESKTOP-U9I8H26\\SQLEXPRESS',
    driver: 'msnodesqlv8',
    database:'WC_IR',
    options:{
        trustedConnection: true
    }
});

const conn_SL = new sql.ConnectionPool( {//Joshua
    server:'DESKTOP-U9I8H26\\SQLEXPRESS',
    driver: 'msnodesqlv8',
    database:'WC_SL',
    options:{
        trustedConnection: true
    }

    
});
connections.push(conn);
connections.push(conn_IR);
connections.push(conn_SL);

/* var what = connections[0]
what.connect().then(() => {
    console.log('Got here');
    const request = new sql.Request(what)
    request.execute('Distillery_select_all', (err, result) =>{
    console.log(result);
    console.log(err);
    })
}); */
module.exports = {
    conn: connections,
    sql: sql
}