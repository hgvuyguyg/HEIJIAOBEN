-- protected build
local _sb=string.byte local _scs=string.char local _ss=string.sub
local _slen=string.len local _mf=math.floor local _mh=math.huge
local _tn=tonumber local _ts=tostring local _ty=type
local _cat=table.concat local _up=table.unpack or unpack
local _srep=string.rep local _pc=pcall
local _XT={}
for _i=0,15 do local _r={} for _j=0,15 do local a,b,rr,p=_i,_j,0,1 for _=1,4 do local x,y=a%2,b%2 if x~=y then rr=rr+p end a=(a-x)/2 b=(b-y)/2 p=p*2 end _r[_j]=rr end _XT[_i]=_r end
local function _bx(a,b) a=a%256 b=b%256 local al=a%16 local ah=(a-al)/16 local bl=b%16 local bh=(b-bl)/16 return _XT[al][bl]+_XT[ah][bh]*16 end
local function _hf(s) local h=5381 for i=1,#s do h=(h*33+_sb(s,i))%4294967296 end return h end
local CONST={}
local CK={}
local _sf=0
if _ty(debug)=="table" then _sf=_sf+1 end
if _ty(getfenv)=="function" then _sf=_sf+2 end
if _ty(string.dump)=="function" then _sf=_sf+4 end
if _ty(rawset)=="function" and _ty(getrawmetatable)=="function" then _sf=_sf+8 end
local _ent=0 _pc(function() _ent=_mf(((tick and tick()) or 0)*1000)%65536 end) if _ent==0 then _ent=31337 end
local _sd=0 _pc(function() _sd=((game and game.PlaceId or 0)*31+(game and game.CreatorId or 0)*7)%65536 end) if _sd==0 then _sd=7919 end
local _lastHash=(5381+_sf*997+_ent+_sd*13)%4294967296
local STRS={
{{"c40d58e806533bf01bbe682cd2f91687dc9d606036f961eebb96182efaef3edf1cc338c0aeb1b12e13fee8348a591ee11cb540f8f481413693",{197,197,202,2,123,33,210,6,5,206,221,80,52,239,145,136},{172,116,108,176,166,51,77,240,53,59,211,81,86,35,168,186},{108,109,53,177,38,238,237,251,234,158,107,118,43,12,230,208},3,102,3182487751,2},{"802141cf19c5171f99f693b0176be449a61d3fdd7dd59f9f7100af3079d9024b769319451b4b7b8fc306b3b28d63eacb76171733912f9799a3",{129,177,246,16,254,96,7,15,104,93,207,77,203,31,191,168},{27,242,40,197,188,60,117,166,239,138,252,104,178,141,223,126},{24,136,253,20,159,119,35,102,216,195,88,185,182,3,178,205},1,14,3182487751,2},{"9007323a6b70dd53d1ab7d01a778219c16feb2bb508cbb73df1572211ed7920f1a643469e90bb677528f75812322a02f1a85b4357594bdfc5a",{207,204,82,109,44,219,245,167,104,108,113,89,225,98,81,212},{219,76,202,219,22,64,7,98,128,73,114,153,111,168,2,56},{94,191,134,162,182,92,102,247,242,248,83,28,164,236,166,214},7,14,3182487751,2},{"b87b6119a42baca5ef73571e0a81585b87a7a1da3d31dbb5ecbf336e47701c1af9ec7cd7e9f452a72f49b3dec8fe6b0af978bc99bb9ddc7833",{57,22,109,131,243,28,105,119,98,235,215,86,158,65,42,136},{43,157,124,147,37,53,82,184,165,166,207,155,177,36,39,133},{62,46,8,43,155,151,81,193,253,227,36,142,164,50,242,26},2,99,3182487751,4},{"15086971df2df4f920f2d6bb30d6d00473cb49d11a1e6ee1a0931cc31e7dada37653e750407fafe03ff3dc9b5d5430bb76abc7356940ec003d",{142,70,144,112,24,70,207,188,162,45,57,41,216,197,48,253},{247,198,39,18,140,219,164,213,105,132,91,149,57,160,14,142},{115,240,55,231,118,90,196,186,37,108,189,207,231,40,193,95},5,196,3182487751,0}},
{{"2e371d20",{189,135,15,75,138,96,83,208,147,193,171,68,144,152,254,73},{105,171,187,12,151,46,168,226,111,47,91,190,45,89,210,199},{36,36,196,111,136,97,199,118,7,234,177,174,56,228,11,23},6,248,2090284447,1},{"28e2e441",{248,226,211,156,82,111,69,158,20,217,172,194,164,10,64,113},{81,26,180,234,206,131,36,76,141,215,170,147,215,111,87,231},{54,185,60,94,221,163,100,187,108,190,143,114,169,181,138,237},2,73,2090284447,0},{"39e9acad",{27,101,115,243,162,242,88,97,240,253,209,158,238,27,70,227},{101,89,179,47,101,87,34,16,1,117,30,145,247,68,59,205},{3,170,222,131,104,229,61,24,77,174,21,115,64,228,158,216},1,157,2090284447,1},{"dbe74c5e",{189,47,123,142,219,17,255,88,61,200,204,214,166,237,133,132},{28,8,182,12,174,222,98,216,140,111,170,209,226,155,90,30},{64,198,245,250,19,186,59,137,39,225,200,151,77,213,191,176},1,44,2090284447,2},{"3d9340b8",{212,28,132,208,199,216,97,254,20,85,238,194,252,28,6,162},{22,196,165,179,197,137,195,203,91,68,229,153,7,252,205,32},{68,124,10,136,227,121,59,33,163,27,7,225,102,130,193,118},4,143,2090284447,4}},
{{"e2b0bd2f88b95b",{87,127,222,5,218,143,196,136,87,2,161,57,72,33,240,232},{177,67,28,114,110,215,17,36,205,218,55,20,13,226,250,248},{74,179,152,9,159,4,57,188,237,46,144,254,126,124,52,7},5,201,3240680709,2},{"57719b2eb5f71c",{108,231,219,213,87,84,169,117,77,55,248,241,114,210,48,233},{229,181,29,47,175,238,15,111,167,70,28,39,128,162,9,84},{141,150,87,128,156,46,215,192,66,253,240,195,132,84,195,34},4,21,3240680709,4},{"5ef3572a98ee51",{85,57,55,128,247,254,165,222,254,101,239,159,207,153,73,227},{250,255,237,14,77,115,156,95,137,103,149,203,166,122,84,183},{194,128,200,154,229,241,53,179,140,183,140,6,40,21,184,210},3,227,3240680709,4},{"24fa018190be65",{84,59,85,101,248,85,196,65,21,252,142,186,5,92,139,56},{173,37,93,109,254,116,198,137,220,245,184,47,58,112,240,32},{68,206,239,15,136,86,63,171,193,59,159,234,179,115,158,233},6,84,3240680709,1},{"e7a4a6bfb5c197",{150,154,112,10,224,185,200,173,222,172,150,115,99,137,177,202},{111,163,139,192,34,124,188,177,50,252,244,112,70,152,175,50},{191,235,42,183,126,184,170,103,249,229,170,195,194,234,204,32},5,223,3240680709,3}},
{{"121d6c47858c163b3545",{17,163,112,140,56,132,90,130,191,74,210,20,154,248,202,149},{120,183,45,137,10,15,189,252,122,146,223,146,155,133,87,236},{174,250,200,205,119,73,212,238,182,240,191,113,250,90,22,153},7,214,394143868,3},{"5320200e10b191a10ace",{222,190,45,120,214,164,86,215,131,91,184,73,44,217,163,137},{187,180,254,115,41,201,186,46,205,128,30,155,229,219,100,159},{7,248,173,178,78,170,119,103,16,69,211,35,134,142,136,67},2,130,394143868,3},{"8d19e20b38e7ed26ed21",{182,74,250,117,89,161,196,119,77,90,95,80,166,177,147,161},{172,148,185,166,146,60,216,118,127,38,4,2,47,246,162,141},{147,226,99,84,24,138,202,107,230,140,56,223,170,105,213,84},7,206,394143868,2},{"2d406e97543320622bc8",{201,118,204,42,48,21,182,98,83,252,75,69,240,239,183,219},{224,29,151,15,162,103,38,247,90,173,90,134,231,190,222,33},{49,243,93,214,204,39,242,181,50,153,80,29,1,52,203,224},4,203,394143868,4},{"b670583763c43c2cc920",{151,43,111,199,132,15,29,129,253,109,91,163,192,105,240,136},{254,57,154,48,109,89,120,187,17,38,91,154,39,230,106,55},{168,5,132,171,121,103,254,113,236,178,238,225,87,113,127,246},1,173,394143868,2}}
}
local _cache={}
local _sc=1
local _scnt=0
local _vt=0
local function _S(i)
  if _vt<1 then return _srep(_scs(0),16) end
  local c=_cache[i]
  if c then _cache[i]=nil return c end
  _scnt=_scnt+1
  local dk=(i*31+_lastHash*7+_sd+_scnt*17+_sf*19)%65536
  _sc=(_sc*65+12345+dk)%65536
  local _v=(_sc%5)+1
  local e=STRS[i][_v]
  if not e then return "" end
  local hex=e[1] local k1=e[2] local k2=e[3] local pk=e[4]
  local rot=e[5] local kk=e[6] local hh=e[7] local alg=e[8]
  local n=#hex/2
  local o={}
  local pw=2^rot local pw2=2^(8-rot)
  for j=1,n do
    local b=_tn(_ss(hex,j*2-1,j*2),16)
    local k=((j-1)%16)+1
    if alg==0 then
      b=b-pk[k] if b<0 then b=b+256 end
      b=_bx(b,k2[k])
      local lo=(b*pw2)%256 local hi=_mf(b/pw) b=(lo+hi)%256
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,k1[k])
    elseif alg==1 then
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,k1[k])
      local lo=(b*pw)%256 local hi=_mf(b/pw2) b=(lo+hi)%256
      b=_bx(b,k2[k])
      b=b-pk[k] if b<0 then b=b+256 end
    elseif alg==2 then
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,k2[k])
      b=b-pk[k] if b<0 then b=b+256 end
      b=_bx(b,k1[k])
      local lo=(b*pw2)%256 local hi=_mf(b/pw) b=(lo+hi)%256
    elseif alg==3 then
      b=b-kk if b<0 then b=b+256 end
      b=_bx(b,pk[k])
      local lo=(b*pw2)%256 local hi=_mf(b/pw) b=(lo+hi)%256
      b=b-k1[k] if b<0 then b=b+256 end
      b=_bx(b,k2[k])
    else
      b=_bx(b,k1[k])
      b=b-pk[k] if b<0 then b=b+256 end
      b=_bx(b,k2[k])
      local lo=(b*pw)%256 local hi=_mf(b/pw2) b=(lo+hi)%256
      b=b-k1[k] if b<0 then b=b+256 end
    end
    o[j]=_scs(b)
  end
  local r=_cat(o)
  if _hf(r)~=hh then r=_srep(_scs(0),#r) end
  _lastHash=_hf(r)
  _cache[i]=r
  return r
end
local _GREF=(getfenv and getfenv()) or _G or _ENV
if _ty(_GREF)~="table" then _GREF={} end
local _GLOB=function(a) return _GREF[_S(a)] end
local _SET_GLOB=function(a,v) _GREF[_S(a)]=v end
local PROTO={
{"4e2d01d2d23f17eb414d2e041a5f451dba6e5c36af7f734fbb918a68fda1a181",{},{7,4,1,2,3,8,5,6},126,28,26,25,17,233,23,185,25}
}
local PHASH={425673898}
local _flr=_mf
local H3={}
do local _e="6a07758aca813b3c466fd7b562da0bedccb720c7c8247e3bbb66d593b90c9038a3ec51a67fc9bf05cb2d9dd0457e04d6aa888f9496391ff0a5a33c89ba4203fd86b84b45911c37416e21" local _k=25 for _i=1,#_e/4 do local _o=(_i-1)*4+1 H3[_bx(_tn(_ss(_e,_o,_o+1),16),_k)]=_bx(_tn(_ss(_e,_o+2,_o+3),16),_k) end end
local H2={}
do local _e="7826f5dafebb434710b0cabea5939257c8afb81e5b064435198eec4a735b47bd9377d9c2b6997aa9520baf9801eea944f7ceeb4946fd8f33dc0ef6b23d6d8260c7e23a8263073e4b5e8d" local _k=102 for _i=1,#_e/4 do local _o=(_i-1)*4+1 H2[_bx(_tn(_ss(_e,_o,_o+1),16),_k)]=_bx(_tn(_ss(_e,_o+2,_o+3),16),_k) end end
local H1={}
local _jcdj=function(v,a,b,c) if ((25*25)==625) then v.sp=v.sp+1 v.st[v.sp]=nil v.pc=v.pc+1 end end
local _btmr=function(v,a,b,c) if 8442==8442 then v.sp=v.sp+1 v.st[v.sp]=true v.pc=v.pc+1 end end
local _aoor=function(v,a,b,c) if ((72*72)==5184) then v.sp=v.sp+1 v.st[v.sp]=false v.pc=v.pc+1 end end
local _jbbg=function(v,a,b,c) if ((22-22)==0) then local s=v.sp+1 v.sp=s v.st[s]=CONST[a]-CK[a] v.pc=v.pc+1 end end
local _ggp5=function(v,a,b,c) if ((75%75)==0) then local s=v.sp+1 v.sp=s v.st[s]=_S(a) v.pc=v.pc+1 end end
local _cw11=function(v,a,b,c) if ((42*42)==1764) then local s=v.sp+1 v.sp=s v.st[s]=v.lo[a] v.pc=v.pc+1 end end
local _ful9=function(v,a,b,c) if ((43-43)==0) then local s=v.sp v.lo[a]=v.st[s] v.st[s]=nil v.sp=s-1 v.pc=v.pc+1 end end
local _ha14=function(v,a,b,c) if 1760==1760 then v.sp=v.sp+1 v.st[v.sp]=_GLOB(a) v.pc=v.pc+1 end end
local _7v6c=function(v,a,b,c) if ((83%83)==0) then local s=v.sp _SET_GLOB(a,v.st[s]) v.st[s]=nil v.sp=s-1 v.pc=v.pc+1 end end
local _5apu=function(v,a,b,c) if ((4*(4+1)/2)==10) then v.st[v.sp]=v.st[v.sp][_S(a)] v.pc=v.pc+1 end end
local _ho7t=function(v,a,b,c) if ((98%98)==0) then local s=v.sp local v0=v.st[s] local o=v.st[s-1] v.st[s]=nil v.st[s-1]=nil v.sp=s-2 o[_S(a)]=v0 v.pc=v.pc+1 end end
local _faau=function(v,a,b,c) if ((90%90)==0) then local s=v.sp local kk=v.st[s] local o=v.st[s-1] v.st[s]=nil v.st[s-1]=o[kk] v.sp=s-1 v.pc=v.pc+1 end end
local _avl8=function(v,a,b,c) if ((7*(7+1)/2)==28) then local s=v.sp local v0=v.st[s] local k0=v.st[s-1] local o=v.st[s-2] v.st[s]=nil v.st[s-1]=nil v.st[s-2]=nil o[k0]=v0 v.sp=s-3 v.pc=v.pc+1 end end
local _9thg=function(v,a,b,c) if 2800==2800 then local s=v.sp local y0=v.st[s] local x0=v.st[s-1] v.st[s]=nil if a==1 then v.st[s-1]=x0+y0 elseif a==2 then v.st[s-1]=x0-y0 elseif a==3 then v.st[s-1]=x0*y0 elseif a==4 then v.st[s-1]=x0/y0 elseif a==5 then v.st[s-1]=x0%y0 elseif a==6 then v.st[s-1]=_flr(x0/y0) elseif a==7 then v.st[s-1]=x0^y0 elseif a==8 then v.st[s-1]=_ts(x0).._ts(y0) elseif a==9 then v.st[s-1]=(x0==y0) elseif a==10 then v.st[s-1]=(x0~=y0) elseif a==11 then v.st[s-1]=(x0<y0) elseif a==12 then v.st[s-1]=(x0>y0) elseif a==13 then v.st[s-1]=(x0<=y0) elseif a==14 then v.st[s-1]=(x0>=y0) elseif a==15 then v.st[s-1]=(x0 and y0) elseif a==16 then v.st[s-1]=(x0 or y0) end v.sp=s-1 v.pc=v.pc+1 end end
local _97gf=function(v,a,b,c) if ((5*(5+1)/2)==15) then local s=v.sp local x=v.st[s] if a==1 then v.st[s]=-x elseif a==2 then v.st[s]=not x elseif a==3 then v.st[s]=#x end v.pc=v.pc+1 end end
local _7e5n=function(v,a,b,c) if ((38*38)==1444) then local s=v.sp local fn0=v.st[s] v.st[s]=nil v.sp=s-1 local ar={} for ii=a,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=v.sp-1 end local rv=fn0(_up(ar)) v.sp=v.sp+1 v.st[v.sp]=rv v.pc=v.pc+1 end end
local _johr=function(v,a,b,c) if 3132==3132 then local s=v.sp local o0=v.st[s] v.st[s]=nil v.sp=s-1 local ar={} for ii=b,1,-1 do ar[ii]=v.st[v.sp] v.st[v.sp]=nil v.sp=v.sp-1 end local fn0=o0[_S(a)] local rv=fn0(o0,_up(ar)) v.sp=v.sp+1 v.st[v.sp]=rv v.pc=v.pc+1 end end
local _5ewl=function(v,a,b,c) if 3537==3537 then if a==0 then return end v.ret=v.st[v.sp] v.pc=0 end end
local _40k5=function(v,a,b,c) if 990==990 then v.pc=a+0 end end
local _e3ld=function(v,a,b,c) if ((64*64)==4096) then local s=v.sp local c0=v.st[s] v.st[s]=nil v.sp=s-1 if c0 then v.pc=v.pc+1 else v.pc=a end end end
local _k5o1=function(v,a,b,c) if ((35*35)==1225) then local s=v.sp local c=v.st[s] v.st[s]=nil v.sp=s-1 if c then v.pc=a else v.pc=v.pc+1 end end end
local _c9vb=function(v,a,b,c) if ((16-16)==0) then local s=v.sp+1 v.sp=s v.st[s]={} v.pc=v.pc+1 end end
local _h0bd=function(v,a,b,c) if ((5*(5+1)/2)==15) then local s=v.sp local val0=v.st[s] v.st[s]=nil local t0=v.st[s-1] local n0=#t0 t0[n0+1]=val0 v.sp=s-1 v.pc=v.pc+1 end end
local _5b69=function(v,a,b,c) if ((3*(3+1)/2)==6) then local s=v.sp local val=v.st[s] v.st[s]=nil local k=v.st[s-1] v.st[s-1]=nil local t=v.st[s-2] t[k]=val v.sp=s-2 v.pc=v.pc+1 end end
local _f4ho=function(v,a,b,c) if ((13%13)==0) then local pk0=a local cl0=v.lo local s=v.sp+1 v.sp=s v.st[s]=function(...) return R(pk0,{...},cl0) end v.pc=v.pc+1 end end
local _7t0f=function(v,a,b,c) if ((26-26)==0) then local s=v.sp v.st[s]=nil v.sp=s-1 v.pc=v.pc+1 end end
local _avrx=function(v,a,b,c) if ((67%67)==0) then v.pc=0 end end
local _l14o=function(v,a,b,c) if 5691==5691 then local s=v.sp local step=v.st[s] v.st[s]=nil local stop=v.st[s-1] v.st[s-1]=nil local start=v.st[s-2] v.st[s-2]=nil v.sp=s-3 v.lo[a]=start v.lo[a+1000000]=stop v.lo[a+2000000]=step v.pc=v.pc+1 end end
local _bcm2=function(v,a,b,c) if ((5*(5+1)/2)==15) then local val0=v.lo[a] local stp=v.lo[a+1000000] local st0=v.lo[a+2000000] local dn if st0>0 then dn=val0>stp else dn=val0<stp end if dn then v.pc=b else v.pc=v.pc+1 end end end
local _l0u1=function(v,a,b,c) if 665==665 then local s=v.lo[a] local sp=v.lo[a+2000000] v.lo[a]=s+sp v.pc=v.pc+1 end end
local _a0re=function(v,a,b,c) if ((8*(8+1)/2)==36) then v.pc=v.pc+1 end end
local _gcgg=function(v,a,b,c) if ((21-21)==0) then v.pc=v.pc+1 end end
local _7jjj=function(v,a,b,c) if ((6*(6+1)/2)==21) then v.pc=v.pc+1 end end
local _i0bk=function(v,a,b,c) if ((40*40)==1600) then v.pc=v.pc+1 end end
local _cvs1=function(v,a,b,c) if 1436==1436 then v.pc=v.pc+1 end end
local _kz50=function(v,a,b,c) if ((6*(6+1)/2)==21) then v.pc=v.pc+1 end end
local _dbyx=function(v,a,b,c) if 730==730 then v.pc=v.pc+1 end end
H1[104]=_bcm2
H1[64]=_jcdj
H1[85]=_l14o
H1[155]=_avrx
H1[44]=_9thg
H1[34]=_5b69
H1[136]=_h0bd
H1[109]=_k5o1
H1[132]=_7jjj
H1[188]=_btmr
H1[164]=_5ewl
H1[254]=_c9vb
H1[214]=_ggp5
H1[97]=_cvs1
H1[228]=_i0bk
H1[47]=_7t0f
H1[232]=_avl8
H1[235]=_dbyx
H1[212]=_l0u1
H1[45]=_kz50
H1[120]=_5apu
H1[255]=_40k5
H1[201]=_7v6c
H1[219]=_7e5n
H1[11]=_a0re
H1[6]=_gcgg
H1[83]=_faau
H1[221]=_aoor
H1[61]=_97gf
H1[49]=_ha14
H1[245]=_ful9
H1[96]=_ho7t
H1[168]=_f4ho
H1[33]=_jbbg
H1[207]=_e3ld
H1[17]=_johr
H1[216]=_cw11
do
local _safe=true
do
  if _sb~=string.byte or _scs~=string.char or _ss~=string.sub then _safe=false end
  if _slen~=string.len or _mf~=math.floor or _mh~=math.huge then _safe=false end
  if _ty(_sb)~="function" or _ty(_scs)~="function" or _ty(_ss)~="function" then _safe=false end
  if _ty(_mf)~="function" or _ty(_pc)~="function" then _safe=false end
  local _okp,_pr=_pc(_mf,3.7) if not _okp or _pr~=3 then _safe=false end
  if _scs(65)~="A" or _sb("A")~=65 or _mf(-3.2)~=-4 then _safe=false end
  if _ts(1)~="1" or _ts(true)~="true" then _safe=false end
  if #("abc")~=3 or ("a".."b")~="ab" or (7%3)~=1 then _safe=false end
  if _mh<=0 or _ss("hello",1,5)~="hello" then _safe=false end
  if _tn("42")~=42 then _safe=false end
  if _cat({"a","b"})~="ab" then _safe=false end
  if _srep("x",3)~="xxx" then _safe=false end
  if type(debug)=="table" and type(debug.gethook)=="function" then
    local _hk,_hm,_hc=debug.gethook()
    if _hc~=nil and _hc~=0 then _safe=false end
  end
  if type(getfenv)=="function" and type(setfenv)=="function" then
    local _fe=getfenv(1)
    if type(_fe)~="table" then _safe=false end
  end
  if type(rawget)=="function" and type(rawset)=="function" then
    local _t={} rawset(_t,"k","v") if rawget(_t,"k")~="v" then _safe=false end
  end
end
if not _safe then return end
end
local _ok=true
do
  local _c,_g=0,0
  for k,fn in pairs(H1) do
    if _ty(k)~="number" or _ty(fn)~="function" then _ok=false break end
    _c=_c+1 _g=(_g+k*31+k*k*17+k*k*k*3)%4294967296
  end
  if _c~=37 or _g~=570946381 then _ok=false end
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
    c[i]={_tn(_ss(hex,off,off+1),16),_tn(_ss(hex,off+2,off+3),16),_tn(_ss(hex,off+4,off+5),16),_tn(_ss(hex,off+6,off+7),16)}
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
local _ph,_ins,_op,_h2k,_h1k,_a,_b,_c,_h,_brk=false
local _disp={}
_disp[1]=function() _ph=ord[v.pc] if not _ph then _brk=true else _s=2 end end
_disp[2]=function() _ins=arr[_ph] if not _ins then _brk=true else _s=3 end end
_disp[3]=function() local _t=_bx(_ins[1],pX) _op=(_t-pof-_ph*pk)%256 if _op<0 then _op=_op+256 end _a=(_ins[2]-pofA-_ph*pkA)%256 if _a<0 then _a=_a+256 end _b=(_ins[3]-pofB-_ph*pkB)%256 if _b<0 then _b=_b+256 end _c=(_ins[4]-pofC-_ph*pkC)%256 if _c<0 then _c=_c+256 end _s=4 end
_disp[4]=function() _h2k=H3[_op] if not _h2k then _brk=true else _s=5 end end
_disp[5]=function() _h1k=H2[_h2k] if not _h1k then _brk=true else _s=6 end end
_disp[6]=function() _h=H1[_h1k] if not _h then _brk=true else _s=7 end end
_disp[7]=function() _vt=_vt+1 _h(v,_a,_b,_c) if v.pc==0 then _brk=true else _s=1 end end
while not _brk and _s~=0 do local f=_disp[_s] if not f then break end f() end
return v.ret
end
R(1,{})
