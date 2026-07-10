script.run_in_callback(function()
    while true do
        ScriptGlobal(4516902):set_int(0); ScriptGlobal(4516903):set_int(0); ScriptGlobal(4516904):set_int(0); ScriptGlobal(262146)
            :set_float(0); script.yield(0)
    end
end)
-- Updated by ImagineNothing
script.run_in_callback(function() -- Original script by ShinyWasabi
    natives.load_natives()
    local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and
    not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()

    if IsOnline then
        notify.info("Original script by ShinyWasabi", "Updated by ImagineNothing")
        log.info("\n\27[37m\27[4;33mScript\27[m - \27[4;37mUnlockEverything\27[m\nInitialized successfully.")
        local is_player_male = ScriptGlobal(1574927):get_int() == 0
        stats.set_packed_bool_range(110, 113, true) -- Red Check Pajamas, Green Check Pajamas, Black Check Pajamas, I Heart LC T-shirt
        stats.set_packed_bool_range(115, 115, true) -- Roosevelt
        stats.set_packed_bool_range(124, 124, true) -- Sanctus
        stats.set_packed_bool_range(129, 129, true) -- Albany Hermes
        stats.set_packed_bool_range(135, 137, true) -- Vapid Clique, Buzzard Attack Chopper, Insurgent Pick-Up
        stats.set_packed_bool_range(3593, 3599, true) -- 'Statue Of Happiness' T-shirt, '[removed]wasser' Beer Hat, 'Benedict' Beer Hat, 'J Lager' Beer Hat, 'Patriot' Beer Hat, 'Blarneys' Beer Hat, 'Supa Wet' Beer Hat
        stats.set_packed_bool_range(3604, 3605, true) -- Liberator, Sovereign
        stats.set_packed_bool_range(3608, 3609, true) -- 'Elitas' T-shirt, High Flyer Parachute Bag
        stats.set_packed_bool_range(3615, 3616, true) -- Victory Fist Top, Please Stop Me Mask
        stats.set_packed_bool_range(3750, 3750, true) -- Stocking
        stats.set_packed_bool_range(3765, 3769, true) -- The Fleeca Job, The Prison Break, The Humane Labs Raid, Series A Funding, The Pacific Standard Job (Elite Challenges)
        stats.set_packed_bool_range(3770, 3781, true) -- 'Death Defying' T-shirt, 'For Hire' T-shirt, 'Gimme That' T-shirt, '[removed]' T-shirt, 'Can't Touch This' T-shirt, 'Decorated' T-shirt, 'Psycho Killer' T-shirt, 'One Man Army' T-shirt, 'Shot Caller' T-shirt, 'Showroom' T-shirt, 'Elite Challenge' T-Shirt, 'Elite Lousy' T-Shirt
        stats.set_packed_bool_range(3783, 3802, true) -- Fake Dix White T-Shirt, Fake Dix Gold T-Shirt, Fake Didier Sachs T-Shirt, Fake Enema T-Shirt, Fake Le Chien No2 T-Shirt, Fake Le Chien Crew T-Shirt, Fake Santo Capra T-Shirt, Fake Vapid T-Shirt, Fake Perseus T-Shirt, Fake Sessanta Nove T-Shirt, 'Vinewood Zombie' T-shirt, 'Meltdown' T-shirt, 'I Married My Dad' T-shirt, 'Die Already 4' T-shirt, 'The Shoulder Of Orion II' T-shirt, 'Nelson In Naples' T-shirt, 'The Many Wives of Alfredo Smith' T-shirt, 'An American Divorce' T-shirt, 'The Loneliest Robot' T-shirt, 'Capolavoro' T-shirt
        stats.set_packed_bool_range(4247, 4269, true) -- 'Magnetics Script' Hat, 'Magnetics Block' Hat, 'Low Santos' Hat, 'Boars' Hat, 'Benny's' Hat, 'Westside' Hat, 'Eastside' Hat, 'Strawberry' Hat, 'S.A.' Hat, 'Davis' Hat, 'Vinewood Zombie' T-shirt, 'Knife After Dark' T-shirt, 'The Simian' T-shirt, 'Zombie Liberals In The Midwest' T-shirt, 'Twilight Knife' T-shirt, 'Butchery and Other Hobbies' T-shirt, 'Cheerleader Massacre 3' T-shirt, 'Cannibal Clown' T-shirt, 'Hot Serial Killer Stepmom' T-shirt, 'Splatter And Shot' T-shirt, 'Meathook For Mommy' T-shirt, 'Psycho [removed]s' T-shirt, 'Vampires On The Beach' T-shirt
        stats.set_packed_bool_range(4300, 4327, true) -- Brown Corpse Bride Bobblehead, White Corpse Bride Bobblehead, Pink Corpse Bride Bobblehead, White Mask Slasher Bobblehead, Red Mask Slasher Bobblehead, Yellow Mask Slasher Bobblehead, Blue Zombie Bobblehead, Green Zombie Bobblehead, Pale Zombie Bobblehead, Possessed Urchin Bobblehead, Demonic Urchin Bobblehead, Gruesome Urchin Bobblehead, Tuxedo Frank Bobblehead, Purple Suit Frank Bobblehead, Stripped Suit Frank Bobblehead, Black Mummy Bobblehead, White Mummy Bobblehead, Brown Mummy Bobblehead, Pale Werewolf Bobblehead, Dark Werewolf Bobblehead, Gray Werewolf Bobblehead, Fleshy Vampire Bobblehead, Bloody Vampire Bobblehead, B&W Vampire Bobblehead, Halloween Loop 1, Halloween Loop 2, Franken Stange, Lurcher
        stats.set_packed_bool_range(4333, 4335, true) -- Naughty Cap, Nice Cap, Abominable Snowman
        stats.set_packed_bool_range(7467, 7495, true) -- 'Accountant' T-shirt, 'Bahama Mamas' T-shirt, 'Drone' T-shirt, 'Grotti' T-shirt, 'Golf' T-shirt, 'Maisonette' T-shirt, 'Manopause' T-shirt, 'Marlowe' T-shirt, 'Meltdown' T-shirt, 'Pacific Bluffs' T-shirt, 'Prolaps' T-shirt, 'Tennis' T-shirt, 'Toe Shoes' T-shirt, 'Crest' T-shirt, 'Vanilla Unicorn' T-shirt, Pastel Blue Pajamas, Pastel Yellow Pajamas, Pastel Pink Pajamas, Pastel Green Pajamas, Vibrant Check Pajamas, Blue Check Pajamas, Red Swirl Motif Pajamas, White Graphic Pajamas, Blue Swirl Pajamas, Yellow Swirl Pajamas, Red Swirl Pajamas, Navy Pinstripe Pajamas, Bold Pinstripe Pajamas, Orange Pinstripe Pajamas
        stats.set_packed_bool_range(7515, 7528, true) -- Pastel Blue Smoking Jacket, Pastel Yellow Smoking Jacket, Pastel Pink Smoking Jacket, Pastel Green Smoking Jacket, Vibrant Check Smoking Jacket, Blue Check Smoking Jacket, Red Swirl Motif Smoking Jacket, White Graphic Smoking Jacket, Blue Swirl Smoking Jacket, Yellow Swirl Smoking Jacket, Red Swirl Smoking Jacket, Navy Pinstripe Smoking Jacket, Bold Pinstripe Smoking Jacket, Orange Pinstripe Smoking Jacket
        stats.set_packed_bool_range(7551, 7551, true) -- DCTL T-Shirt
        stats.set_packed_bool_range(7595, 7601, true) -- White Jock Cranley Suit, Red Jock Cranley Suit, Blue Jock Cranley Suit, Black Jock Cranley Suit, Pink Jock Cranley Suit, Gold Jock Cranley Suit, Silver Jock Cranley Suit
        stats.set_packed_bool_range(9362, 9385, true) -- Western Brand White T-Shirt, Western Brand Black T-Shirt, Western Logo White T-Shirt, Western Logo Black T-Shirt, Steel Horse Solid Logo T-Shirt, Steel Horse Logo T-Shirt, Steel Horse Brand White T-Shirt, Steel Horse Brand Black T-Shirt, Nagasaki White T-Shirt, Nagasaki White and Red T-Shirt, Nagasaki Black T-Shirt, Purple Helmets Black T-Shirt, Principe Black T-Shirt, Black Steel Horse Hoodie, Steel Horse Brand White T-Shirt, Western Black Hoodie, Western Logo White T-Shirt, Nagasaki White Hoodie, Nagasaki White and Red Hoodie, Nagasaki Black Hoodie, Purple Helmets Black Hoodie, Principe Logo, Crosswalk T-Shirt, R* Crosswalk T-Shirt
        stats.set_packed_bool_range(9426, 9440, true) -- Base5 T-Shirt, [removed]'n' Dog Food T-Shirt, BOBO T-Shirt, Bounce FM T-Shirt, Crocs Bar T-Shirt, Emotion 98.3 T-Shirt, Fever 105 T-Shirt, Flash T-Shirt, Homies Sharp T-Shirt, K-DST T-Shirt, KJAH Radio T-Shirt, K-ROSE T-Shirt, Victory Fist T-Shirt (again?), Vinyl Countdown T-Shirt, Vivisection T-Shirt
        stats.set_packed_bool_range(9443, 9443, true) -- Unicorn
        stats.set_packed_bool_range(9461, 9481, true) -- Ballistic Equipment, LS UR T-Shirt, Non-Stop-Pop FM T-Shirt, Radio Los Santos T-Shirt, Los Santos Rock Radio T-Shirt, Blonded Los Santos 97.8 FM T-Shirt, West Coast Talk Radio T-Shirt, Radio Mirror Park T-Shirt, Rebel Radio T-Shirt, Channel X T-Shirt, Vinewood Boulevard Radio T-Shirt, FlyLo FM T-Shirt, Space 103.2 T-Shirt, West Coast Classics T-Shirt, East Los FM T-Shirt, The Lab T-Shirt, The Lowdown 91.1 T-Shirt, WorldWide FM T-Shirt, Soulwax FM T-Shirt, Blue Ark T-Shirt, Blaine County Radio T-Shirt
        stats.set_packed_bool_range(15381, 15382, true) -- APC SAM Battery, Ballistic Equipment
        stats.set_packed_bool_range(15388, 15423, true) -- Black Ammu-Nation Cap, Black Ammu-Nation Hoodie, Black Ammu-Nation T-Shirt, Black Coil Cap, Black Coil T-Shirt, Black Hawk & Little Hoodie, Black Hawk & Little Logo T-Shirt, Black Hawk & Little T-Shirt, Black Shrewsbury Hoodie, Black Vom Feuer Cap, Black Warstock Hoodie, Green Vom Feuer T-Shirt, Red Hawk & Little Cap, Warstock Cap, White Ammu-Nation T-Shirt, White Coil Hoodie, White Coil T-Shirt, White Hawk & Little Hoodie, White Hawk & Little T-Shirt, White Shrewsbury T-Shirt, White Shrewsbury Cap, White Shrewsbury Hoodie, White Shrewsbury Logo T-Shirt, White Vom Feuer Cap, White Vom Feuer Hoodie, Wine Coil Cap, Yellow Vom Feuer Logo T-Shirt, Yellow Vom Feuer T-Shirt, Yellow Warstock T-Shirt, Blue R* Class of '98, Red R* Class of '98, Noise Rockstar Logo T-Shirt, Noise T-Shirt, Razor T-Shirt, Black Rockstar Camo, White Rockstar Camo
        stats.set_packed_bool_range(15425, 15439, true) -- Knuckleduster Pocket T-Shirt, Rockstar Logo Blacked Out T-Shirt, Rockstar Logo White Out T-Shirt, Half-track 20mm Quad Autocannon, Weaponized Tampa Dual Remote Minigun, Weaponized Tampa Rear-Firing Mortar, Weaponized Tampa Front Missile Launchers, Dune FAV 40mm Grenade Launcher, Dune FAV 7.62mm Minigun, Insurgent Pick-Up Custom .50 Cal Minigun, Insurgent Pick-Up Custom Heavy Armor Plating, Technical Custom 7.62mm Minigun, Technical Custom Ram-bar, Technical Custom Brute-bar, Technical Custom Heavy Chassis Armor
        stats.set_packed_bool_range(15447, 15474, true) -- Oppressor Missiles, Fractal Livery Set, Digital Livery Set, Geometric Livery Set, Nature Reserve Livery, Naval Battle Livery, Anti-Aircraft Trailer Dual 20mm Flak, Anti-Aircraft Trailer Homing Missile Battery, Mobile Operations Center Rear Turrets, Incendiary Rounds, Hollow Point Rounds, Armor Piercing Rounds, Full Metal Jacket Rounds, Explosive Rounds, Pistol Mk II Mounted Scope, Pistol Mk II Compensator, SMG Mk II Holographic Sight, SMG Mk II Heavy Barrel, Heavy Sniper Mk II Night Vision Scope, Heavy Sniper Mk II Thermal Scope, Heavy Sniper Mk II Heavy Barrel, Combat MG Mk II Holographic Sight, Combat MG Mk II Heavy Barrel, Assault Rifle Mk II Holographic Sight, Assault Rifle Mk II Heavy Barrel, Carbine Rifle Mk II Holographic Sight, Carbine Rifle Mk II Heavy Barrel, Proximity Mines
        stats.set_packed_bool_range(15491, 15499, true) -- Weaponized Tampa Heavy Chassis Armor, Brushstroke Camo Mk II Weapon Livery, Skull Mk II Weapon Livery, Sessanta Nove Mk II Weapon Livery, Perseus Mk II Weapon Livery, Leopard Mk II Weapon Livery, Zebra Mk II Weapon Livery, Geometric Mk II Weapon Livery, Boom! Mk II Weapon Livery
        stats.set_packed_bool_range(15552, 15560, true) -- Bronze Greatest Dancer Trophy, Bronze Number One Nightclub Trophy, Bronze Battler Trophy, Silver Greatest Dancer Trophy, Silver Number One Nightclub Trophy, Silver Battler Trophy, Gold Greatest Dancer Trophy, Gold Number One Nightclub Trophy, Gold Battler Trophy
        stats.set_packed_bool_range(18099, 18099, true) -- The Forest
        stats.set_packed_bool_range(18116, 18118, true) -- The Data Breaches, The Bogdan Problem, The Doomsday Scenario (Elite Challenges)
        stats.set_packed_bool_range(18121, 18125, true) -- Green Wireframe Bodysuit, Orange Wireframe Bodysuit, Blue Wireframe Bodysuit, Pink Wireframe Bodysuit, Yellow Wireframe Bodysuit
        stats.set_packed_bool_range(18134, 18137, true) -- Hideous Krampus Mask, Fearsome Krampus Mask, Odious Krampus Mask, Heinous Krampus Mask
        stats.set_packed_bool_range(22124, 22132, true) -- Maisonette Los Santos T-Shirt, Studio Los Santos T-Shirt, Galaxy T-Shirt, Gefängnis T-Shirt, Omega T-Shirt, Technologie T-Shirt, Paradise T-Shirt, The Palace T-Shirt, Tony's Fun House T-Shirt
        stats.set_packed_bool_range(22137, 22139, true) -- Nightclub Hotspot Trophy
        stats.set_packed_bool_range(22147, 22178, true) -- White Solomun Pocket Logo Tee, White Solomun Tee, White Solomun Logo Tee, White Tale Of Us Emb. Tee, Tale of Us Black Box Tee, White Tale Of Us Logo Tee, Tale Of Us Logo Tee, White Dixon Wilderness Tee, White Dixon Repeated Logo Tee, Dixon Pocket Logo Tee, Dixon Box Logo Tee, The Black Madonna Star Tee, White The Black Madonna Init. Tee, White The Black Madonna Emb. tee, White The Black Madonna Tee, Black Solomun Pocket Logo Tee, Black And White Solomun Tee, Black And Yellow Solomun Tee, Black Solomun White Logo Tee, Black Solomun Yellow Logo Tee, Black Tale Of Us Emb. Tee, Tale Of Us AfterLight Tee, Talke Of Us Stacked Logo Tee, BLack Tale Of Us Logo Tee, Black Dixon Wilderness Tee, Black Dixon Repeated Logo Tee, Dixon Glitch Logo Tee, Dixon Green Logo tee, The Black Madonna We BeLieve Tee, Black The Black Madonna Init. Tee, Black The Black Madonna Emb. Tee, Black The Black Madonna Tee
        stats.set_packed_bool_range(24963, 25000, true) -- Apocalypse Cerberus, Future Shock Cerberus, Apocalypse Brutus, Nightmare Cerberus, Apocalypse ZR380, Future Shock Brutus, Impaler, Bolt Burger Hunger T-Shirt, Apocalypse Sasquatch - Livery set, Rat-Truck, Glendale, Slamvan, Dominator, Issi Classic, Spacesuit Alien T-Shirt set, Gargoyle, Future Shock Deathbike - Light Armor w/ Shield, Blue Lights, Electric Blue Lights, Mint Green Lights, Lime Green Lights, Yellow Lights, Golden Shower Lights, Orange Lights, Red Lights, Pony Pink Lights, Hot Pink Lights, Purple Lights, Blacklight Lights, Taxi Custom, Dozer, Clown Van, Trashmaster, Barracks Semi, Mixer, Space Docker, Tractor, Nebula Bodysuit set
        stats.set_packed_bool_range(25002, 25002, true) -- Up-n-Atomizer
        stats.set_packed_bool_range(25004, 25006, true) -- Epsilon Medallion, Epsilon Robes, Kifflom T-Shirt
        stats.set_packed_bool_range(25008, 25009, true) -- The Rookie
        stats.set_packed_bool_range(25018, 25099, true) -- Black & White Bones Festive Sweater, Slasher Festive Sweater, Black & Red Bones Festive Sweater, Red Bones Festive Sweater, Burger Shot Festive Sweater, Red Bleeder Festive Sweater, Blue Bleeder Festive Sweater, Blue Cluckin' Festive Sweater, Green Cluckin' Festive Sweater, Blue Slaying Festive Sweater, Green Slaying Festive Sweater, Hail Santa Festive Sweater, Merry Sprunkmas Festive Sweater, Ice Cold Sprunk Festive Sweater, Albany T-Shirt, Albany Vintage T-Shirt, Annis T-Shirt, Benefactor T-Shirt, BF T-Shirt, [removed]an T-Shirt, Bravado T-Shirt, Brute T-Shirt, Buckingham T-Shirt, Canis T-Shirt, Chariot T-Shirt, Cheval T-Shirt, Classique T-Shirt, Coil T-Shirt, Declasse T-Shirt, Dewbauchee T-Shirt, Dilettante T-Shirt, Dinka T-Shirt, Dundreary T-Shirt, Emperor T-Shirt, Enus T-Shirt, Fathom T-Shirt, Gallivanter T-Shirt, Grotti T-Shirt, Hijak T-Shirt, HVY T-Shirt, Imponte T-Shirt, Invetero T-Shirt, Jobuilt T-Shirt, Karin T-Shirt, Lampadati T-Shirt, Maibatsu T-Shirt, Mamba T-Shirt, Mammoth T-Shirt, MTL T-Shirt, Obey T-Shirt, Ocelot T-Shirt, Overflod T-Shirt, Pegassi T-Shirt, Pfister T-Shirt, Progen T-Shirt, Rune T-Shirt, Schyster T-Shirt, Shitzu T-Shirt, Truffade T-Shirt, Ubermacht T-Shirt, Vapid T-Shirt, Vulcar T-Shirt, Weeny T-Shirt, Willard T-Shirt, Albany Nostalgia T-Shirt, Albany USA T-Shirt, Albany Dealership T-Shirt, Annis JPN T-Shirt, BF Surfer T-Shirt, [removed]an Prairie T-Shirt, Bravado Stylized T-Shirt, Brute Impregnable T-Shirt, Brute Heavy Duty T-Shirt, Buckingham Luxe T-Shirt, Canis USA T-Shirt, Canis American Legend T-Shirt, Canis Wolf T-Shirt, Cheval Marshall T-Shirt, Coil USA T-Shirt, Coil Raiden T-Shirt, Declasse Logo T-Shirt, Declasse Girl T-Shirt
        stats.set_packed_bool_range(25101, 25109, true) -- Nightmare Brutus, Apocalypse Scarab, Future Shock Scarab, Nightmare Scarab, Future Shock ZR380, Nightmare ZR380, Apocalypse Imperator, Future Shock Imperator, Nightmare Imperator
        stats.set_packed_bool_range(25111, 25134, true) -- Future Shock Deathbike - Reinforced Armor w/ Shield, Future Shock Deathbike - Heavy Armor w/ Shield, Future Shock Sasquatch - Livery set, Nightmare Sasquatch - Livery set, Apocalypse Cerberus - Livery set, Future Shock Cerberus - Livery set, All variants of Sasquatch - Light Armor, All variants of Sasquatch - Reinforced Armor, All variants of Sasquatch - Heavy Armor, Nightmare Cerberus - Livery set, Apocalypse Bruiser - Livery set, Future Shock Bruiser - Livery set, Nightmare Bruiser - Livery set, Apocalypse Slamvan - Livery set, All variants of Cerberus - Body Spikes, Future Shock Slamvan - Livery set, All variants of Cerberus - Light Armor, All variants of Cerberus - Reinforced Armor, All variants of Cerberus - Heavy Armor, Nightmare Slamvan - Livery set, Apocalypse Brutus - Livery set, Future Shock Brutus - Livery set, Nightmare Brutus - Livery set, Apocalypse Scarab - Livery set
        stats.set_packed_bool_range(25136, 25179, true) -- All variants of Bruiser - Body Spikes, Future Shock Scarab - Livery set, Nightmare Scarab - Livery set, All variants of Bruiser - Light Armor, All variants of Bruiser - Reinforced Armor, All variants of Bruiser - Heavy Armor, Apocalypse Dominator - Livery set, Future Shock Dominator - Livery set, Nightmare Dominator - Livery set, Apocalypse Impaler - Livery set, Future Shock Impaler - Livery set, Nightmare Impaler - Livery set, All variants of Slamvan - Body Spikes, Apocalypse Imperator - Livery set, Future Shock Imperator - Livery set, All variants of Slamvan - Light Armor, All variants of Slamvan - Reinforced Armor, All variants of Slamvan - Heavy Armor, Nightmare Imperator - Livery set, Apocalypse ZR380 - Livery set, Future Shock ZR380 - Livery set, Nightmare ZR380 - Livery set, Apocalypse Issi - Livery set, Future Shock Issi - Livery set, All variants of Brutus - Light Armor, All variants of Brutus - Reinforced Armor, All variants of Brutus - Heavy Armor, Nightmare Issi - Livery set, Apocalypse Deathbike - Livery set, Future Shock Deathbike - Livery set, Nightmare Deathbike - Livery set, All variants of Sasquatch - Heavy Armored Front, Apocalypse Scarab - Body Spikes set, Future Shock Scarab - Body Spikes set, Nightmare Scarab - Body Spikes set, All variants of Sasquatch - Heavy Armored Hood, All variants of Sasquatch - Mohawk Exhausts, All variants of Scarab - Light Armor, All variants of Scarab - Reinforced Armor, All variants of Scarab - Heavy Armor, All variants of Sasquatch - Dual Mohawk Exhausts, Apocalypse & Nightmare Sasquatch - Rear Spears Left, Optics Headset Mask set, All variants of Dominator - Body Spikes
        stats.set_packed_bool_range(25181, 25237, true) -- Apocalypse & Nightmare Sasquatch - Rear Spears Right, Apocalypse & Nightmare Sasquatch - Skull Cross, All variants of Dominator - Light Armor, All variants of Dominator - Reinforced Armor, All variants of Dominator - Heavy Armor, Apocalypse & Nightmare Sasquatch - Ram Skull Cross, Apocalypse & Nightmare Sasquatch - Blonde Doll Cross, All variants of Impaler - Body Spikes, Apocalypse & Nightmare Sasquatch - Brunette Doll Cross, Apocalypse & Nightmare Cerberus - Bastioned Ram-bars, All variants of Impaler - Light Armor, All variants of Impaler - Reinforced Armor, All variants of Impaler - Heavy Armor, All variants of Cerberus - Bolstered Hood Cage, All variants of Cerberus - Reinforced Riot Hood, All variants of Cerberus - Juggernaut Hood, Apocalypse & Nightmare Cerberus - War Spearheads, All variants of Imperator - Body Spikes, Apocalypse & Nightmare Cerberus - War Spear Kit, Apocalypse & Nightmare Cerberus - Nade Spearheads, Apocalypse & Nightmare Cerberus - Nade Spear Kit, All variants of Imperator - Light Armor, All variants of Imperator - Reinforced Armor, All variants of Imperator - Heavy Armor, Apocalypse & Nightmare Cerberus - Skull Spearheads, Apocalypse & Nightmare Cerberus - Skull Spear Kit, Apocalypse & Nightmare Cerberus - Arrow Spearheads, Apocalypse & Nightmare Cerberus - Arrow Spear Kit, All variants of ZR380 - Body Spikes, Apocalypse & Nightmare Cerberus - Tridents, Apocalypse & Nightmare Cerberus - Wasteland Ritual, All variants of ZR380 - Light Armor, All variants of ZR380 - Reinforced Armor, All variants of ZR380 - Heavy Armor, Future Shock Cerberus - Panel Detail, Future Shock Cerberus - Crane Pipes, All variants of Issi - Body Spikes, Future Shock Cerberus - Hedgehog, Future Shock Cerberus - Hedgehog MK2, Future Shock Bruiser - Heavy Plated Armored Grille / Apocalypse & Nightmare Bruiser - Diamond Heavy Armor Grille, All variants of Issi - Light Armor, All variants of Issi - Reinforced Armor, All variants of Issi - Heavy Armor, All variants of Bruiser - Twin Oval Exhaust, Cluckin' Bell Mask, All variants of Bruiser - Long Triple Rear Exhausts, All variants of Bruiser - Front & Rear Triple Exhausts, All variants of Deathbike - Light Armor, All variants of Deathbike - Reinforced Armor, All variants of Deathbike - Heavy Armor, Kinetic Mines, Apocalypse Bruiser - Skull & Cross / Nightmare Bruiser - Painted Skull & Cross, Spike Mines, Slick Mines, Sticky Mines, EMP Mines, RC Bandito
        stats.set_packed_bool_range(25244, 25400, true) -- Robot Bodysuit set, Hero Bodysuit set, Shapes Bodysuit set, Contours Bodysuit set, Martian Bodysuit set, Reptile Bodysuit set, Galaxy Bodysuit set, Space Creature Suits, Space Cyclops Suits, Space Horror Suits, Retro Spacesuits, Astronaut Suits, Space Traveler Suits, Character Suits: Pogo Space Monkey, Character Suits: Republican Space Ranger, Death Bird Mask set, Stalker Mask set, Raider Mask set, Marauder Mask set, Paco the Taco Mask, Burger Shot Mask, Space Rangers T-Shirt set, Space Ranger Logo T-Shirt set, Phases T-Shirt set, Rocket Splash T-Shirt set, Two Moons T-Shirt set, Freedom Isn't Free T-Shirt set, Apocalyptic Raider Top set, Apocalyptic Leather Feather Top set, Apocalyptic Mercenary Vest set, Benedict Light Beer Hoodie, Taco Bomb Hoodie, Cluckin' Bell Logo Bomb Hoodie, Patriot Beer Hoodie, [removed]wasser Hoodie, Burger Shot Hoodie, Corn Dog Hoodie, Donut Hoodie, Lucky Plucker Hoodie, Logger Light Hoodie, Pizza Hoodie, Fries Hoodie, Mushrooms Hoodie, Redwood Hoodie, eCola Infectious Hoodie, Cluckin' Bell Logo Hoodie, Lemons Hoodie, Tacos Hoodie, Burger Shot Pattern Sweater, Burger Shot Logo Sweater, Burger Shot Sweater, Sprunk Sweater set, Wigwam Sweater, Taco Bomb Chili Sweater, Taco Bomb Sweater set, Cluckin' Bell Logo Bomb Sweater, Blue Cluckin' Bell Sweater, Black Cluckin' Bell Sweater, eCola Sweater set, MeTV Sweater set, Heat Sweater set, Degenatron Sweater, [removed]wasser Sweater set, Bolt Burger Sweater, Lucky Plucker Logo Bomb Sweater, Lucky Plucker Sweater, Burger Shot Hockey Shirt set, Cluckin' Bell Hockey Shirt set, Wigwam Hockey Shirt, Redwood Hockey Shirt, Bean Machine Hockey Shirt, Red eCola Hockey Shirt, Black eCola Hockey Shirt, Phat Chips Hockey Shirt set, Sprunk Hockey Shirt set, Sprunk Classic Hockey Shirt, Burger Shot Black T-Shirt, Burger Shot Logo T-Shirt, Cluckin' Bell Logo T-Shirt, Cluckin' Bell Black T-Shirt, Cluckin' Bell Filled Logo T-Shirt, eCola Black T-Shirt, Lucky Plucker T-Shirt, [removed]wasser T-Shirt, Sprunk T-Shirt, Taco Bomb Chili T-Shirt, Taco Bomb Black T-Shirt, Up-n-Atom Hamburgers T-Shirt, Up-n-Atom Logo T-Shirt, Wigwam T-Shirt, Degenatron ROYGBIV T-Shirt, CNT T-Shirt, Qub3d T-Shirt, Righteous Slaughter T-Shirt, Space Monkey Full T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Enemy T-Shirt, Burger Shot Bleeder T-Shirt, Heat Rises T-Shirt, Space Monkey Logo T-Shirt, Space Monkey Suit T-Shirt, Space Monkey Face T-Shirt, Space Monkey Mosaic T-Shirt, Bolt Burger Logo T-Shirt, Exsorbeo 720 T-Shirt, Heat Ball Logo T-Shirt set, Heat Logo T-Shirt set, Heat Pop Art Logo T-Shirt set, MeTV Logo T-Shirt set, MeTV 90s T-Shirt set, Burger Shot Target T-Shirt, eCola Infectious T-Shirt, Up-n-Atom White T-Shirt, Jock Cranley Patriot T-Shirt, CCC TV T-Shirt, Degenatron Logo T-Shirt, eCola White T-Shirt, eCola Pass It On T-Shirt, Tw@ T-Shirt, Chain Pants set, Chain Shorts set, Leather Stitch Pants set, Raider Pants set, Light Ups Shoes set, Flaming Skull Boots set, Skull Harness Boots set, Plated Boots set, Burger Shot Food Cap set, Apocalypse Bruiser - Double Cross Ram Skull / Nightmare Bruiser - Painted Ram Skull & Cross, Burger Shot Logo Cap, Burger Shot Bullseye Cap, Cluckin' Bell Logo Cap set, Apocalypse Bruiser - Cross & Skull Large Blade Kit / Nightmare Bruiser - Painted Skull Large Blade Kit, Cluckin' Bell Logos Cap, Hotdogs Cap set, Taco Bomb Cap set, Apocalypse Bruiser - Ram Skull Nade Kit / Nightmare Bruiser - Painted Ram Skull Nade Kit, Apocalypse Bruiser - Ram Skull Medieval Kit / Nightmare Bruiser - Painted Skull Medieval Kit, Lucky Plucker Cap set, Lucky Plucker Logos Cap set, Apocalypse Bruiser - Ram Skull Medieval Madness / Nightmare Bruiser - Painted Skull Medieval Madness, Apocalypse Bruiser - Barrels & Junk, [removed]wasser Cap set, Apocalypse Bruiser - Skeleton Cage, Future Shock Bruiser - Light Cover, Future Shock Bruiser - Spare Tire, Taco Canvas Hat, Burger Shot Canvas Hat, Cluckin' Bell Canvas Hat, Hotdogs Canvas Hat, Shunt Boost, Boost Upgrade 20%, Boost Upgrade 60%, Boost Upgrade 100%, Jump Upgrade 20%, Jump Upgrade 60%, Jump Upgrade 100%
        stats.set_packed_bool_range(25406, 25406, true) -- Festive tint (Up-n-Atomizer)
        stats.set_packed_bool_range(25407, 25511, true) -- Future Shock Bruiser - Crates, Nightmare Bruiser - Large Burger, Nightmare Bruiser - Large Doughnuts, Nightmare Bruiser - Large eCola Cans, All variants of Slamvan - Rear Bumper Reinforced Armor, All variants of Slamvan - Rear Bumper Heavy Armor, Apocalypse Slamvan - Basic Spears, Apocalypse Slamvan - Battle Cross, Apocalypse Slamvan - War Cross, Apocalypse Slamvan - Battle Spears, Apocalypse Slamvan - War Spears, Nightmare Slamvan - Knife Spears, Nightmare Slamvan - Fork & Knife, Apocalypse & Nightmare Brutus - Gassed Up Bar, Apocalypse & Nightmare Brutus - Roadblock, Apocalypse & Nightmare Brutus - Junk Trunk, Apocalypse & Nightmare Brutus - Fire Spitters, Apocalypse & Nightmare Brutus - Hell Chambers, Apocalypse & Nightmare Brutus - Heavy Armored Arches, Apocalypse & Nightmare Brutus - Toothy, Apocalypse & Nightmare Brutus - Armored Spares, Apocalypse & Nightmare Brutus - Armored Supplies, Apocalypse & Nightmare Brutus - Eternally Chained, Apocalypse & Nightmare Brutus - Speared, Future Shock Scarab - Primary Full Armor, All variants of Scarab - Secondary Full Armor, All variants of Scarab - Carbon Full Armor, Future Shock Scarab - Heavy Duty Cooling / Apocalypse & Nightmare Scarab - Air Filtration Vents & Long Range Equipment, Apocalypse & Nightmare Scarab - Rusty Full Armor, Apocalypse & Nightmare Scarab - Rear War Poles, Apocalypse & Nightmare Scarab - Rear Spears, Apocalypse & Nightmare Scarab - Skull Cross, Apocalypse & Nightmare Scarab - Skull Cross w/ War Poles, Apocalypse & Nightmare Scarab - Skull Cross w/ Spears, Apocalypse & Nightmare Scarab - Load'a War Poles, Apocalypse & Nightmare Scarab - Load'a Spears, Apocalypse & Nightmare Scarab - Scarab Mega Cover set, Apocalypse & Nightmare Scarab - Armored Mega Cover set, Apocalypse & Nightmare Scarab - Cage, Apocalypse & Nightmare Scarab - Plated Cage, Future Shock Scarab - Livery Armor, Future Shock Scarab - Primary Full Armor, Future Shock Scarab - Livery Full Armor, Future Shock Scarab - Carbon Full Armor, Future Shock Scarab - Matte Full Armor, Future Shock Scarab - Futuristic Panel Armor, Future Shock Scarab - Plated Livery Full Armor, All variants of Dominator - Triple Front Exhausts, All variants of Dominator - Horn Exhausts, All variants of Dominator - Triple Rear Exhausts, Apocalypse & Nightmare Dominator - Rear Pointing War Poles, Apocalypse & Nightmare Dominator - Front Facing Axes, Apocalypse & Nightmare Dominator - Front Facing Spears, Apocalypse & Nightmare Dominator - Unholy Cross, Apocalypse & Nightmare Dominator - Brutal Unholy Cross, Apocalypse & Nightmare Dominator - Bunch of War Poles, Apocalypse & Nightmare Dominator - Front Pointing War Poles, Apocalypse & Nightmare Dominator - Skull Hood, Apocalypse & Nightmare Impaler - Got Pole?, Apocalypse & Nightmare Impaler - Getting Medieval, Apocalypse & Nightmare Impaler - Wasteland Peacock, Apocalypse & Nightmare Impaler - Shish-Kebbabed, Apocalypse & Nightmare Impaler - It's A Stick Up, Apocalypse & Nightmare Impaler - The Dark Ages, Apocalypse & Nightmare Impaler - Dolly Spearton, Apocalypse & Nightmare Impaler - War Poles, All variants of Imperator - Shakotan Exhaust, Apocalypse & Nightmare Imperator - Whole Lotta Pole, Apocalypse & Nightmare Imperator - Getting Medieval, Apocalypse & Nightmare Imperator - It's A Stick Up, Apocalypse & Nightmare Imperator - Boom On A Spear, Apocalypse & Nightmare Imperator - Village Justice, Apocalypse & Nightmare Imperator - Wasteland Peacock, Apocalypse & Nightmare Imperator - Shish-Kebbabed, Apocalypse & Nightmare Imperator - Junk Pipes, Apocalypse & Nightmare Imperator - Mega Zorst, Apocalypse & Nightmare Imperator - Ride 'Em Cowboy, Apocalypse & Nightmare Imperator - Cannibal Totem, All variants of ZR380 - Side Exhausts, All variants of ZR380 - Spike Exhausts, Apocalypse & Nightmare ZR380 - Mismatch, Future Shock ZR380 - Ray Gun Exhausts, Future Shock ZR380 - Sprint Car Wing, Future Shock ZR380 - Armor Plating Mk. 3, Future Shock ZR380 - Rear Phantom Covers, All variants of Issi - Heavy Duty Ram Bar, Apocalypse & Nightmare Issi - Spear, Apocalypse & Nightmare Issi - Left War Poles, Apocalypse & Nightmare Issi - Dolly Spearton, Apocalypse & Nightmare Issi - Right War Poles, Apocalypse & Nightmare Issi - Skull Cross, Apocalypse & Nightmare Issi - Dolly Spearton Set, Apocalypse & Nightmare Issi - Dual War Poles, Apocalypse & Nightmare Issi - Dolly Spearton W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Spear, Apocalypse & Nightmare Issi - Skull Cross W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Dolly, Apocalypse & Nightmare Issi - Left Spear, Apocalypse & Nightmare Issi - Right Spear, Apocalypse & Nightmare Issi - Left Skull Axe, Apocalypse & Nightmare Issi - Right Axe, Apocalypse & Nightmare Issi - Dual Spears, Apocalypse & Nightmare Issi - Spear & Axe, Apocalypse & Nightmare Issi - Axe & Spear, Apocalypse & Nightmare Issi - Dual Axes
        stats.set_packed_bool_range(25516, 25516, true) -- RC Tank
        stats.set_packed_bool_range(25520, 25521, true) -- Metal Detector
        stats.set_packed_bool_range(26811, 26964, true) -- Action Figures, Playing Cards
        stats.set_packed_bool_range(26968, 27088, true) -- Impotent Rage Outfit, High Roller, Tiger Scuba, Sprunk Racing Suit, Neon Bodysuit, Extreme Strike Vest, The Chimera (Outfit), White Racing Suit, The Reconnaissance (Outfit), Blue Jock Cranley Suit, Italian Biker Suit, The Hazard (Outfit), Mid Strike Vest, Splinter Gorka Suit, The Gunfighter (Outfit), Black Plate Carrier*, Hunter Leather Fur Jacket, Chamois Plate Carrier*, Black Heavy Utility Vest, The Puff (Outfit), Ox Blood Patched Cut, Color Geo PRB Leather, Blue Tactical Blouson, Orange Big Cat*, Color Geo Sweater, Vivid Gradient Puffer, Color Diamond Sweater, Classic SN Print Sweater, Power Motocross, The Buzz (Outfit), Pegassi Racing Jacket, Woodland Camo Parka, Le Chien Print Sweater, The Pincer (Outfit), Vibrant Gradient Shortsleeve, Urban Gradient Shortsleeve, White Chevron SC Track, Slalom Motocross, Blue Savanna Shortsleeve, Green Didier Sachs Field, Candy Motocross, Tutti Frutti Pattern Sweater, The Vespucci (Outfit), Contrast Camo Service Shirt, Tropical Pattern Sweater, Black Service Shirt, SecuroServ 1 (Outfit), Black Sports Blagueurs Hoodie, Gold Shiny T-Shirt, OJ Shortsleeve, Primary Squash Hoodie, Purple Camo Bigness Hoodie, Bold Abstract Bigness Hoodie, Pink SN Hoodie, Red Boating Blazer, Multicolor Leaves Shortsleeve, Neon Leaves Güffy Hoodie, Black Dotted Shortsleeve, Drive Motocross, Red Patterned Shortsleeve, Steel Horse Satin Jacket, Orange Squash Hoodie, Regal Loose Shirt, White Güffy Hoodie, Stealth Utility Vest, Red Floral Sweater, Black & Red Bigness Jersey, The Slick (Outfit), Splat Squash Sweater, Tan Hooded Jacket, Brushstroke Combat Shirt, White & Red Bigness Jersey, Black Combat Top, Lime Longline Hoodie, Red Bold Check, Bold Camo Sand Castle Sweater, Red Combat Shirt, Red Mist XI Dark, Cyan Manor Sweater, Flecktarn Sleeveless Shirt, Forest Camo Battle Vest, LS Jardineros Dark, Liberty [removed] Dark, Angelica T-Shirt, Hinterland Ship Sweater, Wine Sleeveless Shirt, Cobble Sleeveless, Black Dense Logo Sweater*, White Flying Bravo Hoodie, Cat T-Shirt*, Color Geo T-Shirt, Bold Abstract Bigness T-Shirt, Neon Leaves Güffy T-Shirt, Black Baggy Hoodie, White Manor Zigzag T-Shirt, Double P Baseball Shirt, Aqua Camo Rolled Tee, Dark Woodland T-Shirt, White Bigness T-Shirt, Black No Retreat Tank, White Benny's T-Shirt, Red Smuggler Tank, Angels of Death Vivid Tee, Blue Hit & Run Tank, Waves T-Shirt*, Beige Turtleneck, Hinterland Nugget T-Shirt, Mustard Güffy Tank, Nagasaki White and Red Hoodie, Grotti Tee, Western Logo Black Tee, Butchery and other Hobbies, Black Ammu-Nation Hoodie*, Fake Santo Capra T-Shirt, Death Defying T-Shirt, Bahama Mamas, Showroom T-Shirt, LS UR Tee, J Lager Beer Hat, Unicorn, Gingerbread
        stats.set_packed_bool_range(27109, 27115, true) -- The Diamond Classic T-Shirt, The Diamond Vintage T-Shirt, Red The Diamond LS T-Shirt, Blue The Diamond Resort LS T-Shirt, Red The Diamond Resort T-Shirt, Blue D Casino T-Shirt, Red The Diamond Classic T-Shirt
        stats.set_packed_bool_range(27120, 27145, true) -- White The Diamond Hoodie, Black The Diamond Hoodie, Ash The Diamond Hoodie, Gray The Diamond Hoodie, Red The Diamond Hoodie, Orange The Diamond Hoodie, Blue The Diamond Hoodie, Black The Diamond Silk Robe, White The Diamond Cap, Black The Diamond Cap, White LS Diamond Cap, Black LS Diamond Cap, Red The Diamond Cap, Orange The Diamond Cap, Blue LS Diamond Cap, Green The Diamond Cap, Orange LS Diamond Cap, Purple The Diamond Cap, Pink LS Diamond Cap, White The Diamond LS Tee*, Black The Diamond LS Tee, Black The Diamond Resort LS Tee, White The Diamond Resort Tee, Black The Diamond Resort Tee, Black LS Diamond Tee, Black D Casino Tee
        stats.set_packed_bool_range(27147, 27182, true) -- I've Been Shamed Tee, Blue I've Been Shamed Tee, Fame or Shame Stars Tee, Red Fame or Shame Stars Tee, No Talent Required Tee, Red No Talent Required Tee, Team Tracey Tee, Blue Team Tracey Tee, Monkey Business Tee, Red Monkey Business Tee, Fame or Shame Logo Tee, Blue Fame or Shame Logo Tee, Stars Fame or Shame Robe, Black Fame or Shame Robe, Red Stars Fame or Shame Robe, Red Fame or Shame Robe, White Fame or Shame Robe, Black Fame or Shame Shades, Red Fame or Shame Shades, Blue Fame or Shame Shades, White Fame or Shame Shades, Gold Fame or Shame Mics, Silver Fame or Shame Mics, Red Fame or Shame Kronos, Green Fame or Shame Kronos, Blue Fame or Shame Kronos, Black Fame or Shame Kronos, America Loves You Tee, Blue America Loves You Tee, Fame or Shame No Evil Tee, You're So Original! Tee, Red You're So Original! Tee, Oh No He Didn't! Tee, Blue Oh No He Didn't! Tee, You're Awful Tee, Red You're Awful Tee
        stats.set_packed_bool_range(27184, 27213, true) -- Invade and Persuade Enemies T-Shirt, Invade and Persuade Oil T-Shirt, Invade and Persuade Tour T-Shirt, Invade and Persuade Green T-Shirt, Invade and Persuade RON T-Shirt, Street Crimes Hoods T-Shirt, Street Crimes Punks T-Shirt, Street Crimes Yokels T-Shirt, Street Crimes Bikers T-Shirt, Street Crimes Action T-Shirt, Street Crimes Boxart T-Shirt, Street Crimes Logo T-Shirt, Claim What's Yours T-Shirt, Choose Your Side T-Shirt, Street Crimes Color Gangs T-Shirt, Street Crimes Red Gangs T-Shirt, White Street Crimes Icons T-Shirt, Black Street Crimes Icons T-Shirt, Invade and Persuade Logo T-Shirt, Mission I T-Shirt, Mission II T-Shirt, Mission IV T-Shirt, Mission III T-Shirt, Invade and Persuade Boxart T-Shirt, Invade and Persuade Invader T-Shirt, Invade and Persuade [removed] T-Shirt, Invade and Persuade Jets T-Shirt, Invade and Persuade Gold T-Shirt, Invade and Persuade Hero T-Shirt, Invade and Persuade Barrels T-Shirt
        stats.set_packed_bool_range(27247, 27247, true) -- Madam Nazar (Arcade Trophy)
        stats.set_packed_bool_range(28099, 28148, true) -- Signal Jammers
        stats.set_packed_bool_range(28158, 28158, true) -- Navy Revolver
        stats.set_packed_bool_range(28171, 28191, true) -- Green Reindeer Lights Bodysuit, Ho-Ho-Ho Sweater, Traditional Festive Lights Bodysuit, Yellow Reindeer Lights Bodysuit, Neon Festive Lights Bodysuit, Plushie Grindy T-Shirt, Plushie Saki T-Shirt , Plushie Humpy T-Shirt, Plushie Smoker T-Shirt, Plushie [removed]ie T-Shirt, Plushie Muffy T-Shirt, Plushie Wasabi Kitty T-Shirt, Plushie Princess T-Shirt, Plushie Master T-Shirt, Pixel Pete's T-Shirt, Wonderama T-Shirt, Warehouse T-Shirt, Eight Bit T-Shirt, Insert Coin T-Shirt, Videogeddon T-Shirt, Nazar Speaks T-Shirt
        stats.set_packed_bool_range(28194, 28196, true) -- Silent & Sneaky, The Big Con, Aggressive (Elite Challenges)
        stats.set_packed_bool_range(28197, 28223, true) -- Badlands Revenge II Gunshot T-Shirt, Badlands Revenge II Eagle T-Shirt, Badlands Revenge II Pixtro T-Shirt, Badlands Revenge II Romance T-Shirt, Badlands Revenge II Bear T-Shirt, Badlands Revenge II Help Me T-Shirt & Badlands Revenge II Retro T-Shirt, Race and Chase Decor T-Shirt, Race and Chase Vehicles T-Shirt, Race and Chase Finish T-Shirt, Crotch Rockets T-Shirt, Street Legal T-Shirt & Get Truckin' T-Shirt, Wizard's Ruin Loot T-Shirt, The Wizard's Ruin Rescue T-Shirt, The Wizard's Ruin Vow T-Shirt, Thog Mighty Sword T-Shirt, Thog T-Shirt & Thog Bod T-Shirt, Space Monkey 3 T-Shirt, Space Monkey Space Crafts T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Boss Fights T-Shirt, Radioactive Space Monkey T-Shirt & Space Monkey Art T-Shirt, Monkey's Paradise T-Shirt, Retro Defender of the Faith T-Shirt, Penetrator T-Shirt, Defender of the Faith T-Shirt, Love Professor His T-Shirt & Love Professor Hers T-Shirt, Love Professor Nemesis T-Shirt, Love Professor Friendzoned T-Shirt, Love Professor Secrets T-Shirt & Love Professor Score T-Shirt, Shiny Wasabi Kitty Claw T-Shirt, Pixtro T-Shirt & Akedo T-Shirt, Arcade Trophy T-Shirt
        stats.set_packed_bool_range(28224, 28227, true) -- White Dog With Cone T-Shirt, Yellow Dog With Cone T-Shirt, Dog With Cone Slip-Ons & Dog With Cone Chain, Refuse Collectors Outfit, Undertakers Outfit, Valet Outfit
        stats.set_packed_bool_range(28229, 28249, true) -- Prison Guards, FIB Suits, Black Scuba, Gruppe Sechs Gear, Bugstars Uniforms, Maintenance Outfit, Yung Ancestors Outfit, Firefighter Outfit, Orderly Armor Outfit, Upscale Armor Outfit, Evening Armor Outfit, Reinforced: Padded Combat Outfit, Reinforced: Bulk Combat Outfit, Reinforced: Compact Combat Outfit, Balaclava Crook Outfit, Classic Crook Outfit, High-end Crook Outfit, Infiltration: Upgraded Tech Outfit, Infiltration: Advanced Tech Outfit, Infiltration: Modernized Tech Outfit, Degenatron Glitch T-Shirt
        stats.set_packed_bool_range(28254, 28255, true) -- Get Metal T-Shirt / Axe of Fury T-Shirt, 11 11 T-Shirt / Axe of Fury T-Shirt
        stats.set_packed_bool_range(28272, 28272, true) -- Trade price for polcaracara, polterminus, polcoquette4, polfaction2
        stats.set_packed_bool_range(28319, 28321, true) -- Hands On Car Wash Cap, Higgins Helitours Tee, Smoke on the Water Hoodie
        stats.set_packed_bool_range(28344, 28344, true) -- Lucky Clover Outfit, Golden Clover Outfit
        stats.set_packed_bool_range(28351, 28351, true) -- High Life 420 Outfit
        stats.set_packed_bool_range(30230, 30251, true) -- Movie Props, Space Interloper Outfit
        stats.set_packed_bool_range(30254, 30295, true) -- King Of QUB3D T-Shirt, Qubism T-Shirt, God Of QUB3D T-Shirt, QUB3D Boxart T-Shirt, Qub3d Qub3s T-Shirt, Yacht Captain Outfit, BCTR Aged T-Shirt, BCTR T-Shirt, Cultstoppers Aged T-Shirt, Cultstoppers T-Shirt, Daily Globe Aged T-Shirt, Daily Globe T-Shirt, Eyefind Aged T-Shirt, Eyefind T-Shirt, Facade Aged T-Shirt, Facade T-Shirt, Fruit Aged T-Shirt, Fruit T-Shirt, LSHH Aged T-Shirt, LSHH T-Shirt, MyRoom Aged T-Shirt, MyRoom T-Shirt, Rebel Aged T-Shirt, Rebel T-Shirt, Six Figure Aged T-Shirt, Six Figure T-Shirt, Trash Or Treasure Aged T-Shirt, Trash Or Treasure T-Shirt, Tw@ Logo Aged T-Shirt, Tw@ Logo T-Shirt, Vapers Den Aged T-Shirt, Vapers Den T-Shirt, WingIt Aged T-Shirt, WingIt T-Shirt, ZiT Aged T-Shirt, ZiT T-Shirt, Green Dot Tech Mask, Orange Dot Tech Mask, Blue Dot Tech Mask, Pink Dot Tech Mask, Lemon Sports Track Pants, Lemon Sports Track Top
        stats.set_packed_bool_range(30524, 30557, true) -- Grotti Aged T-Shirt, Lampadati Aged T-Shirt, Ocelot Aged T-Shirt, Overflod Aged T-Shirt, Pegassi Aged T-Shirt, Pfister Aged T-Shirt, Vapid Aged T-Shirt, Weeny Aged T-Shirt, Blue The Diamond Resort LS Aged T-Shirt, KJAH Radio Aged T-Shirt, K-Rose Aged T-Shirt, Emotion 98.3 Aged T-Shirt, KDST Aged T-Shirt, Bounce FM Aged T-Shirt, Fake Vapid Aged T-Shirt, I Married My Dad Aged T-Shirt, ToeShoes Aged T-Shirt, Vanilla Unicorn Aged T-Shirt, Steel Horse Solid Logo Aged T-Shirt, Black Western Logo Aged T-Shirt, White Nagasaki Aged T-Shirt, Black Principe Aged T-Shirt, Noise Aged T-Shirt, Noise Rockstar Logo Aged T-Shirt, Razor Aged T-Shirt, White Rockstar Camo Aged T-Shirt, LSUR Aged T-Shirt, Rebel Radio Aged T-Shirt, Channel X Aged T-Shirt, Albany Vintage Aged T-Shirt, Benefactor Aged T-Shirt, Bravado Aged T-Shirt, Declasse Aged T-Shirt, Dinka Aged T-Shirt
        stats.set_packed_bool_range(30563, 30693, true) -- Panther Varsity Jacket Closed, Panther Tour Jacket, Broker Prolaps Basketball Top, Panic Prolaps Basketball Top, Gussét Frog T-Shirt, Warped Still Slipping T-Shirt, Yellow Still Slipping T-Shirt, Black Rockstar T-Shirt, Black Exsorbeo 720 Logo T-Shirt, Manor PRBG T-Shirt, Manor Tie-dye T-Shirt, Open Wheel Sponsor T-Shirt, Rockstar Yellow Pattern T-Shirt, Rockstar Gray Pattern T-Shirt, Rockstar Rolling T-Shirt, Santo Capra Patterns Sweater, Rockstar Studio Colors Sweater, Bigness Jackal Sweater, Bigness Tie-dye Sweater, Bigness Faces Sweater, Broker Prolaps Basketball Shorts, Panic Prolaps Basketball Shorts, Exsorbeo 720 Sports Shorts, Bigness Tie-dye Sports Pants, Enus Yeti Forwards Cap, 720 Forwards Cap, Exsorbeo 720 Forwards Cap, Güffy Double Logo Forwards Cap, Rockstar Forwards Cap, Blue Bangles (L), Red Bangles (L), Pink Bangles (L), Yellow Bangles (L), Orange Bangles (L), Green Bangles (L), Red & Blue Bangles (L), Yellow & Orange Bangles (L), Green & Pink Bangles (L), Rainbow Bangles (L), Sunset Bangles (L), Tropical Bangles (L), Blue & Pink Glow Shades, Red Glow Shades, Orange Glow Shades, Yellow Glow Shades, Green Glow Shades, Blue Glow Shades, Pink Glow Shades, Blue & Magenta Glow Shades, Purple & Yellow Glow Shades, Blue & Yellow Glow Shades, Pink & Yellow Glow Shades, Red & Yellow Glow Shades, Blue Glow Necklace, Red Glow Necklace, Pink Glow Necklace, Yellow Glow Necklace, Orange Glow Necklace, Green Glow Necklace, Festival Glow Necklace, Carnival Glow Necklace, Tropical Glow Necklace, Hot Glow Necklace, Neon Glow Necklace, Party Glow Necklace, Sunset Glow Necklace, Radiant Glow Necklace, Sunrise Glow Necklace, Session Glow Necklace, Combat Shotgun, Perico Pistol, White Keinemusik T-Shirt, Blue Keinemusik T-Shirt, Moodymann T-Shirt, Palms Trax T-Shirt, Midnight Tint Oversize Shades, Sunset Tint Oversize Shades, Black Tint Oversize Shades, Blue Tint Oversize Shades, Gold Tint Oversize Shades, Green Tint Oversize Shades, Orange Tint Oversize Shades, Red Tint Oversize Shades, Pink Tint Oversize Shades, Yellow Tint Oversize Shades, Lemon Tint Oversize Shades, Gold Rimmed Oversize Shades, White Checked Round Shades, Pink Checked Round Shades, Yellow Checked Round Shades, Red Checked Round Shades, White Round Shades, Black Round Shades, Pink Tinted Round Shades, Blue Tinted Round Shades, Green Checked Round Shades, Blue Checked Round Shades, Orange Checked Round Shades, Green Tinted Round Shades, Brown Square Shades, Yellow Square Shades, Black Square Shades, Tortoiseshell Square Shades, Green Square Shades, Red Square Shades, Pink Tinted Square Shades, Blue Tinted Square Shades, White Square Shades, Pink Square Shades, All White Square Shades, Mono Square Shades, Green Calavera Mask, Navy Calavera Mask, Cherry Calavera Mask, Orange Calavera Mask, Purple Calavera Mask, Dark Blue Calavera Mask, Lavender Calavera Mask, Yellow Calavera Mask, Pink Calavera Mask, Neon Stitch Emissive Mask, Vibrant Stitch Emissive Mask, Pink Stitch Emissive Mask, Blue Stitch Emissive Mask, Neon Skull Emissive Mask, Vibrant Skull Emissive Mask, Pink Skull Emissive Mask, Orange Skull Emissive Mask, Dark X-Ray Emissive Mask, Bright X-Ray Emissive Mask, Purple X-Ray Emissive Mask
        stats.set_packed_bool_range(30699, 30704, true) -- Palms Trax LS T-Shirt, Moodymann Whatupdoe T-Shirt, Moodymann Big D T-Shirt, Keinemusik Cayo Perico T-Shirt, Still Slipping Blarneys T-Shirt, Still Slipping Friend T-Shirt
        stats.set_packed_bool_range(31708, 31714, true) -- CircoLoco Records - Blue EP, CircoLoco Records - Green EP, CircoLoco Records - Violet EP, CircoLoco Records - Black EP, Moodymann - Kenny's Backyard Boogie, NEZ - You Wanna?, NEZ ft. Schoolboy Q - Let's Get It
        stats.set_packed_bool_range(31736, 31736, true) -- The Frontier Outfit
        stats.set_packed_bool_range(31755, 31755, true) -- Auto Shop Race 'n Chase
        stats.set_packed_bool_range(31760, 31764, true) -- Faces of Death T-Shirt, Straight to Video T-Shirt, Monkey See Monkey Die T-Shirt, Trained to Kill T-Shirt, The Director T-Shirt
        stats.set_packed_bool_range(31766, 31777, true) -- Sprunk Forwards Cap, eCola Forwards Cap, Black Banshee T-Shirt, Blue Banshee T-Shirt, LS Customs T-Shirt, Rockstar Games Typeface T-Shirt, Wasted! T-Shirt, Baseball Bat T-Shirt, Knuckleduster T-Shirt, Rampage T-Shirt, Penitentiary Coveralls, LS Customs Coveralls
        stats.set_packed_bool_range(31779, 31796, true) -- The Ringleader Outfit, The Knuckles Outfit, The Breaker Outfit, The Dealer Outfit, Bearsy, Banshee Hoodie, eCola Varsity, Sprunk Varsity, LS Customs Varsity, LS Customs Tour Jacket, eCola Bodysuit, Sprunk Bodysuit, Sprunk Chute Bag, eCola Chute Bag, Halloween Chute Bag, Sprunk Chute, eCola Chute, Halloween Chute
        stats.set_packed_bool_range(31805, 31808, true) -- The Old Hand Outfit, The Overworked Outfit, The Longshoreman Outfit, The Underpaid Outfit
        stats.set_packed_bool_range(31810, 31824, true) -- Annis ZR350, Pfister Comet S2, Dinka Jester RR, Emperor Vectre, Ubermacht Cypher, Pfister Growler, Karin Calico GTF, Annis Remus, Vapid Dominator ASP, Karin Futo GTX, Dinka RT3000, Vulcar Warrener HKR, Karin Sultan RS Classic, Vapid Dominator GTT, Karin Previon
        stats.set_packed_bool_range(31826, 31858, true) -- Emperor Forwards Cap / Emperor Backwards Cap, Beige Knit Sneakers, Gray Emperor Classic Hoodie, Pursuit Series (Gameplay), Cyan Check Sleeveless Puffer, Dinka SPL (Wheel Mod), Blue Hayes Retro Racing, White Emperor Motors T-Shirt, Quick Fix (Gameplay), Cyan Check Puffer, Euros - Speed Trail (Livery), Never Barcode Print Hoodie, Hayes Modern Racing, Diversion (Gameplay), Gray Leather Bomber, Futo GTX - Chokusen Dorifuto (Livery), Karin Forwards Cap / Karin Backwards Cap, Cream Knit Sneakers, Private Takeover (Gameplay), Yellow Pfister Hoodie, Retro Turbofan (Wheel Mod), Red Check Sleeveless Puffer, White Hayes Retro Racing, Setup (Gameplay), Navy Emperor Motors T-Shirt, RT3000 - Stance Andreas (Livery), Red Check Puffer, Never Triangle Print Hoodie, Wingman (Gameplay), LTD Modern Racing, Jester RR - 10 Minute Car (Livery), Green Crowex Pro Racing Suit, Mustard Tan Leather Bomber
        stats.set_packed_bool_range(31860, 31863, true) -- Omnis Forwards Cap / Omnis Backwards Cap, Conical Turbofan (Wheel Mod), Black Knit Sneakers, Green Emperor Classic Hoodie
        stats.set_packed_bool_range(31865, 31868, true) -- Green Geo Sleeveless Puffer, ZR350 - Atomic Drift Team (Livery), White Globe Oil Retro Racing, Yellow Annis Rally T-Shirt
        stats.set_packed_bool_range(31870, 31928, true) -- Green Geo Puffer, Warrener HKR - Classic Vulcar (Livery), Life ZigZag Print Hoodie, Blue Dinka Modern Racing, Gray Benefactor Racing Suit, Orange Tan Leather Bomber, Ice Storm (Wheel Mod), Annis Forwards Cap / Annis Backwards Cap, Gray & Purple Knit Sneakers, Black Crowex Pro Racing Suit, Gray Pfister Hoodie, Calico GTF - Fukaru Rally (Livery), Black Geo Sleeveless Puffer, Green Crowex Retro Racing, Blue Xero Gas Racing Suit, Blue Annis Noise T-Shirt, Remus - Blue Lightning (Livery), Black Geo Puffer, Life Static Print Hoodie, Dark Benefactor Racing Suit, Red Dinka Modern Racing, Super Turbine (Wheel Mod), Chestnut Tan Leather Bomber, Vapid Forwards Cap / Vapid Backwards Cap, Red Xero Gas Racing Suit, Gray & Magenta Knit Sneakers, Dominator GTT - Oldschool Oval (Livery), Black Vapid Ellie Hoodie, Cream Bigness Sleeveless Puffer, Wildstyle Racing Suit, Red Globe Oil Retro Racing, Tailgater S - Crevis Race (Livery), Light Dinka T-Shirt, Cream Bigness Puffer, Modern Mesh (Wheel Mod), Never Crosshair Print Hoodie, Euros - Drift Tribe (Livery), Yellow Vapid Modern Racing, Dark Tan Leather Bomber, Forged Star (Wheel Mod), Light Dinka Forwards Cap / Light Dinka Backwards Cap, Futo GTX - Drift King (Livery), Gray & Aqua Knit Sneakers, Gray Karin Hoodie, Showflake (Wheel Mod), Purple Bigness Sleeveless Puffer, RT3000 - Atomic Motorsport (Livery), Black Crowex Retro Racing, Black Annis Noise T-Shirt, Giga Mesh (Wheel Mod), Purple Bigness Puffer, Jester RR - Yogarishima (Livery), Hiding Print Hoodie, Ubermacht Modern Racing, Mesh Meister (Wheel Mod), Ox Blood Leather Bomber, ZR350 - Kisama Chevrons (Livery), Dark Dinka Forwards Cap / Dark Dinka Backwards Cap, White & Pink Knit Sneakers
        stats.set_packed_bool_range(31930, 31933, true) -- Navy Vapid Ellie Hoodie, Warrener HKR - Classic Vulcar Alt (Livery), Green Aztec Sleeveless Puffer, Calico GTF - Disruption Rally (Livery)
        stats.set_packed_bool_range(31935, 31938, true) -- Blue Atomic Retro Racing, Remus - Annis Tech (Livery), Dark Dinka T-Shirt, Dominator GTT - Resto Mod Racer (Livery)
        stats.set_packed_bool_range(31940, 31943, true) -- Green Aztec Puffer, Tailgater S - Redwood (Livery), Life Binary Print Hoodie, Euros - King Scorpion (Livery)
        stats.set_packed_bool_range(31945, 31948, true) -- White Güffy Modern Racing, Futo GTX - Tandem Battle (Livery), Dark Nut Leather Bomber, RT3000 - Dinka Performance (Livery)
        stats.set_packed_bool_range(31950, 31953, true) -- White Güffy Forwards Cap / White Güffy Backwards Cap, Jester RR - Fuque (Livery), Gray & Yellow Knit Sneakers, ZR350 - Winning is Winning (Livery)
        stats.set_packed_bool_range(31955, 31958, true) -- Navy Karin Hoodie, Warrener HKR - Redwood Racing (Livery), Black Aztec Sleeveless Puffer, Calico GTF - Redwood Rally (Livery)
        stats.set_packed_bool_range(31960, 31963, true) -- Yellow Atomic Retro Racing, Remus - Atomic Motorsport (Livery), Light Vapid Ellie T-Shirt, Dominator GTT - Flame On (Livery)
        stats.set_packed_bool_range(31965, 31968, true) -- Black Aztec Puffer, Tailgater S - Disruption Logistics (Livery), Lucky Penny Print Hoodie, Euros - Sprunk Light (Livery)
        stats.set_packed_bool_range(31970, 31973, true) -- Black Güffy Modern Racing, Futo GTX - Itasha Drift (Livery), Navy Blue Leather Bomber, RT3000 - Shiny Wasabi Kitty (Livery)
        stats.set_packed_bool_range(31975, 31978, true) -- Black Güffy Forwards Cap / Black Güffy Backwards Cap, Jester RR - Xero Gas Rally (Livery), Grayscale Knit Sneakers, ZR350 - Annis Racing Tribal (Livery)
        stats.set_packed_bool_range(31980, 31983, true) -- Light Obey Hoodie, Warrener HKR - Vulcar Turbo (Livery), Cream Splinter Sleeveless Puffer, Calico GTF - Prolaps Rally (Livery)
        stats.set_packed_bool_range(31985, 31988, true) -- Blue Redwood Retro Racing, Remus - Shiny Wasabi Kitty (Livery), Dark Vapid Ellie T-Shirt, Dominator GTT - The Patriot (Livery)
        stats.set_packed_bool_range(31990, 31993, true) -- Cream Splinter Puffer, Tailgater S - Colored Camo Livery (Livery), Light Dinka Modern Racing, Euros - Candybox Gold (Livery)
        stats.set_packed_bool_range(31995, 31998, true) -- Dark Green Leather Bomber, Futo GTX - Stance Andreas (Livery), Hellion Forwards Cap / Hellion Backwards Cap, RT3000 - Total Fire (Livery)
        stats.set_packed_bool_range(32000, 32003, true) -- Gray & Cyan Knit Sneakers, Jester RR - Split Siberia (Livery), Black Ubermacht Hoodie, ZR350 - Annis Racing Tribal Alt (Livery)
        stats.set_packed_bool_range(32005, 32008, true) -- Dark Splinter Sleeveless Puffer, Warrener HKR - Vulcar Turbo Alt (Livery), White Logo Ruiner T-Shirt, Calico GTF - Xero Gas Rally (Livery)
        stats.set_packed_bool_range(32010, 32013, true) -- Dark Splinter Puffer, Remus - Fukaru Motorsport (Livery), Dark Dinka Modern Racing, Dominator GTT - 70s Street Machine (Livery)
        stats.set_packed_bool_range(32015, 32018, true) -- White Leather Bomber, Tailgater S - Army Camo Solid (Livery), Lampadati Forwards Cap / Lampadati Backwards Cap, Lilac Knit Sneakers
        stats.set_packed_bool_range(32020, 32023, true) -- Dark Obey Hoodie, Green Latin Sleeveless Puffer, Gray Vapid Truck T-Shirt, Green Latin Puffer
        stats.set_packed_bool_range(32025, 32028, true) -- Blue Bravado Modern Racing, Red Leather Bomber, White Knit Sneakers, Red Ubermacht Hoodie
        stats.set_packed_bool_range(32030, 32033, true) -- Black Latin Sleeveless Puffer, White Obey Omnis T-Shirt, Black Latin Puffer, Black Bravado Modern Racing
        stats.set_packed_bool_range(32035, 32038, true) -- Ice Knit Sneakers, Blue Annis Noise Hoodie, Orange Camo Sleeveless Puffer, Light Blue Vapid Truck T-Shirt
        stats.set_packed_bool_range(32040, 32043, true) -- Orange Camo Puffer, Imponte Modern Racing, Aqua Sole Knit Sneakers, Green Emperor Modern Hoodie
        stats.set_packed_bool_range(32045, 32048, true) -- Aqua Camo Sleeveless Puffer, Black Vapid USA T-Shirt, Aqua Camo Puffer, Xero Modern Racing
        stats.set_packed_bool_range(32050, 32053, true) -- Smoky Knit Sneakers, Gray Annis Noise Hoodie, Gradient Sleeveless Puffer, Red Obey Omnis T-Shirt
        stats.set_packed_bool_range(32055, 32058, true) -- Gradient Puffer, White & Gold Knit Sneakers, Dark Emperor Modern Hoodie, Red Logo Ruiner T-Shirt
        stats.set_packed_bool_range(32060, 32063, true) -- Orange Knit Sneakers, Light Dinka Hoodie, Blue Bravado Gauntlet T-Shirt, Pink Vibrant Knit Sneakers
        stats.set_packed_bool_range(32065, 32074, true) -- Gold Lampadati Hoodie, Black Bravado Gauntlet T-Shirt, Lime Highlight Knit Sneakers, Dark Dinka Hoodie, Pfister Pocket T-Shirt, Purple Fade Knit Sneakers, Karin 90s T-Shirt, Teal Knit Sneakers, Black & Lime Knit Sneakers, Cyan Fade Knit Sneakers
        stats.set_packed_bool_range(32084, 32084, true) -- Red Highlight Knit Sneakers
        stats.set_packed_bool_range(32094, 32094, true) -- Broker Forwards Cap / Broker Backwards Cap
        stats.set_packed_bool_range(32104, 32104, true) -- Annis Hellion 4x4 T-Shirt
        stats.set_packed_bool_range(32114, 32114, true) -- Pink Gradient Sleeveless Puffer
        stats.set_packed_bool_range(32124, 32124, true) -- Fade Broker Modern Racing
        stats.set_packed_bool_range(32134, 32134, true) -- Tricolor Lampadati Hoodie
        stats.set_packed_bool_range(32144, 32144, true) -- Mono Leather Bomber
        stats.set_packed_bool_range(32154, 32154, true) -- Pink Gradient Puffer
        stats.set_packed_bool_range(32164, 32164, true) -- Red Redwood Retro Racing
        stats.set_packed_bool_range(32174, 32174, true) -- Crash Out Print Hoodie
        stats.set_packed_bool_range(32224, 32224, true) -- Tuned For Speed Racing Suit
        stats.set_packed_bool_range(32273, 32273, true) -- White Born x Raised T-Shirt
        stats.set_packed_bool_range(32275, 32275, true) -- Circoloco T-Shirt
        stats.set_packed_bool_range(32287, 32291, true) -- Dr. Dre, The Drive, The Putt, The Chip, The Birdie
        stats.set_packed_bool_range(32295, 32311, true) -- Orange Goldfish, Purple Goldfish, Bronze Goldfish, Clownfish, Juvenile Gull, Sooty Gull, Black-headed Gull, Herring Gull, Brown Sea Lion, Dark Sea Lion, Spotted Sea Lion, Gray Sea Lion, Green Festive T-Shirt, Red Festive T-Shirt, Orange DJ Pooh T-Shirt, White WCC DJ Pooh T-Shirt, Blue WCC DJ Pooh T-Shirt
        stats.set_packed_bool_range(32314, 32316, true) -- Navy Coveralls & Gray Coveralls, Marathon Hoodie
        stats.set_packed_bool_range(32319, 32323, true) -- police5 trade price
        stats.set_packed_bool_range(32366, 32366, true) -- Declasse Draugur (Trade Price)
        stats.set_packed_bool_range(32407, 32408, true) -- Bottom Dollar Jacket, The Bottom Dollar
        stats.set_packed_bool_range(32409, 32409, true) -- Pavel's Tank Top
        stats.set_packed_bool_range(34136, 34136, true) -- HSW Elite Livery
        stats.set_packed_bool_range(34138, 34139, true) -- Deveste Eight - HSW Orange Trip, HSW CMYK Glitch (livery)
        stats.set_packed_bool_range(34143, 34144, true) -- Brioso R/A - HSW Orange Trip, HSW CMYK Glitch (livery)
        stats.set_packed_bool_range(34150, 34151, true) -- Vigero ZX - E99 (Livery), Corsita - Geometric Shapes (Livery)
        stats.set_packed_bool_range(34262, 34361, true) -- LD Organics
        stats.set_packed_bool_range(34372, 34375, true) -- Horror Pumpkin, Dinka Kanjo SJ (Trade Price), Dinka Postlude (Trade Price), Black LD Organics Cap / White LD Organics T-Shirt
        stats.set_packed_bool_range(34378, 34411, true) -- Junk Energy Chute Bag, Junk Energy Chute, Pumpkin T-Shirt, Pacific Standard Varsity, Pacific Standard Sweater, Cliffford Varsity, Cliffford Hoodie, The Diamond Casino Varsity, The Diamond Strike Vest, Strickler Hat, Sinsimito Cuban Shirt, Mummy, Manor Geo Forwards Cap, Apricot Perseus Forwards Cap, Still Slipping Tie-dye Forwards Cap, Lemon Festive Beer Hat, Bigness Hand-drawn Dome, Grimy Stitched, Pale Stitched, Gray Cracked Puppet, Blushed Cracked Puppet, Green Emissive Lady Liberty, President, Gold Beat Off Earphones, White Spiked Gauntlet (L), Manor Geo Hoodie, Pumpkin Hoodie, LS Smoking Jacket, Hand-Drawn Biker Bomber, Have You Seen Me? Sweater, Still Slipping Tie-dye T-Shirt, Manor Geo Track Pants, Apricot Perseus Track Pants, Sasquatch
        stats.set_packed_bool_range(34415, 34510, true) -- Green Vintage Frank, Brown Vintage Frank, Gray Vintage Frank, Pale Vintage Mummy, Green Vintage Mummy, Weathered Vintage Mummy, Conquest, Death, Famine, War, Black Tech Demon, Gray Tech Demon, White Tech Demon, Green Tech Demon, Orange Tech Demon, Purple Tech Demon, Pink Tech Demon, Red Detail Tech Demon, Blue Detail Tech Demon, Yellow Detail Tech Demon, Green Detail Tech Demon, Pink Detail Tech Demon, Orange & Gray Tech Demon, Red Tech Demon, Camo Tech Demon, Aqua Camo Tech Demon, Brown Digital Tech Demon, Gold Tech Demon, Orange & Cream Tech Demon, Green & Yellow Tech Demon, Pink Floral Tech Demon, Black & Green Tech Demon, White & Red Tech Demon, Carbon Tech Demon, Carbon Teal Tech Demon, Black & White Tech Demon, Painted Tiger, Gray Painted Tiger, Gold Painted Tiger, Ornate Painted Tiger, Gray Yeti Flat Cap, Woodland Yeti Flat Cap, Green FB Flat Cap, Blue FB Flat Cap, Gray Lézard Flat Cap, Green Lézard Flat Cap, Light Plaid Lézard Flat Cap, Dark Plaid Lézard Flat Cap, White Striped Lézard Flat Cap, Red Striped Lézard Flat Cap, Brown Crevis Flat Cap, Gray Crevis Flat Cap, Black Broker Flat Cap, Burgundy Broker Flat Cap, White Beat Off Earphones, Yellow Beat Off Earphones, Salmon Beat Off Earphones, Orange Beat Off Earphones, Purple Beat Off Earphones, Pink Beat Off Earphones, Turquoise Beat Off Earphones, Blue Beat Off Earphones, Black Beat Off Earphones, Gray Beat Off Earphones, Teal Beat Off Earphones, Red Beat Off Earphones, Wild Striped Pool Sliders, Neon Striped Pool Sliders, Black SC Coin Pool Sliders, White SC Coin Pool Sliders, Black SC Pattern Pool Sliders, Pink SC Pattern Pool Sliders, Blue SC Pattern Pool Sliders, Camo Yeti Pool Sliders, Gray Camo Yeti Pool Sliders, Black Bigness Pool Sliders, Purple Bigness Pool Sliders, Camo Bigness Pool Sliders, Black Blagueurs Pool Sliders, White Blagueurs Pool Sliders, Pink Blagueurs Pool Sliders, Gray Cimicino Pool Sliders, Rouge Cimicino Pool Sliders, Navy DS Pool Sliders, Red DS Pool Sliders, Floral Güffy Pool Sliders, Green Güffy Pool Sliders, White Güffy Pool Sliders, Blue Heat Pool Sliders, Red ProLaps Pool Sliders, Black LD Organics T-Shirt, Green UFO Boxer Shorts, White UFO Boxer Shorts, Gray Believe Backwards Cap, Black Believe Backwards Cap, Glow Believe Backwards Cap
        stats.set_packed_bool_range(34703, 34705, true) -- White Vintage Vampire, Dark Green Vintage Vampire, Light Green Vintage Vampire
        stats.set_packed_bool_range(34730, 34737, true) -- Green Festive Beer Hat, Red Snowflake Beer Hat, Blue Snowflake Beer Hat, Red Holly Beer Hat, [removed]wasser Festive Beer Hat, Blarneys Festive Beer Hat, Red Reindeer Beer Hat, Borfmas Beer Hat
        stats.set_packed_bool_range(34761, 34761, true) -- Gooch Outfit
        stats.set_packed_bool_range(36630, 36654, true) -- Snowman
        stats.set_packed_bool_range(36699, 36770, true) -- Ice Vinyl, Ice Vinyl Cut, Mustard Vinyl, Mustard Vinyl Cut, Dark Blue Vinyl, Dark Blue Vinyl Cut, Yellow SN Rooster Revere Collar, Red SC Dragon Revere Collar, Blue SC Dragon Revere Collar, Camo Roses Slab Denim, Orange Trickster Type Denim, Black VDG Cardigan, Blue DS Panthers Cardigan, Red DS Panthers Cardigan, Pink SC Baroque Cardigan, Downtown Cab Co. Revere Collar, Valentines Blazer, 420 Smoking Jacket, Yeti Year of the Rabbit T-Shirt, Gray Yeti Combat Shirt, Black Sprunk Festive, Dark Logger Festive, White Logger Festive, Green Logger Festive, Red Logger Festive, Blue Patriot Logo Festive, Black Patriot Logo Festive, Blue Patriot Festive, Red Patriot Festive, Red [removed]wasser Festive, Gold [removed]wasser Festive, Red [removed]wasser Logo Festive, Gold [removed]wasser Logo Festive, Green Pride Brew Festive, Yellow Pride Brew Festive, Yellow Holly Pride Festive, White Holly Pride Festive, Sprunk Snowflakes Festive, Broker Checkerboard T-Shirt, Yeti Ape Tucked T-Shirt, Black Bigness Ski, White Bigness Ski, Black Enema Flourish Ski, Teal Enema Flourish Ski, Magenta Enema Flourish Ski, Camo Roses Slab Forwards, Lime Leopard Slab Forwards, Red SC Dragon Embroidered, Classic DS Tiger Embroidered, Gray DS Tiger Embroidered, Black VDG Bandana Wide, Orange Trickster Type Wide, Gray Yeti Battle Pants, Broker Checkerboard Cargos, 420 Smoking Pants, Camo Roses Slab Canvas, Lime Leopard Slab Canvas, White Signs Squash Ugglies & Socks, Traditional Painted Rabbit, Twilight Painted Rabbit, Noh Painted Rabbit, Lime SC Coin Wraps, Pink SC Coin Wraps, Tan Bracelet Ensemble, Red Manor Round Brow Shades, Le Chien Whistle Necklace, Heartbreak Pendant, Rabbit, Budonk-adonk!, The Red-nosed, The Nutcracker, The GoPostal
        stats.set_packed_bool_range(36774, 36788, true) -- Johnny On The Spot Polo, The Gooch Mask, Snowman Outfit, Gold New Year Glasses, Silver New Year Glasses, Rainbow New Year Glasses, Yellow Holly Beer Hat, Green Reindeer Beer Hat, Zebra Dome, Purple Snakeskin Spiked, Manor Surano Jacket, Pistol Mk II - Season's Greetings (Livery), Pump Shotgun - [removed]dude Camo (Livery), Micro SMG - [removed]dude Camo (Livery)
        stats.set_packed_bool_range(36809, 36809, true) -- Nemesis T-Shirts
        stats.set_packed_bool_range(36825, 36825, true) -- The Fumigator
        stats.set_packed_bool_range(41316, 41325, true) -- Ghosts Exposed
        stats.set_packed_bool_range(41593, 41593, true) -- The Merryweather Outfit
        stats.set_packed_bool_range(41656, 41659, true) -- Squaddie (Trade Price), Suede Bucks Finish, Employee of the Month Finish, Uncle T Finish
        stats.set_packed_bool_range(41671, 41671, true) -- Manchez Scout (Trade Price)
        stats.set_packed_bool_range(41674, 41675, true) -- The Old Hand Outfit (Female), Infiltration: Upgraded Tech Outfit (female)
        -- stats.set_packed_bool_range(41720, 41805, true) -- Career progress stuff (Too many stuff - Can be claimed manually) - LS Angels Cap, Orange Shade Camo Livery (Avenger), LS Angels T-Shirt, LS Angels Hoodie, [removed]dude, etc..., Johnny On The Spot Polo, Black Eagle Cap, Green Vom Feuer Tee (female), Coil Arms Division Hoodie
        stats.set_packed_bool_range(41806, 41810, true) -- (Protagonist Outfits) The Mr. Slick, The Hustler, The Unbathed, The Silent, The Hired Gun
        stats.set_packed_bool_range(41884, 41980, true) -- Pendant 420, PRB Shorts, Bleedin Tasty Shorts, Cluckin' Bell Cuffed Sweats, Santro Capra x Manor Chinos, Monochrome Striped Suit, Skeleton Bodysuit, Gray Camo Yeti Suit, Festive Flannel Suit, Hinterland Work T-Shirt, The Fist Fury, Love Fist Shortsleeve, Love Fist T-Shirt, San Andreas Federal Reserve T-Shirt, Los Santos San Andreas T-Shirt, Heist Mask T-Shirt, Los Santos Map T-Shirt, PRB T-Shirt, Republican Space Rangers Tee, You Own Los Santos Hoodie, PRB Hoodie, Cluckin' Bell Hoodie, Bleedin' Tasty Hoodie, Rockstar Warp Hoodie, Santo Capra x Manor Chore, Rockstar Gothic Sweater, Rockstar Red Logo Sweater, Rockstar Atomic Logo Sweater, Rockstar Festive Boom Sweater, Captain Peaked Cap, LS Pounders Cap, Vom Feuer Camo Cap, Western MC Cap, Red & White Ammu-Nation Cap, Santo Capra Cap, Alpine Hat, Alien Tracksuit Pants, Scarlet Vintage Devil Mask, Amber Vintage Devil Mask, Green Vintage Devil Mask, Green Vintage Witch Mask, Yellow Vintage Witch Mask, Orange Vintage Witch Mask, Green Vintage Skull Mask, White Vintage Skull Mask, Brown Vintage Skull Mask, Orange Vintage Werewolf Mask, Blue Vintage Werewolf Mask, Brown Vintage Werewolf Mask, Green Vintage Zombie Mask, Brown Vintage Zombie Mask, Teal Vintage Zombie Mask, Turkey Mask, Royal Calacas Mask, Maritime Calacas Mask, Romance Calacas Mask, Floral Calacas Mask, Stanier LE Cruiser (Trade Price), The Homie, The Retired Criminal, The Groupie, Black SC Ornate Mini Dress, Dark Manor Racing Suit, Bright Manor Racing Suit, Hinterland Bomber Jacket, Red Happy Moon T-Shirt, Black Happy Moon T-Shirt, White Happy Moon T-Shirt, Rockstar Says Relax Tucked T-Shirt, Trevor Heist Mask Tucked T-Shirt, Franklin Heist Mask Tucked T-Shirt, Michael Heist Mask Tucked T-Shirt, Bugstars Tucked T-Shirt, STD Contractors Tucked T-Shirt, Black Los Santos Tucked T-Shirt, San Andreas Republic Tucked T-Shirt, Go Go Space Monkey Tucked T-Shirt, Vom Feuer Camo Tucked T-Shirt, Black SC Ornate Tucked T-Shirt, Warstock Tucked T-Shirt, Western San Andreas Tucked T-Shirt, Ride or Die Tucked T-Shirt, Bourgeoix Tucked T-Shirt, Blêuter'd Tucked T-Shirt, Cherenkov Tucked T-Shirt, Moodymann Portrait Tucked T-Shirt, Rockstar Silver Jubilee Tucked T-Shirt, Rockstar NY Hoodie, Dollar Daggers Hoodie, Merryweather Hoodie, Go Go Space Monkey Hoodie, Rockstar Lion Crest T-Shirt, Ammu-Nation Baseball T-Shirt, Alien Hooded Tracksuit Top, Manor Benefactor Surano T-Shirt, LS Smoking Jacket
        stats.set_packed_bool_range(41994, 41996, true) -- Junk Energy Racing Suit, Infiltration: Modernized Tech Outfit (female), ??? T-Shirt
        stats.set_packed_bool_range(42016, 42016, true) -- Trade price for polfaction2
        stats.set_packed_bool_range(42052, 42054, true) -- Cluckin' Bell Tee, The Mr. Right (Protagonist Outfit), Strapz Bandana
        stats.set_packed_bool_range(42055, 42058, true) -- Cluckin' Bell Outfit, Red's Cap, Red's Overall, The Sultan
        stats.set_packed_bool_range(42062, 42063, true) -- The Zoophilist, The LS Panic
        stats.set_packed_bool_range(42068, 42069, true) -- Snowman Finish, Santa's Helper Finish
        stats.set_packed_bool_range(42111, 42111, true) -- The Coast Guard
        stats.set_packed_bool_range(42119, 42123, true) -- Yeti Outfit, Snowman Finish, Santa's Helper Finish, Skull Santa Finish, riot unlocked
        stats.set_packed_bool_range(42125, 42125, true) -- riot trade price
        stats.set_packed_bool_range(42128, 42146, true) -- eCola Festive Sweater, Sprunk Festive Sweater, 1 Party Hat, 2 Party Hat, 3 Party Hat, 4 Party Hat, 5 Party Hat, 6 Party Hat, 7 Party Hat, 8 Party Hat, 9 Party Hat, 10 Party Hat, 11 Party Hat, 12 Party Hat, 13 Party Hat, 14 Party Hat, 15 Party Hat, Bronze Party Outfit, Silver Party Outfit
        stats.set_packed_bool_range(42148, 42149, true) -- Snowball Launcher, DâM-FunK - Even the Score
        stats.set_packed_bool_range(42152, 42190, true) -- The LSDS, The McTony Security, Wooden Dragon Mask, Contrast Dragon Mask, Regal Dragon Mask, Midnight Dragon Mask, Pink Heart Shades, Red Heart Shades, Orange Heart Shades, Yellow Heart Shades, Green Heart Shades, Blue Heart Shades, Purple Heart Shades, Black Heart Shades, Fireworks Bucket Hat, Stars and Stripes Bucket Hat, Lady Liberty Bucket Hat, Green Festive Tree Hat, Red Festive Tree Hat, Brown Festive Reindeer Hat, White Festive Reindeer Hat, Bronze New Year's Hat, Gold New Year's Hat, Silver New Year's Hat, Sprunk x eCola Bodysuit, Rockstar Racing Suit, Rockstar Helmet, Coil Earth Day Tee, IR Earth Day Tee, White High Brass Tee, Black High Brass Tee, Black Lunar New Year Tee, Bigness Carnival Sports Tee, Green 420 Dress, Red Lunar New Year Dress, Carnival Sun Dress, Carnival Bandana, Bigness Carnival Bucket Hat, Black 420 Forwards Cap
        stats.set_packed_bool_range(42191, 42216, true) -- Cinco de Mayo Tee, Cinco de Mayo Mask, Black Lunar New Year Shirt, Red Lunar New Year Shirt, Black Lunar New Year Pants, Red Lunar New Year Pants, New Year's Jacket, New Year's Pants, Western MC Pants, Western MC Jacket, Heartbreakers Jacket, Heartbreakers Cap, St Patrick's Day Jacket, St Patrick's Day Pants, Graffiti Jean Jacket, Graffiti Jeans, Fooligan Vest, Fooligan Tee, Coil Cyclone Tee, Black Los Santos Cap, Black LS Customs Tee, Black LS Customs Cap, Vespucci Beach Tee, Vespucci Beach Flip-Flops, Independence Day Jacket, Independence Day Pants, Cluckin' Bell Forwards Cap
        stats.set_packed_bool_range(42233, 42235, true) -- BOXVILLE6, BENSON2, skip "Salvage Yard" introduction
        stats.set_packed_bool_range(42239, 42242, true) -- CAVALCADE3, IMPALER5, POLGAUNTLET, DORADO
        stats.set_packed_bool_range(42244, 42247, true) -- BALLER8, TERMINUS, BOXVILLE6, BENSON2
        stats.set_packed_bool_range(42249, 42249, true) -- Candy Cane
        stats.set_packed_bool_range(42257, 42268, true) -- The Street Artist, Ghosts Exposed 2024, Ghosts Exposed Outfit
        stats.set_packed_bool_range(42280, 42284, true) -- Unlock pizzaboy, poldominator10, poldorado, polimpaler5, policeb2, polimpaler6 trade price.
        stats.set_packed_bool_range(42286, 42289, true) -- Ludendorff Survivor, Pizza This... Forwards Cap, Pizza This... Backwards Cap, Pizza This... Outfit, Trade price for taco, polterminus
        stats.set_packed_bool_range(42294, 42297, true) -- Pavel's Garrison Cap, McKenzie Field Cap, Navy Eberhard Bomber, The Arms Dealer
        stats.set_packed_bool_range(51189, 51190, true) -- Spray Can, Skip Bail Office PC Intro
        stats.set_packed_bool_range(51196, 51197, true) -- The Shocker, Bottom Dollar Bail Enforcement tint for Stungun
        stats.set_packed_bool_range(51215, 51258, true) -- Alpine Outfit, Brown Alpine Hat, [removed]wasser Good Time Tee, Gold [removed]wasser Shorts, Mid Autumn Festival Shirt, Mid Autumn Festival Sundress (female), Día de Muertos Tee, Halloween Spooky Tee, Black Demon Goat Mask, Red Demon Goat Mask, Tan Demon Goat Mask, Black Creepy Cat Mask, Gray Creepy Cat Mask, Brown Creepy Cat Mask, Gray Hooded Skull Mask, Red Hooded Skull Mask, Blue Hooded Skull Mask, Red Flaming Skull Mask, Green Flaming Skull Mask, Orange Flaming Skull Mask, Orange Glow Skeleton Onesie, Purple Glow Skeleton Onesie, Green Glow Skeleton Onesie, Tan Turkey, Brown Turkey, Rockstar Red Logo Sweater, Silver Gun Necklace, Black Gun Necklace, Gold Gun Necklace, Rose Gun Necklace, Bronze Gun Necklace, Black Yeti Fall Sweater, White Yeti Fall Sweater, Red Yeti Fall Sweater, The Diamond Jackpot Tee, Cobalt Jackal Racing Jersey, Cobalt Jackal Racing Pants, Khaki 247 Chino Pants, Demon Biker Jacket, Purple Güffy Cardigan, SA Denim Biker Jacket, Green 247 Shirt, Barbed Wire Shirt, Ride or Die Gaiter, Pizza This... Tee
        stats.set_packed_bool_range(51273, 51275, true) -- Bronze Idol, Ornamental Egg, Tiki Statue
        stats.set_packed_bool_range(51283, 51283, true) -- Trade price for cargobob5
        stats.set_packed_bool_range(51285, 51285, true) -- Trade price for titan2
        stats.set_packed_bool_range(51302, 51337, true) -- Yuanbao Treasures
        stats.set_packed_bool_range(51365, 51378, true) -- Red Year of the Horse Tee, New Year Fireworks Bodysuit, Valentines Onesie, Season's Greetings Sweater, Burgundy Rockstar Varsity Crewneck, Black Rockstar Varsity Crewneck, Navy Rockstar Varsity Crewneck, Los Santos Soccer Jersey, Junk x Jackal Wide, Bigness Crowned Wide, Bigness Crowned Varsity, LS Golf Club Varsity, Pfister Chore Jacket, Feud Anniversary Baseball Shirt
        stats.set_packed_bool_range(54569, 54569, true) -- Gold Snake Santo Capra Outfit
        stats.set_packed_bool_range(54570, 54570, true) -- The Armored Merryweather
        stats.set_packed_bool_range(54572, 54579, true) -- Winter Highway Patrol, Winter Highway Patrol w/ Tie, Summer Highway Patrol w/ Tie, Summer Highway Patrol, NOOSE Outfit, Winter LSPD Officer w/ Tie, Winter LSPD Officer, Summer LSPD Officer w/ Tie, Summer LSPD Officer
        stats.set_packed_bool_range(54580, 54593, true) -- Gold 420 Pendant, Silver 420 Pendant, Rose Gold 420 Pendant, Snake Soul Pendant, Snake King Pendant, Gold Reindeer Pendant, Silver Reindeer Pendant, Red Snake Soul Forwards Cap, Gray Snake King Forwards Cap, Festive Penguin Onesie, Festive Reindeer Onesie, Festive Cluckin' Bell Onesie, White Ho Ho Ho Onesie, Gold Ho Ho Ho Onesie
        stats.set_packed_bool_range(54594, 54611, true) -- Green 420 Festival Outfit, Multicolor 420 Festival Outfit, Green 420 Festival Hat, Multicolor 420 Festival Hat, Bald Eagle Outfit, Champagne Pop Fitted, Gold Star Fitted, Champagne Pop Pants, Gold Star Pants, Krampus Sweater, Red Serpent Leather Jacket, Gong Xi Fa Cai Forwards Cap, Heartbreaker Robe, Heartbreaker Boxer Shorts, Heartbreaker Bustier, Carnival Feather Dress, Carnival Feather Shirt, Carnival Feather Shorts
        stats.set_packed_bool_range(54614, 54634, true) -- Yeti Erath Day Hoodie, Winter Park Ranger w/ Tie, Winter Park Ranger, Summer Park Ranger w/ Tie, Summer Park Ranger, Los Santos Tattoo Tee, Los Santos Tattoo Jeans, LS Panic Varsity Jacket, LS Panic Varsity Cap, Honkers Tie-Dye Hoodie, Honkers Tie-Dye Hat, Blue Two-Tone Denim Jacket (Closed), Worn Blue Denim Jeans, Blue Two-Tone Denim Dress, Blue Two-Tone Denim Cowboy Hat, LD Organics 420 Hockey Jersey, LD Organics 420 Forwards Cap, Strapz Patterned Sweatshirt, Strapz Patterned Jeans, Bigness Sketches Shirt, Bigness Sketches Jeans
        stats.set_packed_bool_range(54635, 54635, true) -- Winter Highway PatroL w/ tie
        stats.set_packed_bool_range(54637, 54638, true) -- Trade price for duster2, ratel
        stats.set_packed_bool_range(54651, 54651, true) -- Black Snake Yogarishima Outfit
        stats.set_packed_bool_range(54664, 54664, true) -- Ghosts Exposed 2025, Ghosts Exposed Cap
        stats.set_packed_bool_range(54682, 54707, true) -- Smoke on the Water Tee, Red Yeti Fall Cap, Brown Jumping Spider Mask, Gray Jumping Spider Mask, Purple Jumping Spider Mask, The Buccaneer, The Slasher Clown, Pluck Me Sweater, Black On The Pisśwasser Tee, Red On The Pisśwasser Tee, Hands On Car Wash Overalls, I Survived Cayo Perico Tee, R* Community Series Varsity, Magnetics Bomber Zipped, Atomic Racing Bomber Zipped, Magnetics Track Pants, Camo Jack Sheepe Track Pants, Santa Skull Track Pants, Camo Jack Sheepe Hoodie, LS Death Metal Hoodie, Blue Manor Hoodie, Camo Jack Sheepe Cap, Atomic Racing Cap, LS Death Metal Shorts, Blue Manor Shorts, Santa Skull Sweater
        stats.set_packed_bool_range(54711, 54713, true) -- Gray Space Interloper, The Bobcat Security Driver, The Defender
        stats.set_packed_bool_range(54732, 54733, true) -- Trade price for polbuffalo, polbuffalo6
        stats.set_packed_bool_range(54737, 54761, true) -- Lucky Clovers
        stats.set_packed_bool_range(54767, 54767, true) -- The Unwavering Outfit (Free)
        stats.set_packed_bool_range(54769, 54772, true) -- KnoWay Hoodie, FIB Bomber, KnoWay Tee, The Hacker
        stats.set_packed_bool_range(54787, 54817, true) -- The Big One! (Mansion Trophy), High Achiever (Mansion Trophy), Centurion (Mansion Trophy), Quincentenary (Mansion Trophy), Millenial (Mansion Trophy), Nine Figures (Mansion Trophy), Half A Bil (Mansion Trophy), Three Comma Club (Mansion Trophy), Platinum (Mansion Trophy), Going Pro (Mansion Trophy), Criminal Mastermind (Mansion Trophy), Nimble Fingers (Mansion Trophy), Doom Profiteer (Mansion Trophy), Clean Sweep (Mansion Trophy), Beachfront Bonus (Mansion Trophy), Spotlight (Mansion Trophy), Well Liked (Mansion Trophy), Entrepreneur (Mansion Trophy), Car Connoisseur (Mansion Trophy), Arena War Legend (Mansion Trophy), 8-Bit Hero (Mansion Trophy), The Collector (Mansion Trophy), Flying Ace (Mansion Trophy), Adversary Alpha (Mansion Trophy), Speed Freak (Mansion Trophy), World Record Holder (Mansion Trophy), Distinguished Driver (Mansion Trophy), Long Story Short (Mansion Trophy), Veteran (Mansion Trophy), Going Places
        stats.set_packed_bool_range(59971, 59971, true) -- The Forklift Certified
        stats.set_packed_bool_range(59978, 59980, true) -- Junk x Jackal Tee, Orange Camo Yeti Tee, Burger Shot Tracksuit
        if is_player_male then
            stats.set_packed_bool_range(3483, 3492, true) -- Death Defying T-Shirt (Male), For Hire T-Shirt (Male), Gimme That T-Shirt (Male), [removed] T-Shirt (Male), Can't Touch This T-Shirt (Male), Decorated T-Shirt (Male), Psycho Killer T-Shirt (Male), One Man Army T-Shirt (Male), Shot Caller T-Shirt (Male), Showroom T-Shirt (Male)
            stats.set_packed_bool_range(6082, 6083, true) -- Black Benny's T-Shirt, White Benny's T-Shirt
            stats.set_packed_bool_range(6097, 6097, true) -- I Heart LC (T-Shirt) (Male)
            stats.set_packed_bool_range(6169, 6169, true) -- DCTL T-Shirt (Male)
            stats.set_packed_bool_range(6303, 6304, true) -- Crosswalk Tee (Male), R* Crosswalk Tee (Male)
            stats.set_packed_bool_range(15708, 15708, true) -- Black The Black Madonna Emb. Tee (Male)
            stats.set_packed_bool_range(15710, 15710, true) -- The Black Madonna Star Tee (Male)
            stats.set_packed_bool_range(15717, 15717, true) -- White Dixon Repeated Logo Tee (Male)
            stats.set_packed_bool_range(15720, 15720, true) -- Black Dixon Wilderness Tee (Male)
            stats.set_packed_bool_range(15724, 15724, true) -- Tale Of Us Black Box Tee (Male)
            stats.set_packed_bool_range(15728, 15728, true) -- Black Tale Of Us Emb. Tee (Male)
            stats.set_packed_bool_range(15730, 15730, true) -- Black Solomun Yellow Logo Tee (Male)
            stats.set_packed_bool_range(15732, 15732, true) -- White Solomun Tee (Male)
            stats.set_packed_bool_range(15737, 15737, true) -- ??? (Tattoo) (Male)
            stats.set_packed_bool_range(15887, 15887, true) -- Lucky 7s (Tattoo) (Male)
            stats.set_packed_bool_range(15894, 15894, true) -- The Royals (Tattoo) (Male)
            stats.set_packed_bool_range(28393, 28416, true) -- Badlands Revenge II Retro Tee (Male), Badlands Revenge II Pixtro Tee (Male), Degenatron Glitch Tee (Male), Degenatron Logo Tee (Male), The Wizard's Ruin Rescue Tee (Male), The Wizard's Ruin Vow Tee (Male), Space Monkey Art Tee (Male), Crotch Rockets Tee (Male), Street Legal Tee (Male), Get Truckin' Tee (Male), Arcade Trophy Tee (Male), Videogeddon Tee (Male), Insert Coin Tee (Male), Plushie Princess Tee (Male), Plushie Wasabi Kitty Tee (Male), Plushie Master Tee (Male), Plushie Muffy Tee (Male), Plushie Humpy Tee (Male), Plushie Saki Tee (Male), Plushie Grindy Tee (Male), Plushie [removed]ie Tee (Male), Plushie Smoker Tee (Male), Shiny Wasabi Kitty Claw Tee (Male), Nazar Speaks Tee (Male)
            stats.set_packed_bool_range(28447, 28451, true) -- 11 11 Tee (Male), King Of QUB3D Tee (Male), Qubism Tee (Male), God Of QUB3D Tee (Male), QUB3D Boxart Tee (Male)
            stats.set_packed_bool_range(28452, 28478, true) -- Channel X Aged Tee (Male), Rebel Radio Aged Tee (Male), LSUR Aged Tee (Male), Steel Horse Solid Logo Aged Tee (Male), Black Western Logo Aged Tee (Male), White Nagasaki Aged Tee (Male), Black Principe Aged Tee (Male), Albany Vintage Aged Tee (Male), Benefactor Aged Tee (Male), Bravado Aged Tee (Male), Declasse Aged Tee (Male), Dinka Aged Tee (Male), Grotti Aged Tee (Male), Lampadati Aged Tee (Male), Ocelot Aged Tee (Male), Overflod Aged Tee (Male), Pegassi Aged Tee (Male), Pfister Aged Tee (Male), Vapid Aged Tee (Male), Weeny Aged Tee (Male), Toe Shoes Aged T-Shirt (Male), Vanilla Unicorn Aged T-Shirt (Male), Fake Vapid Aged T-Shirt (Male), I Married My Dad Aged T-Shirt (Male), White Rockstar Camo Aged Tee (Male), Razor Aged T-Shirt (Male), Noise Rockstar Logo Aged Tee (Male)
            stats.set_packed_bool_range(30355, 30361, true) -- Noise Aged Tee (Male), Emotion 98.3 Aged T-Shirt (Male), KDST Aged T-Shirt (Male), KJAH Radio Aged T-Shirt (Male), Bounce FM Aged T-Shirt (Male), K-Rose Aged T-Shirt (Male), Blue The Diamond Resort LS Aged Tee (Male)
            stats.set_packed_bool_range(30407, 30410, true) -- White Keinemusik Tee (Male), Blue Keinemusik Tee (Male), Moodymann Tee (Male), Palms Trax Tee (Male)
            stats.set_packed_bool_range(30418, 30422, true) -- Faces of Death Tee (Male), Straight to Video Tee (Male), Monkey See Monkey Die Tee (Male), Trained to Kill Tee (Male), The Director Tee (Male)
            stats.set_packed_bool_range(41273, 41284, true) -- Monkey (Tattoo) (Male), Dragon (Tattoo) (Male), Snake (Tattoo) (Male), Goat (Tattoo) (Male), Rat (Tattoo) (Male), Rabbit (Tattoo) (Male), Ox (Tattoo) (Male), Pig (Tattoo) (Male), Rooster (Tattoo) (Male), Dog (Tattoo) (Male), Horse (Tattoo) (Male), Tiger (Tattoo) (Male)
        else
            stats.set_packed_bool_range(3496, 3505, true) -- Death Defying Top (Female), For Hire Top (Female), Gimme That Top (Female), [removed] Top (Female), Can't Touch This Top (Female), Decorated Top (Female), Psycho Killer Top (Female), One Man Army Top (Female), Shot Caller Top (Female), Showroom Top (Female)
            stats.set_packed_bool_range(6091, 6092, true) -- Black Benny's T-Shirt, White Benny's T-Shirt
            stats.set_packed_bool_range(6106, 6106, true) -- I Heart LC (T-Shirt) (Female)
            stats.set_packed_bool_range(6181, 6181, true) -- DCTL T-Shirt (Female)
            stats.set_packed_bool_range(6316, 6317, true) -- Crosswalk Tee (Female), R* Crosswalk Tee (Female)
            stats.set_packed_bool_range(15719, 15719, true) -- Black The Black Madonna Emb. Tee (Female)
            stats.set_packed_bool_range(15721, 15721, true) -- The Black Madonna Star Tee (Female)
            stats.set_packed_bool_range(15728, 15728, true) -- White Dixon Repeated Logo Tee (Female)
            stats.set_packed_bool_range(15731, 15731, true) -- Black Dixon Wilderness Tee (Female)
            stats.set_packed_bool_range(15735, 15735, true) -- Tale Of Us Black Box Tee (Female)
            stats.set_packed_bool_range(15739, 15739, true) -- Black Tale Of Us Emb. Tee (Female)
            stats.set_packed_bool_range(15741, 15741, true) -- Black Solomun Yellow Logo Tee (Female)
            stats.set_packed_bool_range(15743, 15743, true) -- White Solomun Tee (Female)
            stats.set_packed_bool_range(15748, 15748, true) -- ??? (Tattoo) (Female)
            stats.set_packed_bool_range(15898, 15898, true) -- Lucky 7s (Tattoo) (Female)
            stats.set_packed_bool_range(22108, 22108, true) -- Kifflom T-Shirt (Female)
            stats.set_packed_bool_range(15905, 15905, true) -- The Royals (Tattoo) (Female)
            stats.set_packed_bool_range(28404, 28427, true) -- Badlands Revenge II Retro Tee (Female), Badlands Revenge II Pixtro Tee (Female), Degenatron Glitch Tee (Female), Degenatron Logo Tee (Female), The Wizard's Ruin Rescue Tee (Female), The Wizard's Ruin Vow Tee (Female), Space Monkey Art Tee (Female), Crotch Rockets Tee (Female), Street Legal Tee (Female), Get Truckin' Tee (Female), Arcade Trophy Tee (Female), Videogeddon Tee (Female), Insert Coin Tee (Female), Plushie Princess Tee (Female), Plushie Wasabi Kitty Tee (Female), Plushie Master Tee (Female), Plushie Muffy Tee (Female), Plushie Humpy Tee (Female), Plushie Saki Tee (Female), Plushie Grindy Tee (Female), Plushie [removed]ie Tee (Female), Plushie Smoker Tee (Female), Shiny Wasabi Kitty Claw Tee (Female), Nazar Speaks Tee (Female)
            stats.set_packed_bool_range(28458, 28462, true) -- 11 11 Tee (Female), King Of QUB3D Tee (Female), Qubism Tee (Female), God Of QUB3D Tee (Female), QUB3D Boxart Tee (Female)
            stats.set_packed_bool_range(30418, 30421, true) -- White Keinemusik Tee (Female), Blue Keinemusik Tee (Female), Moodymann Tee (Female), Palms Trax Tee (Female)
            stats.set_packed_bool_range(28463, 28478, true) -- Channel X Aged Tee (Female), Rebel Radio Aged Tee (Female), LSUR Aged Tee (Female), Steel Horse Solid Logo Aged Tee (Female), Black Western Logo Aged Tee (Female), White Nagasaki Aged Tee (Female), Black Principe Aged Tee (Female), Albany Vintage Aged Tee (Female), Benefactor Aged Tee (Female), Bravado Aged Tee (Female), Declasse Aged Tee (Female), Dinka Aged Tee (Female), Grotti Aged Tee (Female), Lampadati Aged Tee (Female), Ocelot Aged Tee (Female), Overflod Aged Tee (Female)
            stats.set_packed_bool_range(30355, 30372, true) -- Pegassi Aged Tee (Female), Pfister Aged Tee (Female), Vapid Aged Tee (Female), Weeny Aged Tee (Female), Toe Shoes Aged T-Shirt (Female), Vanilla Unicorn Aged T-Shirt (Female), Fake Vapid Aged T-Shirt (Female), I Married My Dad Aged T-Shirt (Female), White Rockstar Camo Aged Tee (Female), Razor Aged T-Shirt (Female), Noise Rockstar Logo Aged Tee (Female), Noise Aged Tee (Female), Emotion 98.3 Aged T-Shirt (Female), KDST Aged T-Shirt (Female), KJAH Radio Aged T-Shirt (Female), Bounce FM Aged T-Shirt (Female), K-Rose Aged T-Shirt (Female), Blue The Diamond Resort LS Aged Tee (Female)
            stats.set_packed_bool_range(30429, 30433, true) -- Faces of Death Tee (Female), Straight to Video Tee (Female), Monkey See Monkey Die Tee (Female), Trained to Kill Tee (Female), The Director Tee (Female)
            stats.set_packed_bool_range(41285, 41296, true) -- Monkey (Tattoo) (Female), Dragon (Tattoo) (Female), Snake (Tattoo) (Female), Goat (Tattoo) (Female), Rat (Tattoo) (Female), Rabbit (Tattoo) (Female), Ox (Tattoo) (Female), Pig (Tattoo) (Female), Rooster (Tattoo) (Female), Dog (Tattoo) (Female), Horse (Tattoo) (Female), Tiger (Tattoo) (Female)
        end
        stats.set_packed_int(3032, 100)            -- Trade price for oppressor2
        stats.set_packed_int(7315, 6)              -- WEAPON_STONE_HATCHET
        stats.set_packed_int(18981, 4)             -- WEAPON_DOUBLEACTION
        stats.set_packed_int(18982, 3)             -- Parts of the TM-02 Khanjali (tracks, remote grenade launcher and turret end/muzzle brake)
        stats.set_packed_int(18983, 3)             -- Parts of the RCV (plow, door and water hose)
        stats.set_packed_int(18984, 3)             -- Parts of the Chernobog (door, dual headlight set and wheels)
        stats.set_packed_int(18985, 3)             -- Parts of the Thruster (exhaust, small rotors and handlebars/joysticks)
        stats.set_packed_int(18986, 3)             -- Parts of the Avenger (wing, nose camera and rotor blade)
        stats.set_packed_int(22050, 5)             -- Oppressor MK2 Trade Price
        stats.set_packed_int(22051, 50)            -- Carved Wooden Box (Nightclub)
        stats.set_packed_int(22052, 100)           -- Ammo Box
        stats.set_packed_int(22053, 20)            -- Meth
        stats.set_packed_int(22054, 80)            -- Weed
        stats.set_packed_int(22055, 60)            -- Passports
        stats.set_packed_int(22056, 40)            -- Crumpled Cash
        stats.set_packed_int(22057, 10)            -- Impotent Rage Statue
        stats.set_packed_int(22058, 20)            -- Gold Business Battle Trophy (Nightclub)
        stats.set_packed_int(22063, 20)            -- Dinka Go Go Monkey Blista / Reach skill level 20 in Arena Wars
        stats.set_packed_int(24946, 100)           -- Trade price for Sentinel GTS, (QuickiePharm Livery)
        stats.set_packed_int(24947, 100)           -- Trade price for Stockade
        stats.set_packed_int(24948, 100)           -- Trade price for Bobcat Security Stockade
        stats.set_packed_int(41237, 10)            -- Taxi Livery
        stats.set_packed_int(59853, 10)            -- Trade price for Thrust
        stats.set_int("MPPLY_GANGOPS_LOYALTY2", -1)
        stats.set_int("MPPLY_GANGOPS_LOYALTY3", -1)
        stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", -1)
        stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", -1)
        stats.set_int("MPPLY_GANGOPS_SUPPORT", -1)
        stats.set_int("MPPLY_GANGOPS_ALLINORDER", -1)
        stats.set_int("MPPLY_GANGOPS_LOYALTY", -1)
        stats.set_int("MPPLY_GANGOPS_CRIMMASMD", -1)
        stats.set_int("MPPLY_CREW_NO_HEISTS_0", 2)
        stats.set_int("MPPLY_CREW_NO_HEISTS_1", 5)
        stats.set_int("MPPLY_CREW_NO_HEISTS_2", 5)
        stats.set_int("MPPLY_CREW_NO_HEISTS_3", 5)
        stats.set_int("MPPLY_CREW_NO_HEISTS_4", 5)
        stats.set_int("MPX_FM_ACT_PHN", -1)
        stats.set_int("MPX_FM_ACT_PH2", -1)
        stats.set_int("MPX_FM_ACT_PH3", -1)
        stats.set_int("MPX_FM_ACT_PH4", -1)
        stats.set_int("MPX_FM_ACT_PH5", -1)
        stats.set_int("MPX_FM_VEH_TX1", -1)
        stats.set_int("MPX_FM_ACT_PH6", -1)
        stats.set_int("MPX_FM_ACT_PH7", -1)
        stats.set_int("MPX_FM_ACT_PH8", -1)
        stats.set_int("MPX_FM_ACT_PH9", -1)
        stats.set_int("MPX_FM_ACT_PH10", -1)
        stats.set_int("MPX_FM_ACT_PH11", -1)
        stats.set_int("MPX_FM_ACT_PH12", -1)
        stats.set_int("MPX_FM_CUT_DONE", -1) -- Skip Interior Tutorials
        stats.set_int("MPX_FM_CUT_DONE_2", -1) -- Skip Interior Tutorials 2
        stats.set_int("MPPLY_XMASLIVERIES0", -1)
        stats.set_int("MPPLY_XMASLIVERIES1", -1)
        stats.set_int("MPPLY_XMASLIVERIES2", -1)
        stats.set_int("MPPLY_XMASLIVERIES3", -1)
        stats.set_int("MPPLY_XMASLIVERIES4", -1)
        stats.set_int("MPPLY_XMASLIVERIES5", -1)
        stats.set_int("MPPLY_XMASLIVERIES6", -1)
        stats.set_int("MPPLY_XMASLIVERIES7", -1)
        stats.set_int("MPPLY_XMASLIVERIES8", -1)
        stats.set_int("MPPLY_XMASLIVERIES9", -1)
        stats.set_int("MPPLY_XMASLIVERIES10", -1)
        stats.set_int("MPPLY_XMASLIVERIES11", -1)
        stats.set_int("MPPLY_XMASLIVERIES12", -1)
        stats.set_int("MPPLY_XMASLIVERIES13", -1)
        stats.set_int("MPPLY_XMASLIVERIES14", -1)
        stats.set_int("MPPLY_XMASLIVERIES15", -1)
        stats.set_int("MPPLY_XMASLIVERIES16", -1)
        stats.set_int("MPPLY_XMASLIVERIES17", -1)
        stats.set_int("MPPLY_XMASLIVERIES18", -1)
        stats.set_int("MPPLY_XMASLIVERIES19", -1)
        stats.set_int("MPPLY_XMASLIVERIES20", -1)
        stats.set_int("MPPLY_XMAS22CPAINT0", -1) -- Chameleon Colors 1
        stats.set_int("MPPLY_XMAS22CPAINT1", -1) -- Chameleon Colors 2
        stats.set_int("MPPLY_SUM23WHEELCPAINT0", -1) -- Wheel Chameleon Colors 1
        stats.set_int("MPPLY_SUM23WHEELCPAINT1", -1) -- Wheel Chameleon Colors 2
        stats.set_int("MPX_BIKES_EXPLODED", 100)
        stats.set_int("MPX_BOATS_EXPLODED", 100)
        stats.set_int("MPX_HELIS_EXPLODED", 100)
        stats.set_int("MPX_PLANES_EXPLODED", 100)
        stats.set_int("MPX_QUADBIKE_EXPLODED", 100)
        stats.set_int("MPX_BICYCLE_EXPLODED", 100)
        stats.set_int("MPX_SUBMARINE_EXPLODED", 100)
        stats.set_int("MPX_TRAIN_EXPLODED", 100)
        stats.set_int("MPX_CARS_COPS_EXPLODED", 100)
        stats.set_int("MPX_NUMBER_STOLEN_BIKES", 100)
        stats.set_int("MPX_NUMBER_STOLEN_BOATS", 100)
        stats.set_int("MPX_NUMBER_STOLEN_HELIS", 100)
        stats.set_int("MPX_NUMBER_STOLEN_PLANES", 100)
        stats.set_int("MPX_NUMBER_STOLEN_QUADBIKES", 100)
        stats.set_int("MPX_NUMBER_STOLEN_BICYCLES", 100)
        stats.set_int("MPX_NUMBER_STOLEN_SUBMARINES", 100)
        stats.set_int("MPX_NO_STOLEN_VEH_SCRIPT", 100)
        stats.set_int("MPX_DB_PLAYER_KILLS", 100)
        stats.set_int("MPX_HOLDUPS_BITSET", -1)
        stats.set_int("MPX_BREATHING_APPAR_BOUGHT", 20)
        stats.set_int("MPX_CHAR_ABILITY_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_ABILITY_2_UNLCK", -1)
        stats.set_int("MPX_CHAR_ABILITY_3_UNLCK", -1)
        stats.set_int("MPX_CHAR_WEAP_UNLOCKED", -1)
        stats.set_int("MPX_CHAR_WEAP_UNLOCKED2", -1)
        stats.set_int("MPX_CHAR_WEAP_ADDON_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_WEAP_ADDON_2_UNLCK", -1)
        stats.set_int("MPX_CHAR_WEAP_ADDON_3_UNLCK", -1)
        stats.set_int("MPX_CHAR_WEAP_ADDON_4_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_UNLOCKED", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_UNLOCKED2", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_UNLOCKED3", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_UNLOCKED4", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_UNLOCKED5", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_UNLOCKED6", -1)
        stats.set_int("MPX_GCLUB_FM_AMMO_BOUGHT", 1)
        stats.set_int("MPX_CHAR_WEAP_EQUIPPED", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_EQUIPPED", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_EQUIPPED2", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_EQUIPPED3", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_EQUIPPED4", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_EQUIPPED5", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_EQUIPPED6", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_2_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_3_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_4_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_5_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_6_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_7_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_8_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_9_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_10_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_11_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_12_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_13_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_14_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_15_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_16_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_17_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_18_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_19_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_WEAP_ADDON_20_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_HAIRCUT_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK1", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK2", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK3", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK4", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK5", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK6", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK7", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK8", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK9", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK10", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK11", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK12", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK13", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK14", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK15", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK16", -1)
        stats.set_int("MPX_CHAR_HAIR_UNLCK17", -1)
        stats.set_int("MPX_CHAR_FM_HEALTH_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_HEALTH_2_UNLCK", -1)
        stats.set_int("MPX_CRDEADLINE", 5)
        stats.set_int("MPX_CHAR_CREWUNLOCK_1_FM_EQUIP", -1)
        stats.set_int("MPX_CHAR_CREWUNLOCK_2_FM_EQUIP", -1)
        stats.set_int("MPX_CHAR_CREWUNLOCK_3_FM_EQUIP", -1)
        stats.set_int("MPX_CHAR_CREWUNLOCK_4_FM_EQUIP", -1)
        stats.set_int("MPX_CHAR_CREWUNLOCK_5_FM_EQUIP", -1)
        stats.set_int("MPX_CHAR_KIT_1_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_2_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_3_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_4_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_5_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_6_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_7_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_8_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_9_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_10_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_11_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_12_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_13_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_14_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_15_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_16_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_17_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_18_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_19_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_20_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_21_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_22_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_23_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_24_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_25_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_26_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_27_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_28_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_29_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_30_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_31_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_32_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_33_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_34_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_35_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_36_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_37_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_38_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_39_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_40_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_KIT_41_FM_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_ABILITY_1_UNLCK", -1) -- Fast Run
        stats.set_int("MPX_CHAR_FM_ABILITY_2_UNLCK", -1) -- Fast Run
        stats.set_int("MPX_CHAR_FM_ABILITY_3_UNLCK", -1) -- Fast Run
        stats.set_int("MPX_CHAR_FM_CLOTHES_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_2_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_3_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_4_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_5_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_6_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_7_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_8_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_9_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_10_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CLOTHES_11_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_VEHICLE_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_VEHICLE_2_UNLCK", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_0", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_1", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_2", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_3", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_4", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_5", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_6", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_7", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_8", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_9", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_10", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_11", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_12", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_13", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_14", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_15", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_16", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_17", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_18", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_19", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_20", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_21", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_22", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_23", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_24", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_25", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_26", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_27", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_28", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_29", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_30", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_31", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_32", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_33", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_34", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_35", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_36", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_37", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_38", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_39", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_40", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_41", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_42", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_43", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_44", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_45", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_46", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_47", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_48", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_49", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_50", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_51", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_52", -1)
        stats.set_int("MPX_TATTOO_FM_UNLOCKS_53", -1)
        stats.set_bool("MPX_FILM4SHIRTUNLOCK", true)
        stats.set_bool("MPX_FILM5SHIRTUNLOCK", true)
        stats.set_bool("MPX_FILM6SHIRTUNLOCK", true)
        stats.set_bool("MPX_FILM7SHIRTUNLOCK", true)
        stats.set_bool("MPX_FILM8SHIRTUNLOCK", true)
        stats.set_bool("MPX_FILM9SHIRTUNLOCK", true)
        stats.set_bool("ACCOUNTANTSHIRTUNLOCK", true)
        stats.set_bool("BAHAMAMAMASHIRTUNLOCK", true)
        stats.set_bool("DRONESHIRTUNLOCK", true)
        stats.set_bool("GROTTISHIRTUNLOCK", true)
        stats.set_bool("GOLFSHIRTUNLOCK", true)
        stats.set_bool("MAISONETTESHIRTUNLOCK", true)
        stats.set_bool("MANOPAUSESHIRTUNLOCK", true)
        stats.set_bool("MELTDOWNSHIRTUNLOCK", true)
        stats.set_bool("PACIFICBLUFFSSHIRTUNLOCK", true)
        stats.set_bool("PROLAPSSHIRTUNLOCK", true)
        stats.set_bool("TENNISSHIRTUNLOCK", true)
        stats.set_bool("TOESHOESSHIRTUNLOCK", true)
        stats.set_bool("VANILLAUNICORNSHIRTUNLOCK", true)
        stats.set_bool("MARLOWESHIRTUNLOCK", true)
        stats.set_bool("CRESTSHIRTUNLOCK", true)
        stats.set_int("MPX_RANKAP_UNLK_0", -1)
        stats.set_int("MPX_RANKAP_UNLK_1", -1)
        stats.set_int("MPX_RANKAP_UNLK_2", -1)
        stats.set_int("MPX_RANKAP_UNLK_3", -1)
        stats.set_int("MPX_CHAR_CREWUNLOCK_1_UNLCK", -1)
        stats.set_int("MPX_PISTOL_ENEMY_KILLS", 600) -- Weapon Tints for Pistol
        stats.set_int("MPX_CMBTPISTOL_ENEMY_KILLS", 600) -- Weapon Tints for Combat Pistol
        stats.set_int("MPX_APPISTOL_ENEMY_KILLS", 600) -- Weapon Tints for AP Pistol
        stats.set_int("MPX_MICROSMG_ENEMY_KILLS", 600) -- Weapon Tints for Micro SMG
        stats.set_int("MPX_SMG_ENEMY_KILLS", 600)  -- Weapon Tints for SMG
        stats.set_int("MPX_ASLTSMG_ENEMY_KILLS", 600) -- Weapon Tints for Assault SMG
        stats.set_int("MPX_CRBNRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Carbine Rifle
        stats.set_int("MPX_ADVRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Advanced Rifle
        stats.set_int("MPX_MG_ENEMY_KILLS", 600)   -- Weapon Tints for MG
        stats.set_int("MPX_PUMP_ENEMY_KILLS", 600) -- Weapon Tints for Pump Shotgun
        stats.set_int("MPX_SAWNOFF_ENEMY_KILLS", 600) -- Weapon Tints for Sawed-Off Shotgun
        stats.set_int("MPX_HVYSNIPER_ENEMY_KILLS", 600) -- Weapon Tints for Heavy Sniper
        stats.set_int("MPX_GRNLAUNCH_ENEMY_KILLS", 600) -- Weapon Tints for Grenade Launcher
        stats.set_int("MPX_MINIGUNS_ENEMY_KILLS", 600) -- Weapon Tints for Minigun
        stats.set_int("MPX_SR_WEAPON_BIT_SET", 262143)
        stats.set_bool("MPX_SR_TIER_1_REWARD", true)
        stats.set_bool("MPX_SR_INCREASE_THROW_CAP", true)
        stats.set_bool("MPX_SR_TIER_3_REWARD", true)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_0", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_1", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_2", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_3", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_4", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_5", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_6", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_7", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_8", 3)
        stats.set_int("MPX_PILOT_SCHOOL_MEDAL_9", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_0", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_1", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_2", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_3", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_4", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_5", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_6", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_7", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_8", 3)
        stats.set_int("MPX_PILOT_SCHOOL_LASTMEDAL_9", 3)
        stats.set_int("MPX_CRPILOTSCHOOL", 1)
        stats.set_int("MPX_PILOT_CHECKPOINTCOUNT_9", 27)
        stats.set_float("MPX_PILOT_ELAPSEDTIME_0", 58.0)
        stats.set_float("MPX_PILOT_LANDINGDISTANCE_1", 10.0)
        stats.set_float("MPX_PILOT_LANDINGDISTANCE_2", 2.0)
        stats.set_float("MPX_PILOT_LANDINGDISTANCE_3", 10.0)
        stats.set_float("MPX_PILOT_ELAPSEDTIME_4", 19.0)
        stats.set_float("MPX_PILOT_LANDINGDISTANCE_5", 600.0)
        stats.set_float("MPX_PILOT_LANDINGDISTANCE_6", 25.0)
        stats.set_float("MPX_PILOT_LANDINGDISTANCE_7", 1.0)
        stats.set_float("MPX_PILOT_ELAPSEDTIME_8", 160.0)
        stats.set_float("MPX_PILOT_ELAPSEDTIME_9", 145.0)
        stats.set_float("MPX_PILOT_LASTELAPSEDTIME_0", 58.0)
        stats.set_float("MPX_PILOT_LASTLANDDISTANCE_1", 10.0)
        stats.set_float("MPX_PILOT_LASTLANDDISTANCE_2", 2.0)
        stats.set_float("MPX_PILOT_LASTLANDDISTANCE_3", 10.0)
        stats.set_float("MPX_PILOT_LASTELAPSEDTIME_4", 19.0)
        stats.set_float("MPX_PILOT_LASTLANDDISTANCE_5", 600.0)
        stats.set_float("MPX_PILOT_LASTLANDDISTANCE_6", 25.0)
        stats.set_float("MPX_PILOT_LASTLANDDISTANCE_7", 1.0)
        stats.set_float("MPX_PILOT_LASTELAPSEDTIME_8", 160.0)
        stats.set_float("MPX_PILOT_LASTELAPSEDTIME_9", 145.0)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_0", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_1", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_2", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_3", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_4", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_5", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_6", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_7", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_8", true)
        stats.set_bool("MPX_PILOT_ASPASSEDLESSON_9", true)
        stats.set_int("MPX_CAR_CLUB_REP", 997430)
        stats.set_bool("MPPLY_MELEECHLENGECOMPLETED", true)
        stats.set_bool("MPPLY_HEADSHOTCHLENGECOMPLETED", true)
        stats.set_int("MPX_CHAR_HEIST_1_UNLCK", -1)
        stats.set_int("MPX_CRHEIST", 50)
        stats.set_int("MPX_CR_BANKHEIST1", 10)
        stats.set_int("MPX_CR_COUNTHEIST1", 10)
        stats.set_int("MPX_HEIST_COMPLETION", 26)
        stats.set_int("MPX_HEIST_TOTAL_TIME", 86400000)
        stats.set_int("MPX_HEISTS_ORGANISED", 50)
        stats.set_int("MPX_RACES_WON", 50)
        stats.set_int("MPX_CHAR_FM_PACKAGE_1_COLLECT", -1)
        stats.set_int("MPX_CHAR_FM_PACKAGE_2_COLLECT", -1)
        stats.set_int("MPX_CHAR_FM_PACKAGE_3_COLLECT", -1)
        stats.set_int("MPX_CHAR_FM_PACKAGE_4_COLLECT", -1)
        stats.set_int("MPX_CHAR_FM_PACKAGE_5_COLLECT", -1)
        stats.set_int("MPX_CHAR_FM_PACKAGE_6_COLLECT", -1)
        stats.set_int("MPX_CHAR_FM_PACKAGE_7_COLLECT", -1)
        stats.set_int("MPX_CHAR_FM_PACKAGE_8_COLLECT", -1)
        stats.set_int("MPX_CHAR_NO_FM_PACKAGES_COL", -1)
        stats.set_int("MPX_CHAR_FM_CARMOD_1_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CARMOD_2_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CARMOD_3_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CARMOD_4_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CARMOD_5_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CARMOD_6_UNLCK", -1)
        stats.set_int("MPX_CHAR_FM_CARMOD_7_UNLCK", -1)
        stats.set_int("MPX_NUMBER_SLIPSTREAMS_IN_RACE", 110)
        stats.set_int("MPX_NUMBER_TURBO_STARTS_IN_RACE", 90)
        stats.set_int("MPX_USJS_FOUND", 50)
        stats.set_int("MPX_USJS_COMPLETED", 50)
        stats.set_int("MPPLY_TIMES_RACE_BEST_LAP", 101)
        stats.set_int("MPX_SCRIPT_INCREASE_STAM", 100)
        stats.set_int("MPX_SCRIPT_INCREASE_STRN", 100)
        stats.set_int("MPX_SCRIPT_INCREASE_FLY", 100)
        stats.set_int("MPX_SCRIPT_INCREASE_STL", 100)
        stats.set_int("MPX_SCRIPT_INCREASE_LUNG", 100)
        stats.set_int("MPX_SCRIPT_INCREASE_DRIV", 100)
        stats.set_int("MPX_SCRIPT_INCREASE_SHO", 100)
        stats.set_int("MPX_NIGHTCLUB_HOTSPOT_TIME_MS", 40320000)
        stats.set_int("MPX_CASINO_DECORATION_GIFT_1", -1)
        stats.set_int("MPX_CAS_HEIST_FLOW", -1) -- Ceramic Pistol
        stats.set_bool("MPX_COMPLETE_H4_F_USING_VETIR", true)
        stats.set_bool("MPX_COMPLETE_H4_F_USING_LONGFIN", true)
        stats.set_bool("MPX_COMPLETE_H4_F_USING_ANNIH", true)
        stats.set_bool("MPX_COMPLETE_H4_F_USING_ALKONOS", true)
        stats.set_bool("MPX_COMPLETE_H4_F_USING_PATROLB", true)
        stats.set_int("MPX_ARENAWARS_AP_LIFETIME", 5055000)
        stats.set_int("MPX_ARENAWARS_AP_TIER", 1000)
        stats.set_int("MPX_ARENAWARS_AP", 10040)
        stats.set_int("MPX_ARENAWARS_SKILL_LEVEL", 20)
        stats.set_int("MPX_ARENAWARS_SP", 210)
        stats.set_int("MPX_ARENAWARS_SP_LIFETIME", 210)
        stats.set_int("MPX_ARENAWARS_MATCHES_PLYD", 2000)
        stats.set_int("MPX_ARENAWARS_MATCHES_PLYDT", 2000)
        stats.set_int("MPX_ARENAWARS_CARRER_WINS", 2000)
        stats.set_int("MPX_ARENAWARS_CARRER_WINT", 2000)
        stats.set_int("MPX_ARN_LIFETIME_KILLS", 2250)
        stats.set_int("MPX_ARN_LIFETIME_DEATHS", 250)
        stats.set_int("MPX_ARN_SPECTATOR_KILLS", 500)
        stats.set_int("MPX_ARN_W_PASS_THE_BOMB", 1000)
        stats.set_int("MPX_ARN_W_DETONATION", 1000)
        stats.set_int("MPX_ARN_W_ARCADE_RACE", 1000)
        stats.set_int("MPX_ARN_W_CTF", 1000)
        stats.set_int("MPX_ARN_W_TAG_TEAM", 1000)
        stats.set_int("MPX_ARN_W_DESTR_DERBY", 1000)
        stats.set_int("MPX_ARN_W_CARNAGE", 1000)
        stats.set_int("MPX_ARN_W_MONSTER_JAM", 1000)
        stats.set_int("MPX_ARN_W_GAMES_MASTERS", 1000)
        stats.set_int("MPX_ARN_L_PASS_THE_BOMB", 100)
        stats.set_int("MPX_ARN_L_DETONATION", 100)
        stats.set_int("MPX_ARN_L_ARCADE_RACE", 100)
        stats.set_int("MPX_ARN_L_CTF", 100)
        stats.set_int("MPX_ARN_L_TAG_TEAM", 200)
        stats.set_int("MPX_ARN_L_DESTR_DERBY", 100)
        stats.set_int("MPX_ARN_L_CARNAGE", 100)
        stats.set_int("MPX_ARN_L_MONSTER_JAM", 1005)
        stats.set_int("MPX_ARN_L_GAMES_MASTERS", 100)
        stats.set_int("MPX_ARN_VEH_MONSTER3", 90000)
        stats.set_int("MPX_ARN_VEH_MONSTER4", 500)
        stats.set_int("MPX_ARN_VEH_MONSTER5", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS2", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS3", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER2", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER3", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN4", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN5", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN6", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS2", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS3", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB2", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB3", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR4", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR5", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR6", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER2", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER3", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER4", 500)
        stats.set_int("MPX_ARN_VEH_ISSI4", 500)
        stats.set_int("MPX_ARN_VEH_ISSI5", 500)
        stats.set_int("MPX_ARN_VEH_ISSI6", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR2", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR3", 500)
        stats.set_int("MPX_ARN_VEH_ZR380", 500)
        stats.set_int("MPX_ARN_VEH_ZR3802", 500)
        stats.set_int("MPX_ARN_VEH_ZR3803", 500)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE", 500)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE2", 400)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE3", 400)
        stats.set_int("MPX_ARN_SPECTATOR_DRONE", 60)
        stats.set_int("MPX_ARN_SPECTATOR_CAMS", 60)
        stats.set_int("MPX_ARN_SMOKE", 50)
        stats.set_int("MPX_ARN_DRINK", 65)
        stats.set_int("MPX_ARN_SPEC_BOX_TIME_MS", 10800000)
        stats.set_int("MPX_ARN_W_THEME_SCIFI", 10)
        stats.set_int("MPX_ARN_W_THEME_APOC", 10)
        stats.set_int("MPX_ARN_W_THEME_CONS", 10)
        stats.set_int("MPX_ARN_BS_TRINKET_SAVED", -1) -- Unlock trinket and stickers.
        stats.set_packed_bool_range(25010, 25010, true) -- Skip arena wall help.
        stats.set_packed_bool_range(25014, 25014, true) -- Skip arena wall tutorial.
        stats.set_int("MPX_ARCADE_MAC_0", 1)         -- Arcade Machine - Space Monkey 3: Bananas Gone Bad
        stats.set_int("MPX_ARCADE_MAC_1", 1)         -- Arcade Machine - Badlands Revenge II
        stats.set_int("MPX_ARCADE_MAC_2", 1)         -- Arcade Machine - Invade and Persuade II
        stats.set_int("MPX_ARCADE_MAC_3", 1)         -- Arcade Machine - The Wizard's Ruin
        stats.set_int("MPX_ARCADE_MAC_4", 1)         -- Arcade Machine - Defender of the Faith
        stats.set_int("MPX_ARCADE_MAC_5", 1)         -- Arcade Machine - Monkey's Paradise
        stats.set_int("MPX_ARCADE_MAC_6", 1)         -- Arcade Machine - Penetrator
        stats.set_int("MPX_ARCADE_MAC_7", 1)         -- Arcade Machine - Shiny Wasabi Kitty Claw
        stats.set_int("MPX_ARCADE_MAC_8", 1)         -- Arcade Machine - Madam Nazar
        stats.set_int("MPX_ARCADE_MAC_9", 1)         -- Arcade Machine - The Love Professor
        stats.set_int("MPX_ARCADE_MAC_10", 1)        -- Arcade Machine - Race and Chase: Crotch Rockets
        stats.set_int("MPX_ARCADE_MAC_11", 1)        -- Arcade Machine - Race and Chase: Street Legal
        stats.set_bool("MPX_SCGW_WON_NO_DEATHS", true) -- Street Crimes: Gang Wars Edition -- Win a game without taking any damage
        stats.set_bool("MPX_IAP_CHALLENGE_0", true)  -- Invade and Persuade II -- Score over 2,000,000 in a single playthrough
        stats.set_bool("MPX_IAP_CHALLENGE_1", true)  -- Invade and Persuade II -- Collect 88 barrels in a single playthrough
        stats.set_bool("MPX_IAP_CHALLENGE_2", true)  -- Invade and Persuade II -- Kill 100 animals in a single playthrough
        stats.set_bool("MPX_IAP_CHALLENGE_3", true)  -- Invade and Persuade II -- Travel 3,474,000km on the moon
        stats.set_bool("MPX_IAP_CHALLENGE_4", true)  -- Invade and Persuade II -- Finish any level of Invade and persuade with over 7 livee
        stats.set_int("MPX_SCGW_NUM_WINS_GANG_0", 55) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 1
        stats.set_int("MPX_SCGW_NUM_WINS_GANG_1", 56) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 2
        stats.set_int("MPX_SCGW_NUM_WINS_GANG_2", 57) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 3
        stats.set_int("MPX_SCGW_NUM_WINS_GANG_3", 58) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 4
        stats.set_int("MPX_IAP_MAX_MOON_DIST", 2147483647) -- Invade and Persuade II -- Travel 3,474,000km on the moon
        stats.set_int("MPX_LAST_ANIMAL", 108)        -- Invade and Persuade II -- Kill 100 animals in a single playthrough
        stats.set_int("MPX_CH_ARC_CAB_CLAW_TROPHY", -1) -- Kitty Claw Trophy
        stats.set_int("MPX_CH_ARC_CAB_LOVE_TROPHY", -1) -- The Love Professor Trophy
        stats.set_int("MPX_FIXER_SC_VEH_RECOVERED", 100)
        stats.set_int("MPX_FIXER_SC_VAL_RECOVERED", 100)
        stats.set_int("MPX_FIXER_SC_GANG_TERMINATED", 100)
        stats.set_int("MPX_FIXER_SC_VIP_RESCUED", 100)
        stats.set_int("MPX_FIXER_SC_ASSETS_PROTECTED", 100)
        stats.set_int("MPX_FIXER_SC_EQ_DESTROYED", 100)
        stats.set_int("MPX_FIXER_COUNT", 600)
        stats.set_int("MPX_FIXER_STORY_BS", 4092)
        stats.set_int("MPX_PAYPHONE_BONUS_KILL_METHOD", -1)
        stats.set_int("MPX_FIXER_HQ_OWNED", 1) -- Agency owned - Trade Price for buffalo4
        stats.set_int("MPX_FIXER_GENERAL_BS", -1) -- Trade price for champion/baller7
        stats.set_int("MPX_FIXER_COMPLETED_BS", -1) -- Complete all The Contract missions.
        stats.set_bool("MPX_BS_IMANI_D_APP_SETUP", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_STRAND", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_PARTY", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_PARTY_2", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_PARTY_F", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_BILL", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_BILL_2", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_BILL_F", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_HOOD", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_HOOD_2", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_HOOD_F", true)
        stats.set_packed_bool_range(32312, 32312, true) -- Agency Computer Tutorial
        stats.set_int("MPX_REV_NV_KILLS", 50)        -- Navy Revolver Kills
        stats.set_int("MPX_XM22_FLOW", -1)           -- Acid Lab Unlock
        stats.set_int("MPX_XM22_MISSIONS", -1)       -- Acid Lab Unlock
        stats.set_int("MPX_XM22_MISSIONS_SA", -1)    -- Freakshop Missions
        stats.set_int("MPX_XM22_CURRENT", -1)        -- Current Freakshop Mission
        stats.set_packed_bool_range(36668, 36668, true) -- Dr. Friedlander's Virtue
        stats.set_int("MPX_H3_VEHICLESUSED", -1)     -- Trade Price for Diamond Casino Heist Finale.
        stats.set_int("MPX_H4_H4_DJ_MISSIONS", 127)  -- Trade Price for weevil
        stats.set_int("MPX_H4_PROGRESS", -1)         -- Trade Price for winky
        stats.set_int("MPX_TUNER_GEN_BS", 12543)     -- Trade Price for tailgater2
        stats.set_int("MPX_GANGOPS_FLOW_BITSET_MISS0", -1) -- Trade Price for deluxo/akula/riot2/stromberg/chernobog/barrage/khanjali/volatol/thruster
        stats.set_int("MPPLY_HEISTFLOWORDERPROGRESS", -1)
        stats.set_int("MPPLY_HEISTNODEATHPROGREITSET", -1)
        stats.set_int("MPPLY_HEISTTEAMPROGRESSBITSET", -1)
        stats.set_int("MPX_AT_FLOW_VEHICLE_BS", -1)    -- Trade price for dune4/dune5/wastelander/blazer5/phantom2/voltic2/technical2/boxville5/ruiner2
        stats.set_int("MPX_LFETIME_HANGAR_BUY_COMPLET", 100) -- Trade price for microlight/rogue/alphaz1/havok/starling/molotok/tula/bombushka/howard/mogul/pyro/seabreeze/nokota/hunter
        stats.set_int("MPX_DCTL_WINS", 500)            -- Don't Cross the Line Wins
        stats.set_int("MPX_DCTL_PLAY_COUNT", 750)      -- Don' Cross the Line Matches
        stats.set_int("MPX_SALV23_GEN_BS", -2123778)   -- Trade price for polgauntlet/police4
        stats.set_int("MPX_SALV23_SCOPE_BS", -1)       -- police5 trade price
        stats.set_int("MPX_MOST_TIME_ON_3_PLUS_STARS", 300000)
        stats.set_int("MPX_LOWRIDER_FLOW_COMPLETE", 1)
        stats.set_int("MPX_AT_FLOW_MISSION_PROGRESS", 50)
        stats.set_int("MPX_AT_FLOW_IMPEXP_NUM", 50)
        stats.set_int("MPX_AT_FLOW_BITSET_MISSIONS0", -1)
        stats.set_int("MPX_WVM_FLOW_MISSION_PROGRESS", 50)
        stats.set_int("MPX_WVM_FLOW_IMPEXP_NUM", 50)
        stats.set_int("MPX_WVM_FLOW_BITSET_MISSIONS0", -1)
        stats.set_int("MPX_WVM_FLOW_VEHICLE_BS", -1)
        stats.set_int("MPX_GANGOPS_FLOW_MISSION_PROG", -1)
        stats.set_int("MPX_GANGOPS_FLOW_IMPEXP_NUM", 50)
        stats.set_int("MPX_WAM_FLOW_VEHICLE_BS", -1)
        stats.set_int("MPX_GANGOPS_FLOW_PASSED_BITSET", -1)
        stats.set_int("MPX_VCM_FLOW_PROGRESS", -1)
        stats.set_int("MPX_TUNER_FLOW_BS", -1)
        stats.set_int("MPX_TUNER_MIS_BS", -1)
        stats.set_int("MPX_TUNER_COMP_BS", 255)
        stats.set_int("MPX_GANGOPS_FM_MISSION_PROG", -1)
        stats.set_int("MPX_GANGOPS_FM_BITSET_MISS0", -1)
        stats.set_bool("MPX_UNLOCKED_MESSAGE_FLEECA", true)
        stats.set_bool("MPX_CARMEET_PV_CHLLGE_CMPLT", true)
        stats.set_int("MPX_HEIST_SAVED_STRAND_0", tunables.get_int("ROOT_ID_HASH_THE_FLECCA_JOB"))
        stats.set_int("MPX_HEIST_SAVED_STRAND_0_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_1", tunables.get_int("ROOT_ID_HASH_THE_PRISON_BREAK"))
        stats.set_int("MPX_HEIST_SAVED_STRAND_1_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_2", tunables.get_int("ROOT_ID_HASH_THE_HUMANE_LABS_RAID"))
        stats.set_int("MPX_HEIST_SAVED_STRAND_2_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_3", tunables.get_int("ROOT_ID_HASH_SERIES_A_FUNDING"))
        stats.set_int("MPX_HEIST_SAVED_STRAND_3_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_4", tunables.get_int("ROOT_ID_HASH_THE_PACIFIC_STANDARD_JOB"))
        stats.set_int("MPX_HEIST_SAVED_STRAND_4_L", 5)
        stats.set_int("MPX_LIFETIME_BUY_COMPLETE", 1000)
        stats.set_int("MPX_LIFETIME_BUY_UNDERTAKEN", 1000)
        stats.set_int("MPX_LIFETIME_SELL_COMPLETE", 1000)
        stats.set_int("MPX_LIFETIME_SELL_UNDERTAKEN", 1000)
        stats.set_int("MPX_LIFETIME_CONTRA_EARNINGS", 50000000) -- Contraband Earnings
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET1", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA1", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET1", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA1", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET2", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA2", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET2", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA2", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET3", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA3", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET3", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA3", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET4", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA4", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET4", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA4", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET5", 500)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA5", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET5", 500)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA5", 500)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS0", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS1", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS2", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS3", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS4", 25000000)
        stats.set_int("MPX_SR_HIGHSCORE_1", 690)             -- Bunker Challenges
        stats.set_int("MPX_SR_HIGHSCORE_2", 1860)            -- Bunker Challenges
        stats.set_int("MPX_SR_HIGHSCORE_3", 2690)            -- Bunker Challenges
        stats.set_int("MPX_SR_HIGHSCORE_4", 2660)            -- Bunker Challenges
        stats.set_int("MPX_SR_HIGHSCORE_5", 2650)            -- Bunker Challenges
        stats.set_int("MPX_SR_HIGHSCORE_6", 450)             -- Bunker Challenges
        stats.set_int("MPX_SR_TARGETS_HIT", 269)             -- Bunker Challenges
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET6", 100) -- Allow buying of Stank Breath acid name.
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET6", 100) -- Allow buying of Squatch Bait acid name.
        stats.set_packed_int(41241, 5)                       -- Allow buying of Chair Shot acid name. / Unlock all custom acid names
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS6", 10000000) -- Allow buying of Fck Your Sleep acid name.
        stats.set_packed_int(7666, 25)                       -- Fill CEO office with money
        stats.set_packed_bool_range(7553, 7594, true)        -- Fill CEO office with junk
        stats.set_packed_int(9357, 4)                        -- Fill Clubhouse with money
        stats.set_packed_bool_range(9400, 9414, true)        -- Fill Clubhouse with junk
        stats.set_int("MPX_XMAS2023_ADV_MODE_WINS", 6)       -- Unlock Christmas 2023 liveries.
        stats.set_int("MPPLY_XMAS23_PLATES0", 3)             -- ECola & Sprunk Plates
        stats.set_int("MPX_COUNT_HOTRING_RACE", 20)          -- Liveries for hotring
        stats.set_int("MPX_FINISHED_SASS_RACE_TOP_3", 20)    -- Trade price for hotring/everon2
        stats.set_packed_int(7671, 100)                      -- Plant on Desk, Plaque Trophy, Shield Trophy
        stats.set_int("MPX_PROG_HUB_BOUNTIES_ALIVE_BS", -1)  -- Cuff Trophy
        stats.set_int("MPX_TIMES_PREV_PLAY_AS_BOSS", 500)    -- VIP Variant
        stats.set_int("MPX_GBTELTIMESPLAYEDGOONPREV", 500)   -- Bodyguard Variant
        stats.set_int("MPX_WILDLIFEPH_COUNT", 10)            -- Park Ranger trade price
        stats.set_int("MPX_LOW_FLOW_CURRENT_PROG", 9)        -- Skip the Lamar lowrider missions
        stats.set_int("MPX_LOW_FLOW_CURRENT_CALL", 9)        -- Skip the Lamar lowrider missions
        stats.set_int("MPX_HUB_SALES_COMPLETED", 10)         -- Trade price for mule4, pounder2
        stats.set_int("MPX_NIGHTCLUB_JOBS_DONE", 25)         -- Trade price for patriot2, blimp3
        stats.set_int("MPX_M25_GENERAL_BS", 16511)           -- All Knoway Out missions finished / Home Sweet Home replayable from pause menu
        -- Awards
        stats.set_int("MPX_AWD_FM_DM_WINS", 50)              -- The Slayer
        stats.set_int("MPX_AWD_FM_TDM_WINS", 50)             -- Death Brigade
        stats.set_int("MPX_AWD_FM_TDM_MVP", 50)              -- Team Carrier
        stats.set_int("MPX_AWD_RACES_WON", 50)               -- The Champion
        stats.set_int("MPX_AWD_FMWINAIRRACE", 25)            -- The Aviator
        stats.set_int("MPX_AWD_FMWINSEARACE", 25)            -- Making Waves
        stats.set_int("MPX_AWD_FM_GTA_RACES_WON", 50)        -- Cruisin' for a Bruisin'
        stats.set_bool("MPX_AWD_FMKILL3ANDWINGTARACE", true) -- Road Rage
        stats.set_int("MPX_AWD_FMRALLYWONDRIVE", 25)         -- Follow to a Tee
        stats.set_int("MPX_AWD_FMRALLYWONNAV", 25)           -- The Dictator
        stats.set_int("MPX_AWD_FMWINRACETOPOINTS", 25)       -- Impromptu Champion
        stats.set_bool("MPX_AWD_FMWINCUSTOMRACE", true)      -- In a Class of Your Own
        stats.set_int("MPX_AWD_FM_RACE_LAST_FIRST", 25)      -- Penetrate From Behind
        stats.set_bool("MPX_AWD_FMRACEWORLDRECHOLDER", true) -- The Record Holder
        stats.set_int("MPX_AWD_FM_RACES_FASTEST_LAP", 50)    -- Dust Maker
        stats.set_bool("MPX_AWD_FMWINALLRACEMODES", true)    -- Every Race
        stats.set_int("MPX_AWD_FMHORDWAVESSURVIVE", 10)      -- Survivor
        stats.set_int("MPX_MOST_ARM_WRESTLING_WINS", 25)     -- Over the Top
        stats.set_int("MPX_AWD_WIN_AT_DARTS", 25)            -- Throwback King
        stats.set_int("MPX_AWD_FM_GOLF_WON", 25)             -- The Swing King
        stats.set_int("MPX_AWD_FM_TENNIS_WON", 25)           -- Stroke Master
        stats.set_bool("MPX_AWD_FM_TENNIS_5_SET_WINS", true) -- Out of Five
        stats.set_bool("MPX_AWD_FM_TENNIS_STASETWIN", true)  -- Straight Sets
        stats.set_int("MPX_AWD_FM_SHOOTRANG_TG_WON", 25)     -- Crack Shot
        stats.set_int("MPX_AWD_FM_SHOOTRANG_CT_WON", 25)     -- Duck and Cover
        stats.set_bool("MPX_AWD_FM_SHOOTRANG_GRAN_WON", true) -- Granny
        stats.set_int("MPX_AWD_FM_SHOOTRANG_RT_WON", 25)     -- The Marksman
        stats.set_bool("MPX_AWD_FMWINEVERYGAMEMODE", true)   -- All Rounder
        stats.set_int("MPX_AWD_WIN_CAPTURES", 50)            -- Captured
        stats.set_int("MPX_AWD_WIN_CAPTURE_DONT_DYING", 25)  -- Death Defying
        stats.set_int("MPX_AWD_WIN_LAST_TEAM_STANDINGS", 50) -- Still Standing
        stats.set_int("MPX_AWD_ONLY_PLAYER_ALIVE_LTS", 50)   -- One and Only
        stats.set_int("MPX_AWD_KILL_TEAM_YOURSELF_LTS", 25)  -- One Man Army
        stats.set_bool("MPX_AWD_FM25DIFFERENTDM", true)      -- War Pig
        stats.set_bool("MPX_AWD_FM25DIFFERENTRACES", true)   -- Veteran Racer
        stats.set_int("MPX_AWD_PARACHUTE_JUMPS_20M", 25)     -- Nick of Time
        stats.set_int("MPX_AWD_PARACHUTE_JUMPS_50M", 25)     -- Point Break
        stats.set_int("MPX_AWD_FMBASEJMP", 25)               -- Stayed on Target
        stats.set_bool("MPX_AWD_FMATTGANGHQ", true)          -- Clear Out
        stats.set_bool("MPX_AWD_FM6DARTCHKOUT", true)        -- Checking Out
        stats.set_int("MPX_AWD_FM_GOLF_BIRDIES", 25)         -- Birdies
        stats.set_bool("MPX_AWD_FM_GOLF_HOLE_IN_1", true)    -- Hole in One
        stats.set_int("MPX_AWD_FM_TENNIS_ACE", 25)           -- Ace
        stats.set_int("MPX_AWD_FMBBETWIN", 50000)            -- The Hustler
        stats.set_int("MPX_AWD_LAPDANCES", 25)               -- Lapping it Up
        stats.set_bool("MPX_AWD_FM25DIFITEMSCLOTHES", true)  -- Snappy Dresser
        stats.set_int("MPX_AWD_NO_HAIRCUTS", 25)             -- Hairy Encounters
        stats.set_bool("MPX_AWD_BUY_EVERY_GUN", true)        -- Proud Gun Owner
        stats.set_bool("MPX_AWD_FMTATTOOALLBODYPARTS", true) -- The Human Canvas
        stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", 25)         -- The Matchmaker*
        stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", 25)      -- Track Builder*
        stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", 100) -- Reeling Them In* / TO-DO: This stat is overriden by DATADICT_GET_INT(dict "pt") each time fm_maintain_cloud_header_data is lauched. Using DATADICT_SET_INT only worked temporarily. See if you can find a workaround.
        stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", 100)  -- TO-DO: This stat is overriden by UGC_GET_CONTENT_RATING_POSITIVE_COUNT each time fm_maintain_cloud_header_data is lauched. See if you can find a workaround.
        stats.set_int("MPX_AWD_DROPOFF_CAP_PACKAGES", 100)   -- The Postman
        stats.set_int("MPX_AWD_PICKUP_CAP_PACKAGES", 100)    -- Gimme That
        stats.set_int("MPX_AWD_MENTALSTATE_TO_NORMAL", 50)   -- Calm Down
        stats.set_bool("MPX_AWD_STORE_20_CAR_IN_GARAGES", true) -- Showroom
        stats.set_int("MPX_AWD_TRADE_IN_YOUR_PROPERTY", 25)  -- Moving Day
        stats.set_int("MPX_COMPLETEDAILYOBJ", 100)
        stats.set_int("MPX_COMPLETEDAILYOBJTOTAL", 100)
        stats.set_int("MPX_TOTALDAYCOMPLETED", 100)
        stats.set_int("MPX_TOTALWEEKCOMPLETED", 400)
        stats.set_int("MPX_TOTALMONTHCOMPLETED", 1800)
        stats.set_int("MPX_CONSECUTIVEDAYCOMPLETED", 30)
        stats.set_int("MPX_CONSECUTIVEWEEKCOMPLETED", 4)
        stats.set_int("MPX_CONSECUTIVEMONTHCOMPLETE", 1)
        stats.set_int("MPX_COMPLETEDAILYOBJSA", 100)
        stats.set_int("MPX_COMPLETEDAILYOBJTOTALSA", 100)
        stats.set_int("MPX_TOTALDAYCOMPLETEDSA", 100)
        stats.set_int("MPX_TOTALWEEKCOMPLETEDSA", 400)
        stats.set_int("MPX_TOTALMONTHCOMPLETEDSA", 1800)
        stats.set_int("MPX_CONSECUTIVEDAYCOMPLETEDSA", 30)
        stats.set_int("MPX_CONSECUTIVEWEEKCOMPLETEDSA", 4)
        stats.set_int("MPX_CONSECUTIVEMONTHCOMPLETESA", 1)
        stats.set_int("MPX_AWD_DAILYOBJCOMPLETED", 100)     -- Daily Duty
        stats.set_int("MPX_AWD_DAILYOBJCOMPLETEDSA", 100)
        stats.set_bool("MPX_AWD_DAILYOBJWEEKBONUS", true)   -- Goal Oriented
        stats.set_bool("MPX_AWD_DAILYOBJWEEKBONUSSA", true)
        stats.set_bool("MPX_AWD_DAILYOBJMONTHBONUS", true)  -- Over Achiever
        stats.set_bool("MPX_AWD_DAILYOBJMONTHBONUSSA", true)
        stats.set_int("MPX_CHAR_WANTED_LEVEL_TIME5STAR", 7200000) -- The Fugitive
        stats.set_int("MPX_AWD_5STAR_WANTED_AVOIDANCE", 50) -- The Police Mocker
        stats.set_int("MPX_AWD_FMSHOOTDOWNCOPHELI", 25)     -- When Pigs Can Fly
        stats.set_int("MPX_PASS_DB_PLAYER_KILLS", 100)      -- Death by Drive-By
        stats.set_int("MPX_NUMBER_STOLEN_CARS", 500)        -- Vehicle Thief
        stats.set_int("MPX_AWD_HOLD_UP_SHOPS", 20)          -- Armed Robber
        stats.set_int("MPX_CARS_EXPLODED", 500)             -- Sky High
        stats.set_int("MPX_AWD_CARS_EXPORTED", 50)          -- The Exporter
        stats.set_int("MPX_AWD_FMDRIVEWITHOUTCRASH", 30)    -- No Claims Bonus
        stats.set_int("MPX_AWD_PASSENGERTIME", 4)           -- The Passenger
        stats.set_int("MPX_AWD_TIME_IN_HELICOPTER", 4)      -- Mile High Club
        stats.set_bool("MPX_AWD_FMFULLYMODDEDCAR", true)    -- Suped Up
        stats.set_int("MPX_AIR_LAUNCHES_OVER_40M", 25)      -- Airborne
        stats.set_int("MPX_MOST_FLIPS_IN_ONE_JUMP", 5)      -- Flippin' Hell
        stats.set_int("MPX_MOST_SPINS_IN_ONE_JUMP", 5)      -- Spinderella
        stats.set_bool("MPX_AWD_FMFURTHESTWHEELIE", true)   -- Unirider
        stats.set_int("MPX_AWD_100_HEADSHOTS", 500)         -- Head Banger
        stats.set_int("MPX_KILLS_PLAYERS", 1000)            -- The Widow Maker
        stats.set_int("MPX_AWD_FMKILLBOUNTY", 25)           -- The Bounty Hunter
        stats.set_int("MPX_AWD_FMREVENGEKILLSDM", 50)       -- 3 for 1
        stats.set_int("MPX_AWD_FM_DM_KILLSTREAK", 100)      -- Streaker
        stats.set_int("MPX_AWD_FM_DM_STOLENKILL", 50)       -- Stolen Kills
        stats.set_int("MPX_AWD_FM_DM_TOTALKILLS", 500)      -- Death Toll
        stats.set_bool("MPX_AWD_FMKILLSTREAKSDM", true)     -- Killstreaker
        stats.set_bool("MPX_AWD_FMMOSTKILLSGANGHIDE", true) -- Smoke 'Em Out
        stats.set_bool("MPX_AWD_FMMOSTKILLSSURVIVE", true)  -- Bloodiest of the Bunch
        stats.set_int("MPX_AWD_FM_DM_3KILLSAMEGUY", 50)     -- The Equalizer
        stats.set_int("MPX_AWD_KILL_CARRIER_CAPTURE", 100)  -- No You Don't
        stats.set_int("MPX_AWD_NIGHTVISION_KILLS", 100)     -- Lights Out
        stats.set_int("MPX_AWD_KILL_PSYCHOPATHS", 100)      -- Psycho Killer
        stats.set_int("MPX_PISTOL50_ENEMY_KILLS", 500)      -- Pistol Whipped
        stats.set_int("MPX_AWD_100_KILLS_SMG", 500)         -- SMG Head
        stats.set_int("MPX_ASLTSHTGN_ENEMY_KILLS", 600)     -- Shotgun Blues / Weapon Tints for Assault Shotgun
        stats.set_int("MPX_ASLTRIFLE_ENEMY_KILLS", 600)     -- Looking Down the Barrel / Weapon Tints for Assault Rifle
        stats.set_int("MPX_SNIPERRFL_ENEMY_KILLS", 600)     -- Scoping Out / Weapon Tints for Sniper Rifle
        stats.set_int("MPX_CMBTMG_ENEMY_KILLS", 600)        -- Rapid Fire /  Weapon Tints for Combat MG
        stats.set_int("MPX_AWD_25_KILLS_STICKYBOMBS", 50)   -- Ended in A Sticky Situation
        stats.set_int("MPX_GRENADE_ENEMY_KILLS", 50)        -- Grenade Fiend
        stats.set_int("MPX_RPG_ENEMY_KILLS", 600)           -- The Rocket Man /  Weapon Tints for Rocket Launcher
        stats.set_int("MPX_UNARMED_ENEMY_KILLS", 50)        -- The Melee Murderer
        stats.set_int("MPX_AWD_CAR_BOMBS_ENEMY_KILLS", 25)  -- The Car Bomber
        stats.set_int("MPX_AWD_FINISH_HEISTS", 50)          -- The Big Time
        stats.set_int("MPX_AWD_FINISH_HEIST_SETUP_JOB", 50) -- Be Prepared
        stats.set_bool("MPX_AWD_FINISH_HEIST_NO_DAMAGE", true) -- Can't Touch This
        stats.set_int("MPX_AWD_WIN_GOLD_MEDAL_HEISTS", 25)  -- Decorated
        stats.set_int("MPX_AWD_DO_HEIST_AS_MEMBER", 25)     -- For Hire
        stats.set_int("MPX_AWD_DO_HEIST_AS_THE_LEADER", 25) -- Shot Caller
        stats.set_bool("MPX_AWD_SPLIT_HEIST_TAKE_EVENLY", true) -- Four Way
        stats.set_bool("MPX_AWD_ACTIVATE_2_PERSON_KEY", true) -- It Takes Two
        stats.set_int("MPX_AWD_CONTROL_CROWDS", 25)         -- In Control
        stats.set_bool("MPX_AWD_ALL_ROLES_HEIST", true)     -- Jack of All Trades
        stats.set_bool("MPPLY_AWD_FLEECA_FIN", true)        -- Head for Heists*
        stats.set_bool("MPPLY_AWD_PRISON_FIN", true)        -- Go To Jail*
        stats.set_bool("MPPLY_AWD_HUMANE_FIN", true)        -- Lab Report*
        stats.set_bool("MPPLY_AWD_SERIESA_FIN", true)       -- Product Placement*
        stats.set_bool("MPPLY_AWD_PACIFIC_FIN", true)       -- Smooth Sailing*
        stats.set_bool("MPPLY_AWD_HST_ORDER", true)         -- All In Order*
        stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)     -- Loyalty*
        stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)      -- Criminal Mastermind*
        stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", true) -- upporting Role*
        stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", true) -- Another Perspective*
        stats.set_bool("MPPLY_AWD_GANGOPS_IAA", true)       -- Act I*
        stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", true) -- Act II*
        stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", true)   -- Act III*
        stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", true) -- All In Order II*
        stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", true)   -- Loyalty II*
        stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", true)  -- Loyalty III*
        stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", true)  -- Loyalty IV*
        stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", true) -- Criminal Mastermind II*
        stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", true) -- Criminal Mastermind III*
        stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", true) -- Criminal Mastermind IV*
        stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", true)   -- Supporting Role II*
        stats.set_int("MPX_AWD_CLUB_DRUNK", 200)            -- Club Drunk
        stats.set_int("MPX_DANCEPERFECTOWNCLUB", 100)       -- Coordinated
        stats.set_int("MPX_NIGHTCLUB_PLAYER_APPEAR", 500)   -- Hot Spot
        stats.set_int("MPX_AWD_DANCE_TO_SOLOMUN", 100)      -- Solomun 25/8
        stats.set_int("MPX_AWD_DANCE_TO_TALEOFUS", 100)     -- AFTERLIGHT
        stats.set_int("MPX_AWD_DANCE_TO_DIXON", 100)        -- Wilderness
        stats.set_int("MPX_AWD_DANCE_TO_BLKMAD", 100)       -- We Believe
        stats.set_int("MPX_DANCETODIFFDJS", 4)              -- Clubber
        stats.set_int("MPX_AWD_CAREER_WINNER", 1000)        -- Career Winner
        stats.set_int("MPX_AWD_TOP_SCORE", 500000)          -- Top Score
        stats.set_int("MPX_AWD_TIME_SERVED", 1000)          -- Time Served
        stats.set_int("MPX_AWD_ARENA_WAGEWORKER", 20000000) -- Arena Wageworker
        stats.set_int("MPX_AWD_WEVE_GOT_ONE", 50)           -- We've Got One!
        stats.set_int("MPX_AWD_YOURE_OUTTA_HERE", 200)      -- You're Outta Here!
        stats.set_int("MPX_AWD_MASSIVE_SHUNT", 50)          -- Massive Shunt
        stats.set_int("MPX_AWD_KILL_OR_BE_KILLED", 50)      -- Kill Or Be Killed
        stats.set_int("MPX_AWD_CROWDPARTICIPATION", 50)     -- Crowd Participation
        stats.set_int("MPX_AWD_SITTING_DUCK", 50)           -- Sitting Duck
        stats.set_int("MPX_AWD_YOUMEANBOOBYTRAPS", 50)      -- You Mean Booby Traps?
        stats.set_int("MPX_AWD_MASTER_BANDITO", 50)         -- Master Bandito
        stats.set_int("MPX_AWD_SPINNER", 50)                -- Spinner
        stats.set_int("MPX_AWD_THROUGH_A_LENS", 50)         -- Through a Lens
        stats.set_int("MPX_AWD_READY_FOR_WAR", 50)          -- Ready For War
        stats.set_bool("MPX_AWD_UNSTOPPABLE", true)         -- Unstoppable
        stats.set_bool("MPX_AWD_CONTACT_SPORT", true)       -- Contact Sports
        stats.set_int("MPX_AWD_TOWER_OFFENSE", 50)          -- Tower Offense
        stats.set_int("MPX_AWD_WATCH_YOUR_STEP", 50)        -- Watch Your Step
        stats.set_bool("MPX_AWD_PEGASUS", true)             -- Pegasus
        stats.set_bool("MPX_AWD_BEGINNER", true)            -- New Kid
        stats.set_bool("MPX_AWD_FIELD_FILLER", true)        -- Field-Filler
        stats.set_bool("MPX_AWD_ARMCHAIR_RACER", true)      -- Armchair Racer
        stats.set_bool("MPX_AWD_LEARNER", true)             -- Learner
        stats.set_bool("MPX_AWD_SUNDAY_DRIVER", true)       -- Gifted Amateur
        stats.set_bool("MPX_AWD_THE_ROOKIE", true)          -- The Rookie
        stats.set_bool("MPX_AWD_BUMP_AND_RUN", true)        -- Bump & Run
        stats.set_bool("MPX_AWD_GEAR_HEAD", true)           -- Gear-Head
        stats.set_bool("MPX_AWD_DOOR_SLAMMER", true)        -- Pinball
        stats.set_bool("MPX_AWD_HOT_LAP", true)             -- Semi-Pro
        stats.set_bool("MPX_AWD_ARENA_AMATEUR", true)       -- Arena Vet
        stats.set_bool("MPX_AWD_PAINT_TRADER", true)        -- Paint Trader
        stats.set_bool("MPX_AWD_SHUNTER", true)             -- Shunter
        stats.set_bool("MPX_AWD_JOCK", true)                -- Jock
        stats.set_bool("MPX_AWD_WARRIOR", true)             -- Wrecking Ball
        stats.set_bool("MPX_AWD_T_BONE", true)              -- First in Field
        stats.set_bool("MPX_AWD_MAYHEM", true)              -- Gladiator
        stats.set_bool("MPX_AWD_WRECKER", true)             -- Ring Master
        stats.set_bool("MPX_AWD_CRASH_COURSE", true)        -- Arena Warrior
        stats.set_bool("MPX_AWD_ARENA_LEGEND", true)        -- Arena Legend
        stats.set_bool("MPX_AWD_FIRST_TIME1", true)         -- Loose Cheng
        stats.set_bool("MPX_AWD_FIRST_TIME2", true)         -- House Keeping
        stats.set_bool("MPX_AWD_FIRST_TIME3", true)         -- Strong Arm Tactics
        stats.set_bool("MPX_AWD_FIRST_TIME4", true)         -- Play to Win
        stats.set_bool("MPX_AWD_FIRST_TIME5", true)         -- Bad Beat
        stats.set_bool("MPX_AWD_FIRST_TIME6", true)         -- Cashing Out
        stats.set_bool("MPX_AWD_ALL_IN_ORDER", true)        -- Straight
        stats.set_bool("MPX_AWD_SURVIVALIST", true)         -- Lucky Lucky
        stats.set_bool("MPX_AWD_SUPPORTING_ROLE", true)     -- Top Pair
        stats.set_bool("MPX_AWD_LEADER", true)              -- Full House
        stats.set_int("MPX_AWD_ODD_JOBS", 100)              -- High Roller
        stats.set_bool("MPX_AWD_SCOPEOUT", true)            -- Scope Out
        stats.set_int("MPX_AWD_PREPARATION", 40)            -- Preparation
        stats.set_bool("MPX_AWD_CREWEDUP", true)            -- All Crewed Up
        stats.set_bool("MPX_AWD_MOVINGON", true)            -- Moving On
        stats.set_bool("MPX_AWD_PROMOCAMP", true)           -- After Party
        stats.set_bool("MPX_AWD_GUNMAN", true)              -- Gunman
        stats.set_bool("MPX_AWD_SMASHNGRAB", true)          -- Smash & Grab
        stats.set_bool("MPX_AWD_INPLAINSI", true)           -- Hidden In Plain Sight
        stats.set_bool("MPX_AWD_UNDETECTED", true)          -- Undetected
        stats.set_bool("MPX_AWD_ALLROUND", true)            -- All Rounder
        stats.set_bool("MPX_AWD_ELITETHEIF", true)          -- Elite Thief
        stats.set_bool("MPX_AWD_PRO", true)                 -- Professional
        stats.set_bool("MPX_AWD_SUPPORTACT", true)          -- Support Act
        stats.set_bool("MPX_AWD_SHAFTED", true)             -- Shafted
        stats.set_int("MPX_AWD_ASLEEPONJOB", 20)            -- Asleep On The Job
        stats.set_int("MPX_AWD_DAICASHCRAB", 100000)        -- Daily Cash Grab
        stats.set_int("MPX_AWD_BIGBRO", 40)                 -- Big Brother
        stats.set_bool("MPX_AWD_COLLECTOR", true)           -- Collector
        stats.set_bool("MPX_AWD_DEADEYE", true)             -- Dead Eye
        stats.set_bool("MPX_AWD_PISTOLSATDAWN", true)       -- Pistols At Dawn
        stats.set_int("MPX_AWD_SHARPSHOOTER", 40)           -- Sharpshooter
        stats.set_int("MPX_AWD_RACECHAMP", 40)              -- Race Champion
        stats.set_bool("MPX_AWD_TRAFFICAVOI", true)         -- Beat The Traffic
        stats.set_bool("MPX_AWD_CANTCATCHBRA", true)        -- All Wheels
        stats.set_bool("MPX_AWD_WIZHARD", true)             -- Feelin' Groggy
        stats.set_int("MPX_AWD_BATSWORD", 1000000)          -- Platinum Sword
        stats.set_int("MPX_AWD_COINPURSE", 950000)          -- Coin Purse
        stats.set_bool("MPX_AWD_APEESCAPE", true)           -- Ape Escape
        stats.set_bool("MPX_AWD_MONKEYKIND", true)          -- Monkey Mind
        stats.set_int("MPX_AWD_ASTROCHIMP", 3000000)        -- Astrochimp
        stats.set_bool("MPX_AWD_AQUAAPE", true)             -- Aquatic Ape
        stats.set_bool("MPX_AWD_KEEPFAITH", true)           -- Keeping The Faith
        stats.set_int("MPX_AWD_MASTERFUL", 40000)           -- Masterful
        stats.set_bool("MPX_AWD_TRUELOVE", true)            -- True Love
        stats.set_bool("MPX_AWD_NEMESIS", true)             -- Nemesis
        stats.set_bool("MPX_AWD_FRIENDZONED", true)         -- Friendzoned
        stats.set_bool("MPX_AWD_KINGOFQUB3D", true)         -- King Of QUB3D
        stats.set_bool("MPX_AWD_QUBISM", true)              -- Qubism
        stats.set_bool("MPX_AWD_GODOFQUB3D", true)          -- God Of QUB3D
        stats.set_bool("MPX_AWD_QUIBITS", true)             -- Qubits
        stats.set_bool("MPX_AWD_ELEVENELEVEN", true)        -- 11 11
        stats.set_bool("MPX_AWD_GOFOR11TH", true)           -- Crank It To 11
        stats.set_bool("MPX_AWD_INTELGATHER", true)         -- In and Out
        stats.set_bool("MPX_AWD_COMPOUNDINFILT", true)      -- Easy Access
        stats.set_int("MPX_AWD_WELL_PREPARED", 50)          -- Prepped
        stats.set_bool("MPX_AWD_LOOT_FINDER", true)         -- It's a Steal
        stats.set_bool("MPX_AWD_MAX_DISRUPT", true)         -- Maximum Disruption
        stats.set_bool("MPX_AWD_THE_ISLAND_HEIST", true)    -- The Cayo Perico Heist
        stats.set_bool("MPX_AWD_GOING_ALONE", true)         -- Going Alone
        stats.set_bool("MPX_AWD_TEAM_WORK", true)           -- Teamwork
        stats.set_bool("MPX_AWD_MIXING_UP", true)           -- Travel Plans
        stats.set_bool("MPX_AWD_PRO_THIEF", true)           -- Professional Thief
        stats.set_bool("MPX_AWD_CAT_BURGLAR", true)         -- Cat Burglar
        stats.set_bool("MPX_AWD_ONE_OF_THEM", true)         -- One of Them
        stats.set_int("MPX_AWD_FILL_YOUR_BAGS", 20000000)   -- Fill Your Bags
        stats.set_bool("MPX_AWD_GOLDEN_GUN", true)          -- Go For Gold
        stats.set_bool("MPX_AWD_ELITE_THIEF", true)         -- Elitist
        stats.set_bool("MPX_AWD_PROFESSIONAL", true)        -- Blow Hard
        stats.set_int("MPX_AWD_WRECK_DIVING", 1000000)      -- Wreck Diving
        stats.set_bool("MPX_AWD_PARTY_VIBES", true)         -- Party Vibes
        stats.set_int("MPX_AWD_SUNSET", 1800000)            -- Sun Set
        stats.set_bool("MPX_AWD_HELPING_HAND", true)        -- Helping Hand
        stats.set_int("MPX_AWD_MOODYMANN", 1800000)         -- Moodymann
        stats.set_int("MPX_AWD_PALMS_TRAX", 1800000)        -- Palms Trax
        stats.set_bool("MPX_AWD_HELPING_OUT", true)         -- Helping Out
        stats.set_int("MPX_AWD_KEINEMUSIK", 1800000)        -- Keinemusik
        stats.set_bool("MPX_AWD_COURIER", true)             -- Courier
        stats.set_int("MPX_AWD_TREASURE_HUNTER", 50)        -- Treasure Hunter
        stats.set_bool("MPX_AWD_CAR_CLUB", true)            -- LS Car Meet
        stats.set_int("MPX_AWD_CAR_CLUB_MEM", 1000)         -- LS Car Meet Member
        stats.set_int("MPX_AWD_SPRINTRACER", 50)            -- Sprint Racer
        stats.set_int("MPX_AWD_STREETRACER", 50)            -- Street Racer
        stats.set_int("MPX_AWD_PURSUITRACER", 50)           -- Pursuit Racer
        stats.set_int("MPX_AWD_TEST_CAR", 1800000)          -- Tried And Tested
        stats.set_int("MPX_AWD_AUTO_SHOP", 100)             -- Special Delivery
        stats.set_int("MPX_AWD_CAR_EXPORT", 100)            -- Car Exporter
        stats.set_bool("MPX_AWD_PRO_CAR_EXPORT", true)      -- Pro Car Exporter
        stats.set_int("MPX_AWD_GROUNDWORK", 250)            -- Groundwork
        stats.set_bool("MPX_AWD_UNION_DEPOSITORY", true)    -- The Union Depository Contract
        stats.set_bool("MPX_AWD_MILITARY_CONVOY", true)     -- The Superdollar Deal
        stats.set_bool("MPX_AWD_FLEECA_BANK", true)         -- The Bank Contract
        stats.set_bool("MPX_AWD_FREIGHT_TRAIN", true)       -- The ECU Contract
        stats.set_bool("MPX_AWD_BOLINGBROKE_[removed]", true) -- The Prison Contract
        stats.set_bool("MPX_AWD_IAA_RAID", true)            -- The Agency Deal
        stats.set_bool("MPX_AWD_METH_JOB", true)            -- The Lost Contract
        stats.set_bool("MPX_AWD_BUNKER_RAID", true)         -- The Data Contract
        stats.set_int("MPX_AWD_ROBBERY_CONTRACT", 100)      -- Contractual Criminal
        stats.set_int("MPX_AWD_FACES_OF_DEATH", 100)        -- Faces Of Death
        stats.set_bool("MPX_AWD_STRAIGHT_TO_VIDEO", true)   -- Straight To Video
        stats.set_bool("MPX_AWD_MONKEY_C_MONKEY_DO", true)  -- Monkey See Monkey Do
        stats.set_bool("MPX_AWD_TRAINED_TO_KILL", true)     -- Trained to Kill
        stats.set_bool("MPX_AWD_DIRECTOR", true)            -- The Director
        stats.set_bool("MPX_AWD_TEEING_OFF", true)          -- On Course
        stats.set_bool("MPX_AWD_PARTY_NIGHT", true)         -- Nightlife Leak
        stats.set_bool("MPX_AWD_BILLIONAIRE_GAMES", true)   -- High Society Leak
        stats.set_bool("MPX_AWD_HOOD_PASS", true)           -- South Central Leak
        stats.set_bool("MPX_AWD_STUDIO_TOUR", true)         -- Studio Time
        stats.set_bool("MPX_AWD_DONT_MESS_DRE", true)       -- Don't [removed] With Dre
        stats.set_bool("MPX_AWD_BACKUP", true)              -- Backup
        stats.set_bool("MPX_AWD_SHORTFRANK_1", true)        -- Seed Capital - Franklin
        stats.set_bool("MPX_AWD_SHORTLAMAR_1", true)        -- Seed Capital - Lamar
        stats.set_bool("MPX_AWD_SHORTFRANK_2", true)        -- Fire It Up - Franklin
        stats.set_bool("MPX_AWD_SHORTLAMAR_2", true)        -- Fire It Up - Lamar
        stats.set_bool("MPX_AWD_SHORTFRANK_3", true)        -- OG Kush - Franklin
        stats.set_bool("MPX_AWD_SHORTLAMAR_3", true)        -- OG Kush - Lamar
        stats.set_int("MPX_AWD_CONTRACTOR", 50)             -- Contractual Obligations
        stats.set_int("MPX_AWD_COLD_CALLER", 50)            -- Cold Caller
        stats.set_bool("MPX_AWD_CONTR_KILLER", true)        -- Contract Killer
        stats.set_bool("MPX_AWD_DOGS_BEST_FRIEND", true)    -- A Dog's Best Friend
        stats.set_bool("MPX_AWD_MUSIC_STUDIO", true)        -- Sound Check
        stats.set_int("MPX_AWD_PRODUCER", 60)               -- Producer
        stats.set_bool("MPX_AWD_ACELIQUOR", true)           -- Welcome to the Troupe
        stats.set_bool("MPX_AWD_TRUCKAMBUSH", true)         -- Designated Driver
        stats.set_bool("MPX_AWD_LOSTCAMPREV", true)         -- Fatal Incursion
        stats.set_bool("MPX_AWD_ACIDTRIP", true)            -- Uncontrolled Substance
        stats.set_int("MPX_AWD_RUNRABBITRUN", 5)            -- Run Rabbit Run
        stats.set_bool("MPX_AWD_HIPPYRIVALS", true)         -- Make War not Love
        stats.set_bool("MPX_AWD_TRAINCRASH", true)          -- Off The Rails
        stats.set_int("MPX_AWD_CALLME", 50)                 -- Call Me
        stats.set_bool("MPX_AWD_BACKUPB", true)             -- Back It Up
        stats.set_bool("MPX_AWD_GETSTARTED", true)          -- Lick My Acid
        stats.set_int("MPX_AWD_CHEMCOMPOUNDS", 50)          -- Chemical Attraction
        stats.set_bool("MPX_AWD_CHEMREACTION", true)        -- Chemical Reaction
        stats.set_int("MPX_AWD_STASHHORAID", 50)            -- Stashes To Stashes
        stats.set_int("MPX_AWD_DEADDROP", 50)               -- Here Comes The Drop
        stats.set_int("MPX_AWD_GOODSAMARITAN", 50)          -- Good Samaritan
        stats.set_bool("MPX_AWD_WAREHODEFEND", true)        -- This Is An Intervention
        stats.set_bool("MPX_AWD_RESCUECOOK", true)          -- Unusual Suspects
        stats.set_bool("MPX_AWD_DRUGTRIPREHAB", true)       -- Fried Mind
        stats.set_bool("MPX_AWD_ATTACKINVEST", true)        -- Checking In
        stats.set_int("MPX_AWD_OWNWORSTENEMY", 60)          -- Your Own Worst Enemy
        stats.set_bool("MPX_AWD_CARGOPLANE", true)          -- BDKD
        stats.set_bool("MPX_AWD_BACKUPB2", true)            -- Back It Up 2
        stats.set_int("MPX_AWD_TAXIDRIVER", 50)             -- Taxi Driver
        stats.set_bool("MPX_AWD_TAXISTAR", true)            -- 5 Star Ride
        stats.set_bool("MPX_AWD_MAZE_BANK_ROBBERY", true)   -- The Duggan Robbery
        stats.set_bool("MPX_AWD_CARGO_SHIP_ROBBERY", true)  -- The Cargo Ship Robbery
        stats.set_bool("MPX_AWD_MISSION_ROW_ROBBERY", true) -- The [removed]er Robbery
        stats.set_bool("MPX_AWD_PERFECT_RUN", true)         -- Perfect Run
        stats.set_bool("MPX_AWD_EXTRA_MILE", true)          -- Extra Mile
        stats.set_int("MPX_AWD_VEHICLE_ROBBERIES", 50)      -- New Car Smell
        stats.set_int("MPX_AWD_PREP_WORK", 50)              -- Serious Prepper
        stats.set_int("MPX_AWD_CAR_DEALER", 5000000)        -- Wheeler Dealer
        stats.set_int("MPX_AWD_SECOND_HAND_PARTS", 5000000) -- Second Hand Parts
        stats.set_int("MPX_AWD_TOW_TRUCK_SERVICE", 50)      -- Towed Away
        stats.set_bool("MPX_AWD_SUBMARINE_ROBBERY", true)   -- The McTony Robbery
        stats.set_bool("MPX_AWD_DIAMOND_CASINO_ROBBERY", true) -- The Podium Robbery
        stats.set_bool("MPX_AWD_BOLINGBROKE", true)         -- Slush Fund
        stats.set_bool("MPX_AWD_GETTING_SET_UP", true)      -- Best Laid Plans
        stats.set_bool("MPX_AWD_CHICKEN_FACTORY_RAID", true) -- The Cluckin' Bell Farm Raid
        stats.set_bool("MPX_AWD_HELPING_HAND2", true)       -- Pecking Order
        stats.set_bool("MPX_AWD_SURPRISE_ATTACK", true)     -- Sly Fox
        stats.set_bool("MPX_AWD_ALL_OUT_RAID", true)        -- [removed] Fight
        stats.set_bool("MPX_AWD_WEAPON_ARSENAL", true)      -- All The Sides
        stats.set_bool("MPX_AWD_GETAWAY_VEHICLES", true)    -- Fly The Coop
        stats.set_bool("MPX_AWD_HIVALBOUNT1", true)         -- Get Whitney
        stats.set_bool("MPX_AWD_HIVALBOUNT2", true)         -- Get Lieberman
        stats.set_bool("MPX_AWD_HIVALBOUNT3", true)         -- Get O'Neil
        stats.set_bool("MPX_AWD_HIVALBOUNT4", true)         -- Get Thompson
        stats.set_bool("MPX_AWD_HIVALBOUNT5", true)         -- Get Song
        stats.set_bool("MPX_AWD_HIVALBOUNT6", true)         -- Get Garcia
        stats.set_int("MPX_AWD_BOUNTIES", 50)               -- Bountiful
        stats.set_int("MPX_AWD_STANBOUNTIES", 50)           -- Still Breathing
        stats.set_int("MPX_AWD_BOUNTEARNS", 5000000)        -- Cash On Delivery
        stats.set_int("MPX_AWD_BAILOFFICSTAFF", 1000000)    -- Step Two: Profit
        stats.set_int("MPX_AWD_DISPATCHWORK", 50)           -- Dispatched
        stats.set_int("MPX_AWD_PIZZATHIS", 50)              -- Pizza This...
        stats.set_bool("MPX_AWD_ASSONATTACKSWIN", true)     -- Priority Boarding
        stats.set_bool("MPX_AWD_ASSONDEFENDWIN", true)      -- Not A Scratch
        stats.set_int("MPX_AWD_ASSONBONUSOBJ", 20)          -- Happy Landings
        stats.set_int("MPX_AWD_ASSONHARDDRIVE", 50)         -- Hard Drive Hoarder
        stats.set_int("MPX_AWD_FROSTBITE", 15)              -- Death Trap
        stats.set_bool("MPX_AWD_DISEASECONTROL", true)      -- One Of A Kind
        stats.set_bool("MPX_AWD_FINEART", true)             -- The Fine Arts File
        stats.set_bool("MPX_AWD_BRUTEFORCE", true)          -- The Brute Force File
        stats.set_bool("MPX_AWD_PROJECTBREAK", true)        -- The Project Breakaway File
        stats.set_bool("MPX_AWD_BLACKBOXFILE", true)        -- The Black Box File
        stats.set_bool("MPX_AWD_BONUSPOINTS", true)         -- Bonus Points
        stats.set_int("MPX_AWD_DARNELLBROSINC", 50)         -- Darnell Bros Inc.
        stats.set_int("MPX_AWD_GET_READY", 50)              -- Get Ready
        stats.set_int("MPX_AWD_CASHINHAND", 5000000)        -- Cash In Hand
        stats.set_int("MPX_AWD_BROTHERLYLOVE", 50000)       -- Brotherly Love
        stats.set_bool("MPX_AWD_UPRUNNING", true)           -- Up And Running
        stats.set_bool("MPX_AWD_MOGUL", true)               -- Mogul
        stats.set_bool("MPX_AWD_INTEL", true)               -- Intel
        stats.set_int("MPX_AWD_NOTOUTDPT", 5)               -- Not Out Of Your Depth
        stats.set_bool("MPX_AWD_IRONMULE", true)            -- Iron Mule
        stats.set_bool("MPX_AWD_AMMUNITION", true)          -- Ammunition
        stats.set_bool("MPX_AWD_DIRDELIVERY", true)         -- Direct Delivery
        stats.set_int("MPX_AWD_FULSTOCKED", 8)              -- Fully Stocked
        stats.set_bool("MPX_AWD_TITANJOB", true)            -- The Titan Job
        stats.set_bool("MPX_AWD_PERMANENTCON", true)        -- Permanent Contract
        stats.set_int("MPX_AWD_ARMSINARMS", 50)             -- Arms In Arms
        stats.set_bool("MPX_AWD_JUNKSEARCH", true)          -- Liquid Market
        stats.set_int("MPX_AWD_DOGSDINNER", 5)              -- Dog's Dinner
        stats.set_bool("MPX_AWD_CASASS", true)              -- ROI
        stats.set_bool("MPX_AWD_LOCKUPINT", true)           -- Compound Interest
        stats.set_bool("MPX_AWD_ESCORTFLATBED", true)       -- Mutual Funds
        stats.set_bool("MPX_AWD_LEFT4DEAD", true)           -- Current Liabilities
        stats.set_bool("MPX_AWD_TRACKER", true)             -- Gut Instinct
        stats.set_bool("MPX_AWD_CLEARCOMP", true)           -- The Monopoly
        stats.set_bool("MPX_AWD_CASHBONUS", true)           -- Profit Maximization
        stats.set_int("MPX_AWD_HEATAROUDC", 25)             -- Licensed Professional
        stats.set_int("MPX_AWD_TYCOON", 2000000)            -- Cooking The Books
        stats.set_bool("MPX_AWD_BUSINEXPAND", true)         -- Diversification
        stats.set_bool("MPX_AWD_LOSTPRODUC", true)          -- Kush Collector
        stats.set_int("MPX_AWD_CASHCLEAN", 500000)          -- Squeaky Clean
        stats.set_int("MPX_AWD_MEDICOURI", 50)              -- QuickiePharm
        stats.set_bool("MPX_AWD_EMERGENCYSERV", true)       -- First Responder
        stats.set_int("MPX_AWD_TRANSPORT", 20)              -- Safeguard
        stats.set_bool("MPX_AWD_SECUREDEL", true)           -- Ironclad
        stats.set_int("MPX_AWD_SUNBURNED", 15)              -- Sunburned Survivor
        stats.set_bool("MPX_AWD_TWOOFAKIND", true)          -- The Indiscriminator
        stats.set_int("MPX_AWD_UNDEADPARTY", 60)            -- Dancing With Death
        stats.set_bool("MPX_AWD_NEGATIVEPRESS", true)       -- Negative Press
        stats.set_bool("MPX_AWD_USESELFDRIVINGVEH", true)   -- Autonomous
        stats.set_bool("MPX_AWD_LIONSDEN", true)            -- Inside Job
        stats.set_bool("MPX_AWD_TAKEOUTLEADEXPLO", true)    -- Explosive Leadership
        stats.set_bool("MPX_AWD_SUBWAYTRAIN", true)         -- Tunnel Vision
        stats.set_bool("MPX_AWD_SUBWAYSTUNTJUMP", true)     -- Subway Stunt
        stats.set_bool("MPX_AWD_TRASHCOLLECTORS", true)     -- Trash Talking
        stats.set_bool("MPX_AWD_ALLTRASHCOLLECTED", true)   -- Waste Not
        stats.set_bool("MPX_AWD_FIBFINALE", true)           -- A Clean Break
        stats.set_bool("MPX_AWD_HELPER", true)              -- Willing Accomplice
        stats.set_bool("MPX_AWD_FIBFINALECHALLENGE", true)  -- The Cleanest Break
        stats.set_bool("MPX_AWD_MANSIONDEFEND", true)       -- Home Sweet Home
        stats.set_bool("MPX_AWD_DEFLOWMOTIONKILLS", true)   -- Dead Slow
        stats.set_int("MPX_AWD_TAXIDESTRUCTION", 20)        -- No Way KnoWay
        stats.set_bool("MPX_AWD_YOUVEMADEIT", true)         -- A place like this
        stats.set_bool("MPX_AWD_ANIMALLOVER", true)         -- Animal Instincts
        stats.set_int("MPX_AWD_YOGA", 50)                   -- Namaste
        stats.set_int("MPX_AWD_JUICEDUP", 100)              -- Pumped
        stats.set_int("MPX_AWD_MANADVERSARYDEFUSE", 10)     -- Bomb Squad
        stats.set_bool("MPX_AWD_MANSADVERSARYWIN", true)    -- Mansion Raid
        stats.set_int("MPX_AWD_FIREFIGHTER", 20)            -- Knockdown
        stats.set_int("MPX_AWD_ALPHAMAIL", 20)              -- Alpha Mail
        stats.set_int("MPX_AWD_LOSSANTOSMETEOR", 20)        -- Meteoric
        stats.set_bool("MPX_AWD_ONTHECLOCK", true)          -- Hot Off The Press
        -- Gun Locker Fix (Hide WM 29 Pistol, Candy Cane, Snowball Launcher, The Shocker)
        stats.set_int("MPX_CHAR_WEAP_FM_PURCHASE3", -872415233)
        stats.set_int("MPX_CHAR_WEAP_FM_PURCHASE4", 126)
        -- Career Progress
        stats.set_int("MPX_PROG_HUB_KNOWAY_EARNINGS", 5000000, true)
        stats.set_packed_bool_range(54773, 54786, true)
        stats.set_packed_bool(54653, true)                         -- Meet Mr Faber
        stats.set_int("MPX_SB_CAR_WASH_OWNED", 1)                  -- Acquire the Hands On Car Wash
        stats.set_int("MPX_SB_HELI_TOURS_OWNED", 1)                -- Acquire Higgins Helitours
        stats.set_int("MPX_SB_WEED_SHOP_OWNED", 1)                 -- Acquire Smoke on the Water
        stats.set_packed_bool_range(28313, 28318, true)            -- Obtain the maximum possible bonus in all Mr Faber Works
        stats.set_packed_int(24928, 10, true)                      -- Complete 10 jobs at the Hands On Car Wash, Smoke on the Water, or Higgins Helitours
        stats.set_int("MPX_PROG_HUB_TYCOON25_EARNINGS", 2000000, true) -- Earn $2,000,000 fro mcompleting jobs at the Hands On Car Wash, Smoke on the Water, or Higgins Helitours
        stats.set_int("MPX_PROG_HUB_CWASH_SAFEEARNINGS", 500000, true) -- Collect $500,000 from the safe inside the Hands On Car Wash
        stats.set_packed_bool_range(51278, 51280, true)            -- Complete an Oscar Guzman Flies Again mission without dying, Complete Oscar Guzman Flies Again in under 60 minutes, Complete Up and Running for Oscar Guzman Flies Again
        stats.set_packed_bool_range(51285, 51297, true)            -- Complete Oscar Guzman Flies Again, Complete all Oscar Guzman Flies Again missions on Hard, Complete all Oscar Guzman Flies Again missions on Hard without using snacks or armor
        stats.set_int("MPX_PROG_HUB_MFH_EARNINGS", 5000000, true)  -- Earn $5,000,000 from Oscar Guzman Flies Again
        stats.set_packed_bool_range(28272, 28287, true)            -- Steal the setup funds for The Cluckin' Bell Farm Raid, Complete Scene of the Crime using all available setup equipment, Complete The Cluckin' Bell Farm Raid in less than 45 minutes as a leader, Complete Scene of the Crime using both approaches, Complete The Cluckin' Bell Farm Raid, Complete a Cluckin' Bell Farm Raid mission without dying, Complete Scene of the Crime without being spotted
        stats.set_int("MPX_PROG_HUB_CBR_EARNINGS", 5000000, true)  -- Earn $5,000,000 from The Cluckin' Bell Farm Raid
        stats.set_int("MPX_SUM23_AVOP_PROGRESS", 4095, true)       -- Trade Price Raiju / Complete all Project Overthrow missions
        stats.set_int("MPX_ULP_MISSION_PROGRESS", 16383)           -- Trade Price greenwood/conada / Complete an Operation Paper Trail mission for Agent ULP
        stats.set_int("MPX_YACHT_MISSION_FLOW", 21845)             -- Complete all Superyacht Life missions
        stats.set_packed_bool_range(41507, 42022, true)            -- Complete all Lowrider missions on Hard difficulty, Complete all Lowrider missions on Hard difficulty without using snacks or armor, Complete all Lowrider missions taking less than 50% damage, Complete all Lowrider missions with over 80% accuracy, Complete a Lowrider mission without dying / Complete all Casino Story Missions on Hard difficulty, Complete all Casino Story Missions on Hard difficulty using only pistols, Complete all Casino Story Missions on Hard difficulty while taking less than 50% damage / Complete a Project Overthrow mission without dying, Complete all Project Overthrow missions on Hard difficulty, Complete all Project Overthrow missions on Hard difficulty without using snacks or armor, Complete all Project Overthrow missions taking less than 50% damage, Complete all Project Overthrow missions with over 80% accuracy / Participate in 25 different Adversary Modes, Win all the Arena Modes / i'm tired boss / Fill up your Nightclub safe / Fill your Hangar with Air-Freight Cargo / Fill a Vehicle Warehouse with 40 stolen vehicles  / Own all of the Mk II weapons / Complete the Criminal Mastermind challenge / Set up any Biker business / Own a Garage with at least 10 spaces, Own a Pegasus vehicle, Test drive or purchase a vehicle from Premium Deluxe Motorsport or Luxury Autos, Upgrade a vehicle to its custom variant at Benny's Original Motor Works, Upgrade a vehicle with HSW Performance Upgrades at Hao's Special Works inside the LS Car Meet, Upgrade a vehicle into an Arena Contender at an Arena Workshop, Customize a vehicle with Imani tech at an Agency, Customize a vehicle in Los Santos Customs
        stats.set_packed_bool(51339, true)                         -- Participate in 25 different Adversary Modes
        stats.set_int("MPX_HACKER_DEN_OWNED", 1, true)             -- Acquire the Garment Factory
        stats.set_packed_bool(9539, true)                          -- Meet with Pavel
        stats.set_packed_int(24903, 25)                            -- Complete 25 Files
        stats.set_packed_int(24904, 2)                             -- Complete 2 Files without losing a life
        stats.set_int("MPX_PROG_HUB_DEN24_SAFEEARNINGS", 100000, true) -- Earn $100,000 in additional Garment Factory earnings
        stats.set_int("MPX_HACKER24_GEN_BS", 8160, true)           -- Trade price for predator / Complete all the Files
        stats.set_packed_bool(9549, true)                          -- Complete the Priority File 2 weeks in a row
        stats.set_packed_bool_range(9542, 9546, true)              --
        stats.set_int("MPX_BAIL_OFFICE_OWNED", 1, true)            -- Set up a Bail Office
        stats.set_packed_bool(9537, true)                          -- Meet with Maude Eccles
        stats.set_packed_bool(7639, true)                          -- Secure or eliminate a bounty target
        stats.set_packed_int(7669, 5)                              -- Secure or eliminate 5 Standard bounty targets
        stats.set_packed_int(7672, 2)                              -- Secure or eliminate 2 Most Wanted bounty targets
        stats.set_int("MPX_PROG_HUB_BOUNTY_EARNINGS", 5000000, true) -- Earn $5,000,000 from securing or eliminating bounty targets
        stats.set_packed_int(7670, 10)                             -- Secure or eliminate 10 bounty targets without losing a life
        stats.set_packed_int(7674, 3)                              -- Secure or eliminate a Most Wanted bounty target 3 days in a row
        stats.set_packed_int(7671, 25)                             -- Secure or eliminate 25 bounty targets
        stats.set_int("MPX_BAIL_PROPERTY_EARNINGS", 1000000, true) -- Earn $1,000,000 in additional income from your Bail Office Agents
        stats.set_int("MPX_SALVAGE_YARD_OWNED", 1, true)           --  Set up a Salvage Yard
        stats.set_packed_bool_range(42037, 42038, true)            -- Set up an Acid Lab / Meet with Yusuf Amir
        stats.set_packed_bool_range(42041, 42042, true)            -- Complete a Salvage Yard Robbery / Complete all Salvage Yard Robberies
        stats.set_packed_bool_range(42044, 42051, true)            -- Sell a vehicle / Salvage a vehicle / Complete all bonus challenges for a Salvage Yard Robbery / Complete all bonus challenges for all Salvage Yard Robberies
        stats.set_int("MPX_PROG_HUB_SALV23_EARN_SALV", 2500000, true) -- Earn $2,500,000 from salvaging vehicles
        stats.set_int("MPX_PROG_HUB_SALV23_EARN_PERF", 5, true)    -- Sell 5 vehicles in perfect condition from Salvage Yard Robberies
        stats.set_int("MPX_PROG_HUB_SALV23_EARN_SELL", 10000000, true) -- Earn $10,000,000 from selling stolen vehicles
        stats.set_int("MPX_PROG_HUB_LSDW_FJ_NO_DEATHS", 25, true)  -- Complete 25 Fooligan Jobs without dying
        stats.set_int("MPX_PROG_HUB_DAX_CLONE_KILLS", 100, true)   -- Take out 100 hostile versions of yourself in The Last Dose - Checking In
        stats.set_packed_bool_range(41660, 41670, true)            -- Complete all missions in The First Dose and The Last Dose without dying
        stats.set_packed_bool(28257, true)                         -- Set up the Agency
        stats.set_int("MPX_PROG_HUB_FXER_PAY_HIT_BONUS", 100, true) -- Complete 100 Payphone Hits with the Assassination Bonus
        stats.set_int("MPX_PROG_HUB_FIXER_SEC_CON_SPEC", 100, true) -- Complete 100 Security Contracts on Specialist or Specialist+ difficulty
        stats.set_int("MPX_FIXER_EARNINGS", 5000000, true)         -- Earn $5,000,000 from Security Contracts
        stats.set_packed_bool_range(22067, 22068, true)            -- Set up a Nightclub / Hire all Resident DJs
        stats.set_int("MPX_PROG_HUB_DANCE_DUR", 5, true)           -- Dance for 5 minutes inside a Nightclub
        stats.set_packed_bool(15533, true)                         -- Hire a second Resident DJ
        stats.set_packed_bool_range(22082, 22083, true)            -- Hire a second Resident DJ
        stats.set_packed_bool(36944, true)                         -- Eject a troublemaker from your Nightclub
        stats.set_int("MPX_NIGHTCLUB_VIP_APPEAR", 25, true)        -- Have 25 celebrity appearances at your Nightclub
        stats.set_int("MPX_PROG_HUB_NCLUB_POP_MAX_TME", 600, true) -- Keep your Nightclub popularity at 100% for 10 hours
        stats.set_int("MPX_HUB_EARNINGS", 50000000, true)          -- Earn a total of $50,000,000 or more
        stats.set_packed_bool(15966, true)                         -- Set up a Hangar
        stats.set_packed_bool(41676, true)                         -- Send a staff member to source Air-Freight Cargo
        stats.set_int("MPX_LFETIME_HANGAR_SEL_COMPLET", 1, true)   -- Complete an Air-Freight Cargo Sell mission
        stats.set_int("MPX_PROG_HUB_SMUGGLER_CRATES", 1000, true)  -- Sell 1,000 crates of Air-Freight Cargo
        stats.set_packed_bool_range(36924, 36938, true)            -- Sell 50 crates of the same type of Air-Freight Cargo in one sale / Sell all types of Air-Freight Cargo / Set up The Fleeca Job / Own 5 different weapons
        stats.set_int("MPX_LFETIME_HANGAR_EARNINGS", 50000000, true) -- Earn $50,000,000 selling Air-Freight Cargo
        stats.set_int("MPX_FACTORYSETUP5", 1, true)                -- Set up a Bunker
        stats.set_packed_int(9359, 25)                             -- Research 25 projects
        stats.set_packed_bool_range(36870, 36917, true)            -- Deliver excess weapon parts to Ammu-Nation / Become President of a Motorcycle Club / Hire a player to join your Motorcycle Club / Deliver a customer bike / Complete a Resupply mission for any Biker business / Complete all Clubhouse Contracts / Complete the Elite Challenge for each heist
        stats.set_int("MPX_LIFETIME_BKR_SEL_COMPLETBC5", 1, true)  -- Complete a Sell mission
        stats.set_packed_bool_range(36831, 36865, true)            -- Complete all Mobile Operations on Hard difficulty in under 10 minutes / Source all types of Special Items
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS5", 25000000, true) -- Earn $25,000,000 selling Weapons
        stats.set_int("MPX_OWNED_IE_WAREHOUSE", 1, true)           -- Own a Vehicle Warehouse
        stats.set_int("MPX_LFETIME_IE_EXPORT_COMPLETED", 25, true) -- Complete 25 Vehicle Cargo missions
        stats.set_packed_bool_range(42029, 42036, true)            -- omplete all Special Vehicle Works
        stats.set_packed_bool_range(41874, 41883, true)            -- Source all vehicles for all Collectors
        stats.set_int("MPX_PROG_HUB_VEH_CARGO_SELL_PER", 50, true) -- Sell 50 vehicles in perfect condition
        stats.set_int("MPX_PROG_HUB_VEH_CARGO_SPECIAL", 5, true)   -- Sell 5 vehicles to Specialist Dealers
        stats.set_int("MPX_LFETIME_IE_MISSION_EARNINGS", 25000000, true) -- Earn $25,000,000 selling Vehicle Cargo
        stats.set_int("MPX_LIFETIME_BKR_SELL_COMPLETBC", 1, true)  -- Sell Product from all Biker businesses
        stats.set_int("MPX_LIFETIME_BKR_SEL_COMPLETBC1", 1, true)  -- Sell Product from all Biker businesses
        stats.set_int("MPX_LIFETIME_BKR_SEL_COMPLETBC2", 1, true)  -- Sell Product from all Biker businesses
        stats.set_int("MPX_LIFETIME_BKR_SEL_COMPLETBC3", 1, true)  -- Sell Product from all Biker businesses
        stats.set_int("MPX_LIFETIME_BKR_SEL_COMPLETBC4", 1, true)  -- Sell Product from all Biker businesses
        stats.set_int("MPX_BAR_RESUPPLY_CR", 10, true)             -- Resupply the Clubhouse bar 10 times
        stats.set_int("MPX_PROG_HUB_BIK_CUST_DEL_CASH", 2500000, true) -- Earn $2,500,000 delivering customer bikes
        stats.set_int("MPX_PROG_HUB_CLBH_BAR_EARNINGS", 500000, true) -- Earn $500,000 from your Clubhouse bar
        stats.set_int("MPX_PROG_HUB_BIK_CONTRACT_COUNT", 50, true) -- Complete 50 Clubhouse Contracts
        stats.set_packed_bool_range(7553, 7592, true)              -- Source all types of Cargo
        stats.set_int("MPX_PROG_HUB_FAIFAF_CRATES_COL", 250, true) -- Source 250 crates of Cargo
        stats.set_int("MPX_CAR_CLUB_MEMBERSHIP", 1, true)          -- Visit and become a member of the LS Car Meet
        stats.set_packed_bool(31737, true)                         -- Visit and become a member of the LS Car Meet
        stats.set_packed_bool(31753, true)                         -- Set up an Auto Shop
        stats.set_packed_bool_range(32397, 32399, true)            -- Complete a Prize Ride Challenge / Turn a Pegasus vehicle into a Personal Aircraft / Play an arcade game
        stats.set_int("MPX_TUNER_COUNT", 25, true)                 -- Complete 25 Robbery Contracts
        stats.set_int("MPX_PROG_HUB_TUNER_CUS_DEL_CASH", 5000000, true) -- Earn $5,000,000 delivering customer vehicles
        stats.set_packed_bool_range(27089, 27090, true)            -- Visit The Diamond Casino & Resort / Purchase a Penthouse and visit Agatha Baker
        stats.set_packed_bool(30309, true)                         -- Meet Miguel Madrazo inside The Music Locker
        stats.set_packed_bool(30522, true)                         -- Set up a Kosatka
        stats.set_int("MPX_H4_MISSIONS", -1, true)                 -- Find where the Madrazo files are being held
        stats.set_int("MPX_PROG_HUB_CAYO_PRP_NO_DEATHS", 25, true) -- Complete 25 prep work missions without dying
        stats.set_int("MPX_CR_SUBMARINE", 1, true)                 -- Complete The Cayo Perico Heist using all approaches
        stats.set_int("MPX_CR_STRATEGIC_BOMBER", 1, true)          -- Complete The Cayo Perico Heist using all approaches
        stats.set_int("MPX_CR_SMUGGLER_PLANE", 1, true)            -- Complete The Cayo Perico Heist using all approaches
        stats.set_int("MPX_CR_STEALTH_HELI", 1, true)              -- Complete The Cayo Perico Heist using all approaches
        stats.set_int("MPX_CR_PATROL_BOAT", 1, true)               -- Complete The Cayo Perico Heist using all approaches
        stats.set_int("MPX_CR_SMUGGLER_BOAT", 1, true)             -- Complete The Cayo Perico Heist using all approaches
        stats.set_int("MPX_PROG_HUB_CAYO_H_EARNINGS", 50000000, true) -- Steal $50,000,000 in primary and secondary targets
        stats.set_packed_bool(28270, true)                         -- Set up an Arcade
        stats.set_packed_bool(36842, true)                         -- Scope the contents of the Casino Vault
        stats.set_packed_bool(42025, true)                         -- Complete The Diamond Casino Heist in under 10 minutes on Hard difficulty
        stats.set_int("MPX_PROG_HUB_CASINO_H_EARNINGS", 50000000, true) -- Steal $50,000,000 from the vault
        stats.set_packed_bool(18139, true)                         -- Set up a Facility and meet Lester Crest
        stats.set_packed_bool(36861, true)                         -- Set up The Data Breaches
        stats.set_packed_bool_range(41712, 41719, true)            -- Complete The Data Breaches, The Bogdan Problem, The Doomsday Scenario as a leader / Complete The Fleeca Job, Prison Break, The Humane Labs Raid, Series A Funding, The Pacific Standard Job as a leader
        stats.set_int("MPX_PROG_HUB_DOOM_PRP_NO_DEATHS", 14, true) -- Complete 14 prep missions without dying
        stats.set_int("MPX_PROG_HUB_DOOMSDAY_ACTS", 15, true)      -- Complete 15 Acts as a leader
        stats.set_packed_bool_range(36867, 36868, true)            -- Own a high-end or custom Apartment / Source Goods for your Nightclub Basement
        stats.set_packed_int(42100, 5)                             -- Complete all heists with the same crew
        stats.set_int("MPX_PROG_HUB_HEIST_EARNINGS", 50000000, true) -- Earn $50,000,000 across all heists
        stats.set_packed_bool(36840, true)                         -- Participate in the Featured Series
        stats.set_int("MPX_PROG_HUB_ADV_WINS", 50, true)           -- Win 50 Adversary Modes
        stats.set_int("MPX_PROG_HUB_SURVIVALS_PLAYED", 1, true)    -- Play a Survival mode
        stats.set_packed_bool_range(41331, 41506, true)            -- Reach wave 16 playing Endless Waves / Complete 10 waves in Survival mode playing solo / Complete an Operation Paper Trail mission without dying, Complete all Operation Paper Trail missions on Hard difficulty, Complete all Operation Paper Trail missions on Hard difficulty without using snacks or armor, Complete all Operation Paper Trail missions taking less than 50% damage, Complete all Operation Paper Trail missions with over 80% accuracy / Win a Race in 5 different race types / Complete a Superyacht Life mission without dying, Complete all Superyacht Life missions on Hard difficulty, Complete all Superyacht Life missions on Hard difficulty without using snacks or armor, Complete all Superyacht Life missions taking less than 50% damage, Complete all Superyacht Life missions with over 80% accuracy / Complete all Last Play missions, Complete a Last Play mission without dying, Complete all Last Play missions on Hard difficulty, Complete all Last Play missions on Hard difficulty without using snacks or armor, Complete all Last Play missions taking less than 50% damage, Complete all Last Play missions with over 80% accuracy / Complete a Repo Work mission without dying, Complete all Repo Work missions, Complete all Repo Work missions on Hard difficulty, Complete all Repo Work missions on Hard difficulty without using snacks or armor, Complete all Repo Work missions taking less than 50% damage, Complete all Repo Work missions with over 80% accuracy / Complete all Dispatch Missions, Complete all Dispatch Missions on Hard difficulty, Complete all Dispatch Missions on Hard difficulty without using snacks or armor, Complete all Dispatch Missions taking less than 50% damage, Complete all Dispatch Missions with over 80% accuracy, Complete a Dispatch Mission without dying
        stats.set_int("MPX_PROG_HUB_SURV_WAVES", 250, true)        -- Clear 50 waves in Survival
        stats.set_packed_bool(42023, true)                         -- Participate in any Race
        stats.set_int("MPX_PROG_HUB_T_TRIAL_PAR_TIME", -1, true)   -- Beat the par time in 25 Time Trials
        stats.set_int("MPX_PROG_HUB_T_TRL_PAR_TIME_RC", -1, true)  -- Beat the par time in 25 Time Trials
        stats.set_int("MPX_PROG_HUB_T_TRL_PAR_TIME_HSW", -1, true) -- Beat the par time in 25 Time Trials
        stats.set_int("MPX_PROG_HUB_T_TRL_PAR_TIME_BKE", -1, true) -- Beat the par time in 25 Time Trials
        stats.set_packed_int(41246, 20)                            -- Win 20 Races in the Community Series
        stats.set_int("MPX_PROG_HUB_FST_LPS_RSTAR_RAC", 50, true)  -- Achieve the fastest lap 50 times on any Rockstar-created Race
        stats.set_int("MPX_DM_END", 1, true)                       -- Participate in any Deathmatch
        stats.set_int("MPX_PROG_HUB_DM_TDM_PLAYS", 1, true)        -- Participate in a Team Deathmatch
        stats.set_int("MPX_PROG_HUB_DM_COMMUNITY_PLAYS", 10, true) -- Play 10 Deathmatches in the Community Series
        stats.set_int("MPX_PROG_HUB_DTHM_KILL_5_WO_DIE", 25, true) -- Kill 5 players without dying 25 times during Deathmatches
        stats.set_packed_int(42092, 5)                             -- Earn 5 gold medals in the Flight School challenges
        stats.set_int("MPX_HUB_VEH_ENTH_OWNED_VEHS", 99, true)     -- Own 100 vehicles including 1 Special Vehicle
        stats.set_int("MPX_VEHICLES_CUSTOMISED", 50, true)         -- Customize 50 vehicles
        stats.set_packed_bool_range(36920, 36922, true)            -- Request and collect a Merryweather Ammo Drop / Win 5 Adversary Modes in a row / Win 5 Deathmatches in a row
        stats.set_int("MPX_PROG_HUB_WEAP_TYPE_ANSR", -1, true)     -- Win a Challenge for each weapon type against another player in the Ammu-Nation Shooting Range
        stats.set_packed_int(41242, 255)                           -- Own 1 of each weapon type
        stats.set_packed_bool_range(36941, 36942, true)            -- Own 50 weapons / Visit the Gun Van every day for 10 days
        stats.set_int("MPX_PROG_HUB_10_CHAL_ANSR", 10, true)       -- Win 10 Challenges against another player in the Ammu-Nation Shooting Range
        stats.set_packed_bool_range(15456, 15460, true)            -- Unlock all Mk II ammo types
        script.yield(1500)
        notify.success("WasabiWordsTM", "Clichés Subverted")
    else
        notify.info("Script - UnlockEverything", "Please join any freemode session and reload the script.")
    end
end)
