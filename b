--[[DTKD V18.3.618 | GUARD:DTP_6vbf5w5xvq_mw4mu9gu]]
local _GUARD_TAG="DTP_6vbf5w5xvq_mw4mu9gu"
local _FLOOR=function(x) if type(x)~="number" then return 0 end return x-x%1 end
local _LOG=function() end
local _ERR_BASE=(type(warn)=="function" and warn) or (type(print)=="function" and print) or function() end
local _AD_mute=false
local _ERR=function(...) if _AD_mute then return end return _ERR_BASE(...) end
local _DEV=false
local function _cc(b) b=_FLOOR(b)%256 if b<0 then b=b+256 end return string.char(b) end
local _hf=function(s) local h=5381 for i=1,#s do h=(h*33+string.byte(s,i))%4294967296 end return h end
local _XHAS_B32=(type(bit32)=="table") and (type(bit32.bxor)=="function")
local function _xu32(x) local m=x%4294967296 if m<0 then m=m+4294967296 end return m end
local function _xbxslow(a,b) a=_xu32(a) b=_xu32(b) local r=0 local p=1 for k=1,32 do local xa=a%2 local xb=b%2 if xa~=xb then r=r+p end a=(a-xa)*0.5 b=(b-xb)*0.5 p=p*2 end return r end
local _xbx=_XHAS_B32 and function(a,b) return bit32.bxor(a,b) end or _xbxslow
local _xsmix=function(l,s) local x=_xbx(_xu32(s),_xu32(l)) x=_xbx(x,_xu32(x*8192)) x=_xbx(x,_FLOOR(x/131072)) x=_xbx(x,_xu32(x*32)) x=x%2147483647 if x<1 then x=1 end return x end
local function _probe_hash() local h=5381
  local function mix(s) for i=1,#s do h=(h*33+string.byte(s,i))%4294967296 end end
  mix("A"..tostring(string.byte("A")))
  mix("abc"..((string.sub("abc",2,2)=="b") and "2b" or "XX"))
  mix("A"..tostring(string.char(65)))
  local _ok,_e=pcall(function() error("DTKD_PROBE") end)
  mix((_ok and "ok" or "err")..((type(_e)=="string" and string.find(_e,"DTKD_PROBE",1,true)) and "DTKD" or "NO"))
  mix(table.concat({"a","b"}))
  mix("num"..type(0))
  mix("tab"..type({}))
  mix("fn"..type(print))
  mix("nil"..tostring(nil))
  mix("yes"..tostring(select("#",1,2,3)))
  mix("k1"..tostring(next({k=1})))
  mix("raw"..tostring(rawget({a=1},"a")))
  return h%2147483647 end
local _SNAP={sb=string.byte,ss=string.sub,sc=string.char,pt=print,ls=loadstring or load}
local _GREF
do
  local function _tryg(g) if type(g)=="table" and (g["print"]~=nil or g["warn"]~=nil or g["game"]~=nil) then return g end return nil end
  if type(getgenv)=="function" then pcall(function() local r=_tryg(getgenv()) if r then _GREF=r end end) end
  if _GREF==nil and type(_ENV)=="table" then local r=_tryg(_ENV) if r then _GREF=r end end
  if _GREF==nil and type(_G)=="table" then local r=_tryg(_G) if r then _GREF=r end end
  if _GREF==nil and type(getfenv)=="function" then pcall(function() local ok,g=pcall(getfenv,0) if ok then local r=_tryg(g) if r then _GREF=r end end end) end
  if _GREF==nil then _GREF=(type(_ENV)=="table" and _ENV) or (type(_G)=="table" and _G) or {} end
end
local _NATIVE={}
do
  local _G0=_GREF
  local _G1=(type(_ENV)=="table" and _ENV) or nil
  local _G2=(type(_G)=="table" and _G) or nil
  local _keys={string.char(112,114,105,110,116),string.char(119,97,114,110),string.char(101,114,114,111,114),string.char(97,115,115,101,114,116),string.char(116,111,115,116,114,105,110,103),string.char(116,111,110,117,109,98,101,114),string.char(116,121,112,101),string.char(112,99,97,108,108),string.char(120,112,99,97,108,108),string.char(112,97,105,114,115),string.char(105,112,97,105,114,115),string.char(110,101,120,116),string.char(115,101,108,101,99,116),string.char(115,116,114,105,110,103),string.char(116,97,98,108,101),string.char(109,97,116,104),string.char(111,115),string.char(99,111,114,111,117,116,105,110,101),string.char(100,101,98,117,103),string.char(117,110,112,97,99,107),string.char(108,111,97,100,115,116,114,105,110,103),string.char(108,111,97,100),string.char(103,101,116,102,101,110,118),string.char(115,101,116,102,101,110,118),string.char(103,101,116,103,101,110,118),string.char(103,101,116,114,101,110,118),string.char(103,101,116,114,101,103),string.char(103,101,116,103,99),string.char(104,111,111,107,102,117,110,99,116,105,111,110),string.char(110,101,119,99,99,108,111,115,117,114,101),string.char(114,101,113,117,101,115,116),string.char(116,105,99,107),string.char(116,105,109,101),string.char(119,111,114,107,115,112,97,99,101),string.char(99,104,101,99,107,99,97,108,108,101,114),string.char(105,115,108,99,108,111,115,117,114,101),string.char(115,101,116,99,108,105,112,98,111,97,114,100),string.char(115,101,116,102,112,115,99,97,112),string.char(105,115,102,105,108,101),string.char(114,101,97,100,102,105,108,101),string.char(119,114,105,116,101,102,105,108,101),string.char(97,112,112,101,110,100,102,105,108,101),string.char(100,101,108,102,105,108,101),string.char(108,105,115,116,102,105,108,101,115),string.char(109,97,107,101,102,111,108,100,101,114)}
  for _i=1,#_keys do local _k=_keys[_i] local _v=nil
  if _G0 then local _ok,_r=pcall(function() return _G0[_k] end) if _ok then _v=_r end end
  if _v==nil and _G1 then local _ok,_r=pcall(function() return _G1[_k] end) if _ok then _v=_r end end
  if _v==nil and _G2 then local _ok,_r=pcall(function() return _G2[_k] end) if _ok then _v=_r end end
  _NATIVE[_k]=_v end
  pcall(function()
    if type(print)=="function" then _NATIVE[string.char(112,114,105,110,116)]=print end
    if type(warn)=="function" then _NATIVE[string.char(119,97,114,110)]=warn end
    if type(error)=="function" then _NATIVE[string.char(101,114,114,111,114)]=error end
    if type(assert)=="function" then _NATIVE[string.char(97,115,115,101,114,116)]=assert end
    if type(tostring)=="function" then _NATIVE[string.char(116,111,115,116,114,105,110,103)]=tostring end
    if type(tonumber)=="function" then _NATIVE[string.char(116,111,110,117,109,98,101,114)]=tonumber end
    if type(type)=="function" then _NATIVE[string.char(116,121,112,101)]=type end
    if type(pcall)=="function" then _NATIVE[string.char(112,99,97,108,108)]=pcall end
    if type(xpcall)=="function" then _NATIVE[string.char(120,112,99,97,108,108)]=xpcall end
    if type(pairs)=="function" then _NATIVE[string.char(112,97,105,114,115)]=pairs end
    if type(ipairs)=="function" then _NATIVE[string.char(105,112,97,105,114,115)]=ipairs end
    if type(next)=="function" then _NATIVE[string.char(110,101,120,116)]=next end
    if type(select)=="function" then _NATIVE[string.char(115,101,108,101,99,116)]=select end
    if type(string)=="table" then _NATIVE[string.char(115,116,114,105,110,103)]=string end
    if type(table)=="table" then _NATIVE[string.char(116,97,98,108,101)]=table end
    if type(math)=="table" then _NATIVE[string.char(109,97,116,104)]=math end
    if type(os)=="table" then _NATIVE[string.char(111,115)]=os end
    if type(coroutine)=="table" then _NATIVE[string.char(99,111,114,111,117,116,105,110,101)]=coroutine end
    if type(debug)=="table" then _NATIVE[string.char(100,101,98,117,103)]=debug end
    if _NATIVE[string.char(117,110,112,97,99,107)]==nil then _NATIVE[string.char(117,110,112,97,99,107)]=(type(table)=="table" and table.unpack) or (type(unpack)=="function" and unpack) end
    if type(loadstring)=="function" then _NATIVE[string.char(108,111,97,100,115,116,114,105,110,103)]=loadstring end
    if type(load)=="function" then _NATIVE[string.char(108,111,97,100)]=load end
    if type(getfenv)=="function" then _NATIVE[string.char(103,101,116,102,101,110,118)]=getfenv end
    if type(setfenv)=="function" then _NATIVE[string.char(115,101,116,102,101,110,118)]=setfenv end
    if type(getgenv)=="function" then _NATIVE[string.char(103,101,116,103,101,110,118)]=getgenv end
    if type(getrenv)=="function" then _NATIVE[string.char(103,101,116,114,101,110,118)]=getrenv end
    if type(getreg)=="function" then _NATIVE[string.char(103,101,116,114,101,103)]=getreg end
    if type(getgc)=="function" then _NATIVE[string.char(103,101,116,103,99)]=getgc end
    if type(hookfunction)=="function" then _NATIVE[string.char(104,111,111,107,102,117,110,99,116,105,111,110)]=hookfunction end
    if type(newcclosure)=="function" then _NATIVE[string.char(110,101,119,99,99,108,111,115,117,114,101)]=newcclosure end
    if type(request)=="function" then _NATIVE[string.char(114,101,113,117,101,115,116)]=request end
    if type(tick)=="function" then _NATIVE[string.char(116,105,99,107)]=tick end
    if type(time)=="function" then _NATIVE[string.char(116,105,109,101)]=time end
    if type(workspace)=="table" then _NATIVE[string.char(119,111,114,107,115,112,97,99,101)]=workspace end
    if type(checkcaller)=="function" then _NATIVE[string.char(99,104,101,99,107,99,97,108,108,101,114)]=checkcaller end
    if type(islclosure)=="function" then _NATIVE[string.char(105,115,108,99,108,111,115,117,114,101)]=islclosure end
    if type(setclipboard)=="function" then _NATIVE[string.char(115,101,116,99,108,105,112,98,111,97,114,100)]=setclipboard end
    if type(setfpscap)=="function" then _NATIVE[string.char(115,101,116,102,112,115,99,97,112)]=setfpscap end
    if type(isfile)=="function" then _NATIVE[string.char(105,115,102,105,108,101)]=isfile end
    if type(readfile)=="function" then _NATIVE[string.char(114,101,97,100,102,105,108,101)]=readfile end
    if type(writefile)=="function" then _NATIVE[string.char(119,114,105,116,101,102,105,108,101)]=writefile end
    if type(appendfile)=="function" then _NATIVE[string.char(97,112,112,101,110,100,102,105,108,101)]=appendfile end
    if type(delfile)=="function" then _NATIVE[string.char(100,101,108,102,105,108,101)]=delfile end
    if type(listfiles)=="function" then _NATIVE[string.char(108,105,115,116,102,105,108,101,115)]=listfiles end
    if type(makefolder)=="function" then _NATIVE[string.char(109,97,107,101,102,111,108,100,101,114)]=makefolder end
  end)
end
pcall(function() _NATIVE.game=game end)
pcall(function() _NATIVE.tick=tick end)
local _MX={{1,100,124,184},{68,144,240,225},{0,229,78,172},{0,233,79,102}}
local _MX_INV={{129,96,0,60},{0,0,107,186},{104,70,83,25},{188,1,0,0}}
local _LCG1,_LCG2,_LCG3
local _T_LIMIT=50;local _STEP_HARD_LIMIT=10000000
local _T_LIMIT_ACT=_T_LIMIT
local _L1H="01024101033e0100cb010183010978010bd30104660102cd010d28010970010bcc010dc901038401001b0106520105470104be01075701042801027901080c010aca0108000109f10102d00108b60108920103880109be010d840100f001033e0102410100cb0101830105470106520107570104be020f0d020d01020d00020d00020e000202060201050203070200040108ef010c17010be00109e3010b09000000"
local L1P={}
do local _n=#_L1H local _i=1 while _i+1<=_n do local _h1=string.byte(_L1H,_i) local _h2=string.byte(_L1H,_i+1) if _h1<=57 then _h1=_h1-48 else _h1=_h1-87 end if _h2<=57 then _h2=_h2-48 else _h2=_h2-87 end L1P[#L1P+1]=_h1*16+_h2 _i=_i+2 end end
local _XT={}
for _i=0,15 do local _r={} for _j=0,15 do local a,b,rr,p=_i,_j,0,1 for _=1,4 do local x,y=a%2,b%2 if x~=y then rr=rr+p end a=(a-x)/2 b=(b-y)/2 p=p*2 end _r[_j]=rr end _XT[_i]=_r end
local function _bx(a,b) a=_FLOOR(tonumber(a) or 0) b=_FLOOR(tonumber(b) or 0) a=a%256 b=b%256 if a<0 then a=a+256 end if b<0 then b=b+256 end local al=a%16 local ah=(a-al)/16 local bl=b%16 local bh=(b-bl)/16 return _XT[al][bl]+_XT[ah][bh]*16 end
local function _L1X(P) local r={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0} local pc=1 while true do local op=P[pc] if not op or op==0 then break end local a=(P[pc+1] or 0)%16+1 local v=P[pc+2] or 0 if op==1 then r[a]=_FLOOR(v)%256 elseif op==2 then local b=(v%16)+1 r[a]=_bx(r[a],r[b]) end pc=pc+3 end return _FLOOR(r[1]*16777216+r[2]*65536+r[3]*256+r[4]) end
local _k2raw=_L1X(L1P)
if _GUARD_TAG~="DTP_6vbf5w5xvq_mw4mu9gu" then _ERR("[DTKD] GUARD FAIL");error("INT_FAIL",0) end
local _PROBE=_probe_hash()
local k2=(_k2raw+_hf(_GUARD_TAG)+_PROBE)%2147483647
if k2<1 then k2+=2147483647 end
if k2<1 then k2=1 end
_LOG("[DTKD] k2="..tostring(k2))
local _POISON=0
pcall(function() local h=0 if _SNAP and tostring(string.byte)~=tostring(_SNAP.sb) then h=h+1 end if _SNAP and tostring(string.sub)~=tostring(_SNAP.ss) then h=h+1 end if _SNAP and tostring(string.char)~=tostring(_SNAP.sc) then h=h+1 end if _SNAP and tostring(print)~=tostring(_SNAP.pt) then h=h+1 end if h>=2 then _POISON=h end end)
local _USE_DUAL=false
local _HALF=1
local k2_eff=k2
pcall(function()
  if not _USE_DUAL then return end
  local pid,cid=0,0 local g=game
  if g~=nil then local ok1,v1=pcall(function() return g.PlaceId end) if ok1 and type(v1)=="number" then pid=v1 end local ok2,v2=pcall(function() return g.CreatorId end) if ok2 and type(v2)=="number" then cid=v2 end end
  local eh=((pid%2147483647)*31+(cid%2147483647)*17)%2147483647
  k2_eff=(k2+eh*65536)%2147483647
  if k2_eff<1 then k2_eff=1 end
end)
_LOG("[DTKD] k2_eff="..tostring(k2_eff))
local k2_eff_rot=k2_eff
pcall(function() local eh=0 if type(tick)=="function" then eh=eh+_FLOOR(tick())%65536 end k2_eff_rot=(k2_eff+eh*65536)%2147483647 end)
local _K2R=k2;local _sc=1 local _scnt=0
local _sdv=0
pcall(function() local _s=((game and game.PlaceId or 0)*31+(game and game.CreatorId or 0)*7)%65536 if _s and _s>0 then _sdv=_s end end)
if _sdv==0 then _sdv=7919 end
local _now
if type(tick)=="function" then _now=tick elseif type(os)=="table" and type(os.clock)=="function" then _now=os.clock else _now=function() return 0 end end
local _TIMEOUT_HIT=false local _ABORT=false
local _ANTIFMT=function() local ok1,e1=pcall(function() error("a") end) local ok2,e2=pcall(function() error("b") end) if not ok1 and not ok2 and type(e1)=="string" and type(e2)=="string" then local l1=string.match(e1,":(%d+):") or "" local l2=string.match(e2,":(%d+):") or "" if l1~="" and l2~="" and l1~=l2 and string.find(e1,"DTKD") and string.find(e2,"DTKD") then _ABORT=true end end end
_ANTIFMT()
pcall(function() local ok0,s0=pcall(tostring,"") if ok0 and type(s0)~="string" then _ABORT=true end end)
pcall(function() if type(debug)=="table" and type(debug.getinfo)=="function" then local _i=debug.getinfo(1) if type(_i)~="table" then _ABORT=true end end end)

local _SNAP2={sb=string.byte,ss=string.sub,sc=string.char,sf=string.find,sm=string.match,gs=string.gsub,pt=print,wr=warn,er=error,tc=tostring,tn=tonumber,ty=type,pca=pcall,xpca=xpcall,pr=pairs,ipr=ipairs,nx=next,sel=select,rawg=rawget,raws=rawset,rawe=rawequal,smt=setmetatable,gmt=getmetatable,mf=math.floor,tblc=table.concat,gethk=(type(debug)=="table" and type(debug.gethook)=="function") and debug.gethook or nil,sethk=(type(debug)=="table" and type(debug.sethook)=="function") and debug.sethook or nil,getin=(type(debug)=="table" and type(debug.getinfo)=="function") and debug.getinfo or nil,tb=(type(debug)=="table" and type(debug.traceback)=="function") and debug.traceback or nil,hf=(type(hookfunction)=="function") and hookfunction or nil,ncc=(type(newcclosure)=="function") and newcclosure or nil,gc=(type(getgenv)=="function") and getgenv or nil,ccl=(type(checkcaller)=="function") and checkcaller or nil,il=(type(islclosure)=="function") and islclosure or nil}
local _RAWE=_SNAP2.rawe or function(a,b) return a==b end
local _SNAP3={}
local _AD_fail=0 local _AD_dump=0 local _AD_step=0 local _AD_birth=_now() local _AD_origProbe=_PROBE
local _AD_mark=function(tag) _AD_fail=_AD_fail+1 if _AD_fail>=2 then _POISON=_POISON+1 end _LOG("[DTKD] AD_mark "..tostring(tag).." fail="..tostring(_AD_fail).." poison="..tostring(_POISON)) if _AD_fail>=5 then _AD_mute=true end if _AD_fail>=8 then _ABORT=true end end
local _AD_dmark=function(tag) _AD_dump=_AD_dump+1 if _AD_dump>=2 then _POISON=_POISON+1 end _LOG("[DTKD] AD_dmark "..tostring(tag).." dump="..tostring(_AD_dump).." poison="..tostring(_POISON)) if _AD_dump>=5 then _AD_mute=true end if _AD_dump>=8 then _ABORT=true end end
local _T_LIMIT_ACT_UP=function() _T_LIMIT_ACT=_FLOOR(_T_LIMIT*(85+_xsmix(_LCG1,_now()%100000)%31)/100) if _T_LIMIT_ACT<30 then _T_LIMIT_ACT=30 end end
local _AD_light=function()
  if not _RAWE(_SNAP2.sb,string.byte) then _AD_mark("L_sb") end
  if not _RAWE(_SNAP2.ss,string.sub) then _AD_mark("L_ss") end
  if not _RAWE(_SNAP2.pca,pcall) then _AD_mark("L_pca") end
  if not _RAWE(_SNAP2.ty,type) then _AD_mark("L_ty") end
  if not _RAWE(_SNAP2.tc,tostring) then _AD_mark("L_tc") end
end
local _AD_heavy=function()
  if not _RAWE(_SNAP2.sb,string.byte) then _AD_mark("H_sb") end
  if not _RAWE(_SNAP2.ss,string.sub) then _AD_mark("H_ss") end
  if not _RAWE(_SNAP2.sc,string.char) then _AD_mark("H_sc") end
  if not _RAWE(_SNAP2.sf,string.find) then _AD_mark("H_sf") end
  if not _RAWE(_SNAP2.sm,string.match) then _AD_mark("H_sm") end
  if not _RAWE(_SNAP2.pca,pcall) then _AD_mark("H_pca") end
  if not _RAWE(_SNAP2.ty,type) then _AD_mark("H_ty") end
  if not _RAWE(_SNAP2.tc,tostring) then _AD_mark("H_tc") end
  if not _RAWE(_SNAP2.tn,tonumber) then _AD_mark("H_tn") end
  if not _RAWE(_SNAP2.er,error) then _AD_mark("H_er") end
  if not _RAWE(_SNAP2.mf,math.floor) then _AD_mark("H_mf") end
  if _SNAP2.hf then if type(hookfunction)~="function" then _AD_mark("H_hf0") elseif not _RAWE(_SNAP2.hf,hookfunction) then _AD_mark("H_hf1") end end
  if _SNAP2.ncc then if type(newcclosure)~="function" then _AD_mark("H_ncc0") elseif not _RAWE(_SNAP2.ncc,newcclosure) then _AD_mark("H_ncc1") end end
  if _SNAP2.gc then if type(getgenv)~="function" then _AD_mark("H_gc0") elseif not _RAWE(_SNAP2.gc,getgenv) then _AD_mark("H_gc1") end end
  if _SNAP2.ccl then
    if type(checkcaller)~="function" then _AD_mark("H_cc0")
    elseif not _RAWE(_SNAP2.ccl,checkcaller) then _AD_mark("H_cc1")
    end
  end
  if _SNAP2.sb then if _SNAP2.sb("A")~=65 then _AD_mark("B_sb") end end
  if _SNAP2.ss then if _SNAP2.ss("abcd",2,3)~="bc" then _AD_mark("B_ss") end end
  if _SNAP2.sc then if _SNAP2.sc(65)~="A" then _AD_mark("B_sc") end end
  if _SNAP2.sf then if _SNAP2.sf("abcdef","cd",1,true)~=3 then _AD_mark("B_sf") end end
  if _SNAP2.ty then
    if _SNAP2.ty(1)~="number" then _AD_mark("B_ty1") end
    if _SNAP2.ty("x")~="string" then _AD_mark("B_ty2") end
    if _SNAP2.ty(nil)~="nil" then _AD_mark("B_ty3") end
  end
  if _SNAP2.tc then if _SNAP2.tc(1)~="1" then _AD_mark("B_tc") end end
  if _SNAP2.tn then if _SNAP2.tn("42")~=42 then _AD_mark("B_tn") end end
  if _SNAP2.mf then if _SNAP2.mf(3.7)~=3 then _AD_mark("B_mf") end end
  if _SNAP2.pca and _SNAP2.er then local okE=_SNAP2.pca(_SNAP2.er,"DTKD_X") if okE then _AD_mark("B_pca") end end
  if _SNAP2.pca then local okO,a1,b1=_SNAP2.pca(function() return 7,8 end) if not okO or a1~=7 or b1~=8 then _AD_mark("B_pca2") end end
  if type(debug)=="table" then
    if type(debug.gethook)=="function" then local ok1,hk=_SNAP2.pca(debug.gethook) if ok1 and hk~=nil then _AD_mark("D_hk") end end
    if type(debug.getinfo)=="function" then
      if _SNAP2.getin and not _RAWE(_SNAP2.getin,debug.getinfo) then _AD_mark("D_gi0") end
      local ok2,info=_SNAP2.pca(debug.getinfo,1,"S")
      if ok2 and type(info)=="table" and info.what=="C" then _AD_mark("D_gi1") end
    end
    if _SNAP2.sethk and type(debug.sethook)=="function" then if not _RAWE(_SNAP2.sethk,debug.sethook) then _AD_mark("D_sh0") end end
    if _SNAP2.tb and type(debug.traceback)=="function" then
      if not _RAWE(_SNAP2.tb,debug.traceback) then _AD_mark("D_tb0") end
      local okT,tbs=_SNAP2.pca(_SNAP2.tb)
      if not okT or type(tbs)~="string" then _AD_mark("D_tb1") end
    end
  end
  local okp,ph=_SNAP2.pca(_probe_hash)
  if not okp then _AD_mark("D_probe_err") elseif ph~=_AD_origProbe then _AD_mark("D_probe") end
  local okN,tNow=_SNAP2.pca(_now)
  if okN and type(tNow)=="number" then local age=tNow-_AD_birth if age>1800 or age<0 then _AD_mark("D_age") end end
  if _SNAP3.m2a and not _RAWE(_SNAP3.m2a,_M2_a) then _AD_dmark("D_m2a") end
  if _SNAP3.m2r and not _RAWE(_SNAP3.m2r,_M2_r) then _AD_dmark("D_m2r") end
  if _SNAP3.cmp and not _RAWE(_SNAP3.cmp,_compile) then _AD_dmark("D_cmp") end
  if _SNAP3.slot and not _RAWE(_SNAP3.slot,_getMap) then _AD_dmark("D_slot") end
  if _SNAP3.reb and not _RAWE(_SNAP3.reb,_rebuild_p2) then _AD_dmark("D_reb") end
  if _SNAP3.riraw and not _RAWE(_SNAP3.riraw,_RI_raw) then _AD_dmark("D_riraw") end
  if _SNAP3.om2 and not _RAWE(_SNAP3.om2,_OM2) then _AD_dmark("D_om2") end
  if _SNAP3.rof and not _RAWE(_SNAP3.rof,_RO_FWD) then _AD_dmark("D_rof") end
  if _SNAP3.roraw and not _RAWE(_SNAP3.roraw,_RO_raw) then _AD_dmark("D_roraw") end
end
local _AD_tick=function()
  _AD_step=_AD_step+1
  if _AD_step%3~=0 then return end
  if not _RAWE(_SNAP2.pca,pcall) then _AD_mark("T_pcahk") end
  local ok
  if _AD_step%257<3 then ok=_SNAP2.pca(_AD_heavy) else ok=_SNAP2.pca(_AD_light) end
  if not ok then _AD_mark("T_heavy") end
  if _AD_step%256==0 then _SNAP2.pca(_T_LIMIT_ACT_UP) end
end

local SBOX={}
do local _sb_seed=_FLOOR((k2*17)%2147483647) if _sb_seed<1 then _sb_seed=1 end for i=1,256 do SBOX[i]=i-1 end local s=_sb_seed local _h0=_hf(_GUARD_TAG) for i=256,2,-1 do s=_FLOOR((s*16807+_h0+i*131)%2147483647) local j=s%i+1 SBOX[i],SBOX[j]=SBOX[j],SBOX[i] end end
local function _ks(seed,cnt) local s=_FLOOR(seed)%2147483647 if s<1 then s=1 end local o={} for i=1,cnt do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end s=_xsmix(_lc,s) o[i]=s end return o end
local function _gk(idx,varIdx,salt,useEff) local _k2 if useEff==2 then _k2=_FLOOR(k2_eff or 0) elseif useEff and _HALF>0 and idx>_HALF then _k2=_FLOOR(k2_eff or 0) else _k2=_FLOOR(k2 or 0) end local seed=_FLOOR((_k2+idx*1000003+varIdx*7919+salt*104729)%2147483647) if seed<1 then seed=1 end local _si=_FLOOR(seed%256)+1 local b0=SBOX[_si] local b1=SBOX[_FLOOR(seed/256)%256+1] local b2=SBOX[_FLOOR(seed/65536)%256+1] local b3=SBOX[_FLOOR(seed/16777216)%256+1] local mixed=_FLOOR((b0*16777216+b1*65536+b2*256+b3)%2147483647) if mixed>0 then seed=mixed end local st=_ks(seed,50) local k1,k2a,pk={},{},{} for i=1,16 do k1[i]=(st[i]%255)+1 k2a[i]=(st[16+i]%255)+1 pk[i]=(st[32+i]%255)+1 end return k1,k2a,pk,(st[49]%7)+1,(st[50]%255)+1 end
local _INV_SBOX={}
do for i=0,255 do _INV_SBOX[SBOX[i+1]+1]=i end end
local function _aes_lite_dec(bytes,key) for round=8,1,-1 do for i=1,#bytes do bytes[i]=_INV_SBOX[bytes[i]+1] or 0 end for c=0,_FLOOR(#bytes/4)-1 do local a,b,d,e=bytes[c*4+1],bytes[c*4+2],bytes[c*4+3],bytes[c*4+4] bytes[c*4+1]=(_MX_INV[1][1]*a+_MX_INV[1][2]*b+_MX_INV[1][3]*d+_MX_INV[1][4]*e)%256 bytes[c*4+2]=(_MX_INV[2][1]*a+_MX_INV[2][2]*b+_MX_INV[2][3]*d+_MX_INV[2][4]*e)%256 bytes[c*4+3]=(_MX_INV[3][1]*a+_MX_INV[3][2]*b+_MX_INV[3][3]*d+_MX_INV[3][4]*e)%256 bytes[c*4+4]=(_MX_INV[4][1]*a+_MX_INV[4][2]*b+_MX_INV[4][3]*d+_MX_INV[4][4]*e)%256 end for i=1,#bytes do bytes[i]=(bytes[i]+key[(round-1)*16+((i-1)%16)+1])%256 end end return bytes end
local function _decHex(hex,k1,k2a,pk,rot,kk)
  if type(hex)~="string" or #hex<2 then return "" end
  local n=_FLOOR(#hex/2) local bytes={}
  for j=1,n do bytes[j]=tonumber(string.sub(hex,j*2-1,j*2),16) or 0 end
  local key={} for i=1,128 do key[i]=(k1[((i-1)%#k1)+1]+k2a[((i-1)%#k2a)+1]+pk[((i-1)%#pk)+1]+rot*7+kk*3)%256 end
  bytes=_aes_lite_dec(bytes,key)
  local m=#bytes if m==0 then return "" end
  local r="" local idx=1 local blk=((m*7+3)%13)+8
  while idx<=m do
    local e=idx+blk-1 if e>m then e=m end
    for j=idx,e do r=r..string.char(bytes[j]) end
    idx=e+1
    blk=blk+5 if blk>31 then blk=8 end
  end
  return r
end
local function _decDouble(hex,idx,varIdx,s1,s2,useEff) local f,g,h,ii,jj=_gk(idx,varIdx+1,s2,useEff) local L1=_decHex(hex,f,g,h,ii,jj) local a,b,c,d,e=_gk(idx,varIdx,s1,useEff) local r=_decHex(L1,a,b,c,d,e) L1=nil return r end
local function _lcgKey(offset)
  local h0=_hf(_GUARD_TAG)
  local key={}
  local base=(k2+offset*999983)%2147483647
  if base<1 then base=base+2147483647 end
  for i=0,127 do
    local v=(base*(i+1)*31+h0*17+i*7919)%2147483647
    if v<0 then v=v+2147483647 end
    local b=SBOX[v%256+1]
    key[i+1]=(b+(v%256)+i*17)%256
  end
  return key
end
local function _lcgDec(hex,offset)
  local key=_lcgKey(offset)
  local n=_FLOOR(#hex/2) local bytes={}
  for j=1,n do bytes[j]=tonumber(string.sub(hex,j*2-1,j*2),16) or 0 end
  bytes=_aes_lite_dec(bytes,key)
  local r=""
  for j=1,#bytes do r=r..string.char(bytes[j]) end
  return r
end
_LCG1=tonumber(_lcgDec("8ee16efeb1",0)) or 16807
_LCG2=tonumber(_lcgDec("84de28a905",1)) or 48271
_LCG3=tonumber(_lcgDec("d8f6d99cb9",2)) or 69621
local function _proto_k(idx) local seed=_FLOOR((k2 or 0)+idx*3000017+23)%2147483647 if seed<1 then seed=1 end local st=_ks(seed,2) return (st[1]%255)+1,(st[2]%26)+3 end
local _PROG2_IDX={}
do for i=1,32 do _PROG2_IDX[i]=i end local s=_FLOOR((k2*31+7)%2147483647) if s<1 then s=1 end local _l1=16807+((k2%997)*2) for i=32,2,-1 do s=_xsmix(_l1,s) local j=s%i+1 _PROG2_IDX[i],_PROG2_IDX[j]=_PROG2_IDX[j],_PROG2_IDX[i] end end
local _protoSBOX={} local _protoH1={} local _protoH={} local _protoInv={}
local function _getPSBOX(idx) local s=_protoSBOX[idx] if s then return s end local seed=_FLOOR((k2 or 0)+idx*13337)%2147483647 if seed<1 then seed=1 end local sb={} for i=0,255 do sb[i]=i end local st=seed for i=255,1,-1 do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end st=_xsmix(_lc,st) local j=st%(i+1) sb[i],sb[j]=sb[j],sb[i] end _protoSBOX[idx]=sb return sb end
local function _getPH(idx,lv) local ph=_protoH[idx] if ph and ph[lv] then return ph[lv] end local sb=_getPSBOX(idx) local seed=_FLOOR((k2 or 0)+idx*77777+lv*99991)%2147483647 if seed<1 then seed=1 end local arr={} for i=0,255 do arr[i]=i end local st=seed for i=255,1,-1 do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end st=_xsmix(_lc,st) local j=st%(i+1) arr[i],arr[j]=arr[j],arr[i] end local res={} for i=0,255 do res[i]=sb[arr[i]] end if not ph then ph={} _protoH[idx]=ph end ph[lv]=res return res end
local function _getPI(idx,lv) local pi=_protoInv[idx] if pi and pi[lv] then return pi[lv] end local h=_getPH(idx,lv) local inv={} for i=0,255 do inv[h[i]]=i end if not pi then pi={} _protoInv[idx]=pi end pi[lv]=inv return inv end
local function _getPH1_seg(idx,si,seed) local key=idx*1000+si local h=_protoH1[key] if h then return h end local sb=_getPSBOX(idx) local _seed=(k2+idx*7000003+seed)%2147483647 if _seed<1 then _seed=1 end local st=_ks(_seed,128*3+100) local h1={} local used={} for op=1,128 do local k2v local tries=0 repeat local base=(op-1)*3+tries k2v=st[(base%#st)+1]%256 if k2v==0 then k2v=1 end k2v=sb[k2v] tries=tries+1 if tries>500 then break end until not used[k2v] used[k2v]=true local target if op<=32 then target=op elseif op>=65 and op<=107 then target=op-32 else target=op end h1[k2v]=target end _protoH1[key]=h1 return h1 end
local function _seg_of_pos(pos,sizes) local acc=0 for si=1,#sizes do acc=acc+sizes[si] if pos<=acc then return si end end return #sizes end
local CONST={{"h","2e536ba3"},{"h","239df928f1e7f1356b3b"}}
local _constCache={}
local function _CONST(i) if type(i)~="number" or i<1 or i>#CONST then return 0 end local c=_constCache[i] if c~=nil then return c end local e=CONST[i] if type(e)=="table" then if e[1]=="n" then _constCache[i]=e[2] local _s=i*7919 return (e[2]+_s)-_s end if e[1]=="e" then local op=e[3] local v if op==1 then v=e[2]+e[4] elseif op==2 then v=e[2]-e[4] elseif op==3 then v=e[2]*e[4] else v=e[2] end _constCache[i]=v local _s=i*7919 return (v+_s)-_s end if e[1]=="b" then local v=(e[2]==1) _constCache[i]=v return v end if e[1]=="nd" then local a,b,c2,d,e2=_gk(i,0,5,2) local v=tonumber(_decHex(e[2],a,b,c2,d,e2)) or 0 _constCache[i]=v local _s=i*7919 return (v+_s)-_s end if e[1]=="h" then local a,b,c2,d,e2=_gk(i,0,3,2) local r=_decHex(e[2],a,b,c2,d,e2) _constCache[i]=r return r end end _constCache[i]=e return e end
local _U={}
local function _GLOB(a) local k=_CONST(a) if type(k)~="string" then return nil end local v=_NATIVE[k] if v~=nil then return v end if _GREF~=nil then v=_GREF[k] if v~=nil then return v end end if type(_G)=="table" then v=_G[k] if v~=nil then return v end end if type(_ENV)=="table" then v=_ENV[k] if v~=nil then return v end end if k=="game" and type(game)=="table" then return game end if k=="workspace" then if type(workspace)=="table" then return workspace end if type(game)=="table" and game.Workspace then return game.Workspace end end if k=="print" and type(print)=="function" then return print end if k=="warn" and type(warn)=="function" then return warn end if k=="error" and type(error)=="function" then return error end if k=="assert" and type(assert)=="function" then return assert end if k=="tostring" and type(tostring)=="function" then return tostring end if k=="tonumber" and type(tonumber)=="function" then return tonumber end if k=="type" and type(type)=="function" then return type end if k=="select" and type(select)=="function" then return select end if k=="pcall" and type(pcall)=="function" then return pcall end if k=="xpcall" and type(xpcall)=="function" then return xpcall end if k=="pairs" and type(pairs)=="function" then return pairs end if k=="ipairs" and type(ipairs)=="function" then return ipairs end if k=="next" and type(next)=="function" then return next end if k=="rawget" and type(rawget)=="function" then return rawget end if k=="rawset" and type(rawset)=="function" then return rawset end if k=="rawequal" and type(rawequal)=="function" then return rawequal end if k=="rawlen" and type(rawlen)=="function" then return rawlen end if k=="setmetatable" and type(setmetatable)=="function" then return setmetatable end if k=="getmetatable" and type(getmetatable)=="function" then return getmetatable end if k=="unpack" then return (type(table)=="table" and table.unpack) or (type(unpack)=="function" and unpack) end if k=="string" and type(string)=="table" then return string end if k=="table" and type(table)=="table" then return table end if k=="math" and type(math)=="table" then return math end if k=="os" and type(os)=="table" then return os end if k=="coroutine" and type(coroutine)=="table" then return coroutine end if k=="debug" and type(debug)=="table" then return debug end if k=="utf8" and type(utf8)=="table" then return utf8 end if k=="loadstring" then return loadstring or load end if k=="load" then return load or loadstring end if k=="getfenv" then return getfenv end if k=="setfenv" then return setfenv end if k=="getgenv" then return getgenv end if k=="getrenv" then return getrenv end if k=="getreg" then return getreg end if k=="getgc" then return getgc end if k=="hookfunction" then return hookfunction end if k=="newcclosure" then return newcclosure end if k=="request" then return request end if k=="syn" then return syn end if k=="checkcaller" then return checkcaller end if k=="islclosure" then return islclosure end if k=="identifyexecutor" then return identifyexecutor end if k=="getloadedmodules" then return getloadedmodules end if k=="getrawmetatable" then return getrawmetatable end if k=="setreadonly" then return setreadonly end if k=="setclipboard" then return setclipboard end if k=="setfpscap" then return setfpscap end if k=="queue_on_teleport" then return queue_on_teleport end if k=="getcustomasset" then return getcustomasset end if k=="isfile" then return isfile end if k=="writefile" then return writefile end if k=="readfile" then return readfile end if k=="appendfile" then return appendfile end if k=="makefolder" then return makefolder end if k=="delfile" then return delfile end if k=="delfolder" then return delfolder end if k=="isfolder" then return isfolder end if k=="listfiles" then return listfiles end if k=="firetouchinterest" then return firetouchinterest end if k=="fireclickdetector" then return fireclickdetector end if k=="fireproximityprompt" then return fireproximityprompt end if k=="getconnections" then return getconnections end if k=="getinstances" then return getinstances end if k=="getnilinstances" then return getnilinstances end if k=="getcallingscript" then return getcallingscript end if k=="isnetworkowner" then return isnetworkowner end if k=="gethiddenproperty" then return gethiddenproperty end if k=="sethiddenproperty" then return sethiddenproperty end if k=="getsenv" then return getsenv end if k=="getupvalue" then return getupvalue end if k=="setupvalue" then return setupvalue end if k=="getconstants" then return getconstants end if k=="getconstant" then return getconstant end if k=="tick" and type(tick)=="function" then return tick end if k=="time" and type(time)=="function" then return time end if k=="wait" and type(wait)=="function" then return wait end if k=="task" and type(task)=="table" then return task end if k=="HttpGet" and type(game)=="table" then return game.HttpGet end if k=="HttpGetAsync" and type(game)=="table" then return game.HttpGetAsync end return nil end
local function _SET_GLOB(a,v) local k=_CONST(a) if _GREF~=nil then _GREF[k]=v end end
local STRS={{"86ec6315077858c67866573c10ed9fb1753bef46f37fd24d696c6cb700b2bf0c8d99aab330217eac381fc988a691b2722e439e951fc0cb233a8a433a5b9be5c36796ea3cf04c9e95f7816f662dc1027d02c6811977dc4330f2a03bf41ff82f2e01c54e333746a199bfeb2057b9513b1f3f80","f37ba1a12ac75ac2e671d86376d93c975e053ba1fe3be1649be2f39a08856f467a51c6a94d70950524d44d4a5f614da63a56a6db38aa8b001976ae573f4a0096e61bf84befb87fc20341bc57fbcf00aa8e61d5ffba3b3d1865eb35800c13dbb347d71edc52b3ebf67543ab7349fb35fa0e69","66e62bf0c0627be980dc91328773f8793b3660dbf62f22c42dc584a470cc68a5e50f710b2199ad89545943dc3281e29facc5ec34feb730b1b75f9385e44e4bcdbab3e75e1927ad279b858d85061e4e8c788ccca21c27575b1c199ab7b07ffdde077e067bfca4a08b52abf7433ee189247358","3d8cc8c704bec0b62ff60d550a923284a3d72e10c7398b71ceb1eea09e35ad622beb43b43bb26bcee9d79bd0e27c508c4a8b6b4737ca88ad291000d5e92c8f0d73babca8e543faa6b0633e0fe3eec45c0f4d68b86635762fe2b7cf16cfc74b137b081ee8aad6d690443dd1120680a1609e92"},{"57f5dfb82c7b44c1bdf6715a861b","b34c51948e4e6f81132d8b10232b","52d50a5fd070104e48106f568574","23ac19ddd1d46a163a30b7239898"},{"80c3470b3bdc853b2d3a040ffca0afa718d8a5e7e106e721ba5330a9ff962035ccbffc97d8e11a808b00b32298b8cf44d9ecc331c3c5caf365ad0c4e","6463c863a58c4981bfc588fa9cc0347412cb489017f1614244159f495776c960f33d2de96b5ffd5eddae9647d7a3e7790dd24550b372e8d78332ece8","822890901e78900b0caa516f8eddd9b3e276036d2ce863ec86b97c3d7e7e00c452251b700e79348b13053908b157f8232158befd82d5a28eb9537bfd","7690bcf8e721e5350eb2e71d69ffc7271e399277121556d071897e954af7d398a7966bc10e81d47476715745c2761a1862ebfae91c3e325fd02d1cf7"},{"3de2d7d0eeddf9d6ee288ea5f419e4623b9e46f8d01936ef52cb90d74f6af3653b8622327818d310a30028071ba2970360a6e6c9de07d175e427eafb","928031ca0f77f62568d70f1011e71d1c533303b3945174bcf489371dcecef28cf00ea598dae3922838d331d06060c941a87fc6b00dc4cf1f34d4031c","4652e60b736c7f43177459caeb81a734f3355238b495ff3e87b84ffdcb0d055fcd2cfd0cc5e5068e1a3597af545227212dfb549e1711709424add461","a84eeaca708c5064fc4e4ba97b3a13fa6e2af07c921024e5492b7570783dc666ad1a22bb43a7baf1a1cfe912cc4bf6aba9fd4b8befb5ee6a2d36ff2f"},{"33a67ad37b6407af86f55cb46de4e31cece62fe11c901be23453e11ef75affbfd3d920256e84f5d7ed750db32abb0b16c43055a118f6283799141357","ac07a1618823e5db0e5c56e13a50fae8110a49166b5b307c27feb57e559f69600c80dbbdba327a39a0d1f5dae580597a084ad605953a619ac5888dc1","92c9dfe9935fc19af29dc7fcdea327f64bac2025f206362387296f9049cd06947a3f76d729e4d0662312a51d6a30a6160ff101fa5a475055e8ec07cb","afd7884f2e5c5a21b095e39ac7dda94fc382249c3ca517ce8d2d89fc65721a7577195316177da23f29e5c90415502257623b52bbc35d6fc8cc780c89"},{"2a923e9719bd80498a62d43c2fe8662dbee067512497a0be3861a23aaacad786de93bcbab9d3a6e87fc65815b920883935a3956e28416ac050d37cf0","b1b9ae6a0310ecd2fe665908cc254fc2a41fe40d7e64dbc9eda212e17802877468ea9f1f929d3558ebf956a3a00b4300e4a2e482e810b3c167db5a02","e1eabe67d9eec2d2b60a5df4b10c46b89675b0c3c1fc4d4af47d48398cea33cbf14f37936284bc08298dc8da8b8487cc7a1b4b5592dc00644c6e604f","6cd85c1d7c3d77453bd6e276970e2df2cd07c99a06a877467c51e8be18870355ec44f6ea70a1be259b9587757f27ad4a285ecc4624fdccf1848099c4"},{"f696c168655b666f48e72f5d512dcd3f1d754c8c6805c9958e0bf564fce47ce9e3b33dd4776d53d407ba1c211d8a20587e3effbc366bb46ff3922611","edadbf92cc3788863859d40b063ee6a3eb155be7cb6a0b1281363098ba853c25297bc617bf1ae7e3b0a8b5c0f8899818a1a69025325638c82b8944cf","9614954e836ba452acb3ac5b67b3aa0953d26575403165a8ce7d42913ac891aeecb8cb0f79a9c02e6f09795b40bb4cedbd7c9cde2c9000ae71f4b4e0","d824a67a692c3051e01484e06b2177284422777ee1850295b9c3c20d8128e0fbed27e25bbc12466b378f4f3f29da36dd67d797ba1d61a21c7b8e080a"},{"ba9d8a02fbd3d0b64f293b445e94480193de09b9196c0ecb1f0a429cbd5c56a744fbeba8999218455b7cb04a0d10901e0beccee4a5b80c0c62fb6023","c0cbe5bddf544569f71d7cb9da87a50cef1964e961f93dc2c33e758b2d2c17c9c1d095ccdd823d2eaff939b4082997e854eaf3c8a556276421b2325b","dd87c228a7f03378f25ca51844e0f7f187eb149f15b8b6e1a725b3cdfe9d9ff379219d79a3d761a41701b4e0ba18cbd52422b48f6f196b54f5183853","4cce5c9e6edf59dd2e1f17898d5e28efeed24abc46d6f5ba0357264320f63c7bc7a66eef766e9e0f3ec54f932b9da651f7805d2fa318413046995375"},{"bfeaad3b66bfb9a94ccf76397773bf882854a2801c707419386ffb540eab4b1d17b746f92aadf9906e87fb2ed30b31645aeab2bab60fb4baeb124362","85f4b7a4cc4de3ee12b56aadbd4e22b3efb647a0883fed9f10dfabd09c7cc483f7da7bffe03442a4733b68c1ebcc884f8c0ed48bd5fe7171ff49ccad","6e390fdc921cae459a498455e3651afffdab876a252af0682ed93ec5a2b5abde57c52b995098792b7c831fa6aa423ae37bd7c4c9bab9d699675980c8","db396e7987ad93be57481754671daba62f6db29aba2308acda274bb931600815f9f9372e14ea4ef9c67832d4f60c2969cb25db8068d7ff5cad11ed5a"},{"617b004d4dd21382c47ca99e748c01ada7df699ef34111df51718e33c11bd749acf22d483e599bfbd030a089a12ca5558376fe578eb28d699c5ef6ec","92dd6bc43006bcec1301bc0fdbbee40cbc640fea0b7b605ac8b6c4a47b01440692bae28b067b643d5fd3a793d40703aa8c290a7e4b6450413bc6a667","e1a9fc78ddd43c175e996353557f921432e3fae193a15ce9211a9d11ac3201e9f03dda3bef27c30651c90b7a116b4217f2e196d6f688a0fe28046789","100c4bbfea25a19aac8e27925d2fd754a40b2dd99c7a0363b0ba80f5b404515238dab456b530f11465ff475942708bdbb660eeebb4b91d95411da83d"},{"5d342b64c8103ffdf730052417afd24385bc3fc18a16ff57b0d64cef7cdf9b36498ac825878de9b13741cfef5a8d8e1ac259988d1ea071c9a7095edd","a76df9140d5dcc21819676fd80d2f5a6d592f7b769a72bf658d2bf15683e93ed3bbbc8af338961c44979cfaad4a0854a11fd115a251917044324e790","0eeeea3af883b6f225c569a654f8cda94d717d6768151682b54c6a9735cd471e35185351f5451aed4ad099c76bdc9c36931f930a02ae92d98846ce6e","9f793f99da7504145af734b8bc5c792be820237b7ed449cf32db31603107a082f64486ab987ed9673289369797ef8491da1b9155d85a51816d84d4f9"},{"3f5422967dae7d47da1fd25d83382f6eead35a00f337aebb7d0444e67eb4198055021df66c282da241377d681383472fcb6bbde6aeca42249a406ea8","74540c475c79155d1eecf8cf1a3f2ded4384ac0d7947da718dfbc030d2cf5924db513e80360f9fec08ce5579aa371d130075da862c8437f28e30cb2c","1652936d01bc99d173ef56f0bf7b2331a85493acbddf3d3af440f3d23f05c9c9aff283ec7bf81dc268439a77198136982613bdccb514b5924add2edb","fc14c42840b19ab13dedfcf1b57bccf3df714133ec38fed5ab3ed8b57233e142a6c4e23c5b1cf5663baf5e773fd8f519c24b0d5a16a5ba56174ee362"},{"1b9e52b812007884ed5b5cf1071c538a7ee6a551593c56fb9d5f0840e92db7e55805cb7214e6e25ba1ecf3c9046a72777649d9ad9834cbf7d28681d7","c88ab9aab27d68ed2a6484884377783d93c5bf75a0acf5c8be327f4072de096855c13b6d41ef1d20bf08f17afb8b488119aa5394b195c57f6655e9a8","164ea4b2a4c639916f7f151ce33d86b0baa60cd749168af22ac9760c37230bb8b70dbed45d7e98081ff4b97f27fd98f912ca7eebb7dbbd4729a95e20","c7b9daa65e2c89694c99d87ce7ce26fa22a9be68789b2fd428b1165082a684bc7b04db525c8b8559ac1a0f75d8b2e50f47f0a345c44917a379ca34fd"},{"44ecd21b74c46305b70a8a44a8a64d5b0285a55a360ab96fe4c7cd35b7d6768c14cf8626902c74f538f4be0f630e87c7fea58b7694eb16c42df05c14","15a63382408c76e01ee4777270144a82027ddb94fbc78195a5c06635248d43691a3b8e6935208d20c6132599045dbfcd2f7e8dd6e705855c348a40f2","c2ea65f313e8c0107ba674b9e8927843ea2e6c88ea9947787b274a5ec3e11270c44847396bc135fc1ddac9e29204546d4de9018874ff11b96892278b","73bfee34f2a1cb9f937eb95e354352018648b5342be478d95a3f0ed9e906f19ff37fc36f2c020beadb27b8698b524109a787a1f4eb0b013939735dbc"},{"1857c3414b7ab42fcb466c0d36dac114b356afd5c0d13191a442b4f0707eef0db14c952d9f3489c88445ea2621170c7e55b8ebdf9acfa9a98208e609","37e6b78fc1d94811e7638c34ef3da442b990c09311fe67d72950ab4df45282475e0a989500a9741426d061013b095373c48aa33b9f7290e974dc0797","a2c57dfd7d6412882fb28384c550628ca42f1ee6ba12e82db39b16e470e587309276d976a496c5dc9dfbb7fc0eddd6b1684016ae21ce3afdc1ab9954","b19595651057747afc5d30fe895ecbd4dc9c0179da86a593a2daa83161980a53ebfa90dc69729658a7d07a3928757b576080a1829b9dbc7518475bdf"},{"3eb3e43e034bee56f6c01edca48cc1e9934d76e06fbf0be3df0b9ff1ecf0f53e04b3e2e7887fa91b6e6157427010337a4dfec91fe02c590ae41bba16","0b988d4e37ccdbe3409459b1debb4c9e764a312bef68d77f16df766d61bb8ae7a04ea19ab6f7b868358fa1d3789d2ddecfb2da285b845b8c59f36814","8860529a859247bb730d39961830ad9e64375b762a810a41422b766ca52008da06774f9f9b1394171df2c7fb138ece5327f44cc7bf3637e69a466e7c","79ba3333c717b4018d8f4887dc96a76e9897330b12019378206d29da7e0aaf8b8438c3458bb5ac03cae83a83605972fcedf192b6a3cf7e2cc97437ba"},{"1861e0de79a37a21dd03cc20f8ddf20ba2f5f45ee066667b4492920aad86a7915f8c241bd433a04b38d170636aa25f8106a6b0988052c5adfc9f6aa0","cc285c46c9b1f71867919b248a1cf1eb33b71d6bbeaddce273c6ce1e75bc6fe1c26906a95463936d326dcf73191cd08beb38c1dc3f1dae9d44b1f946","cd532c9c9cf3ce4eb889bd28ad4ba916c2ad83ceb44cbad8e77aa0b04ab9d81260b2fe8291bf14b6625814efac89ae1f31e1d4dd68399b4973c755f7","7ec6c28fa60c0a069974c38d373d805411258ce64feec2e1a8db56870ebd4dfb1d96f75b685bde943879a621779f210da695af38ab167d417f04750a"},{"9a2a6520e22bb3d21eace2bb7a4e9be2850e12fe1007e1268615b76826356f13cf7615d0e7981c261c9553ad7e2f9b5028047ac2093ea0f79d23e336","38fd272d7f2029a97429ef291a30649c9bf138e8ed0b0ad24b5e0c08a0cc389c88ab0f2e8f3f1a0853a1d72c2ed819f481f6192d37c8cafeda77435e","7dd30af2fb0d43a3033d0a9a3ad16030fa4fec430fc193e1af46e2ce218a5d8a1106370ee953591f030d646fca89fcd50aa348ad308eda4f312299f0","8d1ad359028cd965cff90a113fc63c8e4bb0662ec68f8493c079d84000eeac728fcb0791a7d4e8216d9999c0665928b35bd62c39864c70ae8a2552cf"},{"c7299f6eb2fa0cc22a19039d240d4befe603fcae750977a681ba11387d3b47da41476e3172788544a00772c2c596455d1b57ff1bb8a6a8ed60d075b5","9b8d00b3ab81fd6842527edfac986694b012d45afe82983c0ebe3dfbe44b4962f4337ad9069374cb998b3f5a3961f2cda0f2c27950608adf80f0378d","51ef53624fddd6ab93a4cd7b5ec9906853fec54004ede5e830db18fccc99b330a1ac72501767a4a8df23c305329c4487f6503c62d20eb25fc07f8b9b","b1fbf448e368693ecdbac7d592a75b3a67ad94e5a21c8cc8a7bc586b5a850ace1cba9018da9d30e48c90d34eb236e17c4208affbbc67071b0fcba16c"},{"66897f4afcdadbf8e28cef9790d1834e464bfa3d475f038aec02bc324bf4a823d3766b295fa63247b6909f80647e632b5e70a5ed06d49d3df613cb58","424a23cb59222709e72085a10f16776650ae7f9078adc086b1d27e98ab797ab3bcafb48c665321776ef422de5bca4caf81f8de277e9aab80b2676218","473ec45dc03146c0d1d33fd0db3944efb7337092bc89ead50b2f8fcf7d623a0782883fb59e7df78a8d4c5610c5139a53488b43042e35deead5dc9592","b83a9313ae92fc52f1c91c6579d758d257b1b015723ee356704b69089a7176f03adfe88a4cace3b17724576a24dbb0f60e5da1b10829d330a62be037"},{"13bc2bf8dae5096b2ac5c7d184910b38e4493132c0a55cf2e167932a2502a23049432693f8bb86fe40db364edf0ad4b3651bef5bba8a109767730f46","344baa90e42667c4d3551b511d8ef764192e02bbf35a9bd149f2f9c892f8bd938fb7f89a69354d05acbdef41f99a1ac6a6a652e9079aeff035466c35","0aee036d2bd3bd20a3f967bc57f54118fa458ba0b0eb33e57533e1bdeadb3e5e79e6a19210f7210cab445fb5fbc3c829b118d67351bea696d4d5162b","871bbe5a9a2432aeb65ffcb88d73248421dd827a00f39c352b6d99009ae27644ca6c8ccafb0e4deeecab80435bb3d360bf5f041913e1383433cab98a"},{"7736d6860db7a424b944e7df71910c1b373569244fd739efdb088c3234459dc638ddb5cab23652a8c589f280e4e7ffa0dc6728b00a6a19d03de921ad","93a65c8ae7752803d8c0a9c5713d0938251e2155cd8a5bd4914060f1ce33d25d2f2e671e67c05b1f946cd3f4838f3b9ef5a139fc18db50989f4a4673","1bbd7c024a7424335a3de1cd4ef39d99795422f1845961206823f3452948abbd11285415363e3a3f868d27fec0064e0fabbfb8f49106d0a090a74e9d","56cfb2809abfc758044c7cb3745e039db58a88bea95b022cecde20e5599b5dca0662109cc9842d9e7c6592e4ed38651bda60933833daaeefad5610e7"},{"6337a974fb049bcea10eb2576c2627c04caabe5021a33c07238cbcd7be10934ceed016ab5e3113635884d628fc8356171b160f522c70c9565f3f0872","ab671fd63500af4b61307ae68cf66cbe5ce4b34db55eb821406dcdc547f4711cb55c54517f7ce8903495c2d843fd2cb1568ed459cb678df8726a853f","0901b99e1f77e00444ccc99eeb8e55ad616a9960e3486d7f88f9efe4a6a57f73160e97e490bdd69e076b953818b24f273878d521ef35029130512ea3","b31afdf34038379a2e2fe111381ced6526c0c8d369487e555a5dce9be76da65c2b61c3f1c87d97afaa9e8083d6c84216d4ac900890d06f07ad5afebb"},{"7a0d53a7237c3554216b75b0ad5f1266d422af1379122e7f3355d19eb895c35d595847f53066a49e1dc52fcb932092caaa1a98514938582f6e8e5b52","110bcccfd416651cc13bc25e1f16b33ce667051de0bed6c5d9f2c320420320ca6b8ce1f35984d25f4573319e0a184b5d5ffcf1ea60c912cdde929ebf","c0c86cea9fef18cf0770068b6686043b42066da787f1004c6f4fd23e8fcd80c46837edc1072b25959545d792073e53a83d4b99a652d8d09bd5a0673e","aca63cb1131151f84ee27d3070d01de3fefd54a48831e39605e836be3c719f7a73c52126ded0136ed85c59843a94d598ec320bd8d770fc02172ec140"},{"d3f0893dddb766f7d5a1e1927a4cb14048f59920bad08ceb2dcace3fc276f3a8a56c5aabd8276c85d07dd49e30987c150f5769ed60b0937f01b8efd4","af859015d006f55bfd98f97eab5633b2fb5714dfdc644981a816a77c24837a37a691d252a5efe5ebfa30da3c7064703a3222d4a296517dd089a150bc","dc91dbcd45b89e6de46c0dafef736ccebf05e1d0416fde4b2deb926c80fc9e5b0f24a55830cfb5edd7c6bd7def5bebe63bcd8490b692af44a0ed207e","c769af853296a7c3af1d52184a628b9bcbf1282f4b97bd871e528f0fa4c9a153ffba2c3a0ddeb729c143eb242e1b41a3218f7081e8de4ccbab24cb71"},{"11fd2d2df86994fa74602e4fa24e2b5d4b213cda3ac7b6a83d42e4c478f2123ba666d87a1109bf985bb721279666369f4663e8fd4eb2cdbca47df276","004244c65e2547c8730d65d112c75f16e8ce41de7542c160ae3fc46029281b342fd210590b9445f9832bd3c0a216659bd539ac66143a2cff01978dbb","53f4126c266a36dd296613ab867e33f206a740b9f60a0a51db384d49f22996f6e58a6b2366dca7ceb38fc9a0cc0eeecc266943b2f93033ee962d43c4","48bb5629c80a8ec8bcfd614e306ee3ea892a91b33c784c121183e7e052a07148c5d2f66d2349f26fe13059a46c6504c314fd23a030a0b81bff559e41"}}
local _cache={} local _lastHash=(((_PROBE*7+k2)%4294967296)) local _S_ref
local _cacheThreshold=96
local _GC_TICK=0
local _S_HIT=0 local _S_MISS=0
local function _S_core(i) if not STRS[i] or #STRS[i]==0 then return "" end local c=nil if _cache[i] and #_cache[i]>_cacheThreshold then c=_cache[i] end if c then _S_HIT=_S_HIT+1 return c end _S_MISS=_S_MISS+1 _scnt=_scnt+1 local dk=_FLOOR(i*31+_lastHash*7+_sdv+_scnt*17+_K2R*13)%65536 _sc=_xsmix(_sc+65,_sc+12345+dk)%65536 local _v=_FLOOR(_sc%#STRS[i])+1 local e=STRS[i][_v] if not e then return "" end local r=_decDouble(e,i,_v-1,1,3,true) e=nil _lastHash=_hf(r) if #r>_cacheThreshold then _cache[i]=r end _GC_TICK=_GC_TICK+1 if _GC_TICK%32==0 then pcall(collectgarbage,"step") end if _GC_TICK%64==0 then _cache={} end return r end
local function _S(i)
  if type(i)~="number" or i<1 or i>#STRS then return "" end
  if _POISON>=3 and not _DEV then local _n=8+((_POISON*13+i*7)%32) local _b={} for _k=1,_n do _b[_k]=string.char(97+((_PROBE+i*11+_k*13)%26)) end return table.concat(_b) end
  if _S~=_S_ref then return "" end
  local r=_S_core(i) if type(r)~="string" or #r<4 then return r end
  if string.sub(r,1,5)=="LINK:" then local list={} local rest=string.sub(r,6) for p in string.gmatch(rest,"([^,]+)") do list[#list+1]=tonumber(p) end if #list<2 then return "" end local p1=_S_core(list[1]) local p2=_S_core(list[2]) r=p1..p2 end
  return r end
_S_ref=_S
local PROTO={{"S","d7b98603eaa3032689efa03862dba71a9dc7f000db89895d38008bd632bfffc2dc520c5cc29c2ba10797c9529d8b05dd0eb2dfb6cded7e0e4c4f181e92a032110ed55084c553ba8ea27d","8872641a1f759149d234acd8b9969b5a8b976bd71b2fd48e4069b5929b2b33f4de91eeb0963c9adb0318daee0d045ec290a7e477a2b7ad1cdf93b395a6616dccf352bef953dacb395f172f64e3920ae4db12914c7e345f0b6263845442cbb898dd788e6016ed468d698eb4ec6e3e305a2c720d7fccc0","c0cae8995f3a7ef31954714f3d41b56b686400ccb5a514f717ad13cb6bf38374a462aa9d657035a02e018996154aa471ab1beeae2f63806771af1aee3f80f266fa9e094df6f31691de3016ba97d6a8cf87802de961ae0633d73958c4e03d95be698a2621bf3a4a02defe527d8df20a90de04d58a8590","5629151ee163bb06ee56efeac8511a70cebb059f1b3b2c26738b9f46cb51b586e77a8c86d4f1d9da2c9eaac296c067e7fb16063f0da9198d22a13dc6616951506f1e33871b169d6dc639c48a333483f4ad85f171c51cb2303a5b8e67bcdcee2867ed69ba9fcd5bee3437de72bc582acb7188",{},{6,3,9,4,8,10,2,1,7,5},1,{6,4},{221407493,1651328325}}}
local _up=_NATIVE.unpack or (type(table)=="table" and table.unpack) or (type(unpack)=="function" and unpack)
local function _getSem(op,seed) local core
if op==1 then core={{1,0,0,0}} end
if op==2 then core={{2,-1,0,0}} end
if op==3 then core={{3,-1,0,0}} end
if op==4 then core={{4,-1,0,0}} end
if op==5 then core={{5,-1,0,0}} end
if op==6 then core={{6,-1,0,0}} end
if op==7 then core={{7,-1,0,0}} end
if op==8 then core={{8,-1,0,0}} end
if op==9 then core={{9,-1,0,0}} end
if op==10 then core={{10,0,0,0}} end
if op==11 then core={{11,0,0,0}} end
if op==12 then core={{12,0,0,0}} end
if op==13 then core={{13,-1,0,0}} end
if op==14 then core={{14,-1,0,0}} end
if op==15 then core={{15,-1,0,0}} end
if op==16 then core={{16,0,0,0}} end
if op==17 then core={{17,-1,0,0}} end
if op==18 then core={{18,0,0,0}} end
if op==19 then core={{19,-1,0,0}} end
if op==20 then core={{20,-1,0,0}} end
if op==21 then core={{21,-1,-2,0}} end
if op==22 then core={{22,-1,0,0}} end
if op==23 then core={{23,0,0,0}} end
if op==24 then core={{24,-1,0,0}} end
if op==25 then core={{25,-1,0,0}} end
if op==26 then core={{26,-1,0,0}} end
if op==27 then core={{27,0,0,0}} end
if op==28 then core={{28,0,0,0}} end
if op==29 then core={{29,-1,0,0}} end
if op==30 then core={{30,-1,-2,0}} end
if op==31 then core={{31,-1,-2,0}} end
if op==32 then core={{32,-1,0,0}} end
if not core then core={{23,0,0,0}} end
return core end
local PROG2_A={} local PROG2_B={} local PROG2_C={}
local _curMap=1
local function _getMap(op) if _curMap==1 then return PROG2_A[op] elseif _curMap==2 then return PROG2_B[op] else return PROG2_C[op] end end
local function _rebuild_p2(seed) for op=1,32 do PROG2_A[_PROG2_IDX[op]]=_getSem(op,seed) PROG2_B[_PROG2_IDX[op]]=_getSem(op,seed+1) PROG2_C[_PROG2_IDX[op]]=_getSem(op,seed+2) end for op=33,75 do PROG2_A[op]={{op,0,0,0}} PROG2_B[op]={{op,0,0,0}} PROG2_C[op]={{op,0,0,0}} end end
local _ISA_SEED
do local sA=_FLOOR((k2_eff_rot*31+7)%2147483647) if sA<1 then sA=1 end _ISA_SEED=sA _rebuild_p2(sA) end
local function _V(x,a,b,c) if type(x)~="number" then return 0 end if x>=0 then return x end if x==-1 then return a or 0 end if x==-2 then return b or 0 end return c or 0 end
local _AH=(function() local E={pcall=pcall,hf=hookfunction,ncc=newcclosure} local HH=type(E.hf)=="function" local NCC=type(E.ncc)=="function" local HF_SNAP=HH and E.hf or nil local NCC_SNAP=NCC and E.ncc or nil local S={n=0,hk=0} return {tick=function() S.n=S.n+1 end,S=S,HH=HH,NCC=NCC,E=E,HF_SNAP=HF_SNAP,NCC_SNAP=NCC_SNAP} end)()
local _RI_FWD, _RO_FWD
local _M2_a, _M2_r, _RI_raw, _RI, _RO_raw, _RO, _OM2, _compile
local _TS=_NATIVE.tostring or tostring
local _HAS_B32=(type(bit32)=="table") and (type(bit32.bxor)=="function")
local function _u32(x) local m=x%4294967296 if m<0 then m=m+4294967296 end return m end
local function _s32(x) if x>=2147483648 then return x-4294967296 end return x end
local function _bxor_slow(a,b) local r,p=0,1 local ai,bi=a,b for k=1,32 do local xa,xb=ai%2,bi%2 if xa~=xb then r=r+p end ai=(ai-xa)/2 bi=(bi-xb)/2 p=p*2 end return r end
local function _band_slow(a,b) local r,p=0,1 local ai,bi=a,b for k=1,32 do local xa,xb=ai%2,bi%2 if xa==1 and xb==1 then r=r+p end ai=(ai-xa)/2 bi=(bi-xb)/2 p=p*2 end return r end
local function _bor_slow(a,b) local r,p=0,1 local ai,bi=a,b for k=1,32 do local xa,xb=ai%2,bi%2 if xa==1 or xb==1 then r=r+p end ai=(ai-xa)/2 bi=(bi-xb)/2 p=p*2 end return r end
local function _bxor(a,b) if _HAS_B32 then return bit32.bxor(a,b) end return _bxor_slow(a,b) end
local function _band(a,b) if _HAS_B32 then return bit32.band(a,b) end return _band_slow(a,b) end
local function _bor(a,b) if _HAS_B32 then return bit32.bor(a,b) end return _bor_slow(a,b) end
local function _bnot(a) if _HAS_B32 then return bit32.bnot(a) end return 4294967295-_u32(a) end
local function _isint(x) return type(x)=="number" and x==_FLOOR(x) end
local function _mba_add(a,b) if _isint(a) and _isint(b) then local au,bu=_u32(a),_u32(b) local xv,av=_bxor(au,bu),_band(au,bu) return _s32((xv+2*av)%4294967296) end return a+b end
local function _mba_sub(a,b) if _isint(a) and _isint(b) then local au,bu=_u32(a),_u32(b) local nbu=_bnot(bu) local xv,av=_bxor(au,nbu),_band(au,nbu) return _s32((xv+2*av+1)%4294967296) end return a-b end
local function _mba_neg(a) if _isint(a) then local au=_u32(a) return _s32((_bnot(au)+1)%4294967296) end return -a end
local function _mba_eq(a,b) if _isint(a) and _isint(b) then local xv=_bxor(_u32(a),_u32(b)) return xv==0 end return a==b end
local function _mba_ne(a,b) if _isint(a) and _isint(b) then local xv=_bxor(_u32(a),_u32(b)) return xv~=0 end return a~=b end
local _H_raw={[40]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=nil end,[24]=function(v,ins,a,b,c) local p=ins[2] if p<0 then p=_V(p,a,b,c) end v.sp=_mba_add(v.sp,1) v.st[v.sp]=(p~=0) end,[36]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_CONST(_V(ins[2],a,b,c)) end,[38]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_S(_V(ins[2],a,b,c)) end,[25]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=v.lo[_V(ins[2],a,b,c)] end,[7]=function(v,ins,a,b,c) v.lo[_V(ins[2],a,b,c)]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[3]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_GLOB(_V(ins[2],a,b,c)) end,[20]=function(v,ins,a,b,c) _SET_GLOB(_V(ins[2],a,b,c),v.st[v.sp]) v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[33]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]={} end,[23]=function(v,ins,a,b,c) v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[14]=function(v,ins,a,b,c) v.st[_mba_add(v.sp,1)]=v.st[v.sp] v.sp=_mba_add(v.sp,1) end,[5]=function(v,ins,a,b,c) local t=v.st[v.sp] v.st[v.sp]=v.st[_mba_sub(v.sp,1)] v.st[_mba_sub(v.sp,1)]=t end,[8]=function(v,ins,a,b,c) local ty=_V(ins[2],a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) local rr if ty==1 then rr=aa+bb elseif ty==2 then rr=aa-bb elseif ty==3 then rr=aa*bb elseif ty==4 then rr=aa/bb elseif ty==5 then rr=aa%bb elseif ty==6 then rr=_FLOOR(aa/bb) elseif ty==7 then rr=aa^bb elseif ty==8 then rr=_TS(aa).._TS(bb) elseif ty==9 then rr=(aa==bb) elseif ty==10 then rr=(aa~=bb) elseif ty==11 then rr=(aa<bb) elseif ty==12 then rr=(aa>bb) elseif ty==13 then rr=(aa<=bb) elseif ty==14 then rr=(aa>=bb) elseif ty==15 then rr=(aa and bb) elseif ty==16 then rr=(aa or bb) end v.st[v.sp]=rr end,[1]=function(v,ins,a,b,c) local ty=_V(ins[2],a,b,c) local x=v.st[v.sp] if ty==1 then v.st[v.sp]=-x elseif ty==2 then v.st[v.sp]=not x elseif ty==3 then v.st[v.sp]=#x end end,[31]=function(v,ins,a,b,c) v.st[v.sp]=v.st[v.sp][_S(_V(ins[2],a,b,c))] end,[39]=function(v,ins,a,b,c) local k=v.st[v.sp] local o=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=o[k] v.sp=_mba_sub(v.sp,1) end,[18]=function(v,ins,a,b,c) local v0=v.st[v.sp] local o=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=nil v.sp=v.sp-2 o[_S(_V(ins[2],a,b,c))]=v0 end,[17]=function(v,ins,a,b,c) local v0=v.st[v.sp] local k0=v.st[_mba_sub(v.sp,1)] local o=v.st[v.sp-2] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=nil v.st[v.sp-2]=nil o[k0]=v0 v.sp=v.sp-3 end,[13]=function(v,ins,a,b,c) local pk0=_V(ins[2],a,b,c) local cl0=v.lo local s=_mba_add(v.sp,1) v.sp=s v.st[s]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RI_FWD(pk0,a0,cl0) end end,[35]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) if ai==0 then ai=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local s=v.sp local fn0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) local ar={} for ii=ai,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=fn0(_up(ar,1,ai)) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[22]=function(v,ins,a,b,c) local si=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local s=v.sp local o0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local fn0=o0[_S(si)] local rv=fn0(o0,_up(ar,1,bc)) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[30]=function(v,ins,a,b,c) local aa=_V(ins[2] or 0,a,b,c) if aa==0 then v.pc=0 else local s=v.sp v.ret=v.st[_mba_sub(v.sp,aa-1)] v.pc=0 end end,[2]=function(v,ins,a,b,c) v.pc=_mba_add(v.pc,1) end,[16]=function(v,ins,a,b,c) v.pc=_V(ins[2],a,b,c) end,[10]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) local s=v.sp local c0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) if c0 then v.pc=_mba_add(v.pc,1) else v.pc=ai end end,[32]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) local s=v.sp local c0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) if not c0 then v.pc=_mba_add(v.pc,1) else v.pc=ai end end,[15]=function(v,ins,a,b,c) local s=v.sp local val0=v.st[s] v.st[s]=nil local t0=v.st[_mba_sub(s,1)] t0[#t0+1]=val0 v.sp=_mba_sub(s,1) end,[28]=function(v,ins,a,b,c) local s=v.sp local v0=v.st[s] local k0=v.st[_mba_sub(s,1)] local t0=v.st[s-2] v.st[s]=nil v.st[_mba_sub(s,1)]=nil t0[k0]=v0 v.sp=s-2 end,[19]=function(v,ins,a,b,c) v.flag=(_V(ins[2],a,b,c))%16 end,[6]=function(v,ins,a,b,c) local pk0=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=_RI(pk0,ar,v.lo) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[29]=function(v,ins,a,b,c) local fid0=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=_RO_FWD(fid0,ar,bc) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[37]=function(v,ins,a,b,c) local fid0=_V(ins[2],a,b,c) local s=_mba_add(v.sp,1) v.sp=s v.st[s]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RO_FWD(fid0,a0,n0) end end,[34]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_add(aa,bb) end,[11]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_sub(aa,bb) end,[12]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_bxor(_u32(aa),_u32(bb))) end,[9]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_band(_u32(aa),_u32(bb))) end,[21]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_bor(_u32(aa),_u32(bb))) end,[4]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_eq(aa,bb) end,[26]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_ne(aa,bb) end,[27]=function(v,ins,a,b,c) local aa=v.st[v.sp] v.st[v.sp]=_mba_neg(aa) end}
local _HIDX={40,24,36,38,25,7,3,20,33,23,14,5,8,1,31,39,18,17,13,35,22,30,2,16,10,32,15,28,19,6,29,37,34,11,12,9,21,4,26,27}
local _H={}
for i=1,40 do _H[i]=_H_raw[_HIDX[i]] end
local _M2_a
_M2_a=function(v,ins,a,b,c) if not ins then return end local op=ins[1] if op==0 then return end local list=_getMap(op) if list then for _i=1,#list do local sub=list[_i] local h=_H[sub[1]] if h then h(v,sub,a,b,c) end if v.pc==0 then return end end else local h=_H[op] if h then h(v,ins,a,b,c) end end end
local _M2_r
_M2_r=function(v,ins,a,b,c) local R=v.R local op=ins[1]
if op==33 then R[ins[2]]=_CONST(_V(ins[3],a,b,c))
elseif op==34 then R[ins[2]]=_S(_V(ins[3],a,b,c))
elseif op==35 then R[ins[2]]=nil
elseif op==36 then R[ins[2]]=(ins[3]~=0)
elseif op==37 then R[ins[2]]=v.lo[ins[3]]
elseif op==38 then R[ins[2]]=_GLOB(_V(ins[3],a,b,c))
elseif op==39 then R[ins[2]]=R[ins[3]]
elseif op==40 then R[ins[2]]=-R[ins[2]]
elseif op==41 then R[ins[2]]=not R[ins[2]]
elseif op==42 then R[ins[2]]=R[ins[2]]+R[ins[3]]
elseif op==43 then R[ins[2]]=R[ins[2]]-R[ins[3]]
elseif op==44 then R[ins[2]]=R[ins[2]]*R[ins[3]]
elseif op==45 then R[ins[2]]=R[ins[2]]/R[ins[3]]
elseif op==46 then R[ins[2]]=R[ins[2]]%R[ins[3]]
elseif op==47 then R[ins[2]]=_FLOOR(R[ins[2]]/R[ins[3]])
elseif op==48 then R[ins[2]]=R[ins[2]]^R[ins[3]]
elseif op==49 then R[ins[2]]=tostring(R[ins[2]])..tostring(R[ins[3]])
elseif op==50 then R[ins[2]]=(R[ins[2]]==R[ins[3]])
elseif op==51 then R[ins[2]]=(R[ins[2]]~=R[ins[3]])
elseif op==52 then R[ins[2]]=(R[ins[2]]<R[ins[3]])
elseif op==53 then R[ins[2]]=(R[ins[2]]>R[ins[3]])
elseif op==54 then R[ins[2]]=(R[ins[2]]<=R[ins[3]])
elseif op==55 then R[ins[2]]=(R[ins[2]]>=R[ins[3]])
elseif op==56 then R[ins[2]]=(R[ins[2]] and R[ins[3]])
elseif op==57 then R[ins[2]]=(R[ins[2]] or R[ins[3]])
elseif op==58 then R[ins[2]]=#R[ins[2]]
elseif op==59 then R[ins[2]]=R[ins[3]][_S(_V(ins[4],a,b,c))]
elseif op==60 then local obj=R[ins[2]] local k=R[ins[3]] obj[k]=R[ins[4]]
elseif op==61 then local obj=R[ins[2]] local k=_S(_V(ins[3],a,b,c)) obj[k]=R[ins[4]]
elseif op==62 then R[ins[2]]={}
elseif op==63 then local t=R[ins[2]] t[#t+1]=R[ins[3]]
elseif op==64 then local t=R[ins[2]] t[R[ins[3]]]=R[ins[4]]
elseif op==65 then v.ret=R[ins[2]] v.pc=0
elseif op==66 then local fn=R[ins[2]] local base=ins[3] local argc=ins[4] local ar={} for ii=1,argc do ar[ii]=R[base+ii-1] end R[ins[2]]=fn(_up(ar,1,argc))
elseif op==67 then local obj=R[ins[2]] local base=ins[3] local argc=ins[4] local ar={} for ii=1,argc do ar[ii]=R[base+ii] end R[base]=obj
elseif op==68 then local base=ins[2] local obj=R[base] local m=ins[3] local argc=ins[4] local ar={} for ii=1,argc do ar[ii]=R[base+ii] end local fn=obj[_S(m)] R[base]=fn(obj,_up(ar,1,argc))
elseif op==69 then local obj=R[ins[2]] local s=_S(_V(ins[4],a,b,c)) R[ins[2]]=obj[s]
elseif op==70 then local obj=R[ins[2]] local key=R[ins[3]] R[ins[2]]=obj[key]
elseif op==71 then R[ins[2]]={}
elseif op==72 then R[ins[2]]=nil
elseif op==73 then R[ins[2]]=nil
elseif op==74 then local t=R[ins[2]] t[#t+1]=R[ins[3]]
elseif op==75 then local t=R[ins[2]] t[R[ins[3]]]=R[ins[4]]
end end
local _OPI_TABLE={{13,5,11,14,6,4,1,8,7,9,15,2,10,3,0,12},{7,8,14,5,2,0,10,9,15,12,4,13,11,3,1,6},{5,11,8,4,12,3,13,7,2,0,6,15,14,1,10,9},{9,3,14,2,11,6,1,5,4,8,10,15,0,7,12,13},{3,6,12,5,13,15,14,2,9,1,0,10,11,8,4,7},{12,15,1,10,4,14,6,2,7,5,8,9,0,3,13,11},{5,13,10,15,4,6,11,12,8,0,9,1,14,7,2,3},{1,2,4,8,6,12,15,3,11,9,14,5,0,10,7,13},{12,8,7,2,4,13,0,9,14,6,3,1,10,11,5,15},{14,4,2,3,10,7,9,6,15,5,8,13,11,0,12,1},{6,1,7,10,9,12,14,5,2,3,8,4,13,0,11,15},{10,5,9,11,7,8,2,12,4,1,6,15,3,13,0,14},{6,13,10,0,11,4,9,14,5,7,12,2,1,15,8,3},{11,5,10,14,8,15,1,7,2,3,0,13,12,9,4,6},{8,15,11,3,5,6,13,10,12,2,0,14,4,1,7,9},{1,0,6,10,15,2,9,11,14,13,4,8,5,7,3,12}}
local _OPI_cache={}
local function _get_opi(fid) local gi=((fid-1)%16)+1 local t=_OPI_TABLE[gi] if not t then t={} end return t end
local _compiled={} local _RUNTIME_READY=false
local function _decProto(idx,which) local p=PROTO[idx] if not p or not p[1] then return nil end local hex=p[which+1] if type(hex)~="string" then return hex end return _decDouble(hex,idx,(which-1)*2,11,13,2) end
local function _parseCFF(s,fid) local blocks={} local entry=nil for blk_str in string.gmatch(s,"([^;]+)") do local bid_str,rest=string.match(blk_str,"^(%d+):(.+)$") if bid_str then local next_raw=0 local code_str,next_str=string.match(rest,"(.+)|(%d+)") if not code_str then code_str=rest next_raw=0 else next_raw=tonumber(next_str) or 0 end local code={} for ins_str in string.gmatch(code_str,"([^,]+)") do local op,a,b=string.match(ins_str,"(%d+):(%d+):(%d+)") if op then code[#code+1]={tonumber(op),tonumber(a),tonumber(b)} end end local bid=tonumber(bid_str) local next_id=0 if next_raw>0 then next_id=(next_raw-1-((bid*31+fid*7)%256)+256)%256 end blocks[bid]={code=code,next=next_id} if not entry then entry=bid end end end return blocks,entry end
local _RS_NEXT=4
local function _maybe_reshuffle(steps) _curMap=((steps+_AH.S.n)%3)+1 if _AH.S.n>=_RS_NEXT then _RS_NEXT=_AH.S.n+4 local s=_FLOOR((k2_eff_rot+_AH.S.n*7919)%2147483647) if s<1 then s=1 end _rebuild_p2(s) end end
_RI_raw=function(idx,args,parent) _AH.tick() _AD_tick() _RUNTIME_READY=true if _AH.S.n%4==0 then _ISA_SEED=_FLOOR((_ISA_SEED+_AH.S.n*7919+idx*131)%2147483647) if _ISA_SEED<1 then _ISA_SEED=1 end _rebuild_p2(_ISA_SEED) end local p=PROTO[idx] if not p or not p[1] then return end local cc=_compile(idx) local c=cc.code local params=cc.params local ord=cc.ord local isaKind=cc.isaKind if not params or not ord then return end local v if isaKind==1 then v={pc=1,st={},lo={},ret=nil,flag=0,R={}} else v={pc=1,sp=0,st={},lo={},ret=nil,flag=0} end setmetatable(v.lo,{__index=parent or {}}) for i=1,#params do v.lo[params[i]]=args[i] end local brk=false local steps=0 local t0=_now()
while not brk do steps=steps+1 _maybe_reshuffle(steps) if _ABORT then brk=true break end
if steps%64==0 then _AD_tick() if _now()-t0>_T_LIMIT_ACT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 brk=true break end end
if steps>_STEP_HARD_LIMIT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 brk=true break end local oi=ord[v.pc] if oi==nil then brk=true break end local ins=c[oi] if not ins then brk=true break end
if isaKind==1 then _M2_r(v,ins,ins[2],ins[3],ins[4]) if v.pc~=0 then v.pc=v.pc+1 end else local _oldpc=v.pc _M2_a(v,ins,ins[2],ins[3],ins[4]) if v.pc==_oldpc then v.pc=_mba_add(v.pc,1) end end if v.pc==0 then brk=true end end return v.ret end
_RI=_RI_raw
if _AH.NCC then local ok,fn=_AH.E.pcall(_AH.E.ncc,_RI_raw) if ok and type(fn)=="function" then _RI=fn end end
_RI_FWD=_RI
_compile=function(idx) if not _RUNTIME_READY then return {} end local c=_compiled[idx] if c then return c end local p=PROTO[idx] if not p or not p[1] then return {} end local aS=_decProto(idx,1) local bS=_decProto(idx,2) local cS=_decProto(idx,3) local dS=_decProto(idx,4) local params=p[6] local ord=p[7] local isaKind=p[8] or 0 local segSizes=p[9] or {#ord} local segSeeds=p[10] or {0} local pof,pk=_proto_k(idx) local ih2=_getPI(idx,2) local ih3=_getPI(idx,3) local ih4=_getPI(idx,4) local ih5=_getPI(idx,5) local segH1={} for si=1,#segSeeds do segH1[si]=_getPH1_seg(idx,si,segSeeds[si]) end
local function _split(s) if not s then return {} end local t={} local i=1 local n=#s while i<=n do local j=string.find(s,",",i,true) if not j then t[#t+1]=tonumber(string.sub(s,i)) break end t[#t+1]=tonumber(string.sub(s,i,j-1)) i=j+1 end return t end local A=_split(aS) local B=_split(bS) local C=_split(cS) local D=_split(dS) aS=nil bS=nil cS=nil dS=nil local n=#A c={} for i=1,n do local i0=i-1 local sA=(i0*7919+k2)%256 local sB=(i0*13337+k2)%65536 local sC=(i0*17771+k2)%65536 local sD=(i0*23333+k2)%65536 local A0=(A[i]-sA)%256 local B0=(B[i]-sB)%65536 local C0=(C[i]-sC)%65536 local D0=(D[i]-sD)%65536 local eo=(A0-i0*13)%256 if eo<0 then eo=eo+256 end local ea=(B0-i0*17-23)%65536 if ea<0 then ea=ea+65536 end local eb=(C0-i0*29-41)%65536 if eb<0 then eb=eb+65536 end local ec=(D0-i0*31-7)%65536 if ec<0 then ec=ec+65536 end local fn=(eo-pof-i*pk)%256 if fn<0 then fn=fn+256 end local hk=ih2[ih3[ih4[ih5[fn]]]] local si=_seg_of_pos(i,segSizes) local pid=segH1[si][hk] if type(pid)~="number" or pid<1 or pid>75 then _ABORT=true _POISON=_POISON+1 return {} end c[i]={pid,ea,eb,ec} end A=nil B=nil C=nil D=nil _compiled[idx]={code=c,params=params,ord=ord,isaKind=isaKind} return _compiled[idx] end
local OF_ENC={{"d36852af18caf5e769581d5d845d9a9ccd131f84fb4852154b52b39647bb2cd9d5f4ad9b8e1a4a13c1c836afaa4f56aa","a8c1b440ee137835b2e244ba51329cf18ea77722525c9e1956dcacc653cf575bb14771dc289f8a8675733b2119803ebb",0,0,230}}
local _OFC={}
local function _getOFC(fid) if _OFC[fid] then return _OFC[fid] end local e=OF_ENC[fid] if not e or not e[1] then return nil end local blocks,parsed_entry for _pi=1,2 do local _cipher,_sv,_ss,_s1 if _pi==1 then _cipher=e[1] _sv=0 _ss=19 _s1=17 else _cipher=e[2] or e[1] _sv=2 _ss=29 _s1=23 end local _s=_decDouble(_cipher,fid,_sv,_s1,_ss,2) if type(_s)=="string" and #_s>=1 then blocks,parsed_entry=_parseCFF(_s,fid) _s=nil if blocks and parsed_entry then break end end end if not blocks or not parsed_entry then return nil end local entry=e[5] or parsed_entry if not blocks[entry] then entry=parsed_entry end if not entry then return nil end local r={blocks=blocks,entry=entry,localCount=e[3],paramCount=e[4]} _OFC[fid]=r return r end
_OM2=function(OL,OS,blocks,entry,fid) _AH.tick() _AD_tick() if not blocks or not entry then return end local OPI=_get_opi(fid) local state=entry local steps=0 local sp=0 local t0=_now()
while state>0 do local blk=blocks[state] if not blk then return end local code=blk.code local OPC=1 local jump_to=nil
while OPC<=#code do steps=steps+1 _maybe_reshuffle(steps) if _ABORT then return end
if steps%64==0 then _AD_tick() if _now()-t0>_T_LIMIT_ACT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 return end end
if steps>_STEP_HARD_LIMIT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 return end local ins=code[OPC] local op0=ins[1] local op=OPI[(op0%16)+1] or op0 if op==0 then return elseif op==1 then sp=_mba_add(sp,1) OS[sp]=OL[ins[2]] elseif op==2 then OL[ins[2]]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) elseif op==3 then sp=_mba_add(sp,1) OS[sp]=_CONST(ins[2]) elseif op==4 then sp=_mba_add(sp,1) OS[sp]=nil elseif op==5 then local argc=ins[3] or 0 local args={} for ii=argc,1,-1 do args[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end sp=_mba_add(sp,1) OS[sp]=_RI(ins[2],args,OL) elseif op==6 then local argc=ins[3] or 0 local args={} for ii=argc,1,-1 do args[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end sp=_mba_add(sp,1) OS[sp]=_RO(ins[2],args,argc) elseif op==7 then local fid0=ins[2] sp=_mba_add(sp,1) OS[sp]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RO_FWD(fid0,a0,n0) end elseif op==8 then jump_to=ins[2] break elseif op==9 then local v0=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) if not v0 then jump_to=ins[2] end break elseif op==10 then local v0=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) if v0 then jump_to=ins[2] end break elseif op==11 then OS[sp]=nil sp=_mba_sub(sp,1) elseif op==12 then sp=_mba_add(sp,1) OS[sp]=OS[_mba_sub(sp,1)] elseif op==13 then local a,b=OS[_mba_sub(sp,1)],OS[sp] OS[_mba_sub(sp,1)],OS[sp]=b,a elseif op==14 then local n0=ins[2] if n0==0 then return nil elseif n0==1 then local rv=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) return rv else local r={} for ii=n0,1,-1 do r[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end return r end elseif op==15 then sp=_mba_add(sp,1) OS[sp]=_GLOB(ins[2]) end OPC=_mba_add(OPC,1) end
local _real_next=jump_to or blk.next
state=_real_next end end
_RO_raw=function(fid,args,argc) local fn=_getOFC(fid) if not fn then return end if not fn.blocks then return end local OL={} local n0=argc or fn.paramCount for i=1,n0 do OL[i]=args[i] end local OS={} return _OM2(OL,OS,fn.blocks,fn.entry,fid) end
_RO=function(...) return _RO_raw(...) end _RO_FWD=_RO
_SNAP3.m2a=_M2_a _SNAP3.m2r=_M2_r _SNAP3.slot=_getMap _SNAP3.reb=_rebuild_p2 _SNAP3.riraw=_RI_raw
_SNAP3.cmp=_compile
_SNAP3.om2=_OM2 _SNAP3.roraw=_RO_raw _SNAP3.rof=_RO_FWD
local _R_inner=function(idx,args) _TIMEOUT_HIT=false _ABORT=false local br=(k2_eff_rot+_AH.S.n*131)%5 if br==0 then pcall(_CONST,1) elseif br==1 and not _DEV then pcall(_S,1) end return _RO(idx or 1,args or {}) end
local _OM0=function(...) return _R_inner(...) end
local R=_OM0
_LOG("[DTKD] START AH.HF="..tostring(_AH.HH).." AH.NCC="..tostring(_AH.NCC).." AD=SNAP2+SNAP3+VMRAND")
local _rok,_rerr=pcall(R,1,{})
if not _rok then _ERR("[DTKD] 执行失败: "..tostring(_rerr)) end
if _TIMEOUT_HIT then _ERR("[DTKD] timeout") end
