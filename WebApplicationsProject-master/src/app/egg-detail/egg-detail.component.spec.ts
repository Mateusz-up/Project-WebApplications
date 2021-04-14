import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EggDetailComponent } from './egg-detail.component';

describe('EggDetailComponent', () => {
  let component: EggDetailComponent;
  let fixture: ComponentFixture<EggDetailComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EggDetailComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EggDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
