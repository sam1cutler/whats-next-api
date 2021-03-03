const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const config = require('../config');

const AuthService = {

    createJwt(subject, payload) {
        return jwt.sign(
            payload, 
            config.JWT_SECRET,
            {
                subject,
                algorithm: 'HS256'
            }
        )
    },

    comparePasswords(password, hash) {
        console.log('In auth-service, comparing passwords')
        return bcrypt.compare(
            password,
            hash
        )
    },

    getUserWithUserEmail(db, email) {
        return db('whats_next_users')
            .where( { email } )
            .first()
    },

    verifyJwt(token) {
        return jwt.verify(
            token, 
            config.JWT_SECRET,
            {
                algorithms: ['HS256']
            })
    }
}

module.exports = AuthService;