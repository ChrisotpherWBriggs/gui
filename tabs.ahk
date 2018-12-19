Gui Add, Tab, vOuterTab w400 h300 gSelectOuterTab, Tab 1|Tab 2
Gui Add, Tab, vInnerTab w370 h260 xp+10 yp+30 hwndInnerTab, Tab 1|Tab 2
WinSet Top,, ahk_id %InnerTab%
Gui Show
return
SelectOuterTab:
GuiControlGet OuterTab
GuiControl % (OuterTab = "Tab 1") ? "Show" : "Hide", InnerTab
GuiControl MoveDraw, OuterTab
return
GuiClose:
GuiEscape:
ExitApp