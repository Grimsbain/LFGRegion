local strsplit = strsplit

local Brazil = {
    ["Azralon"] = true,
    ["Gallywix"] = true,
    ["Goldrinn"] = true,
    ["Nemesis"] = true,
    ["Tol Barad"] = true,
}

local Latin = {
    ["Ragnaros"] = true,
    ["Drakkari"] = true,
    ["Quel'Thalas"] = true,
}

local Oceanic = {
    ["Aman'Thul"] = true,
    ["Barthilas"] = true,
    ["Caelestrasz"] = true,
    ["Dath'Remar"] = true,
    ["Dreadmaul"] = true,
    ["Frostmourne"] = true,
    ["Gundrak"] = true,
    ["Jubei'Thos"] = true,
    ["Khaz'goroth"] = true,
    ["Nagrand"] = true,
    ["Saurfang"] = true,
    ["Thaurissan"] = true,
}

local function SetSearchEntryTooltip(tooltip, resultID, autoAcceptOption)
    local _, _, _, _, _, _, _, _, _, _, _, _, leaderName = C_LFGList.GetSearchResultInfo(resultID)
    if leaderName then

        local _, server = strsplit("-", leaderName, 2)

        if Brazil[server] then
            tooltip:AddLine(" ")
            tooltip:AddLine("|cffffd200Region:|r |cffffffffBrazil|r")
            tooltip:Show()
        elseif Latin[server] then
            tooltip:AddLine(" ")
            tooltip:AddLine("|cffffd200Region:|r |cffffffffLatin America|r")
            tooltip:Show()
        elseif Oceanic[server] then
            tooltip:AddLine(" ")
            tooltip:AddLine("|cffffd200Region:|r |cffffffffOceanic|r")
            tooltip:Show()
        end
    end
end
hooksecurefunc("LFGListUtil_SetSearchEntryTooltip", SetSearchEntryTooltip)