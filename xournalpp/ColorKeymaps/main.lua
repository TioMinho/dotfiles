-- MAIN FUNCTION CALLBACK (INITIALIZE ALL KEYBINDINGS) --
function initUi()
  -- Keybindings for tools
  app.registerUi({["menu"] = "Grid snapping on/off",          ["callback"] = "snapGrid",      ["accelerator"] = "g"});
  app.registerUi({["menu"] = "Rotation snapping on/off",      ["callback"] = "snapRotation",  ["accelerator"] = "r"});
  app.registerUi({["menu"] = "Fill on/off",                   ["callback"] = "toggleFill",    ["accelerator"] = "f"});
  app.registerUi({["menu"] = "Dashed linestyle on/off",       ["callback"] = "toggleDashed",  ["accelerator"] = "l"});
  app.registerUi({["menu"] = "Cycle through tools",           ["callback"] = "cycleTool",     ["accelerator"] = "t"});
  app.registerUi({["menu"] = "Select the pen tool",           ["callback"] = "sltPen",        ["accelerator"] = "p"});
  app.registerUi({["menu"] = "Select the eraser tool",        ["callback"] = "sltEraser",     ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Select the highlighter tool",   ["callback"] = "sltHilighter",  ["accelerator"] = "h"});

  -- Keybindings for colors
  app.changeToolColor({["color"] = 0xffffff, ["selection"] = true}) -- Initialize on white

  app.registerUi({["menu"] = "Keybinding: Black",         ["callback"] = "color_1",   ["accelerator"] = "1"});
  app.registerUi({["menu"] = "Keybinding: White",         ["callback"] = "color_2",   ["accelerator"] = "2"});
  app.registerUi({["menu"] = "Keybinding: Red",           ["callback"] = "color_3",   ["accelerator"] = "3"});
  app.registerUi({["menu"] = "Keybinding: Blue",          ["callback"] = "color_4",   ["accelerator"] = "4"});
  app.registerUi({["menu"] = "Keybinding: Green",         ["callback"] = "color_5",   ["accelerator"] = "5"});
  app.registerUi({["menu"] = "Keybinding: Yellow",        ["callback"] = "color_6",   ["accelerator"] = "6"});
  app.registerUi({["menu"] = "Keybinding: Gray",          ["callback"] = "color_7",   ["accelerator"] = "7"});
  app.registerUi({["menu"] = "Keybinding: Light blue",    ["callback"] = "color_8",   ["accelerator"] = "8"});
  app.registerUi({["menu"] = "Keybinding: Light green",   ["callback"] = "color_9",   ["accelerator"] = "9"});
  app.registerUi({["menu"] = "Keybinding: Magenta",       ["callback"] = "color_10",  ["accelerator"] = "0"});
  app.registerUi({["menu"] = "Keybinding: Orange",        ["callback"] = "color_11",  ["accelerator"] = "minus"});
  app.registerUi({["menu"] = "Keybinding: Dark Gray",     ["callback"] = "color_12",  ["accelerator"] = "equal"});
end

-- AUXILIARY VARIABLES --
local currentFill = false
local currentRotsnap = false
local currentGridsnap = false 

local currentThick = 2
local thicknessList = {"FINE", "MEDIUM", "THICK"}

local currentLinestyle = 1
local linestyleList = {"PLAIN", "DASH"}

local currentTool = 1
local toolList = {"PEN", "ERASER", "HIGHLIGHTER"}

local currentColor = 2
local colorList = {
  {"black",      0x000000},
  {"white",      0xffffff},
  {"red",        0xfc6255},
  {"lightblue",  0x58c4dd},
  {"lightgreen", 0x83c167},
  {"yellow",     0xffff00},
  {"gray",       0x888888},
  {"blue",       0x236b8e},
  {"green",      0x699c52},
  {"magenta",    0x9a72ac},
  {"orange",     0xff862f},
  {"darkgray",   0x2e3436}
}

-- FUNCTIONS --
function snapGrid()
  currentGridsnap = not currentGridsnap
  app.uiAction({["action"]="ACTION_GRID_SNAPPING"})
end

function snapRotation()
  currentRotsnap = not currentRotsnap
  app.uiAction({["action"]="ACTION_ROTATION_SNAPPING"})
end

function toggleFill()
  currentFill = not currentFill
  app.uiAction({["action"]="ACTION_TOOL_FILL", ["enabled"] = currentFill})
end

function toggleDashed()
  currentLinestyle = currentLinestyle % #linestyleList + 1
  app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_" .. linestyleList[currentLinestyle]})
end

function cycleTool()
  currentTool = currentTool % #toolList + 1
  app.uiAction({["action"] = "ACTION_TOOL_" .. toolList[currentTool]})
end

function sltPen()
  currentTool = 1
  app.uiAction({["action"] = "ACTION_TOOL_" .. toolList[currentTool]})
end

function sltEraser()
  currentTool = 2
  app.uiAction({["action"] = "ACTION_TOOL_" .. toolList[currentTool]})
end

function sltHilighter()
  currentTool = 3
  app.uiAction({["action"] = "ACTION_TOOL_" .. toolList[currentTool]})
end


function color_1()
  currentColor = 1
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_2()
  currentColor = 2
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_3()
  currentColor = 3
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_4()
  currentColor = 4
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_5()
  currentColor = 5
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_6()
  currentColor = 6
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_7()
  currentColor = 7
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_8()
  currentColor = 8
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_9()
  currentColor = 9
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_10()
  currentColor = 10
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_11()
  currentColor = 11
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end

function color_12()
  currentColor = 12
  app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})
end
