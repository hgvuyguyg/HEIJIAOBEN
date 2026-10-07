local _XT={}
for _i=0,15 do local _r={} for _j=0,15 do local a,b,rr,p=_i,_j,0,1 for _=1,4 do local x,y=a%2,b%2 if x~=y then rr=rr+p end a=(a-x)/2 b=(b-y)/2 p=p*2 end _r[_j]=rr end _XT[_i]=_r end
local function _bx(a,b) a=a%256 b=b%256 local al=a%16 local ah=(a-al)/16 local bl=b%16 local bh=(b-bl)/16 return _XT[al][bl]+_XT[ah][bh]*16 end
local function _hf(s) local h=5381 for i=1,#s do h=(h*33+string.byte(s,i))%4294967296 end return h end
local CONST={}
local CK={}
local _sf=0
if type(debug)=="table" then _sf=_sf+1 end
if type(getfenv)=="function" then _sf=_sf+2 end
if type(string.dump)=="function" then _sf=_sf+4 end
if type(rawset)=="function" and type(getrawmetatable)=="function" then _sf=_sf+8 end
local _ent=0 pcall(function() _ent=math.floor(((tick and tick()) or 0)*1000)%65536 end) if _ent==0 then _ent=31337 end
local _sd=0 pcall(function() _sd=((game and game.PlaceId or 0)*31+(game and game.CreatorId or 0)*7)%65536 end) if _sd==0 then _sd=7919 end
local _lastHash=(5381+_sf*997+_ent+_sd*13)%4294967296
local STRS={
{{"0b36c11e448f9958482b8f03f10d95af23c6b9b6144d075668e3bf0149f3fdd763a0a1962c45b71610eb0ffbb9ad9dd5638e994e5ed5a73e90",{84,196,149,47,147,225,120,178,254,181,64,252,57,197,145,19},{156,31,40,205,189,215,86,17,150,48,37,230,224,241,218,11},{231,43,250,12,30,1,165,243,156,244,200,47,166,7,4,189},3,169,3182487751,2},{"d4c66999697a481524eb6a4b191df3638d49a9d9ec8cbb85292ee65bddbe2e228f1c68daa8473d7fe3f5660b531c33f28f89a81c0ec0b8bfe7",{45,84,198,254,60,170,37,84,138,225,34,250,92,75,189,87},{242,8,105,26,217,133,62,202,191,146,121,186,60,151,229,228},{5,127,47,167,218,205,142,38,139,190,30,142,170,111,104,108},6,6,3182487751,2},{"7d533e54635f1fa6e9ea72e0d0d4f2e8ceb32e4484db5b9aab1991dc9f1fc2984dfffc82938b421a396a71f03f1302a44da3ecf220ec1b8a3c",{196,113,53,227,221,162,77,58,248,200,165,24,24,230,68,197},{60,187,213,45,8,195,76,168,177,177,19,21,187,6,24,253},{39,120,10,121,9,49,67,211,169,154,11,60,182,168,16,180},4,215,3182487751,3},{"caff1333eef473c79985709e7b5daf0da17453f3d912a0d76cc8ec6ebfbae4cc8b490aeeadd10671d69f6cde395cefdc8bb44aacff4ea331da",{139,127,109,130,135,198,35,245,13,46,79,196,191,184,87,20},{233,12,218,57,52,71,83,51,233,213,127,97,29,134,56,7},{190,117,197,152,163,79,52,82,11,62,161,204,228,221,105,224},6,36,3182487751,2}},
{{"dbb32842",{150,185,19,9,238,87,97,17,119,39,7,44,15,29,42,215},{105,38,137,143,117,149,190,8,122,8,81,249,61,119,105,187},{132,92,20,38,40,132,172,140,148,209,24,47,199,68,37,40},2,245,2090284447,2},{"1cffb4ec",{204,186,95,76,124,86,186,117,97,67,188,199,211,247,117,203},{149,68,95,198,103,94,144,156,163,202,151,254,221,150,125,38},{141,211,32,67,118,83,58,230,146,86,22,9,219,205,207,82},4,66,2090284447,1},{"aba6dee7",{22,80,66,6,211,78,234,32,52,241,74,175,41,82,113,101},{183,157,210,17,28,170,184,163,97,96,252,107,4,58,254,144},{131,148,1,218,201,45,9,130,217,243,150,49,3,242,138,85},6,13,2090284447,0},{"d165730b",{2,177,122,83,20,71,172,185,5,117,50,168,74,46,91,227},{30,90,246,197,234,202,251,130,170,227,240,63,164,77,147,143},{42,93,179,40,91,48,229,96,74,107,152,197,98,237,181,5},7,58,2090284447,3}},
{{"800a46e0361028",{21,204,107,198,5,76,191,45,156,210,21,98,151,111,42,171},{39,111,49,178,81,31,173,27,235,47,110,8,172,55,53,206},{57,207,121,24,60,225,66,71,251,248,194,119,176,137,253,109},5,215,3240680709,3},{"80aba7a1fb48cf",{52,180,145,158,93,163,255,80,102,230,144,137,153,233,73,93},{154,105,97,253,205,86,22,242,56,23,109,96,254,235,138,30},{35,176,15,109,177,109,105,166,65,99,162,2,210,191,227,121},3,109,3240680709,3},{"fbbefe9caa5bdc",{39,56,187,45,211,254,63,64,66,191,1,93,51,18,19,101},{41,236,171,161,158,135,169,212,107,19,230,64,142,52,182,51},{42,151,13,251,140,123,41,198,222,132,157,9,105,35,142,239},1,51,3240680709,2},{"3110200a155729",{27,148,131,105,130,225,192,225,161,29,137,56,204,32,160,184},{215,148,146,251,175,223,38,122,124,89,65,143,144,54,190,232},{220,75,179,69,190,243,145,118,15,167,142,96,230,68,101,107},3,40,3240680709,3}},
{{"dbd638b5dd243ff8cc03",{168,43,65,173,11,77,73,89,14,26,203,5,244,195,57,203},{67,168,180,194,121,13,171,55,240,235,184,226,230,218,157,210},{252,160,126,67,199,165,110,127,205,155,242,16,243,12,61,120},2,99,394143868,0},{"0f769100468ad66d1b22",{223,87,192,12,245,208,25,98,137,106,126,240,70,24,37,11},{241,118,214,88,244,160,49,162,161,215,120,131,29,226,54,2},{89,206,247,184,46,177,30,178,213,211,161,153,124,117,204,21},2,103,394143868,3},{"6dff92e29f7878a13e23",{34,50,188,27,123,161,145,26,227,127,31,56,252,91,191,92},{137,76,28,202,159,7,178,97,206,202,207,60,58,171,34,238},{250,156,34,36,63,209,138,42,63,90,78,140,244,195,30,60},6,208,394143868,1},{"067ff0919389c436bc25",{253,214,249,58,241,170,109,151,213,213,82,54,232,159,128,63},{87,6,227,181,184,98,63,53,96,17,166,129,80,61,170,126},{71,36,84,40,54,221,126,107,222,181,4,75,58,131,233,251},5,38,394143868,2}}
}
local _cache={}
local _sc=1
local _scnt=0
local function _S(i)
  local c=_cache[i]
  if c then _cache[i]=nil return c end
  _scnt=_scnt+1
  local dk=(i*31+_lastHash*7+_sd+_scnt*17+_sf*19)%65536
  _sc=(_sc*65+12345+dk)%65536
  local _v=(_sc%4)+1
  local e=STRS[i][_v]
  if not e then return "" end
  local hex=e[1] local k1=e[2] local k2=e[3] local pk=e[4]
  local rot=e[5] local kk=e[6] local hh=e[7] local alg=e[8]
  local n=#hex/2
  local o={}
  local pw=2^rot local pw2=2^(8-rot)
  for j=1,n do
    local b=tonumber(hex:sub(j*2-1,j*2),16)
    local k=((j-1)%16)+1
    if alg==0 then
      b=b-pk[k] if b<0 then b=b+256 end
      b=_bx(b,k2[k])
      local lo=(b*pw2)%256 local hi=math.floor(b/pw) b=(lo+hi)%256
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,k1[k])
    elseif alg==1 then
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,k1[k])
      local lo=(b*pw)%256 local hi=math.floor(b/pw2) b=(lo+hi)%256
      b=_bx(b,k2[k])
      b=b-pk[k] if b<0 then b=b+256 end
    elseif alg==2 then
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,k2[k])
      b=b-pk[k] if b<0 then b=b+256 end
      b=_bx(b,k1[k])
      local lo=(b*pw2)%256 local hi=math.floor(b/pw) b=(lo+hi)%256
    else
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,pk[k])
      local lo=(b*pw2)%256 local hi=math.floor(b/pw) b=(lo+hi)%256
      b=b-k1[k] if b<0 then b=b+256 end
      b=_bx(b,k2[k])
    end
    o[j]=string.char(b)
  end
  local r=table.concat(o)
  if _hf(r)~=hh then r=string.rep(string.char(0),#r) end
  _lastHash=_hf(r)
  _cache[i]=r
  return r
end
local _GREF=(getfenv and getfenv()) or _G or _ENV
if type(_GREF)~="table" then _GREF={} end
local _GLOB=function(a) return _GREF[_S(a)] end
local _SET_GLOB=function(a,v) _GREF[_S(a)]=v end
local PROTO={
{"e73e61f07d506e06c1637b1cb97688329a8a9548229fa35e8ab3af7485c4bc8a",{},{5,8,6,7,1,3,4,2},90,15,106,42,19,84,13,218,22}
}
local PHASH={594806903}
local _up=table.unpack or unpack
local H3={}
do local _e="507c6fa8f975c6e6f134e0676e25a780fa24497826433e6e71e99507548a9e412ea1f6c945eae6171cd638f5053e235c4d1e8765255b3184d72a77165d1fafed3d6de59ca647d50f1076" local _k=186 for _i=1,#_e/4 do local _o=(_i-1)*4+1 H3[_bx(tonumber(_e:sub(_o,_o+1),16),_k)]=_bx(tonumber(_e:sub(_o+2,_o+3),16),_k) end end
local H2={}
do local _e="f0ec245ef9416a39b82aeb84a98c0c17a8baf4d8cf23e21b65f28baa06f7cda42d55454f667f9b145ae279b4b204d0ea924de997d7ae08c1a6129af3939661a3e18a105ccb3a83f1faab" local _k=54 for _i=1,#_e/4 do local _o=(_i-1)*4+1 H2[_bx(tonumber(_e:sub(_o,_o+1),16),_k)]=_bx(tonumber(_e:sub(_o+2,_o+3),16),_k) end end
local H1={}
local _c0ut=function(v,a,b,c) if ((82*82)==6724) then v.sp=v.sp+1 v.st[v.sp]=nil v.pc=v.pc+1 end end
local _k8rv=function(v,a,b,c) if ((7*(7+1)/2)==28) then local s=v.sp+1 v.sp=s v.st[s]=true v.pc=v.pc+1 end end
local _e5gg=function(v,a,b,c) if ((69*69)==4761) then v.sp=v.sp+1 v.st[v.sp]=false v.pc=v.pc+1 end end
local _jx48=function(v,a,b,c) if ((4*(4+1)/2)==10) then local s=v.sp+1 v.sp=s v.st[s]=CONST[a]-CK[a] v.pc=v.pc+1 end end
local _kw2y=function(v,a,b,c) if ((4*(4+1)/2)==10) then v.sp=v.sp+1 v.st[v.sp]=_S(a) v.pc=v.pc+1 end end
local _gxk9=function(v,a,b,c) if ((8*(8+1)/2)==36) then local s=v.sp+1 v.sp=s v.st[s]=v.lo[a] v.pc=v.pc+1 end end
local _88no=function(v,a,b,c) if ((70%70)==0) then local s=v.sp v.lo[a]=v.st[s] v.st[s]=nil v.sp=s-1 v.pc=v.pc+1 end end
local _81h1=function(v,a,b,c) if ((19-19)==0) then local s=v.sp+1 v.sp=s v.st[s]=_GLOB(a) v.pc=v.pc+1 end end
local _hn1x=function(v,a,b,c) if 1362==1362 then local s=v.sp _SET_GLOB(a,v.st[s]) v.st[s]=nil v.sp=s-1 v.pc=v.pc+1 end end
local _jk51=function(v,a,b,c) if ((45%45)==0) then local s=v.sp v.st[s]=v.st[s][_S(a)] v.pc=v.pc+1 end end
local _hgsy=function(v,a,b,c) if 3600==3600 then local s=v.sp local val=v.st[s] v.st[s]=nil v.sp=s-1 local obj=v.st[s-1] v.st[s-1]=nil v.sp=s-2 obj[_S(a)]=val v.pc=v.pc+1 end end
local _679j=function(v,a,b,c) if ((3*(3+1)/2)==6) then local s=v.sp local kk=v.st[s] local o=v.st[s-1] v.st[s]=nil v.st[s-1]=o[kk] v.sp=s-1 v.pc=v.pc+1 end end
local _aist=function(v,a,b,c) if ((42-42)==0) then local s=v.sp local val=v.st[s] v.st[s]=nil local k=v.st[s-1] v.st[s-1]=nil local obj=v.st[s-2] v.st[s-2]=nil obj[k]=val v.sp=s-3 v.pc=v.pc+1 end end
local _fbtg=function(v,a,b,c) if ((12%12)==0) then local s=v.sp local y0=v.st[s] local x0=v.st[s-1] v.st[s]=nil if a==1 then v.st[s-1]=x0+y0 elseif a==2 then v.st[s-1]=x0-y0 elseif a==3 then v.st[s-1]=x0*y0 elseif a==4 then v.st[s-1]=x0/y0 elseif a==5 then v.st[s-1]=x0%y0 elseif a==6 then v.st[s-1]=math.floor(x0/y0) elseif a==7 then v.st[s-1]=x0^y0 elseif a==8 then v.st[s-1]=tostring(x0)..tostring(y0) elseif a==9 then v.st[s-1]=(x0==y0) elseif a==10 then v.st[s-1]=(x0~=y0) elseif a==11 then v.st[s-1]=(x0<y0) elseif a==12 then v.st[s-1]=(x0>y0) elseif a==13 then v.st[s-1]=(x0<=y0) elseif a==14 then v.st[s-1]=(x0>=y0) elseif a==15 then v.st[s-1]=(x0 and y0) elseif a==16 then v.st[s-1]=(x0 or y0) end v.sp=s-1 v.pc=v.pc+1 end end
local _git4=function(v,a,b,c) if 1432==1432 then local s=v.sp local x0=v.st[s] if a==1 then v.st[s]=-x0 elseif a==2 then v.st[s]=not x0 elseif a==3 then v.st[s]=#x0 end v.pc=v.pc+1 end end
local _4b4y=function(v,a,b,c) if 8712==8712 then local s=v.sp local f=v.st[s] v.st[s]=nil v.sp=s-1 local args={} for i=a,1,-1 do args[i]=v.st[v.sp] v.st[v.sp]=nil v.sp=v.sp-1 end local r=f(_up(args)) v.sp=v.sp+1 v.st[v.sp]=r v.pc=v.pc+1 end end
local _g31v=function(v,a,b,c) if ((27-27)==0) then local s=v.sp local o0=v.st[s] v.st[s]=nil v.sp=s-1 local ar={} for ii=b,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=v.sp-1 end local fn0=o0[_S(a)] local rv=fn0(o0,_up(ar)) v.sp=v.sp+1 v.st[v.sp]=rv v.pc=v.pc+1 end end
local _e5cz=function(v,a,b,c) if ((85*85)==7225) then if a==0 then return end v.ret=v.st[v.sp] v.pc=0 end end
local _gvg2=function(v,a,b,c) if ((24-24)==0) then v.pc=a+0 end end
local _fupe=function(v,a,b,c) if ((4*(4+1)/2)==10) then local s=v.sp local c=v.st[s] v.st[s]=nil v.sp=s-1 if not c then v.pc=a else v.pc=v.pc+1 end end end
local _ckho=function(v,a,b,c) if ((6*(6+1)/2)==21) then local s=v.sp local c=v.st[s] v.st[s]=nil v.sp=s-1 if c then v.pc=a else v.pc=v.pc+1 end end end
local _5ya5=function(v,a,b,c) if ((23-23)==0) then local s=v.sp+1 v.sp=s v.st[s]={} v.pc=v.pc+1 end end
local _5a8q=function(v,a,b,c) if ((6*(6+1)/2)==21) then local s=v.sp local val0=v.st[s] v.st[s]=nil local t0=v.st[s-1] local n0=#t0 t0[n0+1]=val0 v.sp=s-1 v.pc=v.pc+1 end end
local _ijyg=function(v,a,b,c) if 4816==4816 then local s=v.sp local v0=v.st[s] local k0=v.st[s-1] local t0=v.st[s-2] v.st[s]=nil v.st[s-1]=nil t0[k0]=v0 v.sp=s-2 v.pc=v.pc+1 end end
local _4e0e=function(v,a,b,c) if ((6*(6+1)/2)==21) then local pid=a local cl=v.lo v.sp=v.sp+1 v.st[v.sp]=function(...) return R(pid,{...},cl) end v.pc=v.pc+1 end end
local _bswl=function(v,a,b,c) if ((68%68)==0) then local s=v.sp v.st[s]=nil v.sp=s-1 v.pc=v.pc+1 end end
local _3mlh=function(v,a,b,c) if ((23%23)==0) then v.pc=0 end end
local _ku3p=function(v,a,b,c) if 1131==1131 then local s=v.sp local step=v.st[s] v.st[s]=nil local stop=v.st[s-1] v.st[s-1]=nil local start=v.st[s-2] v.st[s-2]=nil v.sp=s-3 v.lo[a]=start v.lo[a+1000000]=stop v.lo[a+2000000]=step v.pc=v.pc+1 end end
local _5g2e=function(v,a,b,c) if ((8*(8+1)/2)==36) then local val=v.lo[a] local stop=v.lo[a+1000000] local step=v.lo[a+2000000] local done if step>0 then done=val>stop else done=val<stop end if done then v.pc=b else v.pc=v.pc+1 end end end
local _9wxv=function(v,a,b,c) if ((40-40)==0) then local s=v.lo[a] local sp=v.lo[a+2000000] v.lo[a]=s+sp v.pc=v.pc+1 end end
local _a1o4=function(v,a,b,c) if ((5*(5+1)/2)==15) then v.pc=v.pc+1 end end
local _8a0l=function(v,a,b,c) if ((49-49)==0) then v.pc=v.pc+1 end end
local _hb5p=function(v,a,b,c) if ((40%40)==0) then v.pc=v.pc+1 end end
local _e0km=function(v,a,b,c) if ((33%33)==0) then v.pc=v.pc+1 end end
local _feoq=function(v,a,b,c) if ((93%93)==0) then v.pc=v.pc+1 end end
local _hwei=function(v,a,b,c) if ((56*56)==3136) then v.pc=v.pc+1 end end
local _c371=function(v,a,b,c) if ((50%50)==0) then v.pc=v.pc+1 end end
H1[73]=_gvg2
H1[218]=_c0ut
H1[196]=_aist
H1[36]=_5g2e
H1[104]=_k8rv
H1[121]=_e5cz
H1[161]=_bswl
H1[220]=_ijyg
H1[15]=_jx48
H1[193]=_git4
H1[188]=_hb5p
H1[186]=_88no
H1[45]=_679j
H1[123]=_4e0e
H1[212]=_ckho
H1[197]=_9wxv
H1[28]=_kw2y
H1[152]=_3mlh
H1[160]=_a1o4
H1[146]=_4b4y
H1[149]=_8a0l
H1[199]=_hwei
H1[99]=_g31v
H1[50]=_5a8q
H1[33]=_81h1
H1[12]=_feoq
H1[106]=_e0km
H1[140]=_hn1x
H1[156]=_fbtg
H1[119]=_e5gg
H1[21]=_hgsy
H1[178]=_gxk9
H1[157]=_c371
H1[34]=_fupe
H1[130]=_5ya5
H1[238]=_jk51
H1[247]=_ku3p
do
local _sb=string.byte local _scs=string.char local _ss=string.sub
local _slen=string.len local _mf=math.floor local _mh=math.huge
local _tn=tonumber local _ts=tostring local _ty=type
if _ty(_sb)~="function" or _ty(_scs)~="function" or _ty(_ss)~="function" then return end
if _sb~=string.byte or _scs~=string.char or _ss~=string.sub then return end
if _slen~=string.len or _mf~=math.floor or _tn~=tonumber or _ts~=tostring then return end
if _ty(pcall)~="function" then return end
local _okp,_pr=pcall(_mf,3.7) if not _okp or _pr~=3 then return end
local _ah=0
if _scs(65)~="A" then _ah=_ah+1 end
if _sb("A")~=65 then _ah=_ah+1 end
if _mf(3.7)~=3 then _ah=_ah+1 end
if _mf(-3.2)~=-4 then _ah=_ah+1 end
if _ts(1)~="1" then _ah=_ah+1 end
if _ts(true)~="true" then _ah=_ah+1 end
if #("abc")~=3 then _ah=_ah+1 end
if ("a".."b")~="ab" then _ah=_ah+1 end
if (7%3)~=1 then _ah=_ah+1 end
if _mh<=0 then _ah=_ah+1 end
if _ss("hello",1,5)~="hello" then _ah=_ah+1 end
if _tn("42")~=42 then _ah=_ah+1 end
if _ty(_G)~="table" and _ty(getfenv)~="function" then _ah=_ah+1 end
if _ah>0 then return end
end
local _ok=true
do
  local _c,_g=0,0
  for k,fn in pairs(H1) do
    if type(k)~="number" or type(fn)~="function" then _ok=false break end
    _c=_c+1 _g=(_g+k*31+k*k*17+k*k*k*3)%4294967296
  end
  if _c~=37 or _g~=458575554 then _ok=false end
  if _ok then local _c3=0 for _ in pairs(H3) do _c3=_c3+1 end if _c3~=37 then _ok=false end end
  if _ok then local _c2=0 for _ in pairs(H2) do _c2=_c2+1 end if _c2~=37 then _ok=false end end
end
if not _ok then return end
local _paCache={}
local function _pa(idx)
  local c=_paCache[idx]
  if c then return c end
  local hex=PROTO[idx][1]
  PROTO[idx][1]=nil
  local n=#hex/8
  c={}
  for i=1,n do
    local off=(i-1)*8+1
    c[i]={tonumber(hex:sub(off,off+1),16),tonumber(hex:sub(off+2,off+3),16),tonumber(hex:sub(off+4,off+5),16),tonumber(hex:sub(off+6,off+7),16)}
  end
  _paCache[idx]=c
  return c
end
local function R(idx,args,parent)
  local proto=PROTO[idx]
  if not proto then return end
  local params=proto[2]
  local ord=proto[3]
  local pof=proto[4]
  local pk=proto[5]
  local pX=proto[6]
  local pofA=proto[7] local pkA=proto[8]
  local pofB=proto[9] local pkB=proto[10]
  local pofC=proto[11] local pkC=proto[12]
  local arr=_pa(idx)
  local v={pc=1,sp=0,st={},lo={},ret=nil}
  setmetatable(v.lo,{__index=parent or {}})
  for i=1,#params do v.lo[params[i]]=args[i] end
local _s=1
local _p1,_i1,_o1,_g1,_r1,_f1,_a1,_b1,_c1,_brk=false
local _disp={}
_disp[1]=function() _p1=ord[v.pc] if _p1 then _s=2 else _brk=true end end
_disp[2]=function() _s=3 end
_disp[3]=function() _i1=arr[_p1] if _i1 then _s=4 else _brk=true end end
_disp[4]=function() _s=5 end
_disp[5]=function() local _t=_bx(_i1[1],pX) _o1=(_t-pof-_p1*pk)%256 if _o1<0 then _o1=_o1+256 end _a1=(_i1[2]-pofA-_p1*pkA)%256 if _a1<0 then _a1=_a1+256 end _b1=(_i1[3]-pofB-_p1*pkB)%256 if _b1<0 then _b1=_b1+256 end _c1=(_i1[4]-pofC-_p1*pkC)%256 if _c1<0 then _c1=_c1+256 end _s=6 end
_disp[6]=function() _s=7 end
_disp[7]=function() _g1=H3[_o1] if _g1 then _s=8 else _brk=true end end
_disp[8]=function() _r1=H2[_g1] if _r1 then _s=9 else _brk=true end end
_disp[9]=function() _f1=H1[_r1] if _f1 then _s=10 else _brk=true end end
_disp[10]=function() _f1(v,_a1,_b1,_c1) if v.pc==0 then _brk=true else _s=11 end end
_disp[11]=function() _s=1 end
while not _brk and _s~=0 do local _fn=_disp[_s] if not _fn then break end _fn() end
return v.ret
end
R(1,{})
