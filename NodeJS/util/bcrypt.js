const bcrypt = require('bcrypt');

function hash(password) {
    try {
        const hasedPass = bcrypt.hash(password, 12);
        console.log(hasedPass);
    } catch (error) {
        console.log(error);
    }
}

function compare(haspass, pass) {
    try {
        const hasedPass = bcrypt.compare(pass, haspass);
        console.log(hasedPass);
    } catch (error) {
        console.log(error);
    }
}
module.exports = { hash, compare };