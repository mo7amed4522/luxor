const express = require("express");
const db = require('diskdb');
const pdkdf2 = require('./util/pdkdf2');
const aes256cbc = require('./util/algorthims');
db.connect('./db', ['Users']);
const app = express();
//this function will used for express.json
// read it in readme.md
app.use(express.json());
// get all users from users collection
app.get('/users', (req, res) => {
    const users = db.Users.find();
    res.json(users);
});
// create a new user
app.post('/signup', async(req, res) => {
    const { email, password, name, sensitiveData } = req.body;
    const userExist = db.Users.findOne({ name: name });
    if (!userExist) {
        res.
        status(403).
        json({ success: false, message: "users already exist" });
        return;
    }
    try {
        const hasedPass = await pdkdf2.hash(password);
        const encryptedData = await aes256cbc.encrypt(sensitiveData);
        const user = db.Users.save({ email, hasedPass, name, sensitiveData: encryptedData });
        res.status(201).json({ success: true, user });
    } catch (error) {
        res.status(500).json({ err: error });
    }
});
// login user
app.post('/login', async(req, res) => {
    const { email, password } = req.body;
    const userExists = db.Users.findOne({ email });
    if (!userExists) {
        res
            .status(401)
            .json({ success: false, message: 'email ors password not found' });
        return;
    }
    const passwordVaild = await pdkdf2.compare(userExists.hasedPass, password);
    if (!passwordVaild) {
        res
            .status(401)
            .json({ success: false, message: 'not' });
        return;
    }
    const decryptedData = await aes256cbc.decryptonencrypt(userExists.sensitiveData);
    userExists.sensitiveData = decryptedData;
    res
        .status(200)
        .json({ success: true, message: 'login successfully', user: userExists });
});
const PORT = 5000;
app.listen(PORT, () => console.log(`server is running ${PORT}`));