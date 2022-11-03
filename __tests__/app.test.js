const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { blocks } = require('../lib/blocks-data');

describe('backend-express-template routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('/blocks should return a list of blocks', async () => {
    const res = await request(app).get('/blocks');
    const expected = blocks.map((block) => {
      return { id: block.id, name: block.name };
    });
    expect(res.body).toEqual(expected);
  });

  it('/blocks/:id should return the block detail', async () => {
    const res = await request(app).get('/blocks/1');
    const stone = {
      id: '1',
      itemid: 'minecraft:stone',
      name: 'Stone',
      stackable: true,
      size: 64,
      url: 'https://minecraftitemids.com/item/128/stone.png',
    };
    expect(res.body).toEqual(stone);
  });

  afterAll(() => {
    pool.end();
  });
});
