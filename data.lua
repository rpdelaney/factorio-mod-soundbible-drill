-- Change icon
data.raw["repair-tool"]["repair-pack"]["icon"] = "__Drill_SoundBible__/repair-pack.png"
data.raw["repair-tool"]["repair-pack"]["icon_size"] = 32

-- Change repair sounds
data.raw["utility-sounds"]["default"]["default_manual_repair"]["variations"][1]["filename"] = "__Drill_SoundBible__/manual-repair-simple.ogg"
data.raw["utility-sounds"]["default"]["default_manual_repair"]["variations"][2] = nil
for k, l in pairs(data.raw) do
    for m, n in pairs(l) do
        if n.repair_sound ~= nil then
            if n.repair_sound.filename ~= nil then
                if n.repair_sound.filename == "__base__/sound/manual-repair-simple.ogg" then 
                    n.repair_sound.filename = "__Drill_SoundBible__/manual-repair-simple.ogg" 
                end
            end
        end
    end
end

-- Don't do wood
table.insert(data.raw["container"]["wooden-chest"]["flags"], "not-repairable")
table.insert(data.raw["electric-pole"]["small-electric-pole"]["flags"], "not-repairable")
