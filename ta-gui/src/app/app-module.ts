import { NgModule, provideBrowserGlobalErrorListeners } from '@angular/core';
import { BrowserModule, provideClientHydration, withEventReplay } from '@angular/platform-browser';
import { RouterModule }   from '@angular/router';

import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing-module';
import { App } from './app';
import { AlunoService } from './aluno.service';
import { MetasComponent } from './metas.component';
import { AlunosComponent } from './alunos.component';

@NgModule({
  declarations: [App,MetasComponent,AlunosComponent],
  imports: [BrowserModule, AppRoutingModule, FormsModule, RouterModule.forRoot([
      {
        path: 'metas',
        component: MetasComponent
      },
      {
        path: '',
        component: App
      },
      {
        path: 'alunos',
        component: AlunosComponent
      }
    ]),],
  providers: [
    provideBrowserGlobalErrorListeners(),
    AlunoService
    //provideClientHydration(withEventReplay())
  ],
  bootstrap: [App]
})
export class AppModule {}


