import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';

import { I18nBreadcrumbResolver } from '../../../../app/core/breadcrumbs/i18n-breadcrumb.resolver';
import { I18nBreadcrumbsService } from '../../../../app/core/breadcrumbs/i18n-breadcrumbs.service';
import { AboutPageComponent } from './about-page.component';

@NgModule({
  imports: [
    RouterModule.forChild([
      {
        path: '',
        pathMatch: 'full',
        component: AboutPageComponent,
        resolve: {
          breadcrumb: I18nBreadcrumbResolver
        },
        data: { breadcrumbKey: 'about', title: 'about.title' }
      }
    ])
  ],
  exports: [RouterModule],
  providers: [
    I18nBreadcrumbResolver,
    I18nBreadcrumbsService
  ]
})
/**
 * This module defines the default component to load when navigating to the about page path.
 */
export class AboutPageRoutingModule { }
