import { NgModule }             from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { HomeComponent }        from './component/home/index';
import { MenuComponent,
         MenuDetailComponent }  from './component/menu/index';
import { OrderConfirmation,
         AddressConfirmation,
         Finnish}  from './component/checkout/index';
import { OfferComponent,
         OfferDetailComponent } from './component/offer/index';
import { LoginComponent }       from './component/login/index';

const routes: Routes = [
  { path: '', redirectTo: '/login', pathMatch: 'full' },
  { path: 'home',component: HomeComponent },
  { path: 'menu',component: MenuComponent },
  { path: 'checkout/order-confirmation',component: OrderConfirmation },
  { path: 'checkout/address-confirmation',component: AddressConfirmation },
  { path: 'checkout/finnish',component: Finnish },
  { path: 'offer',component: OfferComponent },
  { path: 'login',component: LoginComponent },
  { path: 'menu/detail/:selectedmenu', component: MenuDetailComponent },
  { path: 'offer/detail/:selectedoffer', component: OfferDetailComponent }
];

@NgModule({
  imports: [ RouterModule.forRoot(routes) ],
  exports: [ RouterModule ]
})

export class AppRoutingModule {}
