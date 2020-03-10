const pool = require('../bd');


async function createUser(objeto) {
    try {
        let query = "insert into usuario set ?";
        const rows = await pool.query(query,[objeto]);
        return rows;
    } catch(error) {
        console.log(error);
    }
}



module.exports = {createUser};