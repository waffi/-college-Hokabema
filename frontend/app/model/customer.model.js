"use strict";
var Customer = (function () {
    function Customer(_id_customer, _username, _password, _email, _phone_number) {
        this.id_customer = _id_customer;
        this.username = _username;
        this.password = _password;
        this.email = _email;
        this.phone_number = _phone_number;
    }
    return Customer;
}());
exports.Customer = Customer;
//# sourceMappingURL=customer.model.js.map