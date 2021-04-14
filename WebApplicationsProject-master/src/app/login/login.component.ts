import { User } from './../user';
import { AuthenticationService } from './../authentication.service';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { first } from 'rxjs/operators';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  
  loginForm = new FormGroup({
    userLogin: new FormControl('',Validators.required),
    userPassword: new FormControl('',Validators.required)
  })


  //submitted = false;
  //returnUrl: string;
  logged: User;

  constructor(
    private authenticationService: AuthenticationService,
  ) {
    this.logged = this.authenticationService.currentUserValue;
  }

  ngOnInit() {
  }


  get f() { return this.loginForm.controls; }

  onSubmit() {
    if (this.loginForm.invalid) {
        return;
    }
    
    this.authenticationService.login(this.f.userLogin.value, this.f.userPassword.value)
        .pipe(first())
        .subscribe(
            data => { this.logged  = data;
            console.log(data[0].login)});
  }

  logout() {
    this.authenticationService.logout()
  }

}
