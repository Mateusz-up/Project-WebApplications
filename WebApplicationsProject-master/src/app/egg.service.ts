import { Egg } from './egg';
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

import { Observable, of } from 'rxjs';
import { catchError, map, tap } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class EggService {
  private heroesUrl = 'http://localhost:3000/api/eggs';  // URL to web api

  httpOptions = {
    headers: new HttpHeaders({ 'Content-Type': 'application/json'
  })
  };

  constructor( private http: HttpClient) { }

    getEggs (): Observable<Egg[]> {
      return this.http.get<Egg[]>(this.heroesUrl)
        .pipe(
          catchError(this.handleError<Egg[]>('getEggs', []))
        );
    }

  private handleError<T> (operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      console.error(error);

      return of(result as T);
    };
  }

}
