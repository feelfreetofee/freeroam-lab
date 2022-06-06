-- Begin to copy&paste CFX-Default code

-- All spawnpoints from CFX-Default gamemodes
local rcoords = {
	{ x = 1975.86, 		y = 3821.03, 	z = 33.4501 },
	{ x = 1788.25, 		y = 3890.34, 	z = 34.3849 },
	{ x = -802.311, 	y = 175.056, 	z = 72.8446 },
	{ x = -9.96562, 	y = -1438.54, 	z = 31.1015 },
	{ x = 0.916756, 	y = 528.485, 	z = 174.628 },
	{ x = -181.615, 	y = 852.8, 		z = 232.701 },
	{ x = 657.723, 		y = 457.342, 	z = 144.641 },
	{ x = 134.387, 		y = 1150.31, 	z = 231.594 },
	{ x = 726.14, 		y = 1196.91, 	z = 326.262 },
	{ x = 740.792, 		y = 1283.62, 	z = 360.297 },
	{ x = -437.009, 	y = 1059.59, 	z = 327.331 },
	{ x = -428.771, 	y = 1596.8, 	z = 356.338 },
	{ x = -1348.78, 	y = 723.87, 	z = 186.45 	},
	{ x = -1543.24, 	y = 830.069, 	z = 182.132 },
	{ x = -2150.48, 	y = 222.019, 	z = 184.602 },
	{ x = -3032.13, 	y = 22.2157, 	z = 10.1184 },
	{ x = 3063.97, 		y = 5608.88, 	z = 209.245 },
	{ x = -2614.35, 	y = 1872.49, 	z = 167.32 	},
	{ x = -1873.94, 	y = 2088.73, 	z = 140.994 },
	{ x = -597.177, 	y = 2092.16, 	z = 131.413 },
	{ x = 967.126, 		y = 2226.99, 	z = 54.0588 },
	{ x = -338.043, 	y = 2829, 		z = 56.0871 },
	{ x = 1082.25, 		y = -696.921, 	z = 58.0099 },
	{ x = 1658.31, 		y = -13.9234, 	z = 169.992 },
	{ x = 2522.98, 		y = -384.436, 	z = 92.9928 },
	{ x = 2826.27, 		y = -656.489, 	z = 1.87841 },
	{ x = 2851.12, 		y = 1467.5, 	z = 24.5554 },
	{ x = 2336.33, 		y = 2535.39, 	z = 46.5177 },
	{ x = 2410.46, 		y = 3077.88, 	z = 48.1529 },
	{ x = 2451.15, 		y = 3768.37, 	z = 41.3477 },
	{ x = 3337.78, 		y = 5174.8, 	z = 18.2108 },
	{ x = -1119.33, 	y = 4978.52, 	z = 186.26 	},
	{ x = 2877.3, 		y = 5911.57, 	z = 369.618 },
	{ x = 2942.1, 		y = 5306.73, 	z = 101.52 	},
	{ x = 2211.29, 		y = 5577.94, 	z = 53.872 	},
	{ x = 1602.39, 		y = 6623.02, 	z = 15.8417 },
	{ x = 66.0113, 		y = 7203.58, 	z = 3.16 	},
	{ x = -219.201, 	y = 6562.82, 	z = 10.9706 },
	{ x = -45.1562, 	y = 6301.64, 	z = 31.6114 },
	{ x = -1004.77, 	y = 4854.32, 	z = 274.606 },
	{ x = -1580.01, 	y = 5173.3, 	z = 19.5813 },
	{ x = -1467.95, 	y = 5416.2, 	z = 23.5959 },
	{ x = -2359.31, 	y = 3243.83, 	z = 92.9037 },
	{ x = -2612.96, 	y = 3555.03, 	z = 4.85649 },
	{ x = -2083.27, 	y = 2616.94, 	z = 3.08396 },
	{ x = -524.471, 	y = 4195, 		z = 193.731 },
	{ x = -840.713, 	y = 4183.18, 	z = 215.29 	},
	{ x = -1576.24, 	y = 2103.87, 	z = 67.576 	},
	{ x = -1634.37, 	y = 209.816, 	z = 60.6413 },
	{ x = -1495.07, 	y = 142.697, 	z = 55.6527 },
	{ x = -1715.41, 	y = -197.722, 	z = 57.698 	},
	{ x = -1181.07, 	y = -505.544, 	z = 35.5661 },
	{ x = -1712.37, 	y = -1082.91, 	z = 13.0801 },
	{ x = -1352.43, 	y = -1542.75, 	z = 4.42268 },
	{ x = -1756.89, 	y = 427.531, 	z = 127.685 },
	{ x = 3060.2, 		y = 2113.2, 	z = 1.6613 	},
	{ x = 501.646, 		y = 5604.53, 	z = 797.91 	},
	{ x = 714.109, 		y = 4151.15, 	z = 35.7792 },
	{ x = -103.651, 	y = -967.93, 	z = 296.52 	},
	{ x = -265.333, 	y = -2419.35, 	z = 122.366 },
	{ x = 1788.25, 		y = 3890.34, 	z = 34.3849 }
}

-- function as existing in original R* scripts
local function freezePlayer(id, freeze)
    local player = id
    SetPlayerControl(player, not freeze, false)

    local ped = GetPlayerPed(player)

    if not freeze then
        if not IsEntityVisible(ped) then
            SetEntityVisible(ped, true)
        end

        if not IsPedInAnyVehicle(ped) then
            SetEntityCollision(ped, true)
        end

        FreezeEntityPosition(ped, false)
        --SetCharNeverTargetted(ped, false)
        SetPlayerInvincible(player, false)
    else
        if IsEntityVisible(ped) then
            SetEntityVisible(ped, false)
        end

        SetEntityCollision(ped, false)
        FreezeEntityPosition(ped, true)
        --SetCharNeverTargetted(ped, true)
        SetPlayerInvincible(player, true)
        --RemovePtfxFromPed(ped)

        if not IsPedFatallyInjured(ped) then
            ClearPedTasksImmediately(ped)
        end
    end
end

-- to prevent trying to spawn multiple times
local spawnLock = false

-- spawns the current player at a certain spawn point index (or a random one, for that matter)
function spawnPlayer(spawnIdx, cb)
    if spawnLock then
        return
    end

    spawnLock = true

    Citizen.CreateThread(function()
        
        -- get the spawn from the array
        local spawn

        spawn = spawnIdx

        -- prevent errors when passing spawn table
        spawn.x = spawn.x + 0.00
        spawn.y = spawn.y + 0.00
        spawn.z = spawn.z + 0.00

        spawn.heading = spawn.heading and (spawn.heading + 0.00) or 0
			
        if not spawn.skipFade then
            DoScreenFadeOut(500)

            while not IsScreenFadedOut() do
                Citizen.Wait(0)
            end
        end

        -- validate the index
        if not spawn then
            Citizen.Trace("tried to spawn at an invalid spawn index\n")

            spawnLock = false

            return
        end

        -- freeze the local player
        freezePlayer(PlayerId(), true)

        -- if the spawn has a model set
        if spawn.model then
            RequestModel(spawn.model)

            -- load the model for this spawn
            while not HasModelLoaded(spawn.model) do
                RequestModel(spawn.model)

                Wait(0)
            end

            -- change the player model
            SetPlayerModel(PlayerId(), spawn.model)

            -- release the player model
            SetModelAsNoLongerNeeded(spawn.model)
            
            -- RDR3 player model bits
            if N_0x283978a15512b2fe then
				N_0x283978a15512b2fe(PlayerPedId(), true)
            end
        end

        -- preload collisions for the spawnpoint
        RequestCollisionAtCoord(spawn.x, spawn.y, spawn.z)

        -- spawn the player
        local ped = PlayerPedId()

        -- V requires setting coords as well
        SetEntityCoordsNoOffset(ped, spawn.x, spawn.y, spawn.z, false, false, false, true)

        NetworkResurrectLocalPlayer(spawn.x, spawn.y, spawn.z, spawn.heading, true, true, false)

        -- gamelogic-style cleanup stuff
        ClearPedTasksImmediately(ped)
        --SetEntityHealth(ped, 300) -- TODO: allow configuration of this?
        RemoveAllPedWeapons(ped) -- TODO: make configurable (V behavior?)
        ClearPlayerWantedLevel(PlayerId())

        -- why is this even a flag?
        --SetCharWillFlyThroughWindscreen(ped, false)

        -- set primary camera heading
        --SetGameCamHeading(spawn.heading)
        --CamRestoreJumpcut(GetGameCam())

        -- load the scene; streaming expects us to do it
        --ForceLoadingScreen(true)
        --loadScene(spawn.x, spawn.y, spawn.z)
        --ForceLoadingScreen(false)

        local time = GetGameTimer()

        while (not HasCollisionLoadedAroundEntity(ped) and (GetGameTimer() - time) < 5000) do
            Citizen.Wait(0)
        end

        ShutdownLoadingScreen()

        if IsScreenFadedOut() then
            DoScreenFadeIn(500)

            while not IsScreenFadedIn() do
                Citizen.Wait(0)
            end
        end

        -- and unfreeze the player
        freezePlayer(PlayerId(), false)

        TriggerEvent('playerSpawned', spawn)

        if cb then
            cb(spawn)
        end

        spawnLock = false
    end)
end

exports('spawnPlayer', spawnPlayer)

-- end of CFX Default spawnmanager

RegisterCommand("respawn", function()
		local rcoord = rcoords[math.random(1, #rcoords)]
		
		spawnPlayer({
			x = rcoord.x,
			y = rcoord.y,
			z = rcoord.z,
			heading = 0,
			model = GetHashKey("mp_m_freemode_01"),
			skipFade = false
		})
end, false)

RegisterCommand("revive", function()	
		local rcoord = GetEntityCoords(PlayerPedId())
		
		spawnPlayer({
			x = rcoord.x,
			y = rcoord.y,
			z = rcoord.z,
			heading = GetEntityPhysicsHeading(PlayerPedId()) or 0,
			model = GetHashKey("mp_m_freemode_01"),
			skipFade = true
		})
end, false)

function openSkinMenu()
	local config = {
		ped = false,
		headBlend = true,
		faceFeatures = true,
		headOverlays = true,
		components = true,
		props = true,
	}
  
    exports['fivem-appearance']:startPlayerCustomization(function(appearance)
		if (appearance) then
			SetResourceKvp('appe-fivem', json.encode(appearance))
		end
    end, config)
end

-- Enable PVP
AddEventHandler("playerSpawned", function()
    NetworkSetFriendlyFireOption(true)
    SetCanAttackFriendly(PlayerPedId(), true, true)
		
	appearance = GetResourceKvpString('appe-fivem')
	
	if appearance ~= nil then
        exports['fivem-appearance']:setPlayerAppearance(json.decode(appearance))
    else
		openSkinMenu()
	end
end)

RegisterCommand("skin", function()
	openSkinMenu()
end, false)

RegisterCommand("fixchar", function()
	appearance = GetResourceKvpString('appe-fivem')
	
    exports['fivem-appearance']:setPlayerAppearance(json.decode(appearance))
end, false)

-- Server Name
function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO','~b~Almondiga')
end)

-- Help Command
RegisterCommand("help", function()
	print('fixchar - Reloads player skin')
	print('skin - Open player customization menu')
	print('revive - Respawn where you dead')
	print('respawn - Respawn in a random SpawnPoint')
end, false)

AddEventHandler("JoinTransition:Loading", function()
	ExecuteCommand('respawn')
end)
