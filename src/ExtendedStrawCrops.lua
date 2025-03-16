ExtendedStrawCrops = {
    CATEGORIES = "GRAINHEADER MAIZEHEADER"
}

function ExtendedStrawCrops:loadMap(filename)
    local fruitTypes = g_fruitTypeManager:getFruitTypesByCategoryNames(ExtendedStrawCrops.CATEGORIES)

    for _, fruitType in pairs(fruitTypes) do
        if fruitType.hasWindrow == nil and fruitType.seedRequiredFieldType ~= FieldType.RICE then
            g_fruitTypeManager.fruitTypes[fruitType.index].hasWindrow = true
            g_fruitTypeManager.fruitTypes[fruitType.index].windrowName = "STRAW"
            g_fruitTypeManager.fruitTypes[fruitType.index].windrowLiterPerSqm = 3.68
            g_fruitTypeManager.fillTypeIndexToFruitTypeIndex[g_fillTypeManager:getFillTypeIndexByName("STRAW")] = fruitType.index
            g_fruitTypeManager.fruitTypeIndexToWindrowFillTypeIndex[fruitType.index] = g_fillTypeManager:getFillTypeIndexByName("STRAW")
        end
    end
end

function ExtendedStrawCrops:mouseEvent(posX, posY, isDown, isUp, button)
end

function ExtendedStrawCrops:keyEvent(unicode, sym, modifier, isDown)
end

function ExtendedStrawCrops:update(dt)
end

function ExtendedStrawCrops:draw()
end

addModEventListener(ExtendedStrawCrops)
