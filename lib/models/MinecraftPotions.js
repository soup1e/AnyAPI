const pool = require('../utils/pool');

module.exports = class MinecraftPotion {
  constructor(row) {
    this.id = row.id;
    this.name = row.name;
    this.effect = row.effect;
    this.enhanced = row.enhanced;
    this.url = row.url;
  }

  static async getPotions() {
    const { rows } = await pool.query('SELECT * from minecraft_potions');
    return rows.map((potionRow) => new MinecraftPotion(potionRow));
  }

  static async getPotion(id) {
    const { rows } = await pool.query(
      'SELECT * from Minecraft_potions WHERE id = $1',
      [id]
    );
    return new MinecraftPotion(rows[0]);
  }
};
