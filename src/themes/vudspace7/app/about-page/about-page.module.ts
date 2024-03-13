import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedModule } from '../../../../../src/app/shared/shared.module';
import { AboutPageRoutingModule } from './about-page-routing.module';

import { AboutPageComponent } from './about-page.component';

@NgModule({
  imports: [
    CommonModule,
    SharedModule,
    AboutPageRoutingModule,
  ],
  declarations: [
    AboutPageComponent,
  ],
  providers: []
})

/**
 * Module related to the Forgot Password components
 */
export class AboutPageModule {

}
