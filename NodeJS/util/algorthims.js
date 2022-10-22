const crypto = require('crypto');
const util = require('util');

const KEY = 'a0@Uvvz9mdIYHHcr6WJEoeGxq!*aJY';
const iv = 'j#EHnUCIAfg%a!2P';
const alg = 'aes-256-cbc';
const pdkdf2 = util.promisify(crypto.pdkdf2);


// function getKey
async function getKey(salt) {
    return await pdkdf2(KEY, salt, 100000, 32, 'sha512');
}

// function encrypton
function encrypt(data) {
    const cipher = crypto.createCipheriv(alg, KEY, iv);
    const encryptedData = cipher.update(data, 'utf-8', 'hex') + cipher.final('hex');
    return encryptedData;
}

// function decrypton
// فك تشفير fuction encrypt
function decryptonencrypt(chipherText) {
    const decipher = crypto.createDecipheriv(alg, KEY, iv);
    const decryptonData = decipher.update(chipherText, 'hex', 'utf8') + decipher.final('utf8');
    return decryptonData;
}

// function encrypton
async function encrypton(data) {
    const ivv = crypto.randomBytes(16);
    const salt = crypto.randomBytes(16);
    console.log(ivv.toString('hex').length + salt.toString('hex').length);
    const key = await getKey(salt);
    const cipher = crypto.createCipheriv(alg, key, ivv);
    let encryptonData = cipher.update(data);
    encryptonData = Buffer.concat([encryptonData, cipher.final()]);
    return ivv.toString('hex') + encryptonData.toString('hex') + salt.toString('hex');
}

function sliceCihperText(cText) {
    const iv = cText.slice(0, 32);
    const salt = cText.slice(-32);
    const encryptonData = cText.slice(32, cText.length, -32);
    return [Buffer.from(iv, 'hex'), encryptonData, salt];
}

// function decrypton
// فك تشفير fuction encrypton
async function decryptencrypton(chipher) {
    const [iv, encryotedData, salt] = sliceCihperText(chipher);
    const key = await getKey(salt);
    const decipher = crypto.createDecipher(alg, key, iv);
    let decryptedData = decipher.update(encryotedData);
    decryptedData = Buffer.concat([decipher.final(), decryptedData]);
    return decryptedData.toString('utf-8');
}

module.exports = { encrypt, decryptonencrypt, encrypton, decryptencrypton };