const pool = require('../utils/pool');

module.exports = class MinecraftBlocks {
  constructor(row) {
    this.id = row.id;
    this.itemId = row.itemId;
    this.name = row.name;
    this.stackable = row.stackable;
    this.size = row.size;
    this.url = row.url;
  }

  static async getBlocks() {
    const { rows } = await pool.query('SELECT * from minecraft_blocks');
    return rows.map((blockRow) => new MinecraftBlocks(blockRow));
  }
};
