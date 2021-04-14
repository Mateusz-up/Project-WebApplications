import { Egg } from './../egg';
import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-egg-detail',
  templateUrl: './egg-detail.component.html',
  styleUrls: ['./egg-detail.component.css']
})
export class EggDetailComponent implements OnInit {
  @Input() egg: Egg;
  constructor() { }

  ngOnInit() {
  }

}
