import { EggService } from './../egg.service';
import { Component, OnInit } from '@angular/core';
import { Egg } from '../egg';

@Component({
  selector: 'app-eggs',
  templateUrl: './eggs.component.html',
  styleUrls: ['./eggs.component.css']
})
export class EggsComponent implements OnInit {
  eggs: Egg[];
  selectedEgg: Egg;
  constructor(private eggService: EggService) { }

  ngOnInit() {
    this.getEggs();
  }

  getEggs(): void{
    this.eggService.getEggs()
    .subscribe(eggs => this.eggs = eggs);
  }

  onSelect(egg: Egg): void {
    this.selectedEgg = egg;
  }
}
