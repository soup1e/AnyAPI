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