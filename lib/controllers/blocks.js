const { Router } = require('express');
const MinecraftBlocks = require('../models/MinecraftBlocks.js');

module.exports = Router()
  .get('/', async (req, res) => {
    const allBlocks = await MinecraftBlocks.getBlocks();
    const filter = allBlocks.map(({ id, name }) => ({ id, name }));
    res.json(filter);
  })
  .get('/:id', async (req, res) => {
    const block = await MinecraftBlocks.getBlock(req.params.id);
    res.json(block);
  });
