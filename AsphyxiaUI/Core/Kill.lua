---------------------------------------------------------------------------------------------
-- AddOn Name: AsphyxiaUI 6.0.0
-- License: MIT
-- Author: Sinaris @ Das Syndikat, Vaecia @ Blackmoore
-- Description: AsphyxiaUI, Editied Tukui Layout
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

------------------------------
-- Not Needed
------------------------------
local KillPanels = {
	G.ActionBars.Pet.BackgroundLink,
	G.Panels.BottomPanelOverActionBars,
	G.Panels.BottomLeftVerticalLine,
	G.Panels.BottomRightVerticalLine,
	G.Panels.BottomLeftCube,
	G.Panels.BottomRightCube,
	G.Panels.BottomLeftLine,
	G.Panels.BottomRightLine,
	G.Panels.LeftDataTextToActionBarLine,
	G.Panels.RightDataTextToActionBarLine
}

for _, Panels in pairs( KillPanels ) do
	Panels:Kill()
end

G.ActionBars.Bar5:ClearAllPoints()
G.ActionBars.Bar5:SetParent( TukuiUIHider )

G.ActionBars.Bar6:ClearAllPoints()
G.ActionBars.Bar6:SetParent( TukuiUIHider )

G.ActionBars.Bar7:ClearAllPoints()
G.ActionBars.Bar7:SetParent( TukuiUIHider )

------------------------------
-- Minimap
------------------------------
if( TukuiMinimap ) then
	G.Panels.DataTextMinimapLeft:Kill()
	G.Panels.DataTextMinimapRight:Kill()
end

if( C["intmodules"]["locationpanel"] == true ) then
	if( TukuiMinimap ) then
		G.Maps.Minimap.Zone:Kill()
		G.Maps.Minimap.Coord:Kill()
	end
end