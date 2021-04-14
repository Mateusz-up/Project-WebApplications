import { TestBed } from '@angular/core/testing';

import { EggService } from './egg.service';

describe('EggService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: EggService = TestBed.get(EggService);
    expect(service).toBeTruthy();
  });
});
