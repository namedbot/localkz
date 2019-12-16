//-----------------------------------------------------------------------
//------------ Copyright (C) 2019 Sam - STEAM_0:1:26669608 --------------
//                     github.com/samisalreadytaken
//- v191206 -------------------------------------------------------------
::VS<-{Entity={},Events={},Storage={HudHint={},Timer={},Ref={}}}VS.slots_entity<-["DispatchOnPostSpawn","self","__vname","PrecacheCallChain","OnPostSpawnCallChain","__vrefs","DispatchPrecache","activator","caller","OnPostSpawn","PostSpawn","Precache","PreSpawnInstance","__EntityMakerResult","__FinishSpawn","__ExecutePreSpawn"];VS.slots_root<-["CHostage","split","Vector","print","_floatsize_","ScriptIsLocalPlayerUsingController","GetDeveloperLevel","ScriptGetBestTrainingCourseTime","exp","CSceneEntity","ScriptCoopMissionRespawnDeadPlayers","DispatchParticleEffect","CTriggerCamera","DoEntFire","seterrorhandler","RandomFloat","CBasePlayer","VSquirrel_OnReleaseScope","ScriptCoopMissionSetNextRespawnIn","assert","atan2","ScriptCoopMissionSpawnNextWave","DoUniqueString","_charsize_","asin","atan","CBaseAnimating","cos","ScriptPrintMessageCenterTeam","EntFireByHandle","PI","Entities","SendToConsole","TraceLine","strip","ScriptCoopMissionGetMissionNumber","newthread","lstrip","ScriptCoopSetBotQuotaAndRefreshSpawns","ScriptPrintMessageChatTeam","IncludeScript","format","rstrip","acos","ScriptGetPlayerCompletedTraining","Documentation","__DumpScope","CEntities","abs","PrintHelp","ScriptPrintMessageCenterAllWithParams","CBaseEntity","FrameTime","Time","Assert","ScriptCoopGiveC4sToCTs","DebugDrawBox","DebugDrawLine","ScriptHighlightAmmoCounter","Document","_intsize_","collectgarbage","setroottable","ScriptSetMiniScoreHidden","ScriptCoopCollectBonusCoin","CBaseFlex","ScriptPrintMessageCenterAll","ScriptSetRadarHidden","enabledebuginfo","setdebughook","ceil","log10","CGameSurvivalLogic","RecordAchievementEvent","RAND_MAX","rand","srand","GetFunctionSignature","suspend","ScriptIsWarmupPeriod","VSquirrel_OnCreateScope","ScriptShowFinishMsgBox","developer","CEnvEntityMaker","__ReplaceClosures","compilestring","RetrieveNativeSignature","ScriptShowExitDoorMsg","SendToConsoleServer","GetMapName","EntFire","Msg","UniqueString","sqrt","ScriptGetRoundsPlayed","floor","CreateSceneEntity","getstackinfos","ScriptGetGameType","log","fabs","dummy","DoIncludeScript","LateBinder","getroottable","tan","ShowMessage","array","LoopSinglePlayerMaps","_version_","ScriptGetValveTrainingCourseTime","setconsttable","CreateProp","printl","CFuncTrackTrain","sin","getconsttable","pow","CGameCoopMissionManager","ScriptSetPlayerCompletedTraining","CBaseMultiplayerPlayer","RegisterFunctionDocumentation","CPlayerVoiceListener","ScriptSetBestTrainingCourseTime","ScriptTrainingGivePlayerAmmo","ScriptCoopResetRoundStartTime","CScriptKeyValues","type","CCallChainer","CSimpleCallChainer","ScriptPrintMessageChatAll","ScriptGetGameMode","regexp","RandomInt","ScriptCoopMissionSpawnFirstEnemies","ScriptCoopExtendRoundDurationTime","ScriptCoopToggleEntityOutlineHighlights"];VS.slots_VS<-["_xa9b2df87ffe","_xa9b2dfB7ffe","VS","ClearChat","Chat","ChatTeam","txt","toDeg","toRad","Alert","EntFireHandle","PrecacheModel","PrecacheScriptSound","delay","OnGameEvent_player_info","OnGameEvent_player_connect","VecToString","TextureToggle","TextureToggleIncrement","MaterialModify","ENT_SCRIPT","HPlayer","SPlayer","_UniqueString","Ent","Entc","max","min"];delegate VS:VS.Entity;VS.slots_valve<-[];foreach(k in VS.slots_entity)VS.slots_valve.append(k);VS.slots_valve.extend(VS.slots_root);VS.slots_default<-[];foreach(k in VS.slots_entity)VS.slots_default.append(k);VS.slots_default.extend(VS.slots_root);VS.slots_default.extend(VS.slots_VS);VS.bF<-[];VS._f958a292c1de<-"roottable";if(!("_xa9b2dfB7ffe"in getroottable()))::_xa9b2dfB7ffe<-[];;if(!("_xa9b2df87ffe"in getroottable()))::_xa9b2df87ffe<-null;;::Ent<-function(s,i=null){return Entities.FindByName(i,s)}::Entc<-function(s,i=null){return Entities.FindByClassname(i,s)}local _v0=function(){if(::ENT_SCRIPT<-Entc("logic_script"))return;else if(::ENT_SCRIPT<-Ent("vs_script"))return ENT_SCRIPT.ValidateScriptScope();else if(::ENT_SCRIPT<-Entc("worldspawn"))return ENT_SCRIPT.ValidateScriptScope();else{(::ENT_SCRIPT<-Entities.CreateByClassname("info_target")).ValidateScriptScope();ENT_SCRIPT.__KeyValueFromString("targetname","vs_script")}}();local _v1=function(){if(ENT_SCRIPT.GetClassname()=="worldspawn")VS.slots_default.append(VS.GetTableName(ENT_SCRIPT.GetScriptScope()));collectgarbage()}if(!("OnGameEvent_player_info"in getroottable()))::OnGameEvent_player_info<-function(d){};;if(!("OnGameEvent_player_connect"in getroottable()))::OnGameEvent_player_connect<-function(d){};;::EntFireHandle<-function(t,a,v="",d=0.0,c=null,r=null){EntFireByHandle(t,a.tostring(),v.tostring(),d,c,r)}::PrecacheModel<-function(s){ENT_SCRIPT.PrecacheModel(s)}::PrecacheScriptSound<-function(s){ENT_SCRIPT.PrecacheScriptSound(s)}function VS::CreateProp(p,m,i=0){::CreateProp("prop_dynamic_override",p,m,i);return Entities.FindByClassnameNearest("prop_dynamic_override",p,1)}function VS::CreateTextureToggle(t){return Entity.Create("env_texturetoggle","texture_"+t,{target=t})}::TextureToggle<-function(t,i){DoEntFire("texture_"+t,"SetTextureIndex",""+i,0.0,null,null)}::TextureToggleIncrement<-function(t){DoEntFire("texture_"+t,"IncrementTextureIndex","",0.0,null,null)}::MaterialModify<-function(t,iN,pR,_d=0.0){DoEntFire("mmc_"+t,""+iN,""+pR,_d,null,null)}function VS::SetParent(c,p){EntFireByHandle(c,"setparent","!activator",0.0,p,null)}function VS::CreateGameText(tn="",kv=null){tn=Entity.GUN(tn,"game_text");return Entity.Create("game_text",tn,kv)}function VS::CreateHudHint(tn="",msg=""){tn=Entity.GUN(tn,"hudhint");local e=Entity.Create("env_hudhint",tn,{message=msg});Storage.HudHint[tn]<-e;return e}function VS::ShowHudHint(hEnt,hTarget,msg=null,delay=0.0){if(msg)Entity.SetKeyString(hEnt,"message",msg);EntFireByHandle(hEnt,"ShowHudHint","",delay,hTarget,null)}function VS::HideHudHint(hEnt,hTarget,delay=0.0){EntFireByHandle(hEnt,"HideHudHint","",delay,hTarget,null)}function VS::KillAllHudHints(){foreach(k,v in Storage.HudHint)if(k)EntFireHandle(v,"kill");EntFire("vs_hudhint_*","kill");Storage.HudHint.clear()}function VS::CreateMeasure(g,n=null){local r="vs_ref_"+UniqueString(),t=Entity.Create("logic_script",r);Storage.Ref[r]<-t;n=Entity.GUN(n,"measure");local e=Entity.Create("logic_measure_movement",n,{measuretype=1,measurereference="",targetreference=r,target=r,measureretarget=""});EntFireHandle(e,"setmeasurereference",r);EntFireHandle(e,"setmeasuretarget",g);EntFireHandle(e,"enable");return[t,e]}function VS::SetMeasure(h,s){EntFireHandle(h,"setmeasuretarget",s)}function VS::ClearRef(){foreach(k,v in Storage.Ref)if(k)EntFireHandle(v,"kill");EntFire("vs_ref_*","kill");Storage.Ref.clear()}function VS::CreateTimer(tn="",rF=1,lW=1,uP=5,oS=0,dD=0){tn=Entity.GUN(tn,"timer");local e=Entity.Create("logic_timer",tn,{UseRandomTime=0,LowerRandomBound=lW,UpperRandomBound=uP});if(typeof rF=="integer"||typeof rF=="float")Entity.SetKeyFloat(e,"RefireTime",rF);else if(!rF||rF==""){Entity.SetKeyInt(e,"UseRandomTime",1);Entity.SetKeyInt(e,"spawnflags",oS)}else{throw"Invalid input type"};;if(!dD)EntFireByHandle(e,"Enable","",0.0,null,null);else EntFireByHandle(e,"Disable","",0.0,null,null);Storage.Timer[tn]<-e;return e}function VS::Timer(b,f,s,t=null,b=false){local h=VS.CreateTimer(null,f,0,0,0,b);if(!t)t=GetCaller();VS.OnTimer(h,s,t,b);return h}function VS::OnTimer(h,sf,ts=null,bE=false){if(!ts)ts=GetCaller();return Entity.AddOutput(h,"OnTimer",sf,ts,bE)}function VS::OnTimerHigh(h,sf,ts=null,bE=false){if(!ts)ts=GetCaller();return Entity.AddOutput(h,"OnTimerHigh",sf,ts,bE)}function VS::OnTimerLow(h,sf,ts=null,bE=false){if(!ts)ts=GetCaller();return Entity.AddOutput(h,"OnTimerLow",sf,ts,bE)}function VS::KillAllTimers(){foreach(k,v in Storage.Timer)if(k)EntFireHandle(v,"kill");EntFire("vs_timer_*","kill");Storage.Timer.clear()}function VS::Entity::AddOutput(h,sO,sf,ts=null,bE=false){if(!h.ValidateScriptScope())throw"Invalid entity.";local kE,o=h.GetScriptScope();if(!ts)ts=GetCaller();if("self"in ts&&ts.self.IsValid())kE=getroottable()[ts.__vname];else{local d=GetTableDir(ts),l=d.len();if(l==1)kE=getroottable();else if(l==2)kE=getroottable()[d[1]];else if(l==3)kE=getroottable()[d[1]][d[2]];else if(l==4)kE=getroottable()[d[1]][d[2]][d[3]];else if(l==5)kE=getroottable()[d[1]][d[2]][d[3]][d[4]];else if(l==6)kE=getroottable()[d[1]][d[2]][d[3]][d[4]][d[5]];else if(l==7)kE=getroottable()[d[1]][d[2]][d[3]][d[4]][d[5]][d[6]];else if(l==8)kE=getroottable()[d[1]][d[2]][d[3]][d[4]][d[5]][d[6]][d[7]]};o[sO]<-bE?kE[sf]:kE[sf].bindenv(ts);h.ConnectOutput(sO,sO);return true}function VS::Entity::AddOutput2(h,sO,sE,tS=null,bI=false){if(!tS)tS=GetCaller();if(!("self"in tS))throw"Invalid function path";EntFireByHandle(h,"addoutput",sO+" "+(bI?h.GetName():tS.self.GetName())+":runscriptcode:"+sE,0.0,tS.self,h);return true}function VS::GetCallerFunc(){return compilestring("return(getstackinfos(3)[\"func\"])")()}function VS::GetCaller(){return compilestring("return(getstackinfos(3)[\"locals\"][\"this\"])")()}function VS::Entity::ConnectOutputs(h=0){printl("This function is currently disabled. For the instructions to load it back, see github.com/samisalreadytaken/vs_library");throw"NOT INCLUDED"}function VS::Entity::Create(cn,tn=null,kv=null){local e=Entities.CreateByClassname(cn);if(tn)SetName(e,tn);if(typeof kv=="table")foreach(k,v in kv)SetKey(e,k,v);return e}function VS::Entity::SetKey(e,K,V){switch(typeof V){case"bool":case"integer":return e.__KeyValueFromInt(K,V.tointeger());case"float":return e.__KeyValueFromFloat(K,V);case"string":return e.__KeyValueFromString(K,V);case"Vector":return e.__KeyValueFromVector(K,V);default:throw"Invalid input type: "+typeof(V)}}function VS::Entity::SetKeyInt(e,K,V){e.__KeyValueFromInt(K,V.tointeger())}function VS::Entity::SetKeyFloat(e,K,V){e.__KeyValueFromFloat(K,V.tofloat())}function VS::Entity::SetKeyString(e,K,V){e.__KeyValueFromString(K,V.tostring())}function VS::Entity::SetKeyVector(e,K,V){e.__KeyValueFromVector(K,V)}function VS::SetName(e,n){e.__KeyValueFromString("targetname",n)}function VS::ChangeName(o,n){Entities.FindByName(null,o).__KeyValueFromString("targetname",n)}function VS::DumpEnt(iN=null){if(!iN){local e;while(e=Entities.FindByClassname(e,"*")){local s=e.GetScriptScope();if(s)printl(e+" :: "+s.__vname)}}else if(typeof iN=="instance"||typeof iN=="string"){if(typeof iN=="string")iN=Entity.FindByString(iN);local s;try(s=iN.GetScriptScope())catch(e){return printl("Entity has no script scope! "+iN)}printl("--- Script dump for entity "+iN);DumpScope(s,0,1,0,1);printl("--- End script dump")}else if(iN){local e;while(e=Entities.FindByClassname(e,"*")){local s=e.GetScriptScope();if(s){printl("\n--- Script dump for entity "+e);DumpScope(s,0,1,0,1);printl("--- End script dump")}}}}function VS::GetPlayersAndBots(v=0){local e,ply=[],bot=[];while(e=Entities.FindByClassname(e,"cs_bot"))bot.append(e);e=null;while(e=Entities.FindByClassname(e,"player")){if(v&&e.GetScriptScope().networkid=="BOT")bot.append(e);else ply.append(e)}return[ply,bot]}function VS::DumpPlayers(_d=false,v=false){local a=GetPlayersAndBots(v),p=a[0],b=a[1];printl("\n===\n"+p.len()+" players found\n"+b.len()+" bots found");local c=function(_s,_a,d=_d){foreach(e in _a){local s=e.GetScriptScope();try(s=GetTableName(s))catch(e){s="null"}printl(_s+"- "+e+" :: "+s);if(d&&s!="null")DumpEnt(e)}}c("[BOT]    ",b);c("[PLAYER] ",p);print("===\n")}function VS::Entity::FindByString(r){local e;while(e=Entities.FindByClassname(e,"*"))if(e.tostring()==r)return e}function VS::Entity::FindByName(r){foreach(q,r in getroottable())if(typeof r=="table")if(q!="VS"&&q!="Documentation")foreach(k,v in r)if(k=="self")if(v.tostring().find(r,v.GetClassname().len()))return v}function VS::GetTableName(t){if(typeof t!="table")throw("Invalid input type '"+(typeof t)+"' ; expected: 'table'");local r=_fb3k551r91t7(t);if(r)return r;return _f958a292c1de}function VS::_fb3k551r91t7(t,l=getroottable()){foreach(v,u in l)if(typeof u=="table")if(v!="VS"&&v!="Documentation")if(u!=t){local r=_fb3k551r91t7(t,u);if(r)return r}else return v}function VS::GetTableDir(t){if(typeof t!="table")throw("Invalid input type '"+(typeof t)+"' ; expected: 'table'");bF.clear();local r=_f627f40d21a6(t);if(r)r.append(_f958a292c1de);else r=[_f958a292c1de];r.reverse();return r}function VS::_f627f40d21a6(t,l=getroottable()){foreach(v,u in l)if(typeof u=="table")if(v!="VS"&&v!="Documentation")if(u!=t){local r=_f627f40d21a6(t,u);if(r){bF.append(v);return r}}else{bF.append(v);return bF}}function VS::FindTableByName(r){if(typeof r!="string")throw("Invalid input type '"+(typeof r)+"' ; expected: 'string'");local r=_fb3k55Ir91t7(r);if(r)return r;return getroottable()}function VS::_fb3k55Ir91t7(t,l=getroottable()){foreach(v,u in l)if(typeof u=="table")if(v!="VS"&&v!="Documentation")if(v!=t){local r=_fb3k55Ir91t7(t,u);if(r)return r}else return u}function VS::GetTableVSquirrel(f){foreach(k,v in getroottable())if(typeof v=="table")if(k!="VS"&&k!="Documentation")if("__vname"in v)f(v)}function VS::Entity::GUN(tn,kw=""){if(typeof tn=="string")return tn;else return"vs_"+kw+"_"+UniqueString()}::_UniqueString<-function(i=""){local n="";foreach(c in::UniqueString(i))if(c!='_')n+=c.tochar();return n}function VS::UnitsToMeter(u){return u*0.0254}function VS::IsInteger(f){return floor(f)==f}function VS::FormatPrecision(f,n=2){return format("%."+n+"f",f)}function VS::FormatHex(i,n=1){return format("%#0"+n+"x",i)}function VS::FormatExp(i,n=1){return format("%."+n+"e",i)}function VS::FormatWidth(s,i,n=4){return format("%"+s+""+n+"s",i.tostring())}::VecToString<-function(v){return"Vector("+v.x+","+v.y+","+v.z+")"}::txt<-{invis=(0).tochar(),white=(1).tochar(),red=(2).tochar(),purple=(3).tochar(),green=(4).tochar(),lightgreen=(5).tochar(),limegreen=(6).tochar(),lightred=(7).tochar(),grey=(8).tochar(),yellow=(9).tochar(),lightblue=(10).tochar(),blue=(11).tochar(),darkblue=(12).tochar(),darkgrey=(13).tochar(),pink=(14).tochar(),orangered=(15).tochar(),orange=(16).tochar()}::max<-function(a,b){if(a>b)return a;return b}::min<-function(a,b){if(a<b)return a;return b}::toRad<-function(d){return(d*0.0174533)}::toDeg<-function(r){return(r*57.2958)}function VS::TraceDir(v1,vDir,f=6000,hEnt=null){local v2=v1+(vDir*f);return TraceLine(v1,v2,hEnt)}function VS::TraceLine(v1,v2,hEnt=null){return v1+(v2-v1)*::TraceLine(v1,v2,hEnt)}function VS::GetAngle(vFrom,vTo){local d=vFrom-vTo,pitch=toDeg(atan2(d.z,d.Length2D())),yaw=toDeg(atan2(d.y,d.x)+PI);return::Vector(pitch,yaw,0)}function VS::GetAngle2D(vFrom,vTo){local d=vTo-vFrom,yaw=toDeg(atan2(d.y,d.x));return yaw}function VS::Dist(v1,v2){return(v1-v2).Length()}function VS::GetLocalPlayer(){local e,i,c=0;while(i=Entc("player",i))c++;if(c>1)printl(" ** More than 1 player detected!");e=Entc("player");if(!e||!e.IsValid())return printl(" ** No player found!");if(!e.ValidateScriptScope())return printl(" ** Failed to validate player scope!");if(Entc("logic_eventlistener"))ValidateUserid(e);SetName(e,"player");::SPlayer<-e.GetScriptScope();::HPlayer<-e;return e}function VS::ClearRoot(){local r=getroottable(),d=ArrayToTable(slots_default);foreach(k,v in r)if(!(k in d))delete r[k]}function VS::__ResetRoot(){local r=getroottable(),d=ArrayToTable(slots_valve);foreach(k,v in r)if(!(k in d))delete r[k]}function VS::ReplaceArrayIndex(a,i,v){a.insert(i,v);a.remove(i+1)}function VS::DumpScope(t,pa=false,dp=true,g=true,k=0){local d=function(c){for(local i=0;i<c;i++)print("   ")}if(g)print(" ------------------------------\n");if(!t)return print("null\n ------------------------------\n");foreach(K,V in t){local z=false;if(!pa){foreach(k in VS.slots_default)if(K==k)z=true};else if(K=="VS"||K=="Documentation"||K=="txt")z=true;;if(!z){d(k);print(K);switch(typeof V){case"table":print("(TABLE):"+V.len());if(!dp)break;print("\n");d(k);print("{\n");DumpScope(V,pa,dp,false,k+1);d(k);print("}");break;case"array":print("(ARRAY):"+V.len());if(!dp)break;print("\n");d(k);print("[\n");DumpScope(V,pa,dp,false,k+1);d(k);print("]");break;case"string":print(" = \""+V+"\"");break;default:print(" = "+V)}print("\n")}};if(g)print(" ------------------------------\n")}function VS::ArrayToTable(a){local t={};foreach(i,v in a)t[v]<-i;return t}function VS::GetStackInfo(dp=false){print(" --- STACKINFO ----------------\n");local s,j=2;while(s=getstackinfos(j)){if(s.func=="pcall"&&s.src=="NATIVE")break;print(" -"+j+"-\n");local w,m=s.locals;if("this"in m&&typeof m["this"]=="table"){w=GetTableName(m["this"]);m[w]<-delete m["this"]};if(w==_f958a292c1de)DumpScope(s,1,0,0);else DumpScope(s,1,dp,0);if(w)print("scope = \""+w+"\"\n");j++}print(" ---\n");print(" --- STACKINFO ----------------\n")}function VS::GetInfo(f){DumpScope(f.getinfos())}function VS::GetTickrate(){return 1.0/FrameTime()}::delay<-function(f,t=0.0,e=ENT_SCRIPT,a=null,c=null){EntFireByHandle(e,"runscriptcode",""+f,t,a,c)}::Chat<-function(r){ScriptPrintMessageChatAll(" "+r)}::ChatTeam<-function(i,s){ScriptPrintMessageChatTeam(i," "+s)}::Alert<-function(r){ScriptPrintMessageCenterAll(""+r)}::ClearChat<-function(){for(local i=0;i<9;i++)Chat(" ")}VS.Events.proxy<-Ent("vs_xa9bA2dbff");if(!VS.Events.proxy&&Entc("logic_eventlistener"))VS.Events.proxy<-VS.Entity.Create("info_game_event_proxy","vs_xa9bA2dbff",{event_name="player_info"});;function VS::GetHandleByUserid(userid){local e;while(e=Entities.FindByClassname(e,"*"))if(e.GetClassname()=="player"){local s=e.GetScriptScope();if(s&&s.userid==userid)return e}}function VS::ValidateUserid(e){if(!e.ValidateScriptScope())return printl("Userid validation failed: Invalid player entity.");local o=e.GetScriptScope();if("userid"in o)return o;Events.SV<-o;EntFireHandle(Events.proxy,"generategameevent","",0.0,e);return o}function VS::ValidateUseridAll(){local e,pb=VS.GetPlayersAndBots(),p=pb[0],b=pb[1],i=0;while(e=Entities.FindByClassname(e,"*"))if(e.GetClassname()=="player"){i++;foreach(k in b)if(k==e)delay("VS.ValidateUserid(activator)",0.02*i,ENT_SCRIPT,e);foreach(k in p)if(k==e)delay("VS.ValidateUserid(activator)",0.02*i,ENT_SCRIPT,e)}}function VS::Events::Info(d){SV.networkid<-"";SV.name<-"";SV.userid<-d.userid;if(::_xa9b2dfB7ffe.len())foreach(i,t in::_xa9b2dfB7ffe)if(t.userid==d.userid){SV.networkid=t.networkid;SV.name=t.name;::_xa9b2dfB7ffe.remove(i);break}}function VS::Events::player_connect(d){if(::_xa9b2dfB7ffe.len()>512)for(local i=0;i<8;i++)::_xa9b2dfB7ffe.remove(0);::_xa9b2dfB7ffe.append(d);::OnGameEvent_player_connect(d)}function VS::Events::player_info(d){Info(d);::OnGameEvent_player_info(d)}VS.Log<-{encryption=false,condition=false,export=false,filePrefix="vs_log"}VS.Log.L<-[];VS.Log.filter<-"VFLTR";if(!("_xffcd55c01dd"in VS.Log))VS.Log._xffcd55c01dd<-null;;function VS::Log::Add(r){L.append("L "+r)}function VS::Log::Print(e){if(e)if(!_xa9b2df87ffe)return printl("\nPlease set an encryption key with: VS.Log.SetKey(string)");else foreach(s in L)print(filter+Encrypt(s));else foreach(s in L)print(s)}function VS::Log::Array(arr){foreach(k in arr)Add(k)}function VS::Log::Clear(){L.clear()}function VS::Log::Run(){delay("VS.Log._f627fA0d21a6()")}function VS::Log::_f627fA0d21a6(){if(!condition)return;if(export)Start();delay("VS.Log.Print(VS.Log.encryption)",0.001);delay("VS.Log.Stop()",0.002)}function VS::Log::Start(){local fname=filePrefix+"_"+_UniqueString();SendToConsole("developer 0;con_filter_enable 1;con_filter_text_out\""+filter+"\";con_filter_text\"\";con_logfile\""+fname+".log\"")}function VS::Log::Stop(){SendToConsole("con_logfile\"\";con_filter_enable 0");Clear()}function VS::Log::SetKey(k){_xa9b2df87ffe=k.tostring();_xffcd55c01dd=_xa9b2df87ffe.len()}function VS::Log::Encrypt(q){if(typeof q!="string")throw"Invalid input";local s="";for(local i=0;i<q.len();i++){local t=(q[i]^_xa9b2df87ffe[i%_xffcd55c01dd]).tostring(),l=t.len();if(l==2)t="0"+t;else if(l==1)t="00"+t;;s+=t+" "}return s}function VS::Log::Decrypt(q){if(typeof q!="string")throw"Invalid input";local d=function(m){local s="";for(local i=0;i<m.len();i++)s+=(m[i].tointeger()^_xa9b2df87ffe[i%_xffcd55c01dd]).tochar();return s}foreach(r in split(q,"l"))print(d(split(r," ")))}function VS::DrawEntityBBox(t,e,r=255,g=138,b=0,a=0){DebugDrawBox(e.GetOrigin(),e.GetBoundingMins(),e.GetBoundingMaxs(),r,g,b,a,t)}function VS::MakePermanent(h){Entity.SetKeyString(h,"classname","info_target")}_v1();
