const response = (statusCode, data, massage, res) =>{
    res.status(statusCode).json ({
            status_code: statusCode,
            data: data,
            massage: massage
    })
}

module.exports = response