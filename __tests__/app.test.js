const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { blocks } = require('../lib/blocks-data');
const { potions } = require('../lib/potions-data');

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

  it('/potions should return a list of potions', async () => {
    const res = await request(app).get('/potions');
    const expected = potions.map((potion) => {
      return { id: potion.id, name: potion.name };
    });
    expect(res.body).toEqual(expected);
  });

  it('/potions/:id should return the potions detail', async () => {
    const res = await request(app).get('/potions/1');
    const healing = {
      id: '1',
      name: 'Potion of Healing',
      effect: 'Instant Health: Restores health by 4',
      enhanced: 'Instant Health II: Restores health by 8',
      url: 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/5/5b/Invicon_Potion_of_Healing.gif/revision/latest?cb=20200517214841',
    };
    expect(res.body).toEqual(healing);
  });
  afterAll(() => {
    pool.end();
  });
});
