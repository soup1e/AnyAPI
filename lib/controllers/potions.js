const { Router } = require('express');
const MinecraftPotions = require('../models/MinecraftPotions');

module.exports = Router()
  .get('/', async (req, res) => {
    const allPotions = await MinecraftPotions.getPotions();
    const filter = allPotions.map(({ id, name }) => ({ id, name }));
    res.json(filter);
  })
  .get('/:id', async (req, res) => {
    const potion = await MinecraftPotions.getPotion(req.params.id);
    res.json(potion);
  });
