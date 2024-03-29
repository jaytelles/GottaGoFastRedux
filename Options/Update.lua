local ggf = GottaGoFast;
local constants = ggf.Constants;
local utility = ggf.Utility;
local version = constants.Version;
local aGUI = ggf.AceGUI;

function ggf.Changelog()
  if (InterfaceOptionsFrameCancel ~= nil and InterfaceOptionsFrameCancel:IsVisible()) then
    InterfaceOptionsFrameCancel:Click();
  end

  local f = aGUI:Create("Frame");
  f:SetTitle("GottaGoFast ChangeLog");
  f:SetStatusText("GottaGoFast v" .. version);
  f:SetCallback("OnClose", function(widget) aGUI:Release(widget) end);
  f:SetLayout("Flow");
  
  local text = ggf.GetChangeText();
  local t = aGUI:Create("MultiLineEditBox");
  t:SetRelativeWidth(1.0);
  t:SetFullHeight(true);
  t:SetDisabled(true);
  t:DisableButton(true);
  t:SetLabel("");
  t:SetText(text);
  f:AddChild(t);
end

local changes = {};
table.insert(changes, "# v2.5.6");
table.insert(changes, "- Addon: Add Changelog [Core Options Or /ggf changelog]");
table.insert(changes, "- Mythic+: AutoDialog Exception List (Reaves, Jeeves)");
table.insert(changes, "");
table.insert(changes, "# v2.5.5");
table.insert(changes, "- Mythic+: Auto Confirm Dialog Option");
table.insert(changes, "- Mythic+: Court Of Star Spy Helper (Prints Clues To Chat)");
table.insert(changes, "- Mythic+: Mob Count Library Updated");
table.insert(changes, "");
table.insert(changes, "# v2.5.4");
table.insert(changes, "- Addon: Bump To WoW 7.1");
table.insert(changes, "- Mythic+: Syncing Only Works With >= Versions");
table.insert(changes, "- Mythic+: Enemy Forces Calculated Properly On Zone In");
table.insert(changes, "- Mythic+: StartCM More Strict");
table.insert(changes, "- Timer: Tooltip Stability");
table.insert(changes, "");
table.insert(changes, "# v2.5.3");
table.insert(changes, "- Timewalking: Fixed Bug With TrueTimerNoMS Showing Miliseconds");
table.insert(changes, "- Timewalking: Disabled, Currently I Use UnitPosition To Create 'Starting Area', Breaks In 7.1 (Will Try To Fix)");
table.insert(changes, "- Mythic+: Add Option To Show Deaths & Time Lost By Deaths (Disabled By Default)");
table.insert(changes, "- Mythic+: Individual Color Option For Each Part Of M+ Information (Deaths, Affixes, General Info, Bonus Timers)");
table.insert(changes, "- Timer: Option To Disable Tooltip (Making Frame 100% Clickthrough, Requires Reload)");
table.insert(changes, "");
table.insert(changes, "# v2.5.2");
table.insert(changes, "- Individual Mob Value: In an enemies tooltip it shows you the value it has towards enemy forces");
table.insert(changes, "");
table.insert(changes, "# v2.5.1");
table.insert(changes, "- Fix Timewalking! (Please Report Any Bugs)");
table.insert(changes, "- Start Adding Mob Points Per Mob In Tooltip (Not Enabled Yet)");
table.insert(changes, "- Bug Fixes (Sco/Lexi Bug In +14)");
table.insert(changes, "");
table.insert(changes, "# v2.5");
table.insert(changes, "- Mob Points: Shows Point Value For Mob Forces");
table.insert(changes, "- Enemies Forces: More Precise %");
table.insert(changes, "- GottaGoFastHistory: Storing Run Information For Display / Use Later In Seperate Addon, Disable If You Don't Want This Feature");
table.insert(changes, "- Version Checking: Checks Version Of Addon Last Installed To Properly Update");
table.insert(changes, "- P.S: Please Fully Close WoW When Updating This Addon, Files Have Been Added And Moved Including A New Sub Addon");
table.insert(changes, "");
table.insert(changes, "# v2.4");
table.insert(changes, "- Add Option To Use TrueTimer Without MS");
table.insert(changes, "- Fix Objective Complete Spacing");
table.insert(changes, "- Sync Addon Information After Reload/Relog/ReZone (Requires One Person W/ Information And Addon)");
table.insert(changes, "- Update Option Organization");
table.insert(changes, "");
table.insert(changes, "# v2.3.1");
table.insert(changes, "- Add Debug Mode");
table.insert(changes, "- Stability Increases");
table.insert(changes, "- P.S: If Your Timer Doesn't Pop Up After Update. Please Fully Close WoW (Check For Game Is Running In BNet), Then Try Again!");
table.insert(changes, "");
table.insert(changes, "# v2.3");
table.insert(changes, "- Starting Storing History");
table.insert(changes, "- Track Deaths (For History, Was Calculated Before)");
table.insert(changes, "- CM Objective Completion Time Hideable");
table.insert(changes, "- Font Flag Changeable (Outline / Monochrome / None / Thick Outline)");
table.insert(changes, "- Show Depleted Keystones In Level Section");
table.insert(changes, "");
table.insert(changes, "# v2.2");
table.insert(changes, "- Add Demo Mode");
table.insert(changes, "- Increase Stability");
table.insert(changes, "- Increase Option Reactivity");
table.insert(changes, "- Enhanced Tooltips");
table.insert(changes, "- Bug Fixes Related To Depleted Keystones");
table.insert(changes, "- Objectives Open After Leaving Mythic+ By Default");
table.insert(changes, "");
table.insert(changes, "# v2.1");
table.insert(changes, "- Show +1/+2/+3 Keystone Timers");
table.insert(changes, "- Customize Color Of Keystone Timers");
table.insert(changes, "- Modify Defaults (Show Affixes, CM Level)");
table.insert(changes, "- Update Tooltip");
table.insert(changes, "- Remove CM Auto Start");
table.insert(changes, "");
table.insert(changes, "# v2.0");
table.insert(changes, "- Remove WoD CM Support");
table.insert(changes, "- Add Legion CM Support");
table.insert(changes, "- Add Level To Timer (Option)");
table.insert(changes, "- Add Level and Dmg/Health Increase To Objectives (Option)");
table.insert(changes, "- Add Affixes To Objectives (Option)");
table.insert(changes, "- Account For Death Penalty (-5 On Death)");
table.insert(changes, "- Support Enemy %");
table.insert(changes, "- Proper TrueTimer");
table.insert(changes, "- Add Tooltip With CM Info");
table.insert(changes, "");
table.insert(changes, "# v1.11");
table.insert(changes, "- More Secure Loading (Prevents TW from CM Load Routine And Vice Versa, Also Protects From Timer Not Popping Up)");
table.insert(changes, "");
table.insert(changes, "# v1.1");
table.insert(changes, "- Remove Debug Text");
table.insert(changes, "- Add Timewalking Timer");
table.insert(changes, "- Improve CM / Timewalking Detection");
table.insert(changes, "");
table.insert(changes, "# v1.0");
table.insert(changes, "- First Release");

function ggf.GetChangeText()
  local text = "";
  for i, v in pairs(changes) do
    text = text .. v .. "\n";
  end
  return text;
end
