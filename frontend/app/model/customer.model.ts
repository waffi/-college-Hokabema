export class Customer {
  id_customer: number;
  username: string;
  password: string;
  email: string;
  phone_number: string;

  constructor(_id_customer: number,
              _username: string,
              _password: string ,
              _email: string,
              _phone_number: string)
  {
    this.id_customer  = _id_customer;
    this.username    = _username
    this.password     = _password;
    this.email        = _email;
    this.phone_number = _phone_number;
  }
}
