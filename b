--[[DTKD V18.4.725S | GUARD:DTP_up0d25i23i_mw7bnknl]]
local _GUARD_TAG="DTP_up0d25i23i_mw7bnknl"

local _AHG=(function()
  local _p=pcall local _e=error local _t=type local _ts=tostring
  local _s=string local _tb=table local _d=debug
  if _t(_p)~="function" or _t(_e)~="function" then return {ok=false,reason="NO_PCALL"} end
  local _sub=_s and _s.sub local _dump=_s and _s.dump local _concat=_tb and _tb.concat
  local _IN_RBX=false
  if _t(hookfunction)=="function" and _t(getgenv)=="function" then
    local _okG,_gval=pcall(function() return game end)
    if _okG and _t(_gval)=="userdata" then
      local _okJ,_jid=pcall(function() return _gval.JobId end)
      if _okJ and _t(_jid)=="string" then _IN_RBX=true end
    end
  end
  local function _hard_die(tag)
    local _msg="[DTKD] E"
    _p(_e,_msg,0)
    if _IN_RBX then
      local _clk=(_t(os)=="table" and _t(os.clock)=="function") and os.clock or nil
      if _clk then local _t0=_clk() local _t2=(_t(_t0)=="number") and _t0 or 0 local _guard=0 while true do local _t1=_clk() if _t(_t1)~="number" then break end if _t1<_t2 then break end _guard=_guard+1 if _guard>=200000 then break end if _t1-_t2>=5 then break end end end
    end
    local _nil=nil return _nil.__dtkd_hard_die
  end
  local function _is_cfunc(fn)
    if _t(fn)~="function" then return false end
    if _t(_dump)=="function" then local ok,dumped=_p(_dump,fn) if ok then if dumped==nil then return true end if _t(dumped)=="string" then return false end else return true end end
    if _t(_d)=="table" and _t(_d.info)=="function" then local ok,src=_p(_d.info,fn,"s") if ok and _t(src)=="string" then if _sub(src,1,3)=="[C]" then return true end return false end end
    if _t(_d)=="table" and _t(_d.getinfo)=="function" then local ok,info=_p(_d.getinfo,fn) if ok and _t(info)=="table" and info.what then if info.what=="C" then return true end if info.what=="Lua" then return false end end end
    return nil
  end
  local _CRIT={{"string.byte",string.byte},{"string.sub",string.sub},{"string.char",string.char},{"string.find",string.find},{"string.match",string.match},{"string.gsub",string.gsub},{"string.gmatch",string.gmatch},{"string.dump",string.dump},{"table.concat",table.concat},{"math.floor",math.floor},{"pcall",pcall},{"xpcall",xpcall},{"error",error},{"assert",assert},{"type",type},{"tostring",tostring},{"tonumber",tonumber},{"select",select},{"rawget",rawget},{"rawset",rawset},{"rawequal",rawequal},{"rawlen",rawlen},{"setmetatable",setmetatable},{"getmetatable",getmetatable},{"pairs",pairs},{"ipairs",ipairs},{"next",next},{"load",load},{"loadstring",loadstring},{"getfenv",getfenv},{"setfenv",setfenv}}
  local _hooked={}
  for i=1,#_CRIT do local nm,fn=_CRIT[i][1],_CRIT[i][2] if fn~=nil and _is_cfunc(fn)==false then _hooked[#_hooked+1]=nm end end
  if #_hooked>0 then _hard_die("CRITICAL_HOOKED:".._concat(_hooked,",")) end
  if _t(_d)=="table" and _t(_d.gethook)=="function" then local ok,hk=_p(_d.gethook) if ok and hk~=nil then _hard_die("DEBUG_HOOK_ACTIVE") end end
  
local _PURGE={"getloadedmodules","getsourcelocals","getscripts","dumpstring","getscriptbytecode","getscriptclosure","getrunningscripts","getinstances","getnilinstances","decompile","getreg","getsenv","getscripthash","getconnections","hookmetamethod","getstack","setstack","getupvalue","setupvalue","getconstants","setconstant","getproto","getprotos","getsandbox","getloadedbatch","getfunctionbytecode","getcallbackvalue","isourclosure","replaceclosure","detour_function","getloaded","getsourceclocal","getallthreads","dump"}
local _gg=nil pcall(function() if _t(getgenv)=="function" then _gg=getgenv() end end)
if _gg==nil then _gg=(_t(_G)=="table" and _G) or nil end
if _IN_RBX and _gg then for _i=1,#_PURGE do local _k=_PURGE[_i] local _ex=false pcall(function() _ex=(_gg[_k]~=nil) end) if _ex then pcall(function() _gg[_k]=nil end) end end end
if _IN_RBX and _t(getfenv)=="function" then pcall(function() local _f0=getfenv(0) if _t(_f0)=="table" then for _i=1,#_PURGE do local _k=_PURGE[_i] pcall(function() if _f0[_k]~=nil then _f0[_k]=nil end end) end end end) end

  local _DUMP_FILES={"output.lua","dump.lua","deobf.lua","source.lua"}
  if _t(isfile)=="function" then for _i=1,#_DUMP_FILES do local _fn=_DUMP_FILES[_i] local _ok,_ex=pcall(isfile,_fn) if _ok and _ex then _hard_die("DUMP_FILE:".._fn) end end end
  if _t(_s)=="table" and _t(_s.dump)=="function" then pcall(function() _s.dump=function() return "" end end) end
  if _t(_d)=="table" then
    if _t(_d.getupvalue)=="function" then pcall(function() _d.getupvalue=function() return nil end end) end
    if _t(_d.setupvalue)=="function" then pcall(function() _d.setupvalue=function() return nil end end) end
    if _t(_d.getlocal)=="function" then pcall(function() _d.getlocal=function() return nil end end) end
    if _t(_d.setlocal)=="function" then pcall(function() _d.setlocal=function() return nil end end) end
    if _t(_d.getregistry)=="function" then pcall(function() _d.getregistry=function() return {} end end) end
  end
  return {ok=true,is_cfunc=_is_cfunc,hard_die=_hard_die,inRoblox=_IN_RBX}
end)()
if not _AHG.ok then
  local _nil=nil
  _nil.__dtkd_init_fail = true
end
do
  local _anchors=0
  if type(loadstring)=="function" then local ok,fn=pcall(loadstring,"return 42+1") if ok and type(fn)=="function" then local ok2,v=pcall(fn) if ok2 and v==43 then _anchors=_anchors+1 end end end
  if type(setfenv)=="function" then local ok=pcall(function() local f=function() return _DTKD_A end local e={_DTKD_A=12345} setfenv(f,e) return f()==12345 end) if ok then _anchors=_anchors+1 end end
  if type(debug)=="table" and type(debug.getinfo)=="function" then local ok,info=pcall(debug.getinfo,1) if ok and type(info)=="table" and (info.what=="Lua" or info.what=="main") then _anchors=_anchors+1 end end
  if type(math)=="table" and math.huge==1/0 and math.pi>3.14 and math.pi<3.15 then _anchors=_anchors+1 end
  local _trap=function(fn, expect) local ok, v = pcall(fn) if ok and v ~= expect then _anchors=_anchors-5 end end
if type(pairs)=="function" then _trap(function() local n=0 for _ in pairs({a=1,b=2,c=3}) do n=n+1 end return n end, 3) end
if type(ipairs)=="function" then _trap(function() local n=0 for _ in ipairs({1,2,3}) do n=n+1 end return n end, 3) end
if type(select)=="function" then _trap(function() return select("#",1,2,3) end, 3) end
if type(table)=="table" and type(table.unpack)=="function" then _trap(function() local a,b,c=table.unpack({1,2,3}) return a+b+c end, 6) end
if type(string)=="table" and type(string.rep)=="function" then _trap(function() return string.rep("a",3) end, "aaa") end
if type(string)=="table" and type(string.format)=="function" then _trap(function() return string.format("%d",42) end, "42") end
if type(math)=="table" and type(math.abs)=="function" then _trap(function() return math.abs(-5) end, 5) end
if type(math)=="table" and type(math.floor)=="function" then _trap(function() return math.floor(3.7) end, 3) end
if type(rawlen)=="function" then _trap(function() return rawlen({1,2,3}) end, 3) end
if type(rawequal)=="function" then _trap(function() return rawequal(1,1) end, true) end
  if _anchors<2 then if _AHG and _AHG.hard_die then _AHG.hard_die("ENV_ANCHOR_LOW_".._anchors) end end
  if _AHG and _AHG.inRoblox then
    local _okG,_g=pcall(function() return game end)
    if not _okG then if _AHG.hard_die then _AHG.hard_die("RBX_NO_GAME") end end
    if _okG and type(_g)=="userdata" then
      local _okJ,_jid=pcall(function() return _g.JobId end)
      if not _okJ or type(_jid)~="string" or #_jid<8 then if _AHG.hard_die then _AHG.hard_die("RBX_JOBID") end end
      local _okR,_rs=pcall(function() return _g:GetService("RunService") end)
      if not _okR or _rs==nil then if _AHG.hard_die then _AHG.hard_die("RBX_RUNSVC") end end
    end
  end
end

local _FLOOR=function(x) if type(x)~="number" then return 0 end return x-x%1 end
local _LOG=function() end
local _ERR_BASE=(type(warn)=="function" and warn) or (type(print)=="function" and print) or function() end
local _RI_FWD, _RO_FWD, _M2_a, _M2_r, _H3, _RI_raw, _RI, _RO_raw, _RO, _OM2, _compile, _getMap, _rebuild_p2
local _H, _HIDX, _H_raw, _PROG2_IDX, _OPI_TABLE, PROG2_A, PROG2_B, PROG2_C, SBOX
local CONST, STRS, PROTO, OF_ENC, _cache, _S_ref, _self_check
local _R3OFS=0
local _compiled={}

local _INTEGRITY_FAILED=false
local function _die(tag)
  if _INTEGRITY_FAILED then return end
  _INTEGRITY_FAILED=true
  pcall(function()
    if SBOX and #SBOX==256 then
      for i=1,256 do local j=(i*131+i*7)%256+1 SBOX[i],SBOX[j]=SBOX[j],SBOX[i] end
    end
    if _H3 then
      for op=33,75,3 do
        local orig=_H3[op]
        if orig then
          _H3[op]=function(v,ins,a,b,c)
            orig(v,ins,a,b,c)
            if v and v.R and ins and ins[2] then v.R[ins[2]]=(v.R[ins[2]] or 0)+1 end
          end
        end
      end
    end
  end)
end

local function _cc(b) b=_FLOOR(b)%256 if b<0 then b=b+256 end return string.char(b) end
local _hf=function(s) local h=5381 for i=1,#s do h=(h*33+string.byte(s,i))%4294967296 end return h end
local _XHAS_B32=(type(bit32)=="table") and (type(bit32.bxor)=="function")
local function _xu32(x) local m=x%4294967296 if m<0 then m=m+4294967296 end return m end
local function _xbxslow(a,b) a=_xu32(a) b=_xu32(b) local r=0 local p=1 for k=1,32 do local xa=a%2 local xb=b%2 if xa~=xb then r=r+p end a=(a-xa)*0.5 b=(b-xb)*0.5 p=p*2 end return r end
local _xbx=_XHAS_B32 and function(a,b) return bit32.bxor(a,b) end or _xbxslow
local _xsmix=function(l,s) local x=_xbx(_xu32(s),_xu32(l)) x=_xbx(x,_xu32(x*8192)) x=_xbx(x,_FLOOR(x/131072)) x=_xbx(x,_xu32(x*32)) x=x%2147483647 if x<1 then x=1 end return x end
local function _probe_hash() local h=5381 local function mix(s) for i=1,#s do h=(h*33+string.byte(s,i))%4294967296 end end mix("A"..tostring(string.byte("A"))) mix("abc"..((string.sub("abc",2,2)=="b") and "2b" or "XX")) mix("A"..tostring(string.char(65))) local _ok,_e=pcall(function() error("DTKD_PROBE") end) mix((_ok and "ok" or "err")..((type(_e)=="string" and string.find(_e,"DTKD_PROBE",1,true)) and "DTKD" or "NO")) mix(table.concat({"a","b"})) mix("num"..type(0)) mix("tab"..type({})) mix("fn"..type(print)) mix("nil"..tostring(nil)) mix("yes"..tostring(select("#",1,2,3))) mix("k1"..tostring(next({k=1}))) mix("raw"..tostring(rawget({a=1},"a"))) return h%2147483647 end
local _GREF
do local function _tryg(g) if type(g)=="table" and (g["print"]~=nil or g["warn"]~=nil or g["game"]~=nil) then return g end return nil end if type(getgenv)=="function" then pcall(function() local r=_tryg(getgenv()) if r then _GREF=r end end) end if _GREF==nil and type(_ENV)=="table" then local r=_tryg(_ENV) if r then _GREF=r end end if _GREF==nil and type(_G)=="table" then local r=_tryg(_G) if r then _GREF=r end end if _GREF==nil then _GREF=(type(_ENV)=="table" and _ENV) or (type(_G)=="table" and _G) or {} end end
local _NATIVE={print=print,warn=warn,error=error,assert=assert,tostring=tostring,tonumber=tonumber,type=type,pcall=pcall,xpcall=xpcall,pairs=pairs,ipairs=ipairs,next=next,select=select,unpack=table and (table.unpack or unpack),string=string,table=table,math=math,os=os,coroutine=coroutine,debug=debug}
pcall(function() _NATIVE.game=game end)
pcall(function() _NATIVE.tick=tick end)
local _MX={{144,0,0,19},{72,0,55,88},{0,1,0,0},{211,0,0,56}}
local _MX_INV={{136,0,0,219},{0,0,1,0},{72,135,0,88},{155,0,0,240}}
local _LCG1,_LCG2,_LCG3
local _T_LIMIT=49;local _STEP_HARD_LIMIT=10000000
local _T_LIMIT_ACT=_T_LIMIT
local _L1H="01032e0100ff01026401013e010687010e05010053010c57010bfd0108ff010ece01000801011301064e0107450105860104c20103100105c7010cc6010e11010c66010af6010a6a01058201019c0104d6010ba3010a9101026401032e01013e0100ff01064e0105860104c2010745020f08020d0a020e05020e05020004020105020206020307010a3f010b23010cff000000"
local L1P={}
do local _n=#_L1H local _i=1 while _i+1<=_n do local _h1=string.byte(_L1H,_i) local _h2=string.byte(_L1H,_i+1) if _h1<=57 then _h1=_h1-48 else _h1=_h1-87 end if _h2<=57 then _h2=_h2-48 else _h2=_h2-87 end L1P[#L1P+1]=_h1*16+_h2 _i=_i+2 end end
local _XT={}
for _i=0,15 do local _r={} for _j=0,15 do local a,b,rr,p=_i,_j,0,1 for _=1,4 do local x,y=a%2,b%2 if x~=y then rr=rr+p end a=(a-x)/2 b=(b-y)/2 p=p*2 end _r[_j]=rr end _XT[_i]=_r end
local function _bx(a,b) a=_FLOOR(tonumber(a) or 0) b=_FLOOR(tonumber(b) or 0) a=a%256 b=b%256 if a<0 then a=a+256 end if b<0 then b=b+256 end local al=a%16 local ah=(a-al)/16 local bl=b%16 local bh=(b-bl)/16 return _XT[al][bl]+_XT[ah][bh]*16 end
local function _L1X(P) local r={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0} local pc=1 while true do local op=P[pc] if not op or op==0 then break end local a=(P[pc+1] or 0)%16+1 local v=P[pc+2] or 0 if op==1 then r[a]=_FLOOR(v)%256 elseif op==2 then local b=(v%16)+1 r[a]=_bx(r[a],r[b]) end pc=pc+3 end return _FLOOR(r[1]*16777216+r[2]*65536+r[3]*256+r[4]) end
local _k2raw=_L1X(L1P)
if _GUARD_TAG~="DTP_up0d25i23i_mw7bnknl" then _die("GUARD_TAG") end
local _PROBE=_probe_hash()
local k2=(_k2raw+_hf(_GUARD_TAG)+_PROBE)%2147483647
if k2<1 then k2=k2+2147483647 end
if k2<1 then k2=1 end
local _USE_DUAL=false
local _HALF=1
local k2_eff=k2
pcall(function() if not _USE_DUAL then return end local pid,cid=0,0 local g=game if g~=nil then local ok1,v1=pcall(function() return g.PlaceId end) if ok1 and type(v1)=="number" then pid=v1 end local ok2,v2=pcall(function() return g.CreatorId end) if ok2 and type(v2)=="number" then cid=v2 end end local eh=((pid%2147483647)*31+(cid%2147483647)*17)%2147483647 k2_eff=(k2+eh*65536)%2147483647 if k2_eff<1 then k2_eff=1 end end)
local k2_eff_rot=k2_eff
pcall(function() local eh=0 local _used=false if type(os)=="table" and type(os.clock)=="function" then local ok,v=pcall(os.clock) if ok and type(v)=="number" then eh=(eh+_FLOOR(v*1000)%65536)%2147483647 _used=true end end if type(tick)=="function" then local ok,v=pcall(tick) if ok and type(v)=="number" then eh=(eh+_FLOOR(v)%65536)%2147483647 _used=true end end if type(time)=="function" then local ok,v=pcall(time) if ok and type(v)=="number" then eh=(eh+_FLOOR(v)%65536)%2147483647 _used=true end end if not _used then eh=(eh+_FLOOR((os.time and os.time() or 1))%65536)%2147483647 end k2_eff_rot=(k2_eff+eh*65536)%2147483647 end)
local _K2R=k2;local _sc=1 local _scnt=0
local _sdv=0
pcall(function() local _s=((game and game.PlaceId or 0)*31+(game and game.CreatorId or 0)*7)%65536 if _s and _s>0 then _sdv=_s end end)
if _sdv==0 then _sdv=7919 end
local _now
if type(os)=="table" and type(os.clock)=="function" then _now=os.clock elseif type(tick)=="function" then _now=tick else _now=function() return 0 end end
local _TIMEOUT_HIT=false

local _SNAP2={sb=string.byte,ss=string.sub,sc=string.char,sf=string.find,sm=string.match,gs=string.gsub,pt=print,wr=warn,er=error,tc=tostring,tn=tonumber,ty=type,pca=pcall,xpca=xpcall,pr=pairs,ipr=ipairs,nx=next,sel=select,rawg=rawget,raws=rawset,rawe=rawequal,smt=setmetatable,gmt=getmetatable,mf=math.floor,tblc=table.concat,gethk=(type(debug)=="table" and type(debug.gethook)=="function") and debug.gethook or nil,sethk=(type(debug)=="table" and type(debug.sethook)=="function") and debug.sethook or nil,getin=(type(debug)=="table" and type(debug.getinfo)=="function") and debug.getinfo or nil,tb=(type(debug)=="table" and type(debug.traceback)=="function") and debug.traceback or nil,hf=(type(hookfunction)=="function") and hookfunction or nil,ncc=(type(newcclosure)=="function") and newcclosure or nil,gc=(type(getgenv)=="function") and getgenv or nil,ccl=(type(checkcaller)=="function") and checkcaller or nil,il=(type(islclosure)=="function") and islclosure or nil}
local _RAWE=_SNAP2.rawe or function(a,b) return a==b end
local _SNAP3={}
local _AD_step=0
local _AD_birth=_now()
local _AD_lastT=_AD_birth
local _AD_CLOCKBACK=true
local _AD_origProbe=_PROBE
local function _check_env_strong()
  if _AHG and _AHG.is_cfunc then
    local _cc={"string.byte",string.byte,string.sub,string.sub,string.char,string.char,string.find,string.find,string.match,string.match,string.gsub,string.gsub,pcall,pcall,error,error,type,type,tostring,tostring,tonumber,tonumber,rawget,rawget,rawset,rawset,setmetatable,setmetatable,rawequal,rawequal,select,select}
    for _i=1,#_cc,2 do if _AHG.is_cfunc(_cc[_i+1])==false then _die("C_".._cc[_i]) end end
  end
  if _AHG and _AHG.inRoblox then
    if type(hookfunction)~="function" then _die("ENV_HF_GONE") end
    if type(getgenv)~="function" then _die("ENV_GG_GONE") end
  end
  local function _c(name, cur, snap) if cur~=snap then _die("ENV_"..name) end end
  _c("sb", string.byte, _SNAP2.sb)_c("ss", string.sub, _SNAP2.ss)_c("sc", string.char, _SNAP2.sc)_c("sf", string.find, _SNAP2.sf)_c("sm", string.match, _SNAP2.sm)_c("gs", string.gsub, _SNAP2.gs)_c("pca", pcall, _SNAP2.pca)_c("xpca", xpcall, _SNAP2.xpca)_c("ty", type, _SNAP2.ty)_c("tc", tostring, _SNAP2.tc)_c("tn", tonumber, _SNAP2.tn)_c("er", error, _SNAP2.er)_c("pr", pairs, _SNAP2.pr)_c("ipr", ipairs, _SNAP2.ipr)_c("nx", next, _SNAP2.nx)_c("sel", select, _SNAP2.sel)_c("rawg", rawget, _SNAP2.rawg)_c("raws", rawset, _SNAP2.raws)_c("rawe", rawequal, _SNAP2.rawe)_c("smt", setmetatable, _SNAP2.smt)_c("gmt", getmetatable, _SNAP2.gmt)_c("mf", math.floor, _SNAP2.mf)_c("tblc", table.concat, _SNAP2.tblc)
  if _SNAP2.hf then if type(hookfunction)~="function" then _die("ENV_HOOKFUNC_MISSING") end if hookfunction~=_SNAP2.hf then _die("ENV_hf") end end
  if _SNAP2.ncc then if type(newcclosure)~="function" then _die("ENV_NEWCC_MISSING") end if newcclosure~=_SNAP2.ncc then _die("ENV_ncc") end end
  if _SNAP2.gc then if type(getgenv)~="function" then _die("ENV_GETGENV_MISSING") end if getgenv~=_SNAP2.gc then _die("ENV_gc") end end
  if type(debug)=="table" then
    if _SNAP2.getin and debug.getinfo~=_SNAP2.getin then _die("ENV_getin") end
    if _SNAP2.sethk and debug.sethook~=_SNAP2.sethk then _die("ENV_sethk") end
    if _SNAP2.tb and debug.traceback~=_SNAP2.tb then _die("ENV_tb") end
    if type(debug.gethook)=="function" then local ok, hk = _SNAP2.pca(debug.gethook) if ok and hk~=nil then _die("ENV_DEBUG_HOOK") end end
  end
  if _SNAP2.sb and _SNAP2.sb("A")~=65 then _die("B_sb") end
  if _SNAP2.ss and _SNAP2.ss("abcd",2,3)~="bc" then _die("B_ss") end
  if _SNAP2.sc and _SNAP2.sc(65)~="A" then _die("B_sc") end
  if _SNAP2.tc and _SNAP2.tc(1)~="1" then _die("B_tc") end
  if _SNAP2.tn and _SNAP2.tn("42")~=42 then _die("B_tn") end
  if _RAWE(1,2)~=false then _die("B_rawe1") end
  if _RAWE(1,1)~=true then _die("B_rawe2") end
  if _SNAP2.pca and _SNAP2.er then local okE = _SNAP2.pca(_SNAP2.er, "DTKD_X") if okE then _die("B_er") end else _die("B_er_missing") end
  local okP, ph = _SNAP2.pca(_probe_hash) if not okP then _die("B_probe_err") elseif ph~=_AD_origProbe then _die("B_probe") end
  local okT, tNow = _SNAP2.pca(_now) if okT and type(tNow)=="number" then local age = tNow - _AD_birth if age>1800 or age<-1 then _die("B_age") end end
end
local function _check_vm_struct()
  if type(_H3)~="table" then _die("VM_H3_TBL") end
  local h3n = 0 for op=33,75 do if type(_H3[op])=="function" then h3n=h3n+1 end end
  if h3n < 40 then _die("VM_H3_CNT_"..h3n) end
  if type(_OPI_TABLE)~="table" then _die("VM_OPI_TBL") end
  local otn = 0
  for g=1,8 do
    if type(_OPI_TABLE[g])=="table" then
      otn=otn+1
      if #_OPI_TABLE[g]~=16 then _die("VM_OPI_ROW_"..g) end
      local seen={}
      for k=1,16 do local v=_OPI_TABLE[g][k] if type(v)~="number" or v<0 or v>15 or seen[v] then _die("VM_OPI_CELL_"..g.."_"..k) end seen[v]=true end
    end
  end
  if otn~=8 then _die("VM_OPI_CNT_"..otn) end
  if type(_H)~="table" then _die("VM_H_TBL") end
  local hn = 0 for i=1,40 do if type(_H[i])=="function" then hn=hn+1 end end
  if hn < 40 then _die("VM_H_CNT_"..hn) end
  if type(_HIDX)~="table" or #_HIDX~=40 then _die("VM_HIDX_LEN") end
  local hs={}
  for i=1,40 do local v=_HIDX[i] if type(v)~="number" or v<1 or v>40 or hs[v] then _die("VM_HIDX_CELL_"..i) end hs[v]=true end
  if type(_PROG2_IDX)~="table" or #_PROG2_IDX~=32 then _die("VM_PIDX_LEN") end
  local ps={}
  for i=1,32 do local v=_PROG2_IDX[i] if type(v)~="number" or v<1 or v>32 or ps[v] then _die("VM_PIDX_CELL_"..i) end ps[v]=true end
  if type(PROG2_A)~="table" or type(PROG2_B)~="table" or type(PROG2_C)~="table" then _die("VM_PROG2_TBL") end
  if type(SBOX)~="table" or #SBOX~=256 then _die("VM_SBOX_LEN") end
  local ss={}
  for i=1,256 do local v=SBOX[i] if type(v)~="number" or v<0 or v>255 or ss[v] then _die("VM_SBOX_CELL_"..i) end ss[v]=true end
  if type(CONST)~="table" or #CONST<1 then _die("VM_CONST_TBL") end
  if type(STRS)~="table" or #STRS<1 then _die("VM_STRS_TBL") end
  for i=1,#STRS do
    local row=STRS[i]
    if type(row)~="table" or #row<1 then _die("VM_STRS_ROW_"..i) end
    for k=1,#row do
      local frag=row[k]
      if type(frag)~="table" or #frag~=4 then _die("VM_STRS_FRAG_"..i.."_"..k) end
      for m=1,4 do if type(frag[m])~="string" or #frag[m]<2 then _die("VM_STRS_CELL_"..i.."_"..k.."_"..m) end end
    end
  end
  if type(PROTO)~="table" or #PROTO<1 then _die("VM_PROTO_TBL") end
  for i=1,#PROTO do
    local p=PROTO[i]
    if type(p)~="table" or p[1]~="S" then _die("VM_PROTO_ROW_"..i) end
    if type(p[6])~="table" or type(p[7])~="table" or type(p[9])~="table" or type(p[10])~="table" then _die("VM_PROTO_META_"..i) end
    if #p[7]<1 then _die("VM_PROTO_ORD_"..i) end
  end
  if type(OF_ENC)~="table" or #OF_ENC<1 then _die("VM_OFC_TBL") end
  if type(_M2_r)~="function" then _die("VM_M2R") end
  if type(_M2_a)~="function" then _die("VM_M2A") end
  if type(_RI_raw)~="function" then _die("VM_RIRAW") end
  if type(_compile)~="function" then _die("VM_COMPILE") end
  if type(_getMap)~="function" then _die("VM_GETMAP") end
  if type(_rebuild_p2)~="function" then _die("VM_REBUILD") end
  if type(_OM2)~="function" then _die("VM_OM2") end
  if type(_RO_raw)~="function" then _die("VM_RORAW") end
  if type(_RO_FWD)~="function" then _die("VM_ROFWD") end
  if type(_RI_FWD)~="function" then _die("VM_RIFWD") end
end
local function _check_refs()
  if _AHG and _AHG.is_cfunc then
    if _AHG.is_cfunc(string.byte)==true and not _RAWE(_SNAP2.sb,string.byte) then _die("SNAP2_SB") end
    if _AHG.is_cfunc(string.sub)==true and not _RAWE(_SNAP2.ss,string.sub) then _die("SNAP2_SS") end
    if _AHG.is_cfunc(pcall)==true and not _RAWE(_SNAP2.pca,pcall) then _die("SNAP2_PCA") end
    if _AHG.is_cfunc(error)==true and not _RAWE(_SNAP2.er,error) then _die("SNAP2_ER") end
  end
  if _SNAP3.h3 and not _RAWE(_SNAP3.h3,_H3) then _die("REF_H3") end
  if _SNAP3.m2r and not _RAWE(_SNAP3.m2r,_M2_r) then _die("REF_M2R") end
  if _SNAP3.m2a and not _RAWE(_SNAP3.m2a,_M2_a) then _die("REF_M2A") end
  if _SNAP3.cmp and not _RAWE(_SNAP3.cmp,_compile) then _die("REF_CMP") end
  if _SNAP3.slot and not _RAWE(_SNAP3.slot,_getMap) then _die("REF_SLOT") end
  if _SNAP3.reb and not _RAWE(_SNAP3.reb,_rebuild_p2) then _die("REF_REB") end
  if _SNAP3.riraw and not _RAWE(_SNAP3.riraw,_RI_raw) then _die("REF_RIRAW") end
  if _SNAP3.om2 and not _RAWE(_SNAP3.om2,_OM2) then _die("REF_OM2") end
  if _SNAP3.roraw and not _RAWE(_SNAP3.roraw,_RO_raw) then _die("REF_RORAW") end
end
local _AD_tick
_AD_tick=function()
  _AD_step=_AD_step+1
  if _AD_step%2~=0 then return end
  if not _RAWE(_SNAP2.pca,pcall) then _die("T_PCAHK") end
  if _AD_step%16<2 then _check_env_strong() _check_vm_struct() _check_refs() if _S~=_S_ref then _die("T_SH") end if _self_check then _self_check() end
  else
    if not _RAWE(_SNAP2.sb,string.byte) then _die("T_SB") end
    if not _RAWE(_SNAP2.ss,string.sub) then _die("T_SS") end
    if not _RAWE(_SNAP2.sc,string.char) then _die("T_SC") end
    if not _RAWE(_SNAP2.ty,type) then _die("T_TY") end
    if not _RAWE(_SNAP2.tc,tostring) then _die("T_TC") end
    if not _RAWE(_SNAP2.er,error) then _die("T_ER") end
    if not _RAWE(_SNAP2.sel,select) then _die("T_SEL") end
    if not _RAWE(_SNAP2.rawg,rawget) then _die("T_RAWG") end
    if not _RAWE(_SNAP2.smt,setmetatable) then _die("T_SMT") end
    if _SNAP2.getin and type(debug)=="table" and debug.getinfo~=_SNAP2.getin then _die("T_GI") end
    if _SNAP2.hf and type(hookfunction)=="function" and hookfunction~=_SNAP2.hf then _die("T_HF") end
    if _SNAP2.gethk and type(debug)=="table" then local ok, hk = _SNAP2.pca(debug.gethook) if ok and hk~=nil then _die("T_HOOK") end end
  end
  if _AD_step%128==0 then local newT = _FLOOR(_T_LIMIT*(85+_xsmix(_LCG1,_now()%100000)%31)/100) if newT>=30 then _T_LIMIT_ACT=newT end end
  if _AD_step%64==0 then local tNow=_now() if _AD_CLOCKBACK and tNow < _AD_lastT - 2 then _die("T_CLOCKBACK") end _AD_lastT=tNow end
end
local _ANTIFMT=function() local ok1,e1=pcall(function() error("a") end) local ok2,e2=pcall(function() error("b") end) if not ok1 and not ok2 then if type(e1)~="string" or type(e2)~="string" then _die("ANTIFMT_T") end if e1==e2 then _die("ANTIFMT_EQ") end end end
_ANTIFMT()
pcall(function() if type(debug)=="table" and type(debug.getinfo)=="function" then local _i=debug.getinfo(1) if type(_i)~="table" then _die("DEBUG_INFO") end end end)
SBOX={}
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
  while idx<=m do local e=idx+blk-1 if e>m then e=m end for j=idx,e do r=r..string.char(bytes[j]) end idx=e+1 blk=blk+5 if blk>31 then blk=8 end end
  return r
end
local function _decDouble(hex,idx,varIdx,s1,s2,useEff) local f,g,h,ii,jj=_gk(idx,varIdx+1,s2,useEff) local L1=_decHex(hex,f,g,h,ii,jj) local a,b,c,d,e=_gk(idx,varIdx,s1,useEff) local r=_decHex(L1,a,b,c,d,e) L1=nil return r end
local function _lcgKey(offset)
  local h0=_hf(_GUARD_TAG)
  local key={}
  local base=(k2+offset*999983)%2147483647 if base<1 then base=base+2147483647 end
  for i=0,127 do local v=(base*(i+1)*31+h0*17+i*7919)%2147483647 if v<0 then v=v+2147483647 end local b=SBOX[v%256+1] key[i+1]=(b+(v%256)+i*17)%256 end
  return key
end
local function _lcgDec(hex,offset)
  local key=_lcgKey(offset) local n=_FLOOR(#hex/2) local bytes={}
  for j=1,n do bytes[j]=tonumber(string.sub(hex,j*2-1,j*2),16) or 0 end
  bytes=_aes_lite_dec(bytes,key) local r="" for j=1,#bytes do r=r..string.char(bytes[j]) end return r
end

_LCG1=tonumber(_lcgDec("3a1ae1f1d5",0)) or (16807+(k2%997)*2)
_LCG2=tonumber(_lcgDec("c9e922def0",1)) or (48271+(k2%997)*2)
_LCG3=tonumber(_lcgDec("4f5f3c7b36",2)) or (69621+(k2%997)*2)
if _LCG1<1 or _LCG2<1 or _LCG3<1 then _die("LCG_INVALID") end
local function _proto_k(idx) local seed=_FLOOR((k2 or 0)+idx*3000017+23)%2147483647 if seed<1 then seed=1 end local st=_ks(seed,2) return (st[1]%255)+1,(st[2]%26)+3 end
_PROG2_IDX={}
do for i=1,32 do _PROG2_IDX[i]=i end local s=_FLOOR((k2*31+7)%2147483647) if s<1 then s=1 end local _l1=16807+((k2%997)*2) for i=32,2,-1 do s=_xsmix(_l1,s) local j=s%i+1 _PROG2_IDX[i],_PROG2_IDX[j]=_PROG2_IDX[j],_PROG2_IDX[i] end end
local _protoSBOX={} local _protoH1={} local _protoH={} local _protoInv={}
local function _getPSBOX(idx) local s=_protoSBOX[idx] if s then return s end local seed=_FLOOR((k2 or 0)+idx*13337)%2147483647 if seed<1 then seed=1 end local sb={} for i=0,255 do sb[i]=i end local st=seed for i=255,1,-1 do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end st=_xsmix(_lc,st) local j=st%(i+1) sb[i],sb[j]=sb[j],sb[i] end _protoSBOX[idx]=sb return sb end
local function _getPH(idx,lv) local ph=_protoH[idx] if ph and ph[lv] then return ph[lv] end local sb=_getPSBOX(idx) local seed=_FLOOR((k2 or 0)+idx*77777+lv*99991)%2147483647 if seed<1 then seed=1 end local arr={} for i=0,255 do arr[i]=i end local st=seed for i=255,1,-1 do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end st=_xsmix(_lc,st) local j=st%(i+1) arr[i],arr[j]=arr[j],arr[i] end local res={} for i=0,255 do res[i]=sb[arr[i]] end if not ph then ph={} _protoH[idx]=ph end ph[lv]=res return res end
local function _getPI(idx,lv) local pi=_protoInv[idx] if pi and pi[lv] then return pi[lv] end local h=_getPH(idx,lv) local inv={} for i=0,255 do inv[h[i]]=i end if not pi then pi={} _protoInv[idx]=pi end pi[lv]=inv return inv end
local function _getPH1_seg(idx,si,seed) local key=idx*1000+si local h=_protoH1[key] if h then return h end local sb=_getPSBOX(idx) local _seed=(k2+idx*7000003+seed)%2147483647 if _seed<1 then _seed=1 end local st=_ks(_seed,128*3+100) local h1={} local used={} for op=1,128 do local k2v local tries=0 repeat local base=(op-1)*3+tries k2v=st[(base%#st)+1]%256 if k2v==0 then k2v=1 end k2v=sb[k2v] tries=tries+1 if tries>500 then break end until not used[k2v] used[k2v]=true local target if op<=32 then target=op elseif op>=65 and op<=107 then target=op-32 else target=op end h1[k2v]=target end _protoH1[key]=h1 return h1 end
local function _seg_of_pos(pos,sizes) local acc=0 for si=1,#sizes do acc=acc+sizes[si] if pos<=acc then return si end end return #sizes end
CONST={{"h","20dab08b"},{"h","9b35d48509fa850fbfb9"},{"h","984b38d01004ec"},{"h","28ac21bdbcafdc"},{"h","16547f24ac9dd5"},{"h","28e374ff25f337"},{"h","c07167738b2056"},{"h","3f32d5fd63b7da"},{"h","dec7aa7cceb3e3"},{"h","9c4b134678df25"}}
local _constCache={}
local _constH={}
local function _CONST(i) if _RAWE(_SNAP2.sb,string.byte)==false then _die("C_HK_SB") end if _RAWE(_SNAP2.ty,type)==false then _die("C_HK_TY") end if type(i)~="number" or i<1 or i>#CONST-8 then return 0 end local c=_constCache[i] if c~=nil then if _constH[i]~=_hf(tostring(c)) then _die("C_TAMPER_"..i) end return c end local e=CONST[i] if type(e)=="table" then if e[1]=="e" then local op=e[3] local v if op==1 then v=e[2]+e[4] elseif op==2 then v=e[2]-e[4] elseif op==3 then v=e[2]*e[4] else v=e[2] end _constCache[i]=v _constH[i]=_hf(tostring(v)) local _s=i*7919 return (v+_s)-_s end if e[1]=="b" then local v=(e[2]==1) _constCache[i]=v _constH[i]=_hf(tostring(v)) return v end if e[1]=="nd" then local a,b,c2,d,e2=_gk(i,0,5,2) local v=tonumber(_decHex(e[2],a,b,c2,d,e2)) or 0 _constCache[i]=v _constH[i]=_hf(tostring(v)) local _s=i*7919 return (v+_s)-_s end if e[1]=="h" then local a,b,c2,d,e2=_gk(i,0,3,2) local r=_decHex(e[2],a,b,c2,d,e2) _constCache[i]=r _constH[i]=_hf(r) return r end end _constCache[i]=e _constH[i]=_hf(tostring(e)) return e end
local function _GLOB(a) local k=_CONST(a) if type(k)~="string" then return nil end local v=_NATIVE[k] if v~=nil then return v end if _GREF~=nil then v=_GREF[k] if v~=nil then return v end end if type(_G)=="table" then v=_G[k] if v~=nil then return v end end if type(_ENV)=="table" then v=_ENV[k] if v~=nil then return v end end if k=="game" then return game end return nil end
local function _SET_GLOB(a,v) local k=_CONST(a) if _GREF~=nil then _GREF[k]=v end end
STRS={{{"ce69ec475f1924af6cfea7614cb571ce1f73ebc8aa3b2f605455c9e8dd1b81d2005e7ea7bcb717b47394","f1033728411cfc6c9095dd51379e5a8b7754d372bf30ed54ed38eb9328635dbb65a54a8c584225d7410b","b58e8bdb7b372d5ab2ec74bcfb09e77ee5b52638bfcce2401325085cbc16fd74fcdf102b230c8b92c976","153ccfc9e7c3e1ab8441d1c853c45f9143e3e682067888e0b1b1868d2e706ee0eb1752c3aee4ce4171df"},{"8df44a3ca3bcd5c7e2c13cd2037e2356590aee401bf420feea21fb5c16902181003f04a8c4789a24","c30ee62e845c1d7cb071bcea18b2d23c89c9de8631d2b4974b1cef539e6dc41ed225b6f267881b18","d762599f568932ca41184b4083fc8d1c17213c04333f61ce1162f0dd80c846108608541818209d65","03c43b9606aa03defa6923020ab7d4d78a4a16546d1fa29f7b23170d08ec7b1afb19425813308f65"},{"297e5127e00b8eab483b54c4bdcd3425588fd6d5299548bd99a8e5de534c181497a26fdbe1bc","129b0a8cf02399ac7b5f7ffef0c5f98e24d43b5cdb46f3c2739499a85ef886f489715e7c1b27","0c2626eaa625c0608d64fab793e46db3efb5a995c008df17305b1952c022adaafd10eb751920","e27cec84f8a9af907a14babffc6fe9bef768c82a3d6bba7db1d728f823f852ce848c34680131"}},{{"f0911b42d859","0a9d70c3f817","6f1ce13d111c","152fd203e6b3"},{"8c4e0b28d539ed64","3be7faec3ca4d515","334f814a62934dd6","61c9b8f32199f7e9"}}}
_cache={} local _cacheH={} local _lastHash=(((_PROBE*7+k2)%4294967296))
local _cacheThreshold=96
local _GC_TICK=0
local function _S_frag(i,fi) local row=STRS[i] if not row or not row[fi] then return "" end local _sc2=_xsmix(_sc+fi*31,_lastHash+i*17+fi*7)%65536 local _v2=_FLOOR(_sc2%#row[fi])+1 local e=row[fi][_v2] if not e then return "" end return _decDouble(e,i,(fi-1)*4+(_v2-1),1,3,true) end
local function _S_core(i) if _RAWE(_SNAP2.sb,string.byte)==false then _die("S_HK_SB") end if _RAWE(_SNAP2.ty,type)==false then _die("S_HK_TY") end if not STRS[i] or #STRS[i]==0 then return "" end local c=nil if _cache[i] and #_cache[i]>_cacheThreshold then if _cacheH[i]~=_hf(_cache[i]) then _die("S_TAMPER_"..i) end c=_cache[i] end if c then return c end _scnt=_scnt+1 local dk=_FLOOR(i*31+_lastHash*7+_sdv+_scnt*17+_K2R*13)%65536 _sc=_xsmix(_sc+65,_sc+12345+dk)%65536 local r="" for fi=1,#STRS[i] do r=r.._S_frag(i,fi) end _lastHash=_hf(r) if #r>_cacheThreshold then _cache[i]=r _cacheH[i]=_hf(r) end _GC_TICK=_GC_TICK+1 if _GC_TICK%32==0 then pcall(collectgarbage,"step") end if _GC_TICK%64==0 then _cache={} _cacheH={} end return r end
local function _S(i) if type(i)~="number" or i<1 or i>#STRS then return "" end if _S~=_S_ref then _die("S_HOOK") end local r=_S_core(i) return r end
_S_ref=_S
PROTO={{"S","5299d30518168276bb441e8961d6d2c471cf1aa3876fe04c3f3e97fc857138786971ed9b9c2333e99621fa750ac2278f3707cf6a6d3405b137f3b504dd13d64b75fb977db491","4b694b6859300cf18e83992ce5d606a519a6f8be5829c140ba227f9a7c20bb890fcf0f9a51176269c3440af7ef218491c6fb4d5c838dd5eaf4173662efeca491eb3c52c4464f246b60a3778c49cf313bbaa290de550f6fed337849e8760be00af5922d9ed1ab7f012047b4d65456fafb7a38","ae14dc6fb9586c9aa1ea317c72df4eefdb90fc2ae2fcb728b1fd82fcfdaa876cfd3453a3848c793a3df848ecaf677eb331e2bbc00b5b48fe58f33aa44455fa581e315fedb9944f72593272c7ad2e8171c6b7c09e2d6d22b15405e114df6d40bd280e54cb0b535698dec4b0cff463e2a44682e462","4d916279ed74c43bfccfd2455fa69062ebd8a8712efb3eab335c53ca6f308804ea825931a145794880c1b21b051d73e3d320c018f17cde2cda20c98d741101b3a06a7bc1655c543d8a369c4883c5eb5cc8e1b3267c01dcc09bd9e870f5ca9c65de43a4444cac5e7b6d7b7fbea2130d88217c05c3",{},{1,4,9,8,2,3,7,5,6,10},1,{2,8},{1705119270,383690980},{},{"2e6b7fb7e78b84c6707ff7ec87d1910943197534eecf3e5598801278cc69bada144210"}}}
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
if not core then core={{23,0,0,0}} end return core end
PROG2_A={} PROG2_B={} PROG2_C={}
local _curMap=1
_getMap=function(op) if _curMap==1 then return PROG2_A[op] elseif _curMap==2 then return PROG2_B[op] else return PROG2_C[op] end end
_rebuild_p2=function(seed) for op=1,32 do PROG2_A[_PROG2_IDX[op]]=_getSem(op,seed) PROG2_B[_PROG2_IDX[op]]=_getSem(op,seed+1) PROG2_C[_PROG2_IDX[op]]=_getSem(op,seed+2) end for op=33,75 do PROG2_A[op]={{op,0,0,0}} PROG2_B[op]={{op,0,0,0}} PROG2_C[op]={{op,0,0,0}} end end
local _ISA_SEED
do local sA=_FLOOR((k2_eff_rot*31+7)%2147483647) if sA<1 then sA=1 end _ISA_SEED=sA _rebuild_p2(sA) end
local function _V(x,a,b,c) if type(x)~="number" then return 0 end if x>=0 then return x end if x==-1 then return a or 0 end if x==-2 then return b or 0 end return c or 0 end
local _AH=(function() local E={pcall=pcall,hf=hookfunction,ncc=newcclosure} local HH=type(E.hf)=="function" local NCC=type(E.ncc)=="function" local HF_SNAP=HH and E.hf or nil local NCC_SNAP=NCC and E.ncc or nil local S={n=0,hk=0} return {tick=function() S.n=S.n+1 end,S=S,HH=HH,NCC=NCC,E=E,HF_SNAP=HF_SNAP,NCC_SNAP=NCC_SNAP} end)()
_H3={}
_H3[33]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=_V(ins[3],a,b,c) R3[O+2]=_CONST(R3[O+1]) R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[34]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=_V(ins[3],a,b,c) R3[O+2]=_S(R3[O+1]) R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[35]=function(v,ins,a,b,c) v.R[ins[2]]=nil end
_H3[36]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=ins[3] R3[O+2]=(R3[O+1]~=0) R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[37]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=ins[3] R3[O+2]=v.lo[R3[O+1]] R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[38]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=_V(ins[3],a,b,c) R3[O+2]=_GLOB(R3[O+1]) R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[39]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=ins[3] R3[O+2]=R[R3[O+1]] R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[40]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=-R3[O+1] R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[41]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=not R3[O+1] R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[42]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R3[O+1]+R3[O+2] R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil v.flag=(v.flag+1)%16 if v.flag==0 then if _RAWE(_SNAP2.sb,string.byte)==false then _die("X42a") end if _RAWE(_SNAP2.pca,pcall)==false then _die("X42b") end if _RAWE(_SNAP2.er,error)==false then _die("X42c") end end end
_H3[43]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R3[O+1]-R3[O+2] R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[44]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R3[O+1]*R3[O+2] R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[45]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R3[O+1]/R3[O+2] R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[46]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R3[O+1]%R3[O+2] R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[47]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=_FLOOR(R3[O+1]/R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[48]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R3[O+1]^R3[O+2] R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[49]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=tostring(R3[O+1])..tostring(R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[50]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1]==R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[51]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1]~=R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[52]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1]<R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[53]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1]>R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[54]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1]<=R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[55]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1]>=R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[56]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1] and R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[57]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=(R3[O+1] or R3[O+2]) R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[58]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=#R3[O+1] R[ins[2]]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[59]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[3]] R3[O+2]=_V(ins[4],a,b,c) R3[O+3]=_S(R3[O+2]) R3[O+4]=R3[O+1][R3[O+3]] R[ins[2]]=R3[O+4] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil R3[O+4]=nil end
_H3[60]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R[ins[4]] R3[O+1][R3[O+2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[61]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=_V(ins[3],a,b,c) R3[O+3]=_S(R3[O+2]) R3[O+4]=R[ins[4]] R3[O+1][R3[O+3]]=R3[O+4] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil R3[O+4]=nil end
_H3[62]=function(v,ins,a,b,c) v.R[ins[2]]={} end
_H3[63]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+1][#R3[O+1]+1]=R3[O+2] R3[O+1]=nil R3[O+2]=nil end
_H3[64]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R[ins[4]] R3[O+1][R3[O+2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[65]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] v.ret=R3[O+1] v.pc=0 R3[O+1]=nil end
_H3[66]=function(v,ins,a,b,c) local R=v.R local fn=R[ins[2]] local base=ins[3] local argc=ins[4] local ar={} for ii=1,argc do ar[ii]=R[base+ii-1] end R[ins[2]]=fn(_up(ar,1,argc)) end
_H3[67]=function(v,ins,a,b,c) local R=v.R local obj=R[ins[2]] local base=ins[3] local argc=ins[4] local ar={} for ii=1,argc do ar[ii]=R[base+ii] end R[base]=obj end
_H3[68]=function(v,ins,a,b,c) local R=v.R local base=ins[2] local obj=R[base] local m=ins[3] local argc=ins[4] local ar={} for ii=1,argc do ar[ii]=R[base+ii] end local fn=obj[_S(m)] R[base]=fn(obj,_up(ar,1,argc)) end
_H3[69]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=_V(ins[4],a,b,c) R3[O+3]=_S(R3[O+2]) R3[O+4]=R3[O+1][R3[O+3]] R[ins[2]]=R3[O+4] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil R3[O+4]=nil end
_H3[70]=function(v,ins,a,b,c) local R,R3,O=v.R,v.R3,_R3OFS R3[O+1]=R[ins[2]] R3[O+2]=R[ins[3]] R3[O+3]=R3[O+1][R3[O+2]] R[ins[2]]=R3[O+3] R3[O+1]=nil R3[O+2]=nil R3[O+3]=nil end
_H3[71]=function(v,ins,a,b,c) v.R[ins[2]]={} end
_H3[72]=function(v,ins,a,b,c) v.R[ins[2]]=nil end
_H3[73]=function(v,ins,a,b,c) v.R[ins[2]]=nil end
_H3[74]=function(v,ins,a,b,c) local R=v.R local t=R[ins[2]] t[#t+1]=R[ins[3]] end
_H3[75]=function(v,ins,a,b,c) local R=v.R local t=R[ins[2]] t[R[ins[3]]]=R[ins[4]] end
_H3[72]=_H3[35]
_H3[73]=_H3[35]
_H3[71]=_H3[62]
_M2_r=function(v,ins,a,b,c) if not ins then return end local h=_H3[ins[1]] if h then h(v,ins,a,b,c) end end
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
_H_raw={[26]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=nil end,[5]=function(v,ins,a,b,c) local p=ins[2] if p<0 then p=_V(p,a,b,c) end v.sp=_mba_add(v.sp,1) v.st[v.sp]=(p~=0) end,[21]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_CONST(_V(ins[2],a,b,c)) end,[31]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_S(_V(ins[2],a,b,c)) end,[40]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=v.lo[_V(ins[2],a,b,c)] end,[30]=function(v,ins,a,b,c) v.lo[_V(ins[2],a,b,c)]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[9]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_GLOB(_V(ins[2],a,b,c)) end,[6]=function(v,ins,a,b,c) _SET_GLOB(_V(ins[2],a,b,c),v.st[v.sp]) v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[16]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]={} end,[34]=function(v,ins,a,b,c) v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[13]=function(v,ins,a,b,c) v.st[_mba_add(v.sp,1)]=v.st[v.sp] v.sp=_mba_add(v.sp,1) end,[18]=function(v,ins,a,b,c) local t=v.st[v.sp] v.st[v.sp]=v.st[_mba_sub(v.sp,1)] v.st[_mba_sub(v.sp,1)]=t end,[7]=function(v,ins,a,b,c) local ty=_V(ins[2],a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) local rr if ty==1 then rr=aa+bb elseif ty==2 then rr=aa-bb elseif ty==3 then rr=aa*bb elseif ty==4 then rr=aa/bb elseif ty==5 then rr=aa%bb elseif ty==6 then rr=_FLOOR(aa/bb) elseif ty==7 then rr=aa^bb elseif ty==8 then rr=_TS(aa).._TS(bb) elseif ty==9 then rr=(aa==bb) elseif ty==10 then rr=(aa~=bb) elseif ty==11 then rr=(aa<bb) elseif ty==12 then rr=(aa>bb) elseif ty==13 then rr=(aa<=bb) elseif ty==14 then rr=(aa>=bb) elseif ty==15 then rr=(aa and bb) elseif ty==16 then rr=(aa or bb) end v.st[v.sp]=rr end,[29]=function(v,ins,a,b,c) local ty=_V(ins[2],a,b,c) local x=v.st[v.sp] if ty==1 then v.st[v.sp]=-x elseif ty==2 then v.st[v.sp]=not x elseif ty==3 then v.st[v.sp]=#x end end,[22]=function(v,ins,a,b,c) v.st[v.sp]=v.st[v.sp][_S(_V(ins[2],a,b,c))] end,[33]=function(v,ins,a,b,c) local k=v.st[v.sp] local o=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=o[k] v.sp=_mba_sub(v.sp,1) end,[23]=function(v,ins,a,b,c) local v0=v.st[v.sp] local o=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=nil v.sp=v.sp-2 o[_S(_V(ins[2],a,b,c))]=v0 end,[2]=function(v,ins,a,b,c) local v0=v.st[v.sp] local k0=v.st[_mba_sub(v.sp,1)] local o=v.st[v.sp-2] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=nil v.st[v.sp-2]=nil o[k0]=v0 v.sp=v.sp-3 end,[27]=function(v,ins,a,b,c) local pk0=_V(ins[2],a,b,c) local cl0=v.lo local s=_mba_add(v.sp,1) v.sp=s v.st[s]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RI_FWD(pk0,a0,cl0) end end,[28]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) if ai==0 then ai=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local s=v.sp local fn0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) local ar={} for ii=ai,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=fn0(_up(ar,1,ai)) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[25]=function(v,ins,a,b,c) local si=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local s=v.sp local o0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local fn0=o0[_S(si)] local rv=fn0(o0,_up(ar,1,bc)) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[39]=function(v,ins,a,b,c) local aa=_V(ins[2] or 0,a,b,c) if aa==0 then v.pc=0 else local s=v.sp v.ret=v.st[_mba_sub(v.sp,aa-1)] v.pc=0 end end,[1]=function(v,ins,a,b,c) v.pc=_mba_add(v.pc,1) end,[8]=function(v,ins,a,b,c) v.pc=_V(ins[2],a,b,c) end,[38]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) local s=v.sp local c0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) if c0 then v.pc=_mba_add(v.pc,1) else v.pc=ai end end,[35]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) local s=v.sp local c0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) if not c0 then v.pc=_mba_add(v.pc,1) else v.pc=ai end end,[15]=function(v,ins,a,b,c) local s=v.sp local val0=v.st[s] v.st[s]=nil local t0=v.st[_mba_sub(s,1)] t0[#t0+1]=val0 v.sp=_mba_sub(s,1) end,[32]=function(v,ins,a,b,c) local s=v.sp local v0=v.st[s] local k0=v.st[_mba_sub(s,1)] local t0=v.st[s-2] v.st[s]=nil v.st[_mba_sub(s,1)]=nil t0[k0]=v0 v.sp=s-2 end,[10]=function(v,ins,a,b,c) v.flag=(_V(ins[2],a,b,c))%16 end,[3]=function(v,ins,a,b,c) local pk0=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=_RI(pk0,ar,v.lo) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[37]=function(v,ins,a,b,c) local fid0=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=_RO_FWD(fid0,ar,bc) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[4]=function(v,ins,a,b,c) local fid0=_V(ins[2],a,b,c) local s=_mba_add(v.sp,1) v.sp=s v.st[s]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RO_FWD(fid0,a0,n0) end end,[11]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_add(aa,bb) end,[12]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_sub(aa,bb) end,[24]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_bxor(_u32(aa),_u32(bb))) end,[17]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_band(_u32(aa),_u32(bb))) end,[36]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_bor(_u32(aa),_u32(bb))) end,[20]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_eq(aa,bb) end,[14]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_ne(aa,bb) end,[19]=function(v,ins,a,b,c) local aa=v.st[v.sp] v.st[v.sp]=_mba_neg(aa) end}
_HIDX={26,5,21,31,40,30,9,6,16,34,13,18,7,29,22,33,23,2,27,28,25,39,1,8,38,35,15,32,10,3,37,4,11,12,24,17,36,20,14,19}
_H={}
for i=1,40 do _H[i]=_H_raw[_HIDX[i]] end
_M2_a=function(v,ins,a,b,c) if not ins then return end local op=ins[1] if op==0 then return end local list=_getMap(op) if list then for _i=1,#list do local sub=list[_i] local h=_H[sub[1]] if h then h(v,sub,a,b,c) end if v.pc==0 then return end end else local h=_H[op] if h then h(v,ins,a,b,c) end end end
_OPI_TABLE={{5,11,14,13,0,7,4,2,3,9,12,8,1,15,6,10},{6,9,13,1,3,5,10,8,14,0,12,4,11,15,2,7},{5,3,6,12,2,11,9,0,7,8,14,13,10,1,15,4},{10,3,14,12,7,1,9,2,0,15,4,13,5,11,8,6},{15,2,13,11,8,5,9,12,6,7,0,14,1,3,4,10},{9,5,11,12,3,1,13,0,15,7,4,6,10,14,2,8},{5,3,8,15,11,13,2,9,14,10,7,6,4,12,1,0},{8,6,5,2,3,14,4,15,10,9,0,7,11,12,1,13}}
local function _get_opi(fid) local gi=((fid-1)%8)+1 local t=_OPI_TABLE[gi] if not t then t={} end return t end
local _RUNTIME_READY=false
local function _decProto(idx,which) local p=PROTO[idx] if not p or not p[1] then _die("PROTO_MISS_"..idx) end local hex=p[which+1] if type(hex)~="string" then return hex end return _decDouble(hex,idx,(which-1)*2,11,13,2) end
local function _parseCFF(s,fid) local blocks={} local entry=nil for blk_str in string.gmatch(s,"([^;]+)") do local bid_str,rest=string.match(blk_str,"^(%d+):(.+)$") if bid_str then local next_raw=0 local code_str,next_str=string.match(rest,"(.+)|(%d+)") if not code_str then code_str=rest next_raw=0 else next_raw=tonumber(next_str) or 0 end local code={} for ins_str in string.gmatch(code_str,"([^,]+)") do local op,a,b=string.match(ins_str,"(%d+):(%d+):(%d+)") if op then code[#code+1]={tonumber(op),tonumber(a),tonumber(b)} end end local bid=tonumber(bid_str) local next_id=0 if next_raw>0 then next_id=(next_raw-1-((bid*31+fid*7)%256)+256)%256 end blocks[bid]={code=code,next=next_id} if not entry then entry=bid end end end return blocks,entry end
local _RS_NEXT=4
local _R3_NEXT=32
local _maybe_reshuffle=function(steps) _curMap=((steps+_AH.S.n)%3)+1 if _AH.S.n>=_RS_NEXT then _RS_NEXT=_AH.S.n+4 local s=_FLOOR((k2_eff_rot+_AH.S.n*7919)%2147483647) if s<1 then s=1 end _rebuild_p2(s) end if _AH.S.n>=_R3_NEXT then _R3_NEXT=_AH.S.n+32 _R3OFS=(_FLOOR(k2_eff_rot+_AH.S.n*131)%8)*5 end end
_RI_raw=function(idx,args,parent) _AH.tick() _AD_tick() _RUNTIME_READY=true if _AH.S.n%4==0 then _ISA_SEED=_FLOOR((_ISA_SEED+_AH.S.n*7919+idx*131)%2147483647) if _ISA_SEED<1 then _ISA_SEED=1 end _rebuild_p2(_ISA_SEED) end local p=PROTO[idx] if not p or not p[1] then _die("PROTO_MISS_"..idx) end local cc=_compile(idx) local c=cc.code local params=cc.params local ord=cc.ord local isaKind=cc.isaKind if not params or not ord then return end local v={pc=1,st={},lo={},ret=nil,flag=0,f=0,R={},R3={}} setmetatable(v.lo,{__index=parent or {}}) for i=1,#params do v.lo[params[i]]=args[i] end local brk=false local steps=0 local t0=_now()
while not brk do steps=steps+1 _maybe_reshuffle(steps) if _INTEGRITY_FAILED then brk=true break end
if steps%64==0 then _AD_tick() if _now()-t0>_T_LIMIT_ACT then _TIMEOUT_HIT=true _die("TIMEOUT") brk=true break end end
if steps>_STEP_HARD_LIMIT then _TIMEOUT_HIT=true _die("STEP_LIMIT") brk=true break end local oi=ord[v.pc] if oi==nil then brk=true break end local ins=c[oi] if not ins then brk=true break end
if type(ins[1])~="number" or ins[1]<1 or ins[1]>75 then _die("VM_OP_RANGE") end
if steps%8==0 then if v.pc<1 or v.pc>#ord+1 then _die("VM_PC_RANGE") end end
if isaKind==1 then _M2_r(v,ins,ins[2],ins[3],ins[4]) if v.pc~=0 then v.pc=v.pc+1 end else local _oldpc=v.pc _M2_a(v,ins,ins[2],ins[3],ins[4]) if v.pc==_oldpc then v.pc=_mba_add(v.pc,1) end end if v.pc==0 then brk=true end end return v.ret end
_RI=_RI_raw
if _AH.NCC then local ok,fn=_AH.E.pcall(_AH.E.ncc,_RI_raw) if ok and type(fn)=="function" then _RI=fn end end
_RI_FWD=_RI
_compile=function(idx) _AD_tick() if not _RUNTIME_READY then return {} end local c=_compiled[idx] if c then if type(c.code)~="table" or #c.code~=#c.ord then _die("CC_CORRUPT") end for _ci=1,#c.code do local _ins=c.code[_ci] if type(_ins)~="table" or type(_ins[1])~="number" or _ins[1]<1 or _ins[1]>75 then _die("CC_INS_".._ci) end end return c end local p=PROTO[idx] if not p or not p[1] then _die("PROTO_MISS_"..idx) end local aS=_decProto(idx,1) local bS=_decProto(idx,2) local cS=_decProto(idx,3) local dS=_decProto(idx,4) local params=p[6] local ord=p[7] local isaKind=p[8] or 0 local segSizes=p[9] or {#ord} local segSeeds=p[10] or {0} local pof,pk=_proto_k(idx) local ih2=_getPI(idx,2) local ih3=_getPI(idx,3) local ih4=_getPI(idx,4) local ih5=_getPI(idx,5) local segH1={} for si=1,#segSeeds do segH1[si]=_getPH1_seg(idx,si,segSeeds[si]) end
local function _split(s) if not s then return {} end local t={} local i=1 local n=#s while i<=n do local j=string.find(s,",",i,true) if not j then t[#t+1]=tonumber(string.sub(s,i)) break end t[#t+1]=tonumber(string.sub(s,i,j-1)) i=j+1 end return t end local A=_split(aS) local B=_split(bS) local C=_split(cS) local D=_split(dS) aS=nil bS=nil cS=nil dS=nil local n=#A c={} for i=1,n do local i0=i-1 local sA=(i0*7919+k2)%256 local sB=(i0*13337+k2)%65536 local sC=(i0*17771+k2)%65536 local sD=(i0*23333+k2)%65536 local A0=(A[i]-sA)%256 local B0=(B[i]-sB)%65536 local C0=(C[i]-sC)%65536 local D0=(D[i]-sD)%65536 local eo=(A0-i0*13)%256 if eo<0 then eo=eo+256 end local ea=(B0-i0*17-23)%65536 if ea<0 then ea=ea+65536 end local eb=(C0-i0*29-41)%65536 if eb<0 then eb=eb+65536 end local ec=(D0-i0*31-7)%65536 if ec<0 then ec=ec+65536 end local fn=(eo-pof-i*pk)%256 if fn<0 then fn=fn+256 end local hk=ih2[ih3[ih4[ih5[fn]]]] local si=_seg_of_pos(i,segSizes) local pid=segH1[si][hk] if type(pid)~="number" or pid<1 or pid>75 then _die("PID_RANGE") end c[i]={pid,ea,eb,ec} end A=nil B=nil C=nil D=nil local _seen={} for _oi=1,#ord do local _oc=ord[_oi] if type(_oc)~="number" or _oc<1 or _oc>#c or _seen[_oc] then _die("ORD_BAD_".._oi) end _seen[_oc]=true end if #c<1 then _die("CODE_EMPTY") end _compiled[idx]={code=c,params=params,ord=ord,isaKind=isaKind} return _compiled[idx] end
OF_ENC={{"7dff7a3b752ff4e1b4b2c4614c663c3309220bc0a60fb9e5efd759bddb115911676c7d3492ce984122545819","dbd6310d145b8caa6efb777e3308cc2ca5044dc1eb4fcb642fa8407592f5e346dffa7890b76ede4742a607c7",0,0,42}}
local _OFC={} local _OFCH={}
local function _ofcHash(c) local h=5381 h=(h*33+(c.entry or 0))%4294967296 local n=0 for _k,_v in pairs(c.blocks or {}) do n=n+1 local _c=_v.code or {} h=(h*33+#_c)%4294967296 if _c[1] then h=(h*33+(_c[1][1] or 0))%4294967296 h=(h*33+(_c[1][2] or 0))%4294967296 end if _v.next then h=(h*33+_v.next)%4294967296 end end h=(h*33+n)%4294967296 return h end
local function _getOFC(fid) if _OFC[fid] then if _OFCH[fid]~=_ofcHash(_OFC[fid]) then _die("OFC_TAMPER_"..fid) end return _OFC[fid] end local e=OF_ENC[fid] if not e or not e[1] then _die("OFC_MISS_"..fid) end local blocks,parsed_entry for _pi=1,2 do local _cipher,_sv,_ss,_s1 if _pi==1 then _cipher=e[1] _sv=0 _ss=19 _s1=17 else _cipher=e[2] or e[1] _sv=2 _ss=29 _s1=23 end local _s=_decDouble(_cipher,fid,_sv,_s1,_ss,2) if type(_s)=="string" and #_s>=1 then blocks,parsed_entry=_parseCFF(_s,fid) _s=nil if blocks and parsed_entry then break end end end if not blocks or not parsed_entry then _die("OFC_PARSE_"..fid) end local entry=e[5] or parsed_entry if not blocks[entry] then entry=parsed_entry end if not entry then _die("OFC_ENTRY_"..fid) end for _bid,_blk in pairs(blocks) do if type(_blk)~="table" or type(_blk.code)~="table" then _die("OFC_BLK_"..fid) end if _blk.next>0 and not blocks[_blk.next] then _die("OFC_NEXT_"..fid) end end local r={blocks=blocks,entry=entry,localCount=e[3],paramCount=e[4]} _OFC[fid]=r _OFCH[fid]=_ofcHash(r) return r end
_OM2=function(OL,OS,blocks,entry,fid) _AH.tick() _AD_tick() if not blocks or not entry then return end local OPI=_get_opi(fid) local state=entry local steps=0 local sp=0 local sf=0 local t0=_now()
while state>0 do local blk=blocks[state] if not blk then return end local code=blk.code local OPC=1 local jump_to=nil
while OPC<=#code do steps=steps+1 _maybe_reshuffle(steps) if _INTEGRITY_FAILED then return end
if steps%64==0 then _AD_tick() if _now()-t0>_T_LIMIT_ACT then _TIMEOUT_HIT=true _die("TIMEOUT_O") return end end
if steps>_STEP_HARD_LIMIT then _TIMEOUT_HIT=true _die("STEP_LIMIT_O") return end local ins=code[OPC] local op0=ins[1] local op=OPI[(op0%16)+1] or op0 if op==0 then return elseif op==1 then sp=_mba_add(sp,1) OS[sp]=OL[ins[2]] elseif op==2 then OL[ins[2]]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) elseif op==3 then sp=_mba_add(sp,1) OS[sp]=_CONST(ins[2]) elseif op==4 then sp=_mba_add(sp,1) OS[sp]=nil elseif op==5 then local argc=ins[3] or 0 local args={} for ii=argc,1,-1 do args[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end sp=_mba_add(sp,1) OS[sp]=_RI(ins[2],args,OL) elseif op==6 then local argc=ins[3] or 0 local args={} for ii=argc,1,-1 do args[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end sp=_mba_add(sp,1) OS[sp]=_RO(ins[2],args,argc) elseif op==7 then local fid0=ins[2] sp=_mba_add(sp,1) OS[sp]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RO_FWD(fid0,a0,n0) end elseif op==8 then jump_to=ins[2] break elseif op==9 then local v0=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) if not v0 then jump_to=ins[2] end break elseif op==10 then local v0=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) if v0 then jump_to=ins[2] end break elseif op==11 then OS[sp]=nil sp=_mba_sub(sp,1) elseif op==12 then sp=_mba_add(sp,1) OS[sp]=OS[_mba_sub(sp,1)] elseif op==13 then local a,b=OS[_mba_sub(sp,1)],OS[sp] OS[_mba_sub(sp,1)],OS[sp]=b,a elseif op==14 then local n0=ins[2] if n0==0 then return nil elseif n0==1 then local rv=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) return rv else local r={} for ii=n0,1,-1 do r[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end return r end elseif op==15 then sp=_mba_add(sp,1) OS[sp]=_GLOB(ins[2]) end OPC=_mba_add(OPC,1) end
local _real_next=jump_to or blk.next
state=_real_next end end
_RO_raw=function(fid,args,argc) if _INTEGRITY_FAILED then _die("RO_AFTER_FAIL") end local fn=_getOFC(fid) if not fn then return end if not fn.blocks then return end local OL={} local n0=argc or fn.paramCount for i=1,n0 do OL[i]=args[i] end local OS={} return _OM2(OL,OS,fn.blocks,fn.entry,fid) end
_RO=function(...) return _RO_raw(...) end _RO_FWD=_RO
_SNAP3.h3=_H3 _SNAP3.m2r=_M2_r _SNAP3.m2a=_M2_a _SNAP3.cmp=_compile _SNAP3.slot=_getMap _SNAP3.reb=_rebuild_p2 _SNAP3.riraw=_RI_raw _SNAP3.om2=_OM2 _SNAP3.roraw=_RO_raw _SNAP3.rof=_RO_FWD
local function _self_hash() local h=5381 for i=1,#CONST do local e=CONST[i] if type(e)=="table" and type(e[1])=="string" and type(e[2])=="string" then for j=1,#e[2] do h=(h*33+string.byte(e[2],j))%4294967296 end end end for i=1,#PROTO do local p=PROTO[i] if type(p)=="table" then for k=2,5 do if type(p[k])=="string" then for j=1,#p[k] do h=(h*33+string.byte(p[k],j))%4294967296 end end end if type(p[7])=="table" then for j=1,#p[7] do h=(h*33+p[7][j])%4294967296 end end end end for i=1,#STRS do local row=STRS[i] if type(row)=="table" then for k=1,#row do local frag=row[k] if type(frag)=="table" then for m=1,#frag do if type(frag[m])=="string" then h=(h*33+#frag[m])%4294967296 for j=1,#frag[m] do h=(h*33+string.byte(frag[m],j))%4294967296 end end end end end end end for i=1,#OF_ENC do local e=OF_ENC[i] if type(e)=="table" then for k=1,2 do if type(e[k])=="string" then for j=1,#e[k] do h=(h*33+string.byte(e[k],j))%4294967296 end end end end end return h end
local _SELF_H=_self_hash()
_self_check=function() if _self_hash()~=_SELF_H then _die("SELF_HASH") end end
_self_check()
_check_env_strong()
_check_vm_struct()
_check_refs()
local _R_inner=function(idx,args) _TIMEOUT_HIT=false local br=(k2_eff_rot+_AH.S.n*131)%5 if br==0 then pcall(_CONST,1) elseif br==1 then pcall(_S,1) end return _RO(idx or 1,args or {}) end
local _OM0=function(...) return _R_inner(...) end
local R=_OM0
pcall(R,1,{})
