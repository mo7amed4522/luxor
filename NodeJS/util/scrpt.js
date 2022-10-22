const crypto = require('crypto');

function hash(password) {
    const promise = new Promise((resolve, reject) => {
        const salt = crypto.randomBytes(16).toString('hex');
        crypto.scrypt(
            password,
            salt,
            64,
            (err, driveKey) => {
                if (err) {
                    reject(err);
                    return;
                }
                resolve(`${salt}.${driveKey.toString('hex')}`);
            });
    });
    return promise;
}

function compare(hashedPass, password) {
    const promise = new Promise((resolve, reject) => {
        const [salt, key] = hashedPass.split("");
        crypto.scrypt(password, salt, 64, (err, driveKey) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(key === driveKey.toString('hex'));
        });
    });
    return promise;
}

module.exports = { hash, compare };