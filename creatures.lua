local creatures = {
    fire = {
        creatures = {
            fire_drake = {
                name = "Fire Drake",
                health = 100,
                speed = 30,
                defense = 50,
		rotation = 1,
                attacks = {
                    { name = "Flame Wing Slash", damage = 20, usable = 6 },
                    { name = "Drake’s Inferno", damage = 35, aoe = 1, usable = 3 },
                    { name = "Blazing Roar", damage = 40, reduce_defense = 1, usable = 2 },
                    { name = "Pyro Dive", damage = 50, usable = 2 },
                    { name = "Crimson Cataclysm", damage = 100, aoe = 1, usable = 1 }
                }
            },
            inferno_wolf = {
                name = "Inferno Wolf",
                health = 110,
                speed = 25,
                defense = 25,
		rotation = 1,
                attacks = {
                    { name = "Fang Burn", damage = 25, usable = 6 },
                    { name = "Lava Howl", damage = 30, aoe = 1, usable = 4 },
                    { name = "Ember Pounce", damage = 40, usable = 3 },
                    { name = "Scorching Claws", damage = 45, usable = 2 },
                    { name = "Molten Rampage", damage = 120, usable = 1 }
                }
            },
            flame_scorpion = {
                name = "Flame Scorpion",
                health = 150,
                speed = 20,
                defense = 30,
		rotation = 1,
                attacks = {
                    { name = "Scorching Stinger", damage = 20, poison = 1, usable = 5 },
                    { name = "Ash Volley", damage = 30, aoe = 1, usable = 4 },
                    { name = "Magma Crush", damage = 35, usable = 3 },
                    { name = "Pyro Shield", reduce_damage = 50, duration = 1, usable = 2 },
                    { name = "Infernal Stinger", damage = 10, poison = 1, aoe = true, usable = 1 }
                }
            },
            lava_tiger = {
                name = "Lava Tiger",
                health = 110,
                speed = 28, 
                defense = 22,
		rotation = 1,
                attacks = {
                    { name = "Heat Slash", damage = 20, usable = 6 },
                    { name = "Burning Leap", damage = 30, usable = 4 },
                    { name = "Fiery Growl", reduce_attack = 1, usable = 3 },
                    { name = "Lava Swipe", damage = 50, usable = 2 },
                    { name = "Volcanic Fury", damage = 100, aoe = 1, usable = 1 }
                }
            },
            ember_phoenix = {
                name = "Ember Phoenix",
                health = 180,
                speed = 35,
                defense = 15,
		rotation = 1,
                attacks = {
                    { name = "Phoenix Flame", damage = 25, usable = 5 },
                    { name = "Blazing Wings", damage = 30, aoe = 1, usable = 4 },
                    { name = "Fire Rebirth", heal = 20, usable = 3 },
                    { name = "Infernal Screech", damage = 45, usable = 2 },
                    { name = "Eternal Blaze", damage = 120, heal = 1, usable = 1 }
                }
            },
            magma_serpent = {
                name = "Magma Serpent",
                health = 150,
                speed = 30,
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Lava Coil", damage = 20, usable = 7 },
                    { name = "Fire Breath", damage = 35, aoe = 1, usable = 4 },
                    { name = "Molten Strike", damage = 40, usable = 3 },
                    { name = "Blistering Tail", damage = 50, usable = 2 },
                    { name = "Infernal Vortex", damage = 110, stun = 1, usable = 1 }
                }
            },
            pyro_crab = {
                name = "Pyro Crab",
                health = 100,
                speed = 25,
                defense = 40,
		rotation = 1,
                attacks = {
                    { name = "Burn Claw", damage = 20, usable = 6 },
                    { name = "Ash Shell", reduce_damage = 30, duration = 2, usable = 3 },
                    { name = "Flame Hammer", damage = 40, usable = 3 },
                    { name = "Eruption Claw", damage = 55, usable = 2 },
                    { name = "Volcanic Charge", damage = 120, usable = 1 }
                }
            },
            smoldering_wasp = {
                name = "Smoldering Wasp",
                health = 100,
                speed = 35,
                defense = 15,
		rotation = 1,
                attacks = {
                    { name = "Fiery Sting", damage = 15, poison = 1, usable = 7 },
                    { name = "Inferno Swarm", damage = 25, aoe = 1, usable = 4 },
                    { name = "Burning Dive", damage = 40, usable = 3 },
                    { name = "Wing Cyclone", damage = 50, usable = 2 },
                    { name = "Ash Cloud", damage = 100, blind = 1, duration = 2, usable = 1 }
                }
            },
            ash_demon = {
                name = "Ash Demon",
                health = 120,
                speed = 28,
                defense = 18,
		rotation = 1,
                attacks = {
                    { name = "Infernal Punch", damage = 25, usable = 6 },
                    { name = "Hellfire Blaze", damage = 35, aoe = 1, usable = 4 },
                    { name = "Demonic Roar", reduce_speed = 1, usable = 3 },
                    { name = "Ash Storm", damage = 45, usable = 2 },
                    { name = "Demonic Inferno", damage = 120, aoe = 1, usable = 1 }
                }
            },
            fire_elemental = {
                name = "Fire Elemental",
                health = 130,
                speed = 20,
                defense = 10,
		rotation = 1,
                attacks = {
                    { name = "Flare Strike", damage = 20, usable = 7 },
                    { name = "Burning Pulse", damage = 25, usable = 5 },
                    { name = "Molten Wall", reduce_damage = 40, duration = 2, usable = 3 },
                    { name = "Infernal Blast", damage = 50, usable = 2 },
                    { name = "Eruption Nova", damage = 100, aoe = 1, usable = 1 }
                }
            }
        }
    },
    water = {
        creatures = {
            aqua_shark = {
                name = "Aqua Shark",
                health = 110,
                speed = 40,
                defense = 10,
		rotation = 0,
                attacks = {
                    { name = "Shark Bite", damage = 25, usable = 6 },
                    { name = "Tidal Rush", damage = 30, usable = 5 },
                    { name = "Aqua Shield", reduce_damage = 30, duration = 2, usable = 3 },
                    { name = "Hydro Slash", damage = 45, usable = 2 },
                    { name = "Ocean Frenzy", damage = 110, aoe = 1, usable = 1 }
                }
            },
            tidal_turtle = {
                name = "Tidal Turtle",
                health = 110,
                speed = 30,
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Shell Slam", damage = 20, usable = 7 },
                    { name = "Wave Crash", damage = 35, aoe = 1, usable = 4 },
                    { name = "Aqua Armor", absorb = 40, duration = 2, usable = 3 },
                    { name = "Tsunami Charge", damage = 50, usable = 2 },
                    { name = "Tidal Surge", damage = 100, aoe = 1, heal = 20, usable = 1 }
                }
            },
            frost_leviathan = {
                name = "Frost Leviathan",
                health = 130,
                speed = 28,
                defense = 25,
		rotation = 1,
                attacks = {
                    { name = "Ice Fang", damage = 25, usable = 6 },
                    { name = "Frozen Breath", damage = 30, freeze = 1, duration = 1, usable = 5 },
                    { name = "Arctic Roar", reduce_speed = 1, usable = 3 },
                    { name = "Glacial Swipe", damage = 50, usable = 2 },
                    { name = "Polar Cataclysm", damage = 120, freeze = 1, aoe = true, usable = 1 }
                }
            },
            coral_serpent = {
                name = "Coral Serpent",
                health = 120,
                speed = 21,
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Coral Pierce", damage = 20, usable = 7 },
                    { name = "Water Lash", damage = 25, usable = 5 },
                    { name = "Barrier Reef", reduce_damage = 30, duration = 2, usable = 3 },
                    { name = "Wave Coil", damage = 45, usable = 2 },
                    { name = "Coral Tsunami", damage = 110, aoe = 1, usable = 1 }
                }
            },
            ocean_spirit = {
                name = "Ocean Spirit",
                health = 100,
                speed = 30, 
                defense = 20,
		rotation = 0,
                attacks = {
                    { name = "Aqua Slash", damage = 25, usable = 6 },
                    { name = "Spirit Torrent", damage = 30, aoe = 1, usable = 4 },
                    { name = "Water Veil", absorb = 20, duration = 3, usable = 3 },
                    { name = "Crystal Wave", damage = 50, usable = 2 },
                    { name = "Tidal Redemption", damage = 120, heal_all = 20, usable = 1 }
                }
            },
            tsunami_crab = {
                name = "Tsunami Crab",
                health = 120,
                speed = 30, 
                defense = 15,
		rotation = 1,
                attacks = {
                    { name = "Crushing Claw", damage = 25, usable = 6 },
                    { name = "Aqua Cyclone", damage = 30, aoe = 1, usable = 4 },
                    { name = "Shell Barrier", reduce_damage = 50, duration = 1, usable = 3 },
                    { name = "Hydro Claw Strike", damage = 50, usable = 2 },
                    { name = "Ocean Rage", damage = 110, stun = 1, usable = 1 }
                }
            },
            abyssal_jellyfish = {
                name = "Abyssal Jellyfish",
                health = 100,
                speed = 35, 
                defense = 25,
		rotation = 1,
                attacks = {
                    { name = "Tentacle Swipe", damage = 20, usable = 7 },
                    { name = "Electric Pulse", damage = 30, paralyze = 1, duration = 1, usable = 5 },
                    { name = "Abyssal Shield", absorb = 30, duration = 3, usable = 3 },
                    { name = "Hydro Shock", damage = 45, usable = 2 },
                    { name = "Abyssal Torrent", damage = 120, aoe = 1, paralyze = true, duration = 1, usable = 1 }
                }
            },
            wave_wyvern = {
                name = "Wave Wyvern",
                health = 150,
                speed = 35, 
                defense = 10,
		rotation = 1,
                attacks = {
                    { name = "Tail Slash", damage = 25, usable = 6 },
                    { name = "Water Spiral", damage = 30, aoe = 1, usable = 4 },
                    { name = "Wyvern Roar", reduce_attack = 20, usable = 3 },
                    { name = "Hydro Dive", damage = 50, usable = 2 },
                    { name = "Wyvern’s Wrath", damage = 110, aoe = 1, usable = 1 }
                }
            },
            water_wisp = {
                name = "Water Wisp",
                health = 110,
                speed = 25, 
                defense = 25,
		rotation = 1,
                attacks = {
                    { name = "Wisp Slash", damage = 15, usable = 8 },
                    { name = "Geyser Blast", damage = 30, usable = 5 },
                    { name = "Flowing Form", dodge_next = 1, usable = 3 },
                    { name = "Water Arrow", damage = 45, usable = 2 },
                    { name = "Torrent Surge", damage = 100, grant_dodge = 1, usable = 1 }
                }
            },
            ice_golem = {
                name = "Ice Golem",
                health = 135,
                speed = 25, 
                defense = 40,
		rotation = 1,
                attacks = {
                    { name = "Frost Punch", damage = 25, usable = 6 },
                    { name = "Frozen Wall", reduce_damage = 40, duration = 2, usable = 4 },
                    { name = "Glacial Impact", damage = 35, aoe = 1, usable = 3 },
                    { name = "Crystal Hammer", damage = 50, usable = 2 },
                    { name = "Arctic Annihilation", damage = 120, freeze = 1, aoe = true, usable = 1 }
                }
            }
        }
    },
    earth = {
        creatures = {
            stone_golem = {
                name = "Stone Golem",
                health = 150,
                speed = 10, 
                defense = 40,
		rotation = 0,
                attacks = {
                    { name = "Rock Slam", damage = 30, usable = 6 },
                    { name = "Earthen Shield", reduce_damage = 30, duration = 2, usable = 5 },
                    { name = "Quake Stomp", damage = 40, aoe = 1, usable = 3 },
                    { name = "Boulder Toss", damage = 50, usable = 2 },
                    { name = "Terra Smash", damage = 120, aoe = 1, usable = 1 }
                }
            },
            forest_guardian = {
                name = "Forest Guardian",
                health = 110,
                speed = 40, 
                defense = 10,
		rotation = 1,
                attacks = {
                    { name = "Vine Lash", damage = 20, usable = 7 },
                    { name = "Root Grasp", damage = 25, slow = 1, usable = 5 },
                    { name = "Thorn Wall", reflect_damage = 25, duration = 2, usable = 3 },
                    { name = "Leaf Barrage", damage = 45, usable = 2 },
                    { name = "Nature's Fury", damage = 100, aoe = 1, heal_all = 20, usable = 1 }
                }
            },
            rock_serpent = {
                name = "Rock Serpent",
                health = 100,
                speed = 40, 
                defense = 10,
		rotation = 1,
                attacks = {
                    { name = "Tail Slam", damage = 25, usable = 6 },
                    { name = "Stone Coil", damage = 30, paralyze = 1, duration = 1, usable = 5 },
                    { name = "Petrify", reduce_attack = 20, usable = 3 },
                    { name = "Crushing Fang", damage = 50, usable = 2 },
                    { name = "Serpent's Quake", damage = 110, aoe = 1, stun = true, duration = 1, usable = 1 }
                }
            },
            sand_beetle = {
                name = "Sand Beetle",
                health = 110,
                speed = 30, 
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Sand Swipe", damage = 20, usable = 7 },
                    { name = "Dust Cloud", reduce_accuracy = 20, usable = 4 },
                    { name = "Burrow Strike", damage = 35, usable = 3 },
                    { name = "Carapace Slam", damage = 50, usable = 2 },
                    { name = "Desert Fury", damage = 110, aoe = 1, usable = 1 }
                }
            },
            iron_rhino = {
                name = "Iron Rhino",
                health = 130,
                speed = 20, 
                defense = 30,
		rotation = 1,
                attacks = {
                    { name = "Horn Strike", damage = 30, usable = 6 },
                    { name = "Charge Smash", damage = 35, aoe = 1, usable = 4 },
                    { name = "Iron Defense", reduce_damage = 40, duration = 2, usable = 3 },
                    { name = "Stampede", damage = 50, usable = 2 },
                    { name = "Titan Charge", damage = 120, aoe = 1, stun = true, duration = 1, usable = 1 }
                }
            },
            crystal_bear = {
                name = "Crystal Bear",
                health = 110,
                speed = 34, 
                defense = 23,
		rotation = 1,
                attacks = {
                    { name = "Claw Strike", damage = 25, usable = 6 },
                    { name = "Crystal Roar", reduce_speed = 20, usable = 5 },
                    { name = "Reflective Armor", reflect_damage = 30, duration = 2, usable = 3 },
                    { name = "Shattering Swipe", damage = 50, usable = 2 },
                    { name = "Crystal Avalanche", damage = 120, freeze = 1, aoe = true, duration = 1, usable = 1 }
                }
            },
            mud_basilisk = {
                name = "Mud Basilisk",
                health = 110,
                speed = 34, 
                defense = 25,
		rotation = 1,
                attacks = {
                    { name = "Mud Toss", damage = 20, usable = 7 },
                    { name = "Quagmire Grip", damage = 25, slow = 1, duration = 1, usable = 5 },
                    { name = "Mud Barrier", reduce_damage = 30, duration = 2, usable = 3 },
                    { name = "Venom Strike", damage = 45, poison = 1, usable = 2 },
                    { name = "Basilisk's Curse", damage = 100, aoe = 1, poison = true, usable = 1 }
                }
            },
            thorned_stag = {
                name = "Thorned Stag",
                health = 100,
                speed = 30, 
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Horn Jab", damage = 30, usable = 6 },
                    { name = "Thorn Burst", damage = 35, aoe = 1, usable = 4 },
                    { name = "Camouflage", dodge_next = 1, usable = 3 },
                    { name = "Branch Slam", damage = 50, usable = 2 },
                    { name = "Forest Storm", damage = 110, aoe = 1, reduce_attack = 20, usable = 1 }
                }
            },
            terra_wurm = {
                name = "Terra Wurm",
                health = 100,
                speed = 30, 
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Burrow Bite", damage = 25, usable = 6 },
                    { name = "Ground Collapse", damage = 30, aoe = 1, usable = 4 },
                    { name = "Sand Shift", reduce_speed = 20, usable = 3 },
                    { name = "Earth Fang", damage = 50, usable = 2 },
                    { name = "Wurmquake", damage = 120, aoe = 1, usable = 1 }
                }
            },
            earth_elemental = {
                name = "Earth Elemental",
                health = 110,
                speed = 30, 
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Fist of Stone", damage = 30, usable = 6 },
                    { name = "Quaking Smash", damage = 35, aoe = 1, usable = 4 },
                    { name = "Earthen Armor", reduce_damage = 40, duration = 2, usable = 3 },
                    { name = "Terra Crush", damage = 50, usable = 2 },
                    { name = "Elemental Wrath", damage = 120, aoe = 1, increase_defense = true, duration = 2, usable = 1 }
                }
            }
        }
    },
    air = {
        creatures = {
            thunderbird = {
                name = "Thunderbird",
                health = 120,
                speed = 30, 
                defense = 20,
		rotation = 0,
                attacks = {
                    { name = "Feather Slash", damage = 25, usable = 6 },
                    { name = "Electro Shock", damage = 30, stun = 1, duration = 1, usable = 4 },
                    { name = "Sky Dive", damage = 40, usable = 3 },
                    { name = "Thunder Strike", damage = 50, aoe = 1, usable = 2 },
                    { name = "Stormcaller", damage = 120, aoe = 1, reduce_speed = 20, usable = 1 }
                }
            },
            sky_serpent = {
                name = "Sky Serpent",
                health = 100,
                speed = 40, 
                defense = 30,
		rotation = 0,
                attacks = {
                    { name = "Wind Lash", damage = 20, usable = 7 },
                    { name = "Coiling Crush", damage = 30, paralyze = 1, duration = 1, usable = 5 },
                    { name = "Cyclone Shot", damage = 40, aoe = 1, usable = 3 },
                    { name = "Fang Strike", damage = 50, usable = 2 },
                    { name = "Aerial Wrath", damage = 110, aoe = 1, increase_evasion = true, duration = 2, usable = 1 }
                }
            },
            storm_falcon = {
                name = "Storm Falcon",
                health = 100,
                speed = 40, 
                defense = 40,
		rotation = 1,
                attacks = {
                    { name = "Talon Swipe", damage = 20, usable = 6 },
                    { name = "Bolt Dive", damage = 30, stun = 1, duration = 1, usable = 5 },
                    { name = "Wing Gust", damage = 35, aoe = 1, usable = 3 },
                    { name = "Hurricane Sweep", damage = 50, reduce_accuracy = 1, usable = 2 },
                    { name = "Tempest Break", damage = 120, aoe = 1, stun_all = true, usable = 1 }
                }
            },
            wind_elemental = {
                name = "Wind Elemental",
                health = 110,
                speed = 40, 
                defense = 10,
		rotation = 0,
                attacks = {
                    { name = "Gale Force", damage = 25, usable = 6 },
                    { name = "Whirlwind Crush", damage = 30, aoe = 1, usable = 4 },
                    { name = "Wind Shield", reduce_damage = 30, duration = 2, usable = 3 },
                    { name = "Air Slice", damage = 45, usable = 2 },
                    { name = "Tornado Burst", damage = 110, aoe = 1, increase_speed = true, usable = 1 }
                }
            },
            lightning_wolf = {
                name = "Lightning Wolf",
                health = 100,
                speed = 40, 
                defense = 35,
		rotation = 1,
                attacks = {
                    { name = "Static Fang", damage = 30, usable = 6 },
                    { name = "Electric Howl", damage = 35, aoe = 1, reduce_speed = 20, usable = 4 },
                    { name = "Flash Sprint", avoid_next = 1, increase_speed = true, usable = 3 },
                    { name = "Volt Strike", damage = 50, usable = 2 },
                    { name = "Storm Surge", damage = 120, aoe = 1, paralyze_all = true, duration = 1, usable = 1 }
                }
            },
            cloud_drake = {
                name = "Cloud Drake",
                health = 100,
                speed = 35, 
                defense = 25,
		rotation = 1,
                attacks = {
                    { name = "Cloud Slash", damage = 25, usable = 6 },
                    { name = "Mist Veil", reduce_accuracy=20, duration = 2, usable = 5 },
                    { name = "Lightning Bolt", damage = 40, stun = 1, duration = 1, usable = 3 },
                    { name = "Sky Barrage", damage = 50, aoe = 1, usable = 2 },
                    { name = "Tempest Fury", damage = 120, aoe = 1, stun_all = true, usable = 1 }
                }
            },
            gale_hawk = {
                name = "Gale Hawk",
                health = 110,
                speed = 10, 
                defense = 35,
		rotation = 1,
                attacks = {
                    { name = "Wing Slash", damage = 20, usable = 7 },
                    { name = "Wind Blade", damage = 30, usable = 5 },
                    { name = "Hawk Dive", damage = 35, usable = 3 },
                    { name = "Gust Shield", reduce_damage=30, duration = 2, usable = 3 },
                    { name = "Hurricane Fury", damage = 110, aoe = 1, increase_evasion = true, duration = 2, usable = 1 }
                }
            },
            zephyr_spirit = {
                name = "Zephyr Spirit",
                health = 110,
                speed = 30, 
                defense = 30,
		rotation = 1,
                attacks = {
                    { name = "Breeze Slash", damage = 15, usable = 8 },
                    { name = "Whispering Wind", heal = 20, usable = 5 },
                    { name = "Air Shield", reduce_damage=30, duration = 2, usable = 3 },
                    { name = "Cyclone Strike", damage = 45, usable = 2 },
                    { name = "Zephyr's Wrath", damage = 100, aoe = 1, increase_speed = true, duration = 2, usable = 1 }
                }
            }
        }
    },
    --[[dark = {
        creatures = {
            shadow_assassin = {
                name = "Shadow Assassin",
                health = 130,
                speed = 30, 
                defense = 10,
		rotation = 1,
                attacks = {
                    { name = "Shadow Strike", damage = 30, usable = 6 },
                    { name = "Cloak of Darkness", reduce_accuracy=20, duration = 2, usable = 5 },
                    { name = "Nightmare Slash", damage = 40, usable = 3 },
                    { name = "Darkness Veil", reduce_damage=30, duration = 2, usable = 2 },
                    { name = "Eclipse", damage = 120, aoe = 1, blind = true, duration = 1, usable = 1 }
                }
            },
            abyssal_wraith = {
                name = "Abyssal Wraith",
                health = 120,
                speed = 35, 
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Soul Drain", damage = 25, heal = 10, usable = 6 },
                    { name = "Spectral Grasp", damage = 30, reduce_speed=20, usable = 4 },
                    { name = "Wraith's Curse", damage = 35, poison = 1, usable = 3 },
                    { name = "Phantom Strike", damage = 50, usable = 2 },
                    { name = "Abyssal Howl", damage = 110, aoe = 1, fear = true, duration = 1, usable = 1 }
                }
            },
            dark_elemental = {
                name = "Dark Elemental",
                health = 115,
                speed = 10, 
                defense = 50,
		rotation = 1,
                attacks = {
                    { name = "Shadow Bolt", damage = 25, usable = 6 },
                    { name = "Void Pulse", damage = 30, aoe = 1, usable = 4 },
                    { name = "Dark Shield", reduce_damage=30, duration = 2, usable = 3 },
                    { name = "Nightmare Wave", damage = 45, usable = 2 },
                    { name = "Oblivion", damage = 120, aoe = 1, heal_all = 20, usable = 1 }
                }
            },
            cursed_lich = {
                name = "Cursed Lich",
                health = 110,
                speed = 50, 
                defense = 10,
		rotation = 1,
                attacks = {
                    { name = "Necrotic Touch", damage = 20, heal = 5, usable = 7 },
                    { name = "Bone Shard", damage = 30, usable = 5 },
                    { name = "Lich's Grasp", reduce_attack=20, usable = 3 },
                    { name = "Deathly Chill", damage = 50, freeze = 1, usable = 2 },
                    { name = "Requiem", damage = 120, aoe = 1, revive_all = true, usable = 1 }
                }
            },
            night_stalker = {
                name = "Night Stalker",
                health = 110,
                speed = 30, 
                defense = 40,
		rotation = 1,
                attacks = {
                    { name = "Shadow Pounce", damage = 25, usable = 6 },
                    { name = "Veil of Darkness", reduce_accuracy=20, duration = 2, usable = 5 },
                    { name = "Creeping Terror", damage = 35, fear = 1, usable = 3 },
                    { name = "Dark Claw", damage = 50, usable = 2 },
                    { name = "Nightmare", damage = 110, aoe = 1, blind = true, duration = 1, usable = 1 }
                }
            },
            void_reaper = {
                name = "Void Reaper",
                health = 100,
                speed = 40, 
                defense = 10,
		rotation = 1,
                attacks = {
                    { name = "Scythe Slash", damage = 30, usable = 6 },
                    { name = "Void Grasp", damage = 35, reduce_speed=20, usable = 4 },
                    { name = "Eclipse Shield", reduce_damage=40, duration = 2, usable = 3 },
                    { name = "Reaping Strike", damage = 50, usable = 2 },
                    { name = "Void Cataclysm", damage = 120, aoe = 1, drain_health = true, usable = 1 }
                }
            },
            dark_familiar = {
                name = "Dark Familiar",
                health = 120,
                speed = 40, 
                defense = 20,
		rotation = 1,
                attacks = {
                    { name = "Shadow Bite", damage = 15, heal = 5, usable = 8 },
                    { name = "Cursed Howl", damage = 20, reduce_attack=10, usable = 5 },
                    { name = "Dark Pact", absorb_damage_for_allies = 1, duration = 2, usable = 3 },
                    { name = "Nightshade Strike", damage = 40, usable = 2 },
                    { name = "Familiar's Wrath", damage = 100, aoe = 1, heal_all = 20, usable = 1 }
                }
            }
        }
    }]]--
}

return creatures
