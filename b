--[[DTKD V18.3.611 | GUARD:DTP_mkboi8zwjl_mvxsdppq]]
local _GUARD_TAG="DTP_mkboi8zwjl_mvxsdppq"
local _FLOOR=function(x) if type(x)~="number" then return 0 end return x-x%1 end
local _LOG=function() end
local _ERR=(type(warn)=="function" and warn) or (type(print)=="function" and print) or function() end
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
  local _keys={string.char(112,114,105,110,116),string.char(119,97,114,110),string.char(101,114,114,111,114),string.char(97,115,115,101,114,116),string.char(116,111,115,116,114,105,110,103),string.char(116,111,110,117,109,98,101,114),string.char(116,121,112,101),string.char(112,99,97,108,108),string.char(120,112,99,97,108,108),string.char(112,97,105,114,115),string.char(105,112,97,105,114,115),string.char(110,101,120,116),string.char(115,101,108,101,99,116),string.char(115,116,114,105,110,103),string.char(116,97,98,108,101),string.char(109,97,116,104),string.char(111,115),string.char(99,111,114,111,117,116,105,110,101),string.char(100,101,98,117,103),string.char(117,110,112,97,99,107)}
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
  end)
end
pcall(function() _NATIVE.game=game end)
pcall(function() _NATIVE.tick=tick end)
local _MX={{0,111,0,0},{0,100,29,118},{1,136,0,208},{0,118,0,65}}
local _MX_INV={{40,0,1,48},{143,0,0,0},{0,53,0,18},{150,0,0,193}}
local _LCG1,_LCG2,_LCG3
local _T_LIMIT=3600;local _STEP_HARD_LIMIT=10000000
local _L1H="01009f01010b01028d01037a0102260104b30100a101063d01087201005b010f4a0104cf0107020104b60106220105d30103c00102b2010a7b01026d01026a0104e30105e5010f8101038b01010b01028d01009f01037a0104b60105d3010622010702020d06020f04020004020307020105020206010c0601080e010bef000000"
local L1P={}
do local _n=#_L1H local _i=1 while _i+1<=_n do local _h1=string.byte(_L1H,_i) local _h2=string.byte(_L1H,_i+1) if _h1<=57 then _h1=_h1-48 else _h1=_h1-87 end if _h2<=57 then _h2=_h2-48 else _h2=_h2-87 end L1P[#L1P+1]=_h1*16+_h2 _i=_i+2 end end
local _XT={}
for _i=0,15 do local _r={} for _j=0,15 do local a,b,rr,p=_i,_j,0,1 for _=1,4 do local x,y=a%2,b%2 if x~=y then rr=rr+p end a=(a-x)/2 b=(b-y)/2 p=p*2 end _r[_j]=rr end _XT[_i]=_r end
local function _bx(a,b) a=_FLOOR(tonumber(a) or 0) b=_FLOOR(tonumber(b) or 0) a=a%256 b=b%256 if a<0 then a=a+256 end if b<0 then b=b+256 end local al=a%16 local ah=(a-al)/16 local bl=b%16 local bh=(b-bl)/16 return _XT[al][bl]+_XT[ah][bh]*16 end
local function _L1X(P) local r={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0} local pc=1 while true do local op=P[pc] if not op or op==0 then break end local a=(P[pc+1] or 0)%16+1 local v=P[pc+2] or 0 if op==1 then r[a]=_FLOOR(v)%256 elseif op==2 then local b=(v%16)+1 r[a]=_bx(r[a],r[b]) end pc=pc+3 end return _FLOOR(r[1]*16777216+r[2]*65536+r[3]*256+r[4]) end
local _k2raw=_L1X(L1P)
if _GUARD_TAG~="DTP_mkboi8zwjl_mvxsdppq" then _ERR("[DTKD] GUARD FAIL");error("INT_FAIL",0) end
local _PROBE=_probe_hash()
local k2=(_k2raw+_hf(_GUARD_TAG)+_PROBE)%2147483647
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
local SBOX={}
do local _sb_seed=_FLOOR((k2*17)%2147483647) if _sb_seed<1 then _sb_seed=1 end for i=1,256 do SBOX[i]=i-1 end local s=_sb_seed local _h0=_hf(_GUARD_TAG) for i=256,2,-1 do s=_FLOOR((s*16807+_h0+i*131)%2147483647) local j=s%i+1 SBOX[i],SBOX[j]=SBOX[j],SBOX[i] end end
local function _ks(seed,cnt) local s=_FLOOR(seed)%2147483647 if s<1 then s=1 end local o={} for i=1,cnt do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end s=_xsmix(_lc,s) o[i]=s end return o end
local function _gk(idx,varIdx,salt,useEff) local _k2 if useEff==2 then _k2=_FLOOR(k2_eff or 0) elseif useEff and _HALF>0 and idx>_HALF then _k2=_FLOOR(k2_eff or 0) else _k2=_FLOOR(k2 or 0) end local seed=_FLOOR((_k2+idx*1000003+varIdx*7919+salt*104729)%2147483647) if seed<1 then seed=1 end local _si=_FLOOR(seed%256)+1 local b0=SBOX[_si] local b1=SBOX[_FLOOR(seed/256)%256+1] local b2=SBOX[_FLOOR(seed/65536)%256+1] local b3=SBOX[_FLOOR(seed/16777216)%256+1] local mixed=_FLOOR((b0*16777216+b1*65536+b2*256+b3)%2147483647) if mixed>0 then seed=mixed end local st=_ks(seed,50) local k1,k2a,pk={},{},{} for i=1,16 do k1[i]=(st[i]%255)+1 k2a[i]=(st[16+i]%255)+1 pk[i]=(st[32+i]%255)+1 end return k1,k2a,pk,(st[49]%7)+1,(st[50]%255)+1 end
local _INV_SBOX={}
do for i=0,255 do _INV_SBOX[SBOX[i+1]+1]=i end end
local function _aes_lite_dec(bytes,key) for round=8,1,-1 do for i=1,#bytes do bytes[i]=_INV_SBOX[bytes[i]+1] or 0 end for c=0,_FLOOR(#bytes/4)-1 do local a,b,d,e=bytes[c*4+1],bytes[c*4+2],bytes[c*4+3],bytes[c*4+4] bytes[c*4+1]=(_MX_INV[1][1]*a+_MX_INV[1][2]*b+_MX_INV[1][3]*d+_MX_INV[1][4]*e)%256 bytes[c*4+2]=(_MX_INV[2][1]*a+_MX_INV[2][2]*b+_MX_INV[2][3]*d+_MX_INV[2][4]*e)%256 bytes[c*4+3]=(_MX_INV[3][1]*a+_MX_INV[3][2]*b+_MX_INV[3][3]*d+_MX_INV[3][4]*e)%256 bytes[c*4+4]=(_MX_INV[4][1]*a+_MX_INV[4][2]*b+_MX_INV[4][3]*d+_MX_INV[4][4]*e)%256 end for i=1,#bytes do bytes[i]=(bytes[i]+key[(round-1)*16+((i-1)%16)+1])%256 end end return bytes end
local _CHAR_BAKE={}
for _k=0,255 do _CHAR_BAKE[_k]=string.char(_k) end
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
    for j=idx,e do r=r.._CHAR_BAKE[bytes[j]] end
    idx=e+1
    blk=blk+5 if blk>31 then blk=8 end
  end
  return r
end
local function _decDouble(hex,idx,varIdx,s1,s2,useEff) local f,g,h,ii,jj=_gk(idx,varIdx+1,s2,useEff) local L1=_decHex(hex,f,g,h,ii,jj) local a,b,c,d,e=_gk(idx,varIdx,s1,useEff) return _decHex(L1,a,b,c,d,e) end
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
  for j=1,#bytes do r=r.._CHAR_BAKE[bytes[j]] end
  return r
end
_LCG1=tonumber(_lcgDec("c8edda5e3e",0)) or 16807
_LCG2=tonumber(_lcgDec("071fbb3c6f",1)) or 48271
_LCG3=tonumber(_lcgDec("fd70adb90e",2)) or 69621
local function _proto_k(idx) local seed=_FLOOR((k2 or 0)+idx*3000017+23)%2147483647 if seed<1 then seed=1 end local st=_ks(seed,2) return (st[1]%255)+1,(st[2]%26)+3 end
local _PROG2_IDX={}
do for i=1,32 do _PROG2_IDX[i]=i end local s=_FLOOR((k2*31+7)%2147483647) if s<1 then s=1 end local _l1=16807+((k2%997)*2) for i=32,2,-1 do s=_xsmix(_l1,s) local j=s%i+1 _PROG2_IDX[i],_PROG2_IDX[j]=_PROG2_IDX[j],_PROG2_IDX[i] end end
local _protoSBOX={} local _protoH1={} local _protoH={} local _protoInv={}
local function _getPSBOX(idx) local s=_protoSBOX[idx] if s then return s end local seed=_FLOOR((k2 or 0)+idx*13337)%2147483647 if seed<1 then seed=1 end local sb={} for i=0,255 do sb[i]=i end local st=seed for i=255,1,-1 do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end st=_xsmix(_lc,st) local j=st%(i+1) sb[i],sb[j]=sb[j],sb[i] end _protoSBOX[idx]=sb return sb end
local function _getPH(idx,lv) local ph=_protoH[idx] if ph and ph[lv] then return ph[lv] end local sb=_getPSBOX(idx) local seed=_FLOOR((k2 or 0)+idx*77777+lv*99991)%2147483647 if seed<1 then seed=1 end local arr={} for i=0,255 do arr[i]=i end local st=seed for i=255,1,-1 do local _ii=(i-1)%3 local _lc if _ii==0 then _lc=_LCG1 elseif _ii==1 then _lc=_LCG2 else _lc=_LCG3 end st=_xsmix(_lc,st) local j=st%(i+1) arr[i],arr[j]=arr[j],arr[i] end local res={} for i=0,255 do res[i]=sb[arr[i]] end if not ph then ph={} _protoH[idx]=ph end ph[lv]=res return res end
local function _getPI(idx,lv) local pi=_protoInv[idx] if pi and pi[lv] then return pi[lv] end local h=_getPH(idx,lv) local inv={} for i=0,255 do inv[h[i]]=i end if not pi then pi={} _protoInv[idx]=pi end pi[lv]=inv return inv end
local function _getPH1_seg(idx,si,seed) local key=idx*1000+si local h=_protoH1[key] if h then return h end local sb=_getPSBOX(idx) local _seed=(k2+idx*7000003+seed)%2147483647 if _seed<1 then _seed=1 end local st=_ks(_seed,128*3+100) local h1={} local used={} for op=1,128 do local k2v local tries=0 repeat local base=(op-1)*3+tries k2v=st[(base%#st)+1]%256 if k2v==0 then k2v=1 end k2v=sb[k2v] tries=tries+1 if tries>500 then break end until not used[k2v] used[k2v]=true local target if op<=32 then target=op elseif op>=65 and op<=107 then target=op-32 else target=op end h1[k2v]=target end _protoH1[key]=h1 return h1 end
local function _seg_of_pos(pos,sizes) local acc=0 for si=1,#sizes do acc=acc+sizes[si] if pos<=acc then return si end end return #sizes end
local CONST={{"h","a0a031f1"},{"nd","56"},{"h","8c26a1aab8978573714b"},{"nd","3a"}}
local _constCache={}
local function _CONST(i) if type(i)~="number" or i<1 or i>#CONST then return 0 end local c=_constCache[i] if c~=nil then return c end local e=CONST[i] if type(e)=="table" then if e[1]=="n" then _constCache[i]=e[2] local _s=i*7919 return (e[2]+_s)-_s end if e[1]=="e" then local op=e[3] local v if op==1 then v=e[2]+e[4] elseif op==2 then v=e[2]-e[4] elseif op==3 then v=e[2]*e[4] else v=e[2] end _constCache[i]=v local _s=i*7919 return (v+_s)-_s end if e[1]=="b" then local v=(e[2]==1) _constCache[i]=v return v end if e[1]=="nd" then local a,b,c2,d,e2=_gk(i,0,5,2) local v=tonumber(_decHex(e[2],a,b,c2,d,e2)) or 0 _constCache[i]=v local _s=i*7919 return (v+_s)-_s end if e[1]=="h" then local a,b,c2,d,e2=_gk(i,0,3,2) local r=_decHex(e[2],a,b,c2,d,e2) _constCache[i]=r return r end end _constCache[i]=e return e end
local _U; pcall(function() local mt={} mt.__index=function(t,k) local o=setmetatable({},mt) rawset(t,k,o) return o end mt.__call=function(t,...) return setmetatable({},mt) end mt.__newindex=function(t,k,v) rawset(t,k,v) end _U=setmetatable({},mt) end)
local function _GLOB(a) local k=_CONST(a) local v=_NATIVE[k] if v~=nil then return v end if _GREF~=nil then v=_GREF[k] if v~=nil then return v end end if k=="print" and type(print)=="function" then return print end if k=="warn" and type(warn)=="function" then return warn end if k=="error" and type(error)=="function" then return error end if k=="tostring" and type(tostring)=="function" then return tostring end if k=="type" and type(type)=="function" then return type end if k=="pcall" and type(pcall)=="function" then return pcall end if k=="pairs" and type(pairs)=="function" then return pairs end if k=="ipairs" and type(ipairs)=="function" then return ipairs end if k=="string" and type(string)=="table" then return string end if k=="table" and type(table)=="table" then return table end if k=="math" and type(math)=="table" then return math end if k=="os" and type(os)=="table" then return os end return _U end
local function _SET_GLOB(a,v) local k=_CONST(a) if _GREF~=nil then _GREF[k]=v end end
local STRS={{"114fb55258961ae4a9bd74845bc1752942181d6f1df0319247edaf1d6aa293d5dfcc7a618d6d723c6ff609c3ed3e36da59a003359ea05e5fd15be658dc119813e0247ff8ce96a364062ea76a4fd25e1353b3616c5a21099ad0a90d73b795257ae00d2990d7c36857469a97c53de1c851c94e","f931e39ed40a984028d5c1bf0ec77f5ea70f68985835e24af9aec277116cb6d938a9fe814232f2cf3c0912e9b4b0c6571d0f5678cd87ce87935d98fd5e2568e5fdcd966ec72b103866968543f98eaee83844ccc80680611bf84d4028694d226e54d7518867e618cd9003bfc7c7efb578ab62","b2d815dd210246e5998ca266c0a4353bbf0b3e868836a1e078ac07ef719dce01e09267bfb95ac27bfe12befc644574551a4f7708fc6079be294182a384722986116461f16c4fb9ee159e2a83ce6a814004a5bedd2abacad2a4902789ecc8d212d98ae156a06a2a4168b2f0b3a00ade1e02c0","4aa4fc46c7742440f4cb3e891800fdfd118aab0b5e21093a9d2034d8c8e2837c3f84cb9efd151d7960613023f831cec0f1d3ee20bb3dcad63e6363da7c455e822da8c5ed86411bcc9abcd77f07afa2771d0c6aef7104448683913835b7d3a0bde00a948d78adfcc0714c4cded060e6ea84a3"},{"27d83fded9ff500474228c673886","03b798a9e0a7e52d812426ad3953","7a449e2ecd381bd7b5260d2873da","38dbeb9c5096a1e1766e05360de2"},{"ed4d07907dd8f296b23ce01e89f7a04f90c0e5d609c66fb9b195f182248738a0f7f69017cd20e4eaef404511206ca2677a0af0f26525851b12e8107e","1e2002d145f858785c6feb0451deb5ff03a43ddb6f159c47eb9fe5165f32dd995eac917f391055d413efec210a8df71284deab832b30d5f07d072be7","cb82c2bda3360e8d84d28b258faae48f0520c6f636ac0a7d0b786c0589f96405c39800cd2166d56ff3a9ad7296ce2bacdc1e1181bf11625f65d54cfa","c5e672fe85bf17a6325040f0d7b50f71cb3b298f42a93643bb09ec425810a1db4a58382f241cd437d8ff2cb7fb5fb20b732e3b5a6bb85a6b76365e42"},{"d524aa4173129179d0b1efcf6a0f76161dbab02b6b9b22baf062f5f0c00f2d0c00b08d7a99b58ad01ea40b380023612c2644768ee268a4674f2391f9","e0f6286c59afbd77b0961583e9816defd56fdf44ad9c1b9e37223535c017379cb8775f51042b61f3414ed5d795a91b2e553100dcb3f98782bbcd1113","8f6a7da25bf953e9ac6d20e206a0884c088368574d0898b790734590e3493b33a387893a36502a63e5e4b1371532d892e11853357a3087784d30a542","254d2e99f96e1a5a9768de74f09b5b0f84b9a9ea6aca3f2a2b7f594d0b8b80dc3c0dae2e91a24337e7acae5df39c856b6ba2353f51b3e6f736e43472"},{"2c736476bdccf88ec5d578d88f339d738fdc5381f7544ef47d5347a8b6a3f10d8fc784996acc08782bc6ee5e95f2f91362eccb2fb1c95e5e147aed90","2d12f1c6c384bb06ef1e9508f9b908311384c6f14569b92710ea13aa892e117cc3ac99febfbba9a541ab1fc4b34793813b9206de1736875e6c299051","667ccd0b173133dc55fa0f5628ee92ecdeec7260ed4f31c683097044b061458c1c023e77450c99dee54451de0305d420709891606759f66270cf5b70","cf799f215bee8c2ea9322de58cf035e95986da4c19b6259b27ed269bbf2e3c9fbbdbe1496a3c7e306433e094613313eb2770ad38e224cd824ec80f7b"},{"b6c23ead4c06f2e05e6fa7f4bf982f5b3562e3fc2364d21028170045894681287095e163690fa7aa08cc0ca9e44a6cf7ea3b7831715be8ffe40d37c3","91e8b0edbbee16812e45660cdde5fffe9c25eae4f49e91d943bc53dbbe5d895a6974f9616274391dbcbdd4dce5a198ed5ecc93deb1f17de171debec9","b42566fbc35226df96aa3474649e6671c8f1119831ec6eafd3350751892891312a332280d23ab56f089397c5de64cf9304dcc72d7dc21566e553b45b","e7db52d025f93bd0dbb790ba13aca010c3886f87c9f21fbba70c7e454f10fd3495b1e0aa2fb6d9abcdefd25c7c959531a34bcebc91aeb26d2732242f"},{"3698a3255462706b20e4cdab3741390af309c7400d59e8f93ae2ed286669d140417b794525a4f20febc3fafd1f6317aabaf3323141cbd89f5ca73f32","d4dd22b7f08e28bc1eca33f6143ad9f8aad100ed28a9ef1a5ee2628901329a6a34651d1e4ff8e5b92000cd8452129834d4f01695fb7b490a6b97abf9","1ae7382d1b2f22c59fed773e28e26976ba6f50188409e206e957a4b9ae7697acbfcc5cbe0e715eefd48863823d139527baffe411d2510909a3cec539","a3e3daf1346dfaf6c641ad6115a85532594c931bf1a99ceffbf9a335d754b075cab5ed8f52ab1466fca9b5ff9729f9461350c16206e69937211eab50"},{"679f9ee53392fa14c551d2e38239e3d36bd17aeba699cc9a5c57dbea69d698954aaf684ed06a8f0aad953f5b8686589341062b7b8f755a35f7acdda3","95a5e291b3e8ecc627a66d9480f2f6622350a2bf09545464ad2aed9089ad08fc9c21022ff11b017664cc4ab29c39456a0f8a91b74921cf2f806f2bc6","e7b9ee439754e97681ca3a9337e12daaf56fa7e3eda8c9988ee5c772efc5a415552baaba1fc111a367c92fbb45728940edaea60678ea90972308f6ec","14da00f03212fd870eb331564c632486609c4e7cce9a83528b92910af3cb90732d165bb0babaea630ea4d596066f4e95ae161af9598e036bd9c1020f"},{"979cee3c67b80b19ddf7b3bc9d9dcb1dbcc99225aa1ee40c01b421ea0bfe15e6339f36d853d3a04ae0934fc30844c77cc7052928a541716fd7d84ada","c9bd5082c87463c75430d577eb81e44737d6cfa7c50ab98a1bd0866f83bab93b6af5b006343c6dac3a8a9790572cbaa8d590f0984e4d12657f206e3e","0e6ff8911bb428afeb60dce7d3bbac29f376cf2febe459de76b11f5939caf4d375a3ffb2995ae76d6d25d40f6228ae745c3443218717d6509938ffa1","62be7f776250b26396ce50c5a6d23492f53c8308721b406c9ab4c67b78a854cf0090433ce77e84f14cefd6aef81b8c50578e462f97b8073228bd5dca"},{"0057bf7e96846e7ebb90de4a02cf9cbaba87f86e234ba2b1cfb4f3815a85be7f61b0e8b660a8aaf4f4bc580d4c75e59e50009bbe46243e5743726a25","57400753b8e602083436c85cc122fd6a969549df81ae6bd4791e9d95378b45549bc073e9adc2f0a002bc60568168cb5e99a4a59bc589c503237fec67","f6c6aa1e4161747d96a6310e777549d69b8b8650eae4eccc16897a92aad624ff09708f3f43b6e422d9854d17ce954b2878c8e4ab0b521f881559b676","890c960fc3834f2afcf3e651d6bd61d755860ba1ef5062155cbe034a094b26d7417f203239a4f4eff67fc54f61ff61a2ba6b038988f8209a72c86d2c"},{"9e890aa73df50f7b8f64ea29a46cfaf16708fa7a128435558a3f918d1cb80f5f361b5a1051f7663f4043ba37fa067608452e0dc5ebb84e457737c687","0db8066618005fa8a1fe7a0ecf9e330b78a4f9e1f8fc3e6c851fd7ebe00a15b5c2bcd6d7a27fc6d6cdcc78bf41226ec99423aadcccfa7792a36bf6aa","077b8ab8b8ae8a338ac66491faad489c7e2fdd2005a44f5c059f29857d7e7e0e4936e50bb4fc11c2463bf47b5b7cc8dceebbe8ca68af491d63afab5f","6641789fd83af48aaa5f9be032553b39015a30f97060f3002316ce80b36685ea58e5677eb862e9a904c5618e6044b54bdcdf3376e79d5628a8859579"},{"8c22c38c21ad2267d814b3c2b49762658e703948ec284b78f44aaffa2661c30545705ba931879c54c92de7bb60744a697bd3c23afccad40148f0c6c4","0f7c30811998c798563066ec13c3270acf867eb4aef79bfca01242fce3e69806ac298a0605e80aa40d3df0a71ac72093fa3e41d8ffa90986d6e56530","b610b21658b7c0d60b1c145f9f822ade424a223c54417dc53d818b685702c6edc1b62a5934658eb1b574d0345789a976bc204797c4adec9249000995","a0e7d5ae14338479a4120e1b52c59e0d0f173e2e05960914ff15bc591d8ff8c5675fb72b5c16a4462d6591641e1fdded7d6179d4825fc6db6a0c9473"},{"c471a6accd9c79d74df4d56d23c3c2cb492eff9bfb91357209907bbb18344131527a7a9e8b948a3678b5cf6e5bc816c6ef993ea363d8cdf80af34311","5dfaa453f3e3a434a4556f583d9787a5b948e2e9d0ad052b8711b62a4bd4633155ad5ced9457f81556872489d5cec9705bcf8e248c60d6140b266a37","0497331467f690214d14a76eb145d585968a0a92880150ae92f2514ef0604a4d057f090acd6133864790059fd178e5711614479c2d624f20e22b6ed3","6e6023e8c0851008922b915df6b4aa07c5a229666ed6bd0cb1eea0a81676e2b726714696569d8f2eed980c68c74a9298ab60b1119d93ed6ffcc3e987"},{"abf6e8eafc507bb9b667827460879add725008f03d9fc5a2f03b6a25c723784a4014ee0828d2b53c87919835f134b9a50380e05e068adfda917e7c74","4f45836f07ebb11e1691cee282827b6d555dbd4171b779993bfe5be5634df77badc1f5c3f3e01ca414d6723c500afee1daaf589c53305951ca2795de","0e22f32f472f743641626393743ae2d46f204f824e489cc99d31fbcc3a7215873bd57f2f699c19cdf5a5337a50a479eb6ecf7ff4dd3dcff799d8c8f4","cc6457ae4209e10f591e1f2e8206d16c76a19840a6ffcbf2ce6189823ab2bedff7723ca259453bd235f064ed1854de2369e3d67e64ee46d800b69e8b"},{"7e84014ed316f4f3ec03a3a1a28be21a8eeeaad9a1d1c8d6eb56dc377768f69d82d3c50263cb7c959acf34dd0482c175d5734f3558762fd16c366f04","987e280c71937976ebc41f7ae07d2b6b4773189c874aeeb8013cb98bd61f78b53a46f94fc42876d5c82a6ce8a846ab35b4b5bb6b0169080e79fce1c6","24ec9ad4b983393ce496ad79757c971b61ecbb1ee0e0b70ece9abf628883c3bb0cf75807fa47b5e320ae56d6657a8fe69d6ff95ed8694f6e274799aa","e7ab3761af01b6b58d8c69112731aa56a02d1689a219c4a3429b5388bbbc5f212e563c1488c4e07cff2d192cea4655b55f40e1dbdfead905eecc2c18"},{"9cacf6b8ae85618237402481f81e198b4f597bb6aba891c9b4d468c0d2898cb80d083f40872ecf488ff8b4c7ecc15d0130be064a82f5cb8ebb9fdf16","bf2d59c179e2ae3bc4f46713bb1e7c9442871afc80adaf654cc1bb4e1716610a89fb7c780fbb0f6d5c13b144b4a99322f31a023fc26ae1e7a43c2c78","23a3fafca47338308f65085b8a0e3a4a45fbd879bbf9b0dbaed7a1ada675429412bfb1b0188fd5c3d34e59e6893f80c4e242ebc87a7d6dca363875aa","57ce6004c752b62ef21a597031a078c9137d97279e9c6952c326a4e2ec29ad3dfec5862ee9f8cfe6520babd3cc1ecaf21fdd7d9f0460b7f4030d0c09"},{"d2fd6e4e46681ab29062ccd496a4ef8d60564e02e906939e2fc5b9c154e5eb2bf33edf09823c972be696b740159f3579700ef9cc6250f309c7e59195","8bbc748d5cfc2e4ffdbf6930b373766216ce3bd4dac2820051f34551e65f5e638d1979f51d3cac073dd62ce231eb0357e829965cde4c7342492dca14","28b3e393ea0b5982f6b4929aebdc1a992a4d337d4814c2ec7dbd8ac88ab0e597f948d1f82f9dcf80ac7695cfe61206f9b0eada14d94b318c938f6d66","46a45397fc28f0bc07bff8e54cc533dfb4f15fbe5d28e22110f3f4711e60cdd9091ba30f55385aae2785b07632d78634db507c5ebab92e6c97d93de6"},{"ef54f04651a26733f48d6f74af70b5b307d74f3269e3320e060fb56bbb5ede491e03417de3d2dc662a36f14f332deebda8f9937a164a7e3e26d90310","3d93edf92084d596a2317220b63e388d6b3dbcf9e5b3b3ba960931caf1214b042d9b2e2e8a789806cd53ddddc4fc820e056e7dc0dae995daa0f93587","e22e2724636676b5e2ed115aa63573ab73c7ac557c7d98b1b5afed5e38c426d8ac8aef5b799701f69291d6c05d074b87c873788eb823cc31a3ea5428","3c6d1723001dadccd743d9ddfe489e84988498195ab9af85695dcbfd10fd0b6051f8c2726ce52e2b50df620304e3c4e2150fd723b150f6c10910ea59"},{"e7c7c9369c7082daa37cea696436779255d8dbd4000ba608560bc6b1f295c1b9d3da41ac3c30145298f9d67f1df878d9c47438c1506b8fb2c1933556","c0d1456fbaff2a51fb967a6c201a13d766d92b376e73dc8f592b4953f6145cf47332bf85dadd2351f94348c32534a2f6c4ca04b8d243616522b818a8","17f8d33ac8121c17a452cd644d85dede8d84cd8b7f1ba0cb8711c503cd3278507bbf39b96dbd164ae1d61ee104c9a747f53403d9326a01edfea56b83","7157ded3d676696256445a35b48e51a74183dceb0ca5a07bf677983dc54b015a7e549ae2c3b3bffcee62f9256eaa8727820248b94f4e50ffda8040df"},{"d7fe08906ee68e5cb186c924c766fe3619378e41adfd187b779dd881ba11758f04e76d874a38eea1a38f87dedf5415ab89d94ca2222aea489784b52d","3f91ce1f805df139e8dce6f52a3d61882a204caa4acc07538750354cc441837a8ad9512452b3a1d5f40abf9a681d391a79a10918b8c90aa84ddc8c94","f597fcb338a760e4bf9a9fa2662f8e9c656c712d68860704f77d2b4515984f2b38687b6c5080fb4fa6002fad740ebb476b9e1cde619f248dee4c0923","46cde961f70466ac498a99d6c0f02999541b7549bf3b9c9fdaa6503045e33a7c93e5ced6a88f84a7c910218ad8767cec74f3d436c0ee395af6af3067"},{"931859fc0e6b259e9a6eaeac5b4a31230739cf869ed1852abd65201253557b4ac009158604d6d858190c690e2158e7477a89910916b98c8485fb7026","35415f571dca3fc6044701148dca52be476566cba4fc1c83577ae68a9805aae38e882f7a48fa86f6d26e282e16f2c1efdf6dbd73292fa8ddd5397073","5908c5dd498f6e21c456c07c151d01510589a8c261a2fefdafe728c85d7a3bb55e216cd14c289ec48054f949c2d682b13f9a9e519c768673c5b6c834","c93af10aa0f29229e6c42a7a3158ffb6de3d07c2233af8789c9601ba472e6c2938911fc661ab3cd7ff503a1879b7c0627cd6752c950991f294abd07b"},{"620a30c6cc198b9980e282ceaa88fd3b6fca07a985d123d194b06e3e11713d74214fce54952a4eedc12887f4d58df7aded560397a4daf52d082e6ad2","4734aae2a424f6b051d734a7c04f65c06ae51fd040cba1e1225692901f769f0e21c456c8e536696058e6109918a2e00d53f879edde00afd6867db630","93917647aa62f6a3b8605a64893e04198eb771dfa907f95680eea7232d16773e0be4e649ad6c479a48064a1197f29639d798d5d900100a7057f93c01","96f82b2bb73e9b514588e9e746cedae2c3ceba3e35f9fc7d879c82bfdb32e887f7400cb1b6d80bf1b97bc544e40dddbaf9f8911224ed8ff052476c55"},{"3dd3690688f04ff17561e60a3f1ba91faf1654508a9a1051326c6be35dd341ce846d4a6e2925743ae3a23b9deb3104f46f9f71cb510761aa7b96d083","513acc2dae7e33459a6f421c7780d729090df3f3cccffa506d7d423f53bb115dca87fe68266379f2b5d7d158af5f8ed6dcc7c7064896c9ec28bd7d4b","b767ff1770e553205858512b7d9ad0085488f04273a7392a6f641ad3baefb17a6fbdfd34e48b9a99748ac35c25313dbd1ae394adda0e6189a322a33e","5ae07d16785160d8a5a89b243f40dd991a55945166c78bb162c017c66748b34f42e6d5fa29f190a8b564415e8a3b99a34333cd483824f173ac13bc4c"},{"cfc907b6ebd120efd10e4f3ff1ba49d4172e7ebf92ead50bc4cc9e40ec261a86ecfa8d2f496b45dac4e296d615fd3f7a9cc08d55fdf47a4262200e74","de6f044f1679c3ffd791f6d20fcdce3440e6de059830236ab84d6ae2b4834c2b58b92e4e68a0fb94dfb601402e253b98c5d7e4b060ff5d4ebbed485d","702a59cccdca61d195985c53afc92c066c56bcd6b4f6e3f98b3a8fe9be53cc4778b3d05e6519a756b01947a9bb06441b1c537ea7ce320d1e0977e19a","516573b75596e045916962b3d81e5b77fe8076abd6665a927be096c43b4faee243ab8750c77c11bd2779840c5a08c0e7c3d393cd6b70470f56044735"},{"f648dd4e1a5ad19f7af162cc91b8761fe9309039fd6915f5c79e2707d0dbf04e966360518c2d6250d39740521b945a3d86b31625707850ec300c2d47","26ddf7f3d43989a9eaddcdaffc7e49e3b1ce9789988884df5086473867e225f1404b4f18d3825083f93653cd4a1456a0867194499bcd85470cbc119a","303c1d0daedefaf58a3a9ec04b2ec6f5d71a1313094ecedd2f1907a9ebecc68c4a0ab54a4b673cb8b22d7d9b8c01fe1753bb4af3060ac359f75b3129","278cdb4795cd69ac6ad4dc3a9690b97be0691a2055cb07409ed775ac67f00eed31b9675d7233d438a8de475ee0e2e267d3a45ecad5e551d555101a95"},{"04c83188ba47d79134e26929942b4200bcacc8657591276982f71a5819db72c6f90890a80f3b42e74a3939ecd82629e9dcafc5ba6d4e201476348dd7","7cdc4bb98f36e6380061002f50231f2234945365d00a8e7275787272b96927e16a3b5f203d5f1668a4c16071d5cbfd2a5910da070f92a9c278881bb6","bfb15c7aeb50d58da026acf3f8c702c78cb22b4b0b3be41add566ed2fd2993662d7b9314180253a78a2616b54c3d12796d3a0a03b157021ba452b852","0b6034e4c3ec6d5354b8d7c0d13d9e34d83ffa591dd4e7b7b233a82c5d6256a667ab578fdc848e4ec5706a0559c295c8554e5a6818509b6916056fb2"}}
local _cache={} local _lastHash=(((_PROBE*7+k2)%4294967296)) local _S_ref
local _cacheThreshold=96
local _GC_TICK=0
local function _S_core(i) if not STRS[i] or #STRS[i]==0 then return "" end local c=nil if _cache[i] and #_cache[i]>_cacheThreshold then c=_cache[i] end if c then return c end _scnt=_scnt+1 local dk=_FLOOR(i*31+_lastHash*7+_sdv+_scnt*17+_K2R*13)%65536 _sc=_xsmix(_sc+65,_sc+12345+dk)%65536 local _v=_FLOOR(_sc%#STRS[i])+1 local e=STRS[i][_v] if not e then return "" end local r=_decDouble(e,i,_v-1,1,3,true) _lastHash=_hf(r) if #r>_cacheThreshold then _cache[i]=r end _GC_TICK=_GC_TICK+1 if _GC_TICK%64==0 then pcall(collectgarbage,"step") end if _GC_TICK%128==0 then _cache={} end return r end
local function _S(i)
  if type(i)~="number" or i<1 or i>#STRS then return "" end
  if _POISON>0 and not _DEV then local _n=8+((_POISON*13+i*7)%32) local _b={} for _k=1,_n do _b[_k]=string.char(97+((_PROBE+i*11+_k*13)%26)) end return table.concat(_b) end
  if _S~=_S_ref then return "" end
  local r=_S_core(i) if type(r)~="string" or #r<4 then return r end
  if string.sub(r,1,5)=="LINK:" then local list={} local rest=string.sub(r,6) for p in string.gmatch(rest,"([^,]+)") do list[#list+1]=tonumber(p) end if #list<2 then return "" end local p1=_S_core(list[1]) local p2=_S_core(list[2]) r=p1..p2 end
  return r end
_S_ref=_S
local PROTO={{"S","e3fd44c727ecaea00d27dac1365f1a04ed41fe768bdfedd6cd8aa55856b6e5e03b7a85cd90ccf563b47dcf36404351a52c96c15f450fa93ca3ee94a8e9f8f2a6248c5df8","42318c713782dd8db495b6464bd0f48d92650a36fb041aaa6e5acdaf1fc18f91f02ba7965ac141bd4d194beed91a0325061a789ed6f4eefd9f357282d26a352c8600d853b7873faf10c81228436d1d64d1f3c999016fb60296fc3bcfc368074faa21bd79d1843975073fdab79c83671c2c0f","3a2098359fc7f1a992b1548c3ed734961c09793e40628aae764a0a25770c153e5d11884bd4650529532b93d609b5ed221c08324fac11922fb493b3738443eb9fdaa3e9226b79e4e066fcb49a74df63e9bc01dd54dcd9c2da6d3be3fba9faf55030bb049ed788c7086ad42d787d16f16a2a16","7a0836433efdc99e95ca0b3927b4ab6b71d1bfa5e32a8e7d1bb1437810f61ba665c238a4c6c91384dce687159c4efad27cf26b23278b43ef34338f7d103285aea359899b107d2efca6e5b3808ecd27f58146553785f9fd587d2f6beb7d35568d64afbc6dbbdb1ae61603f21be1d576427db2",{},{4,6,3,8,9,10,7,5,1,2},0,{8,2},{309248467,1466962796}}}
local _up=_NATIVE.unpack or (type(table)=="table" and table.unpack) or (type(unpack)=="function" and unpack)
local function _getSem(op,seed) local s=seed local function r() s=_xsmix(_LCG1,s) return s%256 end
if op==1 then return {{5,-1,0,0},{23,0,0,0}} end
if op==2 then return {{6,-1,0,0},{23,0,0,0}} end
if op==3 then return {{3,-1,0,0},{23,0,0,0}} end
if op==4 then return {{1,0,0,0},{23,0,0,0}} end
if op==5 then return {{30,-1,-2,0},{23,0,0,0}} end
if op==6 then return {{31,-1,-2,0},{23,0,0,0}} end
if op==7 then return {{32,-1,0,0},{23,0,0,0}} end
if op==8 then return {{24,-1,0,0}} end
if op==9 then return {{25,-1,0,0}} end
if op==10 then return {{26,-1,0,0}} end
if op==11 then return {{10,0,0,0},{23,0,0,0}} end
if op==12 then return {{11,0,0,0},{23,0,0,0}} end
if op==13 then return {{12,0,0,0},{23,0,0,0}} end
if op==14 then return {{22,-1,0,0}} end
if op==15 then return {{7,-1,0,0},{23,0,0,0}} end
if op==16 then return {{23,0,0,0}} end
if op==17 then return {{23,0,0,0}} end
if op==18 then return {{23,0,0,0}} end
if op==19 then return {{23,0,0,0}} end
if op==20 then return {{23,0,0,0}} end
if op==21 then return {{23,0,0,0}} end
if op==22 then return {{23,0,0,0}} end
if op==23 then return {{23,0,0,0}} end
if op==24 then return {{23,0,0,0}} end
if op==25 then return {{23,0,0,0}} end
if op==26 then return {{23,0,0,0}} end
if op==27 then return {{23,0,0,0}} end
if op==28 then return {{23,0,0,0}} end
if op==29 then return {{23,0,0,0}} end
if op==30 then return {{23,0,0,0}} end
if op==31 then return {{23,0,0,0}} end
if op==32 then return {{23,0,0,0}} end
return {{23,0,0,0}} end
local PROG2_A={} local PROG2_B={} local PROG2_C={}
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
local _H_raw={[7]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=nil end,[2]=function(v,ins,a,b,c) local p=ins[2] if p<0 then p=_V(p,a,b,c) end v.sp=_mba_add(v.sp,1) v.st[v.sp]=(p~=0) end,[38]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_CONST(_V(ins[2],a,b,c)) end,[15]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_S(_V(ins[2],a,b,c)) end,[33]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=v.lo[_V(ins[2],a,b,c)] end,[14]=function(v,ins,a,b,c) v.lo[_V(ins[2],a,b,c)]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[6]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]=_GLOB(_V(ins[2],a,b,c)) end,[10]=function(v,ins,a,b,c) _SET_GLOB(_V(ins[2],a,b,c),v.st[v.sp]) v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[24]=function(v,ins,a,b,c) v.sp=_mba_add(v.sp,1) v.st[v.sp]={} end,[40]=function(v,ins,a,b,c) v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end,[26]=function(v,ins,a,b,c) v.st[_mba_add(v.sp,1)]=v.st[v.sp] v.sp=_mba_add(v.sp,1) end,[27]=function(v,ins,a,b,c) local t=v.st[v.sp] v.st[v.sp]=v.st[_mba_sub(v.sp,1)] v.st[_mba_sub(v.sp,1)]=t end,[31]=function(v,ins,a,b,c) local ty=_V(ins[2],a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) local rr if ty==1 then rr=aa+bb elseif ty==2 then rr=aa-bb elseif ty==3 then rr=aa*bb elseif ty==4 then rr=aa/bb elseif ty==5 then rr=aa%bb elseif ty==6 then rr=_FLOOR(aa/bb) elseif ty==7 then rr=aa^bb elseif ty==8 then rr=_TS(aa).._TS(bb) elseif ty==9 then rr=(aa==bb) elseif ty==10 then rr=(aa~=bb) elseif ty==11 then rr=(aa<bb) elseif ty==12 then rr=(aa>bb) elseif ty==13 then rr=(aa<=bb) elseif ty==14 then rr=(aa>=bb) elseif ty==15 then rr=(aa and bb) elseif ty==16 then rr=(aa or bb) end v.st[v.sp]=rr end,[35]=function(v,ins,a,b,c) local ty=_V(ins[2],a,b,c) local x=v.st[v.sp] if ty==1 then v.st[v.sp]=-x elseif ty==2 then v.st[v.sp]=not x elseif ty==3 then v.st[v.sp]=#x end end,[3]=function(v,ins,a,b,c) v.st[v.sp]=v.st[v.sp][_S(_V(ins[2],a,b,c))] end,[11]=function(v,ins,a,b,c) local k=v.st[v.sp] local o=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=o[k] v.sp=_mba_sub(v.sp,1) end,[21]=function(v,ins,a,b,c) local v0=v.st[v.sp] local o=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=nil v.sp=v.sp-2 o[_S(_V(ins[2],a,b,c))]=v0 end,[12]=function(v,ins,a,b,c) local v0=v.st[v.sp] local k0=v.st[_mba_sub(v.sp,1)] local o=v.st[v.sp-2] v.st[v.sp]=nil v.st[_mba_sub(v.sp,1)]=nil v.st[v.sp-2]=nil o[k0]=v0 v.sp=v.sp-3 end,[13]=function(v,ins,a,b,c) local pk0=_V(ins[2],a,b,c) local cl0=v.lo local s=_mba_add(v.sp,1) v.sp=s v.st[s]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RI_FWD(pk0,a0,cl0) end end,[18]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) if ai==0 then ai=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local s=v.sp local fn0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) local ar={} for ii=ai,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=fn0(_up(ar,1,ai)) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[39]=function(v,ins,a,b,c) local si=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local s=v.sp local o0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local fn0=o0[_S(si)] local rv=fn0(o0,_up(ar,1,bc)) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[36]=function(v,ins,a,b,c) local aa=_V(ins[2] or 0,a,b,c) if aa==0 then v.pc=0 else local s=v.sp v.ret=v.st[_mba_sub(v.sp,aa-1)] v.pc=0 end end,[19]=function(v,ins,a,b,c) v.pc=_mba_add(v.pc,1) end,[30]=function(v,ins,a,b,c) v.pc=_V(ins[2],a,b,c) end,[25]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) local s=v.sp local c0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) if c0 then v.pc=_mba_add(v.pc,1) else v.pc=ai end end,[22]=function(v,ins,a,b,c) local ai=_V(ins[2],a,b,c) local s=v.sp local c0=v.st[s] v.st[s]=nil v.sp=_mba_sub(s,1) if not c0 then v.pc=_mba_add(v.pc,1) else v.pc=ai end end,[28]=function(v,ins,a,b,c) local s=v.sp local val0=v.st[s] v.st[s]=nil local t0=v.st[_mba_sub(s,1)] t0[#t0+1]=val0 v.sp=_mba_sub(s,1) end,[37]=function(v,ins,a,b,c) local s=v.sp local v0=v.st[s] local k0=v.st[_mba_sub(s,1)] local t0=v.st[s-2] v.st[s]=nil v.st[_mba_sub(s,1)]=nil t0[k0]=v0 v.sp=s-2 end,[29]=function(v,ins,a,b,c) v.flag=(_V(ins[2],a,b,c))%16 end,[5]=function(v,ins,a,b,c) local pk0=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=_RI(pk0,ar,v.lo) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[1]=function(v,ins,a,b,c) local fid0=_V(ins[2],a,b,c) local bc=_V(ins[3],a,b,c) if bc==0 then bc=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local ar={} for ii=bc,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) end local rv=_RO_FWD(fid0,ar,bc) v.sp=_mba_add(v.sp,1) v.st[v.sp]=rv end,[23]=function(v,ins,a,b,c) local fid0=_V(ins[2],a,b,c) local s=_mba_add(v.sp,1) v.sp=s v.st[s]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RO_FWD(fid0,a0,n0) end end,[4]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_add(aa,bb) end,[20]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_sub(aa,bb) end,[16]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_bxor(_u32(aa),_u32(bb))) end,[9]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_band(_u32(aa),_u32(bb))) end,[17]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_s32(_bor(_u32(aa),_u32(bb))) end,[8]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_eq(aa,bb) end,[34]=function(v,ins,a,b,c) local bb=v.st[v.sp] local aa=v.st[_mba_sub(v.sp,1)] v.st[v.sp]=nil v.sp=_mba_sub(v.sp,1) v.st[v.sp]=_mba_ne(aa,bb) end,[32]=function(v,ins,a,b,c) local aa=v.st[v.sp] v.st[v.sp]=_mba_neg(aa) end}
local _HIDX={7,2,38,15,33,14,6,10,24,40,26,27,31,35,3,11,21,12,13,18,39,36,19,30,25,22,28,37,29,5,1,23,4,20,16,9,17,8,34,32}
local _H={}
for i=1,40 do _H[i]=_H_raw[_HIDX[i]] end
local _M2_a
_M2_a=function(v,ins,a,b,c) if not ins then return end local op=ins[1] if op==0 then return end local h=_H[op] if h then h(v,ins,a,b,c) end end
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
local _OPI_TABLE={{6,8,2,10,15,0,9,12,4,11,14,7,5,13,3,1},{2,9,3,0,10,6,1,4,8,5,12,13,11,14,15,7},{15,6,11,13,7,9,3,10,14,8,5,1,4,0,12,2},{3,11,15,1,8,9,0,7,4,13,5,14,10,2,12,6},{3,12,7,1,13,8,15,6,0,9,11,14,10,2,5,4},{0,7,10,14,8,1,6,9,12,5,4,2,11,13,3,15},{10,8,4,11,0,1,13,6,7,3,14,2,9,15,12,5},{3,5,4,7,9,2,11,10,6,0,13,1,8,14,12,15},{11,3,5,9,14,6,10,15,1,0,13,2,7,12,4,8},{0,9,1,8,3,7,12,4,14,15,5,13,11,6,10,2},{11,3,7,15,1,6,5,0,4,2,12,8,14,13,10,9},{10,11,1,5,15,9,7,3,0,6,8,12,2,13,4,14},{8,6,9,2,14,10,13,11,1,3,7,5,15,12,0,4},{14,5,8,11,3,12,13,1,9,15,10,6,0,7,2,4},{8,0,2,7,9,1,11,3,12,14,13,4,6,10,5,15},{7,8,12,3,14,2,9,15,4,11,1,5,0,13,10,6}}
local _OPI_cache={}
local function _get_opi(fid) local gi=((fid-1)%16)+1 local t=_OPI_TABLE[gi] if not t then t={} end return t end
local _SLOT={} _SLOT.cur_map=1
_SLOT.get=function(pid) local m=_SLOT.cur_map if m==1 then return PROG2_A[pid] elseif m==2 then return PROG2_B[pid] else return PROG2_C[pid] end end
local _compiled={} local _RUNTIME_READY=false
local function _decProto(idx,which) local p=PROTO[idx] if not p or not p[1] then return nil end local hex=p[which+1] if type(hex)~="string" then return hex end return _decDouble(hex,idx,(which-1)*2,11,13,2) end
local function _parseCFF(s,fid) local blocks={} local entry=nil for blk_str in string.gmatch(s,"([^;]+)") do local bid_str,rest=string.match(blk_str,"^(%d+):(.+)$") if bid_str then local next_raw=0 local code_str,next_str=string.match(rest,"(.+)|(%d+)") if not code_str then code_str=rest next_raw=0 else next_raw=tonumber(next_str) or 0 end local code={} for ins_str in string.gmatch(code_str,"([^,]+)") do local op,a,b=string.match(ins_str,"(%d+):(%d+):(%d+)") if op then code[#code+1]={tonumber(op),tonumber(a),tonumber(b)} end end local bid=tonumber(bid_str) local next_id=0 if next_raw>0 then next_id=(next_raw-1-((bid*31+fid*7)%256)+256)%256 end blocks[bid]={code=code,next=next_id} if not entry then entry=bid end end end return blocks,entry end
_RI_raw=function(idx,args,parent) _AH.tick() _RUNTIME_READY=true if _AH.S.n%256==0 then pcall(function() if _AH.HH and hookfunction~=_AH.HF_SNAP then _POISON=_POISON+1 end if _AH.NCC and newcclosure~=_AH.NCC_SNAP then _POISON=_POISON+1 end if _probe_hash()~=_PROBE then _POISON=_POISON+1 end end) end if _AH.S.n%4==0 then _ISA_SEED=_FLOOR((_ISA_SEED+_AH.S.n*7919+idx*131)%2147483647) if _ISA_SEED<1 then _ISA_SEED=1 end _rebuild_p2(_ISA_SEED) end local p=PROTO[idx] if not p or not p[1] then return end local cc=_compile(idx) local c=cc.code local params=cc.params local ord=cc.ord local isaKind=cc.isaKind if not params or not ord then return end local v if isaKind==1 then v={pc=1,st={},lo={},ret=nil,flag=0,R={}} else v={pc=1,sp=0,st={},lo={},ret=nil,flag=0} end setmetatable(v.lo,{__index=parent or {}}) for i=1,#params do v.lo[params[i]]=args[i] end local brk=false local steps=0 local t0=_now()
while not brk do steps=steps+1 if _ABORT then brk=true break end
if steps%64==0 and _now()-t0>_T_LIMIT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 brk=true break end
if steps>_STEP_HARD_LIMIT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 brk=true break end local oi=ord[v.pc] if oi==nil then brk=true break end local ins=c[oi] if not ins then brk=true break end if isaKind==1 then _M2_r(v,ins,ins[2],ins[3],ins[4]) if v.pc~=0 then v.pc=v.pc+1 end else local _oldpc=v.pc _M2_a(v,ins,ins[2],ins[3],ins[4]) if v.pc==_oldpc then v.pc=_mba_add(v.pc,1) end end if v.pc==0 then brk=true end end return v.ret end
_RI=_RI_raw
if _AH.NCC then local ok,fn=_AH.E.pcall(_AH.E.ncc,_RI_raw) if ok and type(fn)=="function" then _RI=fn end end
_RI_FWD=_RI
local _RS_NEXT=97
local function _maybe_reshuffle() if _AH.S.n>=_RS_NEXT then _RS_NEXT=_AH.S.n+97 _SLOT.cur_map=(_SLOT.cur_map%3)+1 local s=_FLOOR((k2_eff_rot+_AH.S.n*7919)%2147483647) if s<1 then s=1 end _rebuild_p2(s) end end
_compile=function(idx) if not _RUNTIME_READY then return {} end local c=_compiled[idx] if c then return c end local p=PROTO[idx] if not p or not p[1] then return {} end local aS=_decProto(idx,1) local bS=_decProto(idx,2) local cS=_decProto(idx,3) local dS=_decProto(idx,4) local params=p[6] local ord=p[7] local isaKind=p[8] or 0 local segSizes=p[9] or {#ord} local segSeeds=p[10] or {0} local pof,pk=_proto_k(idx) local ih2=_getPI(idx,2) local ih3=_getPI(idx,3) local ih4=_getPI(idx,4) local ih5=_getPI(idx,5) local segH1={} for si=1,#segSeeds do segH1[si]=_getPH1_seg(idx,si,segSeeds[si]) end
local function _split(s) if not s then return {} end local t={} local i=1 local n=#s while i<=n do local j=string.find(s,",",i,true) if not j then t[#t+1]=tonumber(string.sub(s,i)) break end t[#t+1]=tonumber(string.sub(s,i,j-1)) i=j+1 end return t end local A=_split(aS) local B=_split(bS) local C=_split(cS) local D=_split(dS) local n=#A c={} for i=1,n do local i0=i-1 local sA=(i0*7919+k2)%256 local sB=(i0*13337+k2)%65536 local sC=(i0*17771+k2)%65536 local sD=(i0*23333+k2)%65536 local A0=(A[i]-sA)%256 local B0=(B[i]-sB)%65536 local C0=(C[i]-sC)%65536 local D0=(D[i]-sD)%65536 local eo=(A0-i0*13)%256 if eo<0 then eo=eo+256 end local ea=(B0-i0*17-23)%65536 if ea<0 then ea=ea+65536 end local eb=(C0-i0*29-41)%65536 if eb<0 then eb=eb+65536 end local ec=(D0-i0*31-7)%65536 if ec<0 then ec=ec+65536 end local fn=(eo-pof-i*pk)%256 if fn<0 then fn=fn+256 end local hk=ih2[ih3[ih4[ih5[fn]]]] local si=_seg_of_pos(i,segSizes) local pid=segH1[si][hk] c[i]={pid,ea,eb,ec} end _compiled[idx]={code=c,params=params,ord=ord,isaKind=isaKind} return _compiled[idx] end
local OF_ENC={{"9bc8aa6006d843319e0f8e4dfc8214eca5bc73493d811e24873dbaaf87dd5935e72597067a217ea443c636256030227c","16386c05ad1d6b55721f1baba043c1e92838c8d43b64932bc6bdb8917d6d35dd8db341957f0dad503b49c98bdf92f342",0,0,187}}
local _OFC={}
local function _getOFC(fid) if _OFC[fid] then return _OFC[fid] end local e=OF_ENC[fid] if not e or not e[1] then _ERR("[DTKD] OFC["..tostring(fid).."] 不存在") return nil end local blocks,parsed_entry for _pi=1,2 do local _cipher,_sv,_ss,_s1 if _pi==1 then _cipher=e[1] _sv=0 _ss=19 _s1=17 else _cipher=e[2] or e[1] _sv=2 _ss=29 _s1=23 end local _s=_decDouble(_cipher,fid,_sv,_s1,_ss,2) if type(_s)=="string" and #_s>=1 then blocks,parsed_entry=_parseCFF(_s,fid) if blocks and parsed_entry then break end end end if not blocks or not parsed_entry then _ERR("[DTKD] OFC["..tostring(fid).."] 解析为空") return nil end local entry=e[5] or parsed_entry if not blocks[entry] then entry=parsed_entry end if not entry then return nil end local r={blocks=blocks,entry=entry,localCount=e[3],paramCount=e[4]} _OFC[fid]=r return r end
_OM2=function(OL,OS,blocks,entry,fid) _AH.tick() _maybe_reshuffle() if not blocks or not entry then return end local OPI=_get_opi(fid) local state=entry local steps=0 local sp=0 local t0=_now()
while state>0 do local blk=blocks[state] if not blk then return end local code=blk.code local OPC=1 local jump_to=nil
while OPC<=#code do steps=steps+1 if _ABORT then return end
if steps%64==0 and _now()-t0>_T_LIMIT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 return end
if steps>_STEP_HARD_LIMIT then _TIMEOUT_HIT=true _ABORT=true _POISON=_POISON+1 return end local ins=code[OPC] local op0=ins[1] local op=OPI[(op0%16)+1] or op0 if op==0 then return elseif op==1 then sp=_mba_add(sp,1) OS[sp]=OL[ins[2]] elseif op==2 then OL[ins[2]]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) elseif op==3 then sp=_mba_add(sp,1) OS[sp]=_CONST(ins[2]) elseif op==4 then sp=_mba_add(sp,1) OS[sp]=nil elseif op==5 then local argc=ins[3] or 0 local args={} for ii=argc,1,-1 do args[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end sp=_mba_add(sp,1) OS[sp]=_RI(ins[2],args,OL) elseif op==6 then local argc=ins[3] or 0 local args={} for ii=argc,1,-1 do args[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end sp=_mba_add(sp,1) OS[sp]=_RO(ins[2],args,argc) elseif op==7 then local fid0=ins[2] sp=_mba_add(sp,1) OS[sp]=function(...) local n0=select("#",...) local a0={} for kk=1,n0 do a0[kk]=(select(kk,...)) end return _RO_FWD(fid0,a0,n0) end elseif op==8 then jump_to=ins[2] break elseif op==9 then local v0=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) if not v0 then jump_to=ins[2] end break elseif op==10 then local v0=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) if v0 then jump_to=ins[2] end break elseif op==11 then OS[sp]=nil sp=_mba_sub(sp,1) elseif op==12 then sp=_mba_add(sp,1) OS[sp]=OS[_mba_sub(sp,1)] elseif op==13 then local a,b=OS[_mba_sub(sp,1)],OS[sp] OS[_mba_sub(sp,1)],OS[sp]=b,a elseif op==14 then local n0=ins[2] if n0==0 then return nil elseif n0==1 then local rv=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) return rv else local r={} for ii=n0,1,-1 do r[ii]=OS[sp] OS[sp]=nil sp=_mba_sub(sp,1) end return r end elseif op==15 then sp=_mba_add(sp,1) OS[sp]=_GLOB(ins[2]) end OPC=_mba_add(OPC,1) end
local _real_next=jump_to or blk.next
state=_real_next end end
_RO_raw=function(fid,args,argc) local fn=_getOFC(fid) if not fn then return end if not fn.blocks then return end local OL={} local n0=argc or fn.paramCount for i=1,n0 do OL[i]=args[i] end local OS={} return _OM2(OL,OS,fn.blocks,fn.entry,fid) end
_RO=function(...) return _RO_raw(...) end _RO_FWD=_RO
local _R_inner=function(idx,args) _TIMEOUT_HIT=false _ABORT=false local br=(k2_eff_rot+_AH.S.n*131)%5 if br==0 then pcall(_CONST,1) elseif br==1 and not _DEV then pcall(_S,1) end return _RO(idx or 1,args or {}) end
local _OM0=function(...) return _R_inner(...) end
local R=_OM0
_LOG("[DTKD] START AH.HF="..tostring(_AH.HH).." AH.NCC="..tostring(_AH.NCC))
local _rok,_rerr=pcall(R,1,{})
if not _rok then _ERR("[DTKD] 执行失败: "..tostring(_rerr)) end
if _TIMEOUT_HIT then _ERR("[DTKD] timeout") end
