import { Injectable } from '@angular/core';
import {Headers} from '@angular/http';
import {Http, RequestOptions, URLSearchParams} from '@angular/http';
import {Observable} from 'rxjs/Observable';
import { Router } from '@angular/router';
import 'rxjs/add/operator/map';
import 'rxjs/Rx';

@Injectable()
export class AuthenticationJangoService {

  constructor(
    private router: Router,
    private http:Http){}
    // let params = new URLSearchParams();
    // params.set('user_name',user_name);
    // params.set('password',password);
    checkCredentials(){
      let requestOption: RequestOptions;
      let myHeaders    : Headers = new Headers();
      myHeaders.append('Content-type', 'application/json');

      requestOption = new RequestOptions({headers: myHeaders});

      return this.http.get("http://127.0.0.1:8000/statuslogin/", requestOption)
      .toPromise().then(res=>res.json());
    }

    login( user_name : string, password : number )
    {
      let requestOption: RequestOptions;
      let myHeaders    : Headers = new Headers();
      myHeaders.append('Content-type', 'application/json');

      let params = new URLSearchParams();
      params.set('user_name',user_name);
      params.set('password',""+password);

      requestOption = new RequestOptions({headers: myHeaders, search: params});

      return this.http.get("http://127.0.0.1:8000/login/", requestOption)
      .toPromise().then(res=>res.json());
    }
}
