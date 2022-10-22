const crypto = require('crypto');

function hash(password) {
    const promise = new Promise((resolve, reject) => {
        const salt = crypto.randomBytes(16).toString('hex');
        const hashedPassword = crypto.pbkdf2(
            password,
            salt,
            100000,
            64,
            'sha512',
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
        crypto.pbkdf2(password, salt, 100000, 64, 'sha512', (err, driveKey) => {
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