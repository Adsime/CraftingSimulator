CratingSimulatorFrame = CreateFrame("Frame", "CraftingSimulator", UIParent)
CratingSimulatorFrame:SetShown(false)

local function initFrame()
    CratingSimulatorFrame:SetSize(600, 400)
    CratingSimulatorFrame:EnableMouse(true)
    CratingSimulatorFrame:SetFrameStrata("HIGH")
    CratingSimulatorFrame:SetMovable(true)
    CratingSimulatorFrame:SetScript("OnMouseDown", CratingSimulatorFrame.StartMoving)
    CratingSimulatorFrame:SetScript("OnMouseUp", CratingSimulatorFrame.StopMovingOrSizing)
    CratingSimulatorFrame:SetPoint("CENTER")
end

local function initFrameBackground()
    local texture = CratingSimulatorFrame:CreateTexture("background", "BACKGROUND")
    texture:SetColorTexture(255, 255, 255, 0.5)
    texture:SetAllPoints()
    CratingSimulatorFrame.texture = texture
end

initFrame()
initFrameBackground()

