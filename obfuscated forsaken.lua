--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=loadstring(game:HttpGet("https://sirius.menu/rayfield"))();local v1=v0:CreateWindow({Name="spooks spooky hub",Icon=114187508925863,LoadingTitle="different loading title this time?",LoadingSubtitle="by ApparentlySpooks",Theme="Default",DisableRayfieldPrompts=false,DisableBuildWarnings=false,ConfigurationSaving={Enabled=true,FolderName=nil,FileName="Big Hub"},Discord={Enabled=true,Invite="Wcsw5yM7fq",RememberJoins=true},KeySystem=false,KeySettings={Title="Spooks Forsaken Script Key",Subtitle="Key System",Note="Get Key From Discord. discord.gg/Wcsw5yM7fq",FileName="Key",SaveKey=true,GrabKeyFromSite=false,Key={"ldsanfuewy439246yshx","rjawhisbfao3127nx"}}});local v2=v1:CreateTab("Main",81687314584178);local v3=v2:CreateSection("Visuals");local v4=v2:CreateButton({Name="Player ESP",Callback=function() local v6=game:GetService("Players");local function v7(v109) if v109.Character then if  not v109.Character:FindFirstChild("PlayerHighlight") then local v209=Instance.new("Highlight");v209.Name="PlayerHighlight";v209.Adornee=v109.Character;v209.FillColor=Color3.fromRGB(0,0,255);v209.OutlineColor=Color3.fromRGB(0,0,150);v209.Parent=v109.Character;end end end for v110,v111 in pairs(v6:GetPlayers()) do v111.CharacterAdded:Connect(function() v7(v111);end);if v111.Character then v7(v111);end end v6.PlayerAdded:Connect(function(v112) v112.CharacterAdded:Connect(function() v7(v112);end);end);end});local v4=v2:CreateButton({Name="Fullbright/No Fog",Callback=function() local v8=game:GetService("Lighting");v8.Brightness=10;v8.ClockTime=14;v8.Ambient=Color3.new(1,1,1);v8.OutdoorAmbient=Color3.new(1,1,1);v8.GlobalShadows=false;v8.FogEnd=100000;print("Full brightness applied!");end});local v4=v2:CreateButton({Name="Generator ESP",Callback=function() local v15=game:GetService("CollectionService");local v16=game:GetService("Workspace");local function v17(v113) if v113:FindFirstChild("Highlight") then return;end local v114=Instance.new("Highlight");v114.Name="Highlight";v114.FillColor=Color3.fromRGB(255,0,0);v114.FillTransparency=0.5;v114.OutlineColor=Color3.fromRGB(255,0,0);v114.Parent=v113;end local function v18(v120) if (v120:IsA("Model") and (v120.Name=="Generator")) then v15:AddTag(v120,"GeneratorTag");v17(v120);end end local function v19(v121) if (v121:IsA("Model") and v15:HasTag(v121,"GeneratorTag")) then local v197=v121:FindFirstChild("Highlight");if v197 then v197:Destroy();end v15:RemoveTag(v121,"GeneratorTag");end end for v122,v123 in pairs(v16:GetDescendants()) do v18(v123);end end});local v3=v2:CreateSection("Overpowered/Experimental");local v4=v2:CreateButton({Name="Auto Pickup Items (might be broken)",Callback=function() local v20=game.Players.LocalPlayer;local v21=v20.Character or v20.CharacterAdded:Wait() ;local v22=v21:WaitForChild("HumanoidRootPart");local v23={"Medkit","Bloxy Cola"};local v24=3.5;local function v25(v124) if v22 then v22.CFrame=v124.Handle.CFrame + Vector3.new(0,3,0) ;end end local function v26() while true do local v171={};for v199,v200 in ipairs(workspace:GetDescendants()) do if (v200:IsA("Tool") and table.find(v23,v200.Name)) then table.insert(v171,v200);end end for v201,v202 in ipairs(v171) do if v202:FindFirstChild("Handle") then v25(v202);task.wait(v24);end end task.wait(1);end end v26();end});local v4=v2:CreateButton({Name="Game-Sense API",Callback=function() local v27=game:GetService("Players");local v28=game:GetService("RunService");local v29=game:GetService("StarterGui");v29:SetCore("SendNotification",{Title="Game-Sense API Loaded!",Text="Made by Apparently Spooks!",Duration=5});local v30=Instance.new("ScreenGui");v30.Name="PlayerStatusGui";v30.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui");local v33=Instance.new("Frame");v33.Size=UDim2.new(0,200,1,0);v33.Position=UDim2.new(1, -210,0,0);v33.BackgroundTransparency=0.3;v33.BackgroundColor3=Color3.fromRGB(30,30,30);v33.Parent=v30;local v39=Instance.new("TextLabel");v39.Size=UDim2.new(1,0,0,30);v39.BackgroundTransparency=1;v39.Text="Players";v39.TextSize=20;v39.TextColor3=Color3.fromRGB(255,255,255);v39.Font=Enum.Font.SourceSansBold;v39.Parent=v33;local v48=Instance.new("UIListLayout");v48.Parent=v33;v48.SortOrder=Enum.SortOrder.LayoutOrder;v48.Padding=UDim.new(0,5);local function v53(v125) local v126=Instance.new("Frame");v126.Size=UDim2.new(1,0,0,40);v126.BackgroundTransparency=0.5;v126.BackgroundColor3=Color3.fromRGB(50,50,50);v126.Parent=v33;local v131=Instance.new("TextLabel");v131.Size=UDim2.new(1,0,0,20);v131.BackgroundTransparency=1;v131.Text=v125.Name;v131.TextSize=18;v131.TextColor3=Color3.fromRGB(255,255,255);v131.Font=Enum.Font.SourceSans;v131.Parent=v126;local v141=Instance.new("TextLabel");v141.Size=UDim2.new(1,0,0,20);v141.Position=UDim2.new(0,0,0,20);v141.BackgroundTransparency=1;v141.Text="Idle";v141.TextSize=16;v141.TextColor3=Color3.fromRGB(180,180,180);v141.Font=Enum.Font.SourceSans;v141.Parent=v126;local function v150() local v172=v125.Character;if v172 then local v207=v172:FindFirstChildOfClass("Humanoid");if v207 then local v219=v207.WalkSpeed;if (v219==0) then v141.Text="Idle";elseif ((v219>=1) and (v219<=14)) then v141.Text="Walking";elseif ((v219>=15) and (v219<=32)) then v141.Text="Running";end end end end local v151;v151=v28.RenderStepped:Connect(function() if ( not v125 or  not v125.Parent) then v151:Disconnect();v126:Destroy();else v150();end end);end local function v54(v152) v53(v152);end local function v55(v153) for v173,v174 in pairs(v33:GetChildren()) do if (v174:IsA("Frame") and v174:FindFirstChildOfClass("TextLabel")) then if (v174:FindFirstChildOfClass("TextLabel").Text==v153.Name) then v174:Destroy();end end end end v27.PlayerAdded:Connect(v54);v27.PlayerRemoving:Connect(v55);for v154,v155 in pairs(v27:GetPlayers()) do v54(v155);end end});local v4=v2:CreateButton({Name="Spooksify",Callback=function() local v56="rbxassetid://114187508925863";local function v57(v156) local v157={Enum.NormalId.Front,Enum.NormalId.Back,Enum.NormalId.Top,Enum.NormalId.Bottom,Enum.NormalId.Left,Enum.NormalId.Right};for v175,v176 in pairs(v157) do local v177=Instance.new("Decal");v177.Texture=v56;v177.Face=v176;v177.Parent=v156;end end for v158,v159 in pairs(workspace:GetDescendants()) do if (v159:IsA("BasePart") or v159:IsA("MeshPart")) then v57(v159);end end print("i knew you'd love me so you added me to everything :) -apparentlyspooks");end});local v3=v2:CreateSection("Functions");local v4=v2:CreateButton({Name="Auto Complete Puzzles (WIP)",Callback=function() warn("Auto Complete Puzzles isn't Finished.");end});local v4=v2:CreateButton({Name="Spoof Animations (broke)",Callback=function() end});local v4=v2:CreateButton({Name="Aimbot Attacks",Callback=function() local v58=game:GetService("Players");local v59=game:GetService("UserInputService");local v60=game:GetService("RunService");local v61=v58.LocalPlayer;local v62=workspace.CurrentCamera;local v63=Instance.new("ScreenGui");v63.Parent=v61:WaitForChild("PlayerGui");local v65=Instance.new("Frame");v65.Size=UDim2.new(0,200,0,150);v65.Position=UDim2.new(0.5, -100,0.3,0);v65.BackgroundColor3=Color3.new(0.2,0.2,0.2);v65.Active=true;v65.Draggable=true;v65.Parent=v63;local v72=Instance.new("TextLabel");v72.Size=UDim2.new(1,0,0,25);v72.BackgroundTransparency=1;v72.Text="spooks was here";v72.TextColor3=Color3.new(1,1,1);v72.Font=Enum.Font.SourceSansBold;v72.TextSize=18;v72.Parent=v65;local v81=Instance.new("TextButton");v81.Size=UDim2.new(1,0,0,30);v81.Position=UDim2.new(0,0,0,30);v81.Text="Select Player";v81.Parent=v65;local v86=Instance.new("Frame");v86.Size=UDim2.new(1,0,0,100);v86.Position=UDim2.new(0,0,0,60);v86.Visible=false;v86.Parent=v65;local function v91() for v181,v182 in pairs(v86:GetChildren()) do if v182:IsA("TextButton") then v182:Destroy();end end for v183,v184 in pairs(v58:GetPlayers()) do local v185=Instance.new("TextButton");v185.Size=UDim2.new(1,0,0,20);v185.Text=v184.Name;v185.Parent=v86;v185.MouseButton1Click:Connect(function() v81.Text=v184.Name;v86.Visible=false;LockCamera(v184);end);end end v81.MouseButton1Click:Connect(function() v86.Visible= not v86.Visible;v91();end);local v92=Instance.new("TextButton");v92.Size=UDim2.new(1,0,0,30);v92.Position=UDim2.new(0,0,1, -30);v92.Text="Stop";v92.Parent=v65;local function v97() v62.CameraSubject=v61.Character:FindFirstChild("Humanoid");v62.CameraType=Enum.CameraType.Custom;end local function v98(v164) if (v164 and v164.Character) then local v206=v164.Character:FindFirstChild("Humanoid");if v206 then v62.CameraSubject=v206;v62.CameraType=Enum.CameraType.Scriptable;end end end v92.MouseButton1Click:Connect(v97);v58.PlayerRemoving:Connect(v91);v58.PlayerAdded:Connect(v91);end});local v4=v2:CreateButton({Name="Item Aura",Callback=function() local v99=game:GetService("Players");local v100=v99.LocalPlayer;local v101=game:GetService("RunService");local function v102(v165) if (v165 and v165:IsA("ProximityPrompt")) then task.wait(0.1);v165:InputHoldBegin();task.wait(v165.HoldDuration);v165:InputHoldEnd();end end local function v103() for v190,v191 in ipairs(workspace:GetDescendants()) do if v191:IsA("ProximityPrompt") then v102(v191);end end workspace.DescendantAdded:Connect(function(v192) if v192:IsA("ProximityPrompt") then v102(v192);end end);end v103();end});local v2=v1:CreateTab("Misc",132406568650710);local v4=v2:CreateButton({Name="Chat Everywhere",Callback=function() local v104=game:GetService("Players");local v105=game:GetService("StarterGui");local function v106(v166) v105:SetCoreGuiEnabled("Chat",true);local v167=require(game:GetService("Chat").ClientChatModules.ChatSettings);v167.ChatEnabled=true;v105:SetCore("ChatMakeSystemMessage",{Text="Chat enabled! You can now chat anywhere!",Color=Color3.fromRGB(0,255,0),Font=Enum.Font.SourceSansBold,FontSize=Enum.FontSize.Size24});end game.Players.PlayerAdded:Connect(v106);v106(v104.LocalPlayer);end});local v4=v2:CreateButton({Name="Fling Killer",Callback=function() local function v107(v169) local v170=5000;for v193,v194 in ipairs(v169:GetDescendants()) do if v194:IsA("BasePart") then v194.AssemblyLinearVelocity=Vector3.new(math.random( -v170,v170),v170,math.random( -v170,v170));end end end local function v108() for v195,v196 in ipairs(workspace:GetDescendants()) do if (v196:IsA("Model") and (v196.Name=="Killer")) then v107(v196);end end end while true do v108();wait(5);end end});local v2=v1:CreateTab("Credits",94344873285569);local v5=v2:CreateLabel("Lead Developer/Owner - ApparentlySpooks",121272218535637,Color3.fromRGB(255,255,255),false);local v5=v2:CreateLabel("UI Lib - Rayfield",107593360984363,Color3.fromRGB(255,255,255),false);
