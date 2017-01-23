import { NgModule }       from '@angular/core';
import { BrowserModule }  from '@angular/platform-browser';
import { FormsModule }    from '@angular/forms';
import { HttpModule }     from '@angular/http';

import { AppComponent }          from './component/app/index';
import { HomeComponent }         from './component/home/index';
import { MenuComponent,
         MenuDetailComponent }   from './component/menu/index';
import { OrderConfirmation,
         AddressConfirmation,
         Finnish}   from './component/checkout/index';
import { OfferComponent,
         OfferDetailComponent }  from './component/offer/index';
import { LoginComponent }        from './component/login/index';

import { DataService,
         AuthenticationService,
         AuthenticationJangoService,
         HTTPService}            from './service/index';

import { AppRoutingModule }      from './app-routing.module';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    HttpModule
  ],
  declarations: [
    AppComponent,
    HomeComponent,
    MenuComponent,
    OrderConfirmation,
    Finnish,
    AddressConfirmation,
    OfferComponent,
    LoginComponent,
    MenuDetailComponent,
    OfferDetailComponent
  ],
  providers: [ DataService, AuthenticationService, AuthenticationJangoService, HTTPService ],
  bootstrap: [ AppComponent ]
})
export class AppModule { }
