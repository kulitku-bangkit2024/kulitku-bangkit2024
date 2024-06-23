// Rute untuk logika operasi pada entitas users


module.exports = function (app) {
    var myjson = require("../controllers/usersController");
    
    app.route("/")
        .get(myjson.index)    

    app.route("/user/:id")
        .get(myjson.getUserProfile)

    app.route("/user/update/")
        .put(myjson.editUserProfile)

    app.route("/user/delete/")
        .delete(myjson.deleteUserbyId)
}