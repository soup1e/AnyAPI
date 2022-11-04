-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS minecraft_blocks;

CREATE TABLE minecraft_blocks (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    itemid VARCHAR NOT NULL,
    name VARCHAR NOT NULL,
    stackable BOOLEAN NOT NULL,
    size INT NOT NULL,
    url VARCHAR NOT NULL
);

INSERT INTO minecraft_blocks (itemId, name, stackable, size, url)
VALUES
('minecraft:stone', 'Stone', true, 64, 'https://minecraftitemids.com/item/128/stone.png'),
('minecraft:grass_block', 'Grass Block', true, 64, 'https://minecraftitemids.com/item/128/grass_block.png'),
('minecraft:dirt', 'Dirt', true, 64, 'https://minecraftitemids.com/item/128/dirt.png'),
('minecraft:cobblestone', 'Cobblestone', true, 64, 'https://minecraftitemids.com/item/128/cobblestone.png'),
('minecraft:oak_planks', 'Oak Planks', true, 64, 'https://minecraftitemids.com/item/128/oak_planks.png'),
('minecraft:oak_sapling', 'Oak Sapling', true, 64, 'https://minecraftitemids.com/item/128/oak_sapling.png'),
('minecraft:bedrock', 'Bedrock', true, 64, 'https://minecraftitemids.com/item/128/bedrock.png');

DROP TABLE IF EXISTS minecraft_potions;

CREATE TABLE minecraft_potions (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    effect VARCHAR NOT NULL,
    enhanced VARCHAR NOT NULL,
    url VARCHAR NOT NULL
);

INSERT INTO minecraft_potions (name, effect, enhanced, url)
VALUES
('Potion of Healing', 'Instant Health: Restores health by 4', 'Instant Health II: Restores health by 8', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/5/5b/Invicon_Potion_of_Healing.gif/revision/latest?cb=20200517214841'),
('Potion of Fire Resistance', 'Fire Resistance: Gives immunity to damage from fire, lava, magma blocks, campfires, and blazes ranged attacks.', 'None', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/3/39/Invicon_Potion_of_Fire_Resistance.gif/revision/latest?cb=20200517194331'),
('Potion of Regeneration', 'Regeneration: Restores health by half a heart every 2.5 seconds.', 'Regeneration II: Restores health by half a heart every 1.2 seconds.', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/d/d7/Invicon_Potion_of_Regeneration.gif/revision/latest?cb=20200517180624'),
('Potion of Strength', 'Strength: Increases players melee attack damage by 3.', 'Strength II: Increases players melee attack damage by 6', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/08/Invicon_Potion_of_Strength.gif/revision/latest?cb=20200518004716'),
('Potion of Swiftness', 'Speed: Increases movement speed, sprinting speed, and jumping length by 20%.', 'Speed II: Increases movement speed, sprinting speed, and jumping length by 40%.', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/f/f1/Invicon_Potion_of_Swiftness.gif/revision/latest?cb=20200517191506'),
('Potion of Night Vision', 'Night Vision: Makes everything appear to be at the maximum light level, including underwater areas.', 'None', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/2/21/Invicon_Potion_of_Night_Vision.gif/revision/latest?cb=20200517223839'),
('Potion of Invisibility', 'Invisibility: Renders the player invisible. Equipped and wielded items are still visible.', 'None', 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/f/fe/Invicon_Potion_of_Invisibility.gif/revision/latest?cb=20200517213352');
