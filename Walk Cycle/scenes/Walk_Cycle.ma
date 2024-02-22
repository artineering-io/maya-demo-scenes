//Maya ASCII 2022 scene
//Name: Walk_Cycle.ma
//Last modified: Thu, Feb 22, 2024 05:14:15 PM
//Codeset: 1252
file -rdi 1 -ns "Walk" -rfn "HUMANRN" -typ "mayaAscii" "K:/Transfer/1 Semester/Character Animation/Human_Walk_Run//scenes/HUMAN.ma";
file -r -ns "Walk" -dr 1 -rfn "HUMANRN" -typ "mayaAscii" "K:/Transfer/1 Semester/Character Animation/Human_Walk_Run//scenes/HUMAN.ma";
requires maya "2022";
requires -nodeType "flairGlobals" "flairEngine" "1.1";
requires -nodeType "ShaderfxShader" "shaderFXPlugin" "1.0";
requires "stereoCamera" "10.0";
requires "Mayatomr" "2011.0m - 3.8.1.26 ";
requires "mtoa" "4.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202303271415-baa69b5798";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 22631)";
fileInfo "license" "education";
fileInfo "UUID" "8E0D73CE-4AC7-D5E3-08D8-BB9937E2EAF1";
createNode transform -s -n "persp";
	rename -uid "AEEDEF53-4D61-5E0C-3FB2-C5A6201AF15A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.747105909525001 2.1373457938550411 14.241569918712992 ;
	setAttr ".r" -type "double3" 4.4616472622578343 1024.9999999999718 -6.9314098346239352e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2BD4F4C4-409B-D1F6-5A40-B390C0637591";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 23.173068314448365;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.44003153980270093 5.5330339447908807 0.79973563335231823 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8119C7B3-4281-97EA-B8E3-C2866DD738E5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.111455358349223 100.1 -0.85694355362491814 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4874C88E-49CF-5CCA-EB91-799D3348E6D8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 28.123564391298174;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "49BF5EAD-4BA0-5DF6-D5B0-A0A99FD67B9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.3149602080454672 4.4609414004121035 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6878D456-4E6D-ABFF-6688-3DAAA228D08E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 21.971447886893397;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "1AC3A882-45CC-D29F-A2F4-7A9E11E9CD51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 223.3023238819224 5.7305567806847 20.794773122253293 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "41B544E8-47C3-C17B-E4A7-03A643CCBEAE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 31.722522862739762;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "left";
	rename -uid "278863F8-4C50-6AB2-D67A-C6A95827068C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 4.1472892115648268 0.97571120701640124 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "1EB30703-401D-E322-EF8E-D39BF4A16E2B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 16.113799073381994;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "787D49EF-4E77-4A9A-4438-83BE31B229E2";
	setAttr -s 8 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "DB58BE05-4BE8-6D80-0424-A8B9D7AE6967";
createNode displayLayer -n "defaultLayer";
	rename -uid "747D4B19-4E08-16AC-6F5F-D7B65C2BA2EA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C9E7EF5B-4040-A140-5C94-7E999B222565";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CFFE353B-4A5A-B19F-CFF8-40B20C37B55F";
	setAttr ".g" yes;
	setAttr -s 6 ".adjs";
	setAttr ".adjs[0].val" -type "string" "mayaSoftware";
	setAttr ".adjs[1].val" 1;
	setAttr ".adjs[16].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[17].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[18].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[19].val" -type "float3" 0 0 0 ;
createNode reference -n "HUMANRN";
	rename -uid "1C3ADF72-4944-3C41-8332-43976C641943";
	setAttr -s 388 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"HUMANRN"
		"HUMANRN" 14
		3 ":miDefaultOptions.minsp" "Walk:defaultRenderLayer.adjustments[2].plug" 
		""
		3 ":miDefaultOptions.maxsp" "Walk:defaultRenderLayer.adjustments[3].plug" 
		""
		3 ":miDefaultOptions.fil" "Walk:defaultRenderLayer.adjustments[4].plug" ""
		
		3 ":miDefaultOptions.filw" "Walk:defaultRenderLayer.adjustments[5].plug" 
		""
		3 ":miDefaultOptions.filh" "Walk:defaultRenderLayer.adjustments[6].plug" 
		""
		3 ":miDefaultOptions.conr" "Walk:defaultRenderLayer.adjustments[7].plug" 
		""
		3 ":miDefaultOptions.cong" "Walk:defaultRenderLayer.adjustments[8].plug" 
		""
		3 ":miDefaultOptions.conb" "Walk:defaultRenderLayer.adjustments[9].plug" 
		""
		3 ":miDefaultOptions.cona" "Walk:defaultRenderLayer.adjustments[10].plug" 
		""
		3 ":miDefaultOptions.ray" "Walk:defaultRenderLayer.adjustments[11].plug" 
		""
		3 ":miDefaultOptions.rflr" "Walk:defaultRenderLayer.adjustments[12].plug" 
		""
		3 ":miDefaultOptions.rfrr" "Walk:defaultRenderLayer.adjustments[13].plug" 
		""
		3 ":miDefaultOptions.maxr" "Walk:defaultRenderLayer.adjustments[14].plug" 
		""
		3 ":miDefaultOptions.shrd" "Walk:defaultRenderLayer.adjustments[15].plug" 
		""
		"HUMANRN" 657
		1 |Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:BODY_CTRLShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		1 |Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL|Walk:SPINE_1_CTRLShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		1 |Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL|Walk:SPINE_2_CTRL|Walk:SPINE_2_CTRLShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		1 |Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL1|Walk:SPINE_1_CTRL1Shape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		1 |Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL1|Walk:SPINE_2_CTRL|Walk:SPINE_2_CTRLShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		1 |Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL|Walk:L_FOOT_CTRLShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		1 |Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL|Walk:R_FOOT_CTRLShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		2 "|Walk:MooM_v3" "visibility" " 1"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:Skeleton|Walk:Spine_group_all_joints|Walk:Spine_IK" 
		"translate" " -type \"double3\" -0.067111281466338574 5.80960716678480082 -0.16563359230431257"
		
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:Skeleton|Walk:Spine_group_all_joints|Walk:Spine_IK" 
		"rotate" " -type \"double3\" 109.91190377775069464 3.4261328454078237 83.98521420308718177"
		
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Sphere|Walk:Left_Eye_low" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece4" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece4" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece5" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece5" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece6" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece6" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL" "translate" " -type \"double3\" 0 0 0.54028390468991183"
		
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:L_HAND_IK_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_hand_FKIK_ctrl_group|Walk:L_HAND_FKIK_CTRL" 
		"FKToIK" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_hand_FKIK_ctrl_group|Walk:R_HAND_FKIK_CTRL" 
		"FKToIK" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL" 
		"translate" " -type \"double3\" 0 -0.2 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL" 
		"translateZ" " -av"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL" 
		"rotate" " -type \"double3\" 10 -7 -1.055338"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL" 
		"rotateX" " -av"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL" 
		"rotateZ" " -av"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:BODY_CTRLShape" 
		"lockLength" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL|Walk:SPINE_1_CTRLShape" 
		"lockLength" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL|Walk:SPINE_2_CTRL" 
		"rotate" " -type \"double3\" 0 20 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL|Walk:SPINE_2_CTRL|Walk:SPINE_2_CTRLShape" 
		"lockLength" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL1|Walk:SPINE_1_CTRL1Shape" 
		"lockLength" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL1|Walk:SPINE_2_CTRL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL1|Walk:SPINE_2_CTRL|Walk:SPINE_2_CTRLShape" 
		"lockLength" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Neck_ctrl_group|Walk:NECK_FK_CTRL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL|Walk:L_FOOT_CTRLShape" 
		"lockLength" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL|Walk:R_FOOT_CTRLShape" 
		"lockLength" " -k 1 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Neck_Move_ctrl_group|Walk:NECK_IK_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine3_Move_ctrl_group|Walk:SPINE_IK_2_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine_Move_ctrl_group|Walk:SPINE_IK_1_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "Walk:SKIN" "visibility" " 1"
		2 "Walk:SKIN" "hideOnPlayback" " 0"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Sphere|Walk:Left_Eye_low|Walk:Left_Eye_lowShape.instObjGroups" 
		"Walk:lambert7SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Sphere|Walk:Right_eye_low|Walk:Right_eye_lowShape.instObjGroups" 
		"Walk:lambert7SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece4|Walk:left_Toe_pieceShape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3|Walk:left_Toe_pieceShape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2|Walk:left_Toe_pieceShape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1|Walk:left_Toe_pieceShape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece6|Walk:left_Heel_pieceShape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece5|Walk:left_Heel_pieceShape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece1|Walk:left_Heel_pieceShape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece4|Walk:left_Heel_pieceShape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece3|Walk:left_Heel_pieceShape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece2|Walk:left_Heel_pieceShape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Leg_group|Walk:right_Leg|Walk:right_LegShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Thigh_group|Walk:right_Thigh|Walk:right_ThighShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Forearm|Walk:right_ForearmShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Arm|Walk:right_ArmShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_5|Walk:right_Hand_palm_Shape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_2|Walk:right_Hand_palm_Shape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_6|Walk:right_Hand_palm_Shape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_1|Walk:right_Hand_palm_Shape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_3|Walk:right_Hand_palm_Shape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_4|Walk:right_Hand_palm_Shape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece44|Walk:right_Fingers_pieceShape44.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece41|Walk:right_Fingers_pieceShape41.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece40|Walk:right_Fingers_pieceShape40.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece45|Walk:right_Fingers_pieceShape45.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece43|Walk:right_Fingers_pieceShape43.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece42|Walk:right_Fingers_pieceShape42.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece54|Walk:right_Fingers_pieceShape54.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece52|Walk:right_Fingers_pieceShape52.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece51|Walk:right_Fingers_pieceShape51.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece39|Walk:right_Fingers_pieceShape39.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece38|Walk:right_Fingers_pieceShape38.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece53|Walk:right_Fingers_pieceShape53.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece37|Walk:right_Fingers_pieceShape37.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece46|Walk:right_Fingers_pieceShape46.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece49|Walk:right_Fingers_pieceShape49.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece48|Walk:right_Fingers_pieceShape48.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece47|Walk:right_Fingers_pieceShape47.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece50|Walk:right_Fingers_pieceShape50.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece24|Walk:right_Fingers_pieceShape24.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece23|Walk:right_Fingers_pieceShape23.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece22|Walk:right_Fingers_pieceShape22.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece19|Walk:right_Fingers_pieceShape19.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece21|Walk:right_Fingers_pieceShape21.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece20|Walk:right_Fingers_pieceShape20.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece29|Walk:right_Fingers_pieceShape29.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_40|Walk:LowRes_Peaces_Shape40.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_39|Walk:LowRes_Peaces_Shape39.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_33|Walk:LowRes_Peaces_Shape33.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_35|Walk:LowRes_Peaces_Shape35.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_34|Walk:LowRes_Peaces_Shape34.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_37|Walk:LowRes_Peaces_Shape37.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_36|Walk:LowRes_Peaces_Shape36.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_32|Walk:LowRes_Peaces_Shape32.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_38|Walk:LowRes_Peaces_Shape38.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece27|Walk:right_Fingers_pieceShape27.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece30|Walk:right_Fingers_pieceShape30.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece28|Walk:right_Fingers_pieceShape28.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece25|Walk:right_Fingers_pieceShape25.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece26|Walk:right_Fingers_pieceShape26.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece36|Walk:right_Fingers_pieceShape36.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:left_Fingers_piece35|Walk:left_Fingers_pieceShape35.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece33|Walk:right_Fingers_pieceShape33.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece32|Walk:right_Fingers_pieceShape32.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece34|Walk:right_Fingers_pieceShape34.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece31|Walk:right_Fingers_pieceShape31.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece6|Walk:right_Fingers_pieceShape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece5|Walk:right_Fingers_pieceShape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece4|Walk:right_Fingers_pieceShape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece3|Walk:right_Fingers_pieceShape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece2|Walk:right_Fingers_pieceShape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece1|Walk:right_Fingers_pieceShape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece12|Walk:right_Fingers_pieceShape12.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece11|Walk:right_Fingers_pieceShape11.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece10|Walk:right_Fingers_pieceShape10.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece9|Walk:right_Fingers_pieceShape9.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece8|Walk:right_Fingers_pieceShape8.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece7|Walk:right_Fingers_pieceShape7.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece16|Walk:right_Fingers_pieceShape16.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece18|Walk:right_Fingers_pieceShape18.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece17|Walk:right_Fingers_pieceShape17.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece15|Walk:right_Fingers_pieceShape15.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece14|Walk:right_Fingers_pieceShape14.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece13|Walk:right_Fingers_pieceShape13.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Forearm|Walk:left_ForearmShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Arm|Walk:left_ArmShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_5|Walk:left_Hand_palm_Shape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_2|Walk:left_Hand_palm_Shape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_6|Walk:left_Hand_palm_Shape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_1|Walk:left_Hand_palm_Shape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_3|Walk:left_Hand_palm_Shape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_4|Walk:left_Hand_palm_Shape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece44|Walk:left_Fingers_pieceShape44.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece41|Walk:left_Fingers_pieceShape41.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece40|Walk:left_Fingers_pieceShape40.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece45|Walk:left_Fingers_pieceShape45.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece43|Walk:left_Fingers_pieceShape43.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece42|Walk:left_Fingers_pieceShape42.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece54|Walk:left_Fingers_pieceShape54.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece52|Walk:left_Fingers_pieceShape52.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece51|Walk:left_Fingers_pieceShape51.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece39|Walk:left_Fingers_pieceShape39.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece38|Walk:left_Fingers_pieceShape38.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece53|Walk:left_Fingers_pieceShape53.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_31|Walk:LowRes_Peaces_Shape31.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_30|Walk:LowRes_Peaces_Shape30.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_29|Walk:LowRes_Peaces_Shape29.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_8|Walk:LowRes_Peaces_Shape8.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_12|Walk:LowRes_Peaces_Shape12.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_16|Walk:LowRes_Peaces_Shape16.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_9|Walk:LowRes_Peaces_Shape9.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_13|Walk:LowRes_Peaces_Shape13.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_17|Walk:LowRes_Peaces_Shape17.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_11|Walk:LowRes_Peaces_Shape11.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_15|Walk:LowRes_Peaces_Shape15.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_14|Walk:LowRes_Peaces_Shape14.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_10|Walk:LowRes_Peaces_Shape10.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_7|Walk:LowRes_Peaces_Shape7.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_18|Walk:LowRes_Peaces_Shape18.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece37|Walk:left_Fingers_pieceShape37.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece46|Walk:left_Fingers_pieceShape46.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece49|Walk:left_Fingers_pieceShape49.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece48|Walk:left_Fingers_pieceShape48.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece47|Walk:left_Fingers_pieceShape47.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece50|Walk:left_Fingers_pieceShape50.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece24|Walk:left_Fingers_pieceShape24.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece23|Walk:left_Fingers_pieceShape23.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece22|Walk:left_Fingers_pieceShape22.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece19|Walk:left_Fingers_pieceShape19.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece21|Walk:left_Fingers_pieceShape21.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece20|Walk:left_Fingers_pieceShape20.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece29|Walk:left_Fingers_pieceShape29.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece27|Walk:left_Fingers_pieceShape27.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece30|Walk:left_Fingers_pieceShape30.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece28|Walk:left_Fingers_pieceShape28.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece25|Walk:left_Fingers_pieceShape25.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece26|Walk:left_Fingers_pieceShape26.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece36|Walk:left_Fingers_pieceShape36.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece35|Walk:left_Fingers_pieceShape35.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece33|Walk:left_Fingers_pieceShape33.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece32|Walk:left_Fingers_pieceShape32.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece34|Walk:left_Fingers_pieceShape34.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece31|Walk:left_Fingers_pieceShape31.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece6|Walk:left_Fingers_pieceShape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece5|Walk:left_Fingers_pieceShape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece4|Walk:left_Fingers_pieceShape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece3|Walk:left_Fingers_pieceShape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece2|Walk:left_Fingers_pieceShape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece1|Walk:left_Fingers_pieceShape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece12|Walk:left_Fingers_pieceShape12.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece11|Walk:left_Fingers_pieceShape11.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece10|Walk:left_Fingers_pieceShape10.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece9|Walk:left_Fingers_pieceShape9.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece8|Walk:left_Fingers_pieceShape8.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece7|Walk:left_Fingers_pieceShape7.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece16|Walk:left_Fingers_pieceShape16.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece18|Walk:left_Fingers_pieceShape18.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece17|Walk:left_Fingers_pieceShape17.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece15|Walk:left_Fingers_pieceShape15.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece14|Walk:left_Fingers_pieceShape14.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece13|Walk:left_Fingers_pieceShape13.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Sphere|Walk:Head_SphereShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_high_group|Walk:Neck|Walk:NeckShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_high_group|Walk:Chest|Walk:ChestShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_high_group|Walk:Abdomnal|Walk:AbdomnalShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_high_group|Walk:Hip|Walk:HipShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_Low_group|Walk:Chest_low|Walk:Chest_lowShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_Low_group|Walk:Hip_low|Walk:Hip_lowShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_Low_group|Walk:Abdomnal_low|Walk:Abdomnal_lowShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece6|Walk:left_Toe_pieceShape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece5|Walk:left_Toe_pieceShape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece4|Walk:left_Toe_pieceShape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece3|Walk:left_Toe_pieceShape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece2|Walk:left_Toe_pieceShape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece1|Walk:left_Toe_pieceShape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece6|Walk:left_Heel_pieceShape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece5|Walk:left_Heel_pieceShape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece1|Walk:left_Heel_pieceShape1.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece4|Walk:left_Heel_pieceShape4.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece3|Walk:left_Heel_pieceShape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece2|Walk:left_Heel_pieceShape2.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Thigh_group|Walk:left_Thigh|Walk:left_ThighShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Leg_group|Walk:left_Leg|Walk:left_LegShape.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6|Walk:left_Toe_pieceShape6.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5|Walk:left_Toe_pieceShape5.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_24|Walk:LowRes_Peaces_Shape24.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_22|Walk:LowRes_Peaces_Shape22.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_25|Walk:LowRes_Peaces_Shape25.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_26|Walk:LowRes_Peaces_Shape26.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_48|Walk:LowRes_Peaces_Shape48.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_46|Walk:LowRes_Peaces_Shape46.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_44|Walk:LowRes_Peaces_Shape44.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_47|Walk:LowRes_Peaces_Shape47.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Low_group|Walk:LowRes_Peaces_3|Walk:LowRes_Peaces_Shape3.instObjGroups" 
		"Walk:blinn1SG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Ball_knee_group|Walk:right_Ball_knee|Walk:right_Ball_kneeShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:Joint_Low_Pieces8|Walk:Joint_Low_PiecesShape8.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:Joint_Low_Pieces11|Walk:Joint_Low_PiecesShape11.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:Joint_Low_Pieces12|Walk:Joint_Low_PiecesShape12.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Ball_Shoulder|Walk:right_Ball_ShoulderShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Ball_elbow|Walk:right_Ball_elbowShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Ball_wrist|Walk:right_Ball_wristShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:Joint_Low_Pieces3|Walk:Joint_Low_PiecesShape3.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:Joint_Low_Pieces5|Walk:Joint_Low_PiecesShape5.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:Joint_Low_Pieces4|Walk:Joint_Low_PiecesShape4.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Ball_Shoulder|Walk:left_Ball_ShoulderShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Ball_elbow|Walk:left_Ball_elbowShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Ball_wrist|Walk:left_Ball_wristShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:Joint_Low_Pieces1|Walk:Joint_Low_PiecesShape1.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:Joint_Low_Pieces|Walk:Joint_Low_PiecesShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:Joint_Low_Pieces2|Walk:Joint_Low_PiecesShape2.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_high_group|Walk:Ball_neck|Walk:Ball_neckShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_high_group|Walk:Ball_head|Walk:Ball_headShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Low_group|Walk:Joint_Low_Pieces6|Walk:Joint_Low_PiecesShape6.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Low_group|Walk:Joint_Low_Pieces14|Walk:Joint_Low_PiecesShape14.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Ball_ankle|Walk:left_Ball_ankleShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Ball_knee_group|Walk:left_Ball_knee|Walk:left_Ball_kneeShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Ball_hip|Walk:left_Ball_hipShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:Joint_Low_Pieces10|Walk:Joint_Low_PiecesShape10.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:Joint_Low_Pieces9|Walk:Joint_Low_PiecesShape9.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:Joint_Low_Pieces13|Walk:Joint_Low_PiecesShape13.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Ball_hip|Walk:right_Ball_hipShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		3 "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Ball_ankle|Walk:right_Ball_ankleShape.instObjGroups" 
		"Walk:pasted__pasted__shader_footSG.dagSetMembers" "-na"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_Low_group|Walk:Abdomnal_low|Walk:Abdomnal_lowShape.instObjGroups" 
		"HUMANRN.placeHolderList[1]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_Low_group|Walk:Hip_low|Walk:Hip_lowShape.instObjGroups" 
		"HUMANRN.placeHolderList[2]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_Low_group|Walk:Chest_low|Walk:Chest_lowShape.instObjGroups" 
		"HUMANRN.placeHolderList[3]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_high_group|Walk:Hip|Walk:HipShape.instObjGroups" 
		"HUMANRN.placeHolderList[4]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_high_group|Walk:Abdomnal|Walk:AbdomnalShape.instObjGroups" 
		"HUMANRN.placeHolderList[5]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Body_group|Walk:Body_high_group|Walk:Chest|Walk:ChestShape.instObjGroups" 
		"HUMANRN.placeHolderList[6]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Low_group|Walk:LowRes_Peaces_3|Walk:LowRes_Peaces_Shape3.instObjGroups" 
		"HUMANRN.placeHolderList[7]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Low_group|Walk:Joint_Low_Pieces14|Walk:Joint_Low_PiecesShape14.instObjGroups" 
		"HUMANRN.placeHolderList[8]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Low_group|Walk:Joint_Low_Pieces6|Walk:Joint_Low_PiecesShape6.instObjGroups" 
		"HUMANRN.placeHolderList[9]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_high_group|Walk:Ball_head|Walk:Ball_headShape.instObjGroups" 
		"HUMANRN.placeHolderList[10]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_high_group|Walk:Neck|Walk:NeckShape.instObjGroups" 
		"HUMANRN.placeHolderList[11]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_high_group|Walk:Ball_neck|Walk:Ball_neckShape.instObjGroups" 
		"HUMANRN.placeHolderList[12]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Sphere|Walk:Head_SphereShape.instObjGroups" 
		"HUMANRN.placeHolderList[13]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Sphere|Walk:Right_eye_low|Walk:Right_eye_lowShape.instObjGroups" 
		"HUMANRN.placeHolderList[14]" "Walk:lambert7SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:Head_group|Walk:Head_Sphere|Walk:Left_Eye_low|Walk:Left_Eye_lowShape.instObjGroups" 
		"HUMANRN.placeHolderList[15]" "Walk:lambert7SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_9|Walk:LowRes_Peaces_Shape9.instObjGroups" 
		"HUMANRN.placeHolderList[16]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_10|Walk:LowRes_Peaces_Shape10.instObjGroups" 
		"HUMANRN.placeHolderList[17]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_11|Walk:LowRes_Peaces_Shape11.instObjGroups" 
		"HUMANRN.placeHolderList[18]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_12|Walk:LowRes_Peaces_Shape12.instObjGroups" 
		"HUMANRN.placeHolderList[19]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_13|Walk:LowRes_Peaces_Shape13.instObjGroups" 
		"HUMANRN.placeHolderList[20]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_14|Walk:LowRes_Peaces_Shape14.instObjGroups" 
		"HUMANRN.placeHolderList[21]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_15|Walk:LowRes_Peaces_Shape15.instObjGroups" 
		"HUMANRN.placeHolderList[22]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_16|Walk:LowRes_Peaces_Shape16.instObjGroups" 
		"HUMANRN.placeHolderList[23]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_17|Walk:LowRes_Peaces_Shape17.instObjGroups" 
		"HUMANRN.placeHolderList[24]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_18|Walk:LowRes_Peaces_Shape18.instObjGroups" 
		"HUMANRN.placeHolderList[25]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_7|Walk:LowRes_Peaces_Shape7.instObjGroups" 
		"HUMANRN.placeHolderList[26]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:LowRes_Peaces_8|Walk:LowRes_Peaces_Shape8.instObjGroups" 
		"HUMANRN.placeHolderList[27]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:Joint_Low_Pieces2|Walk:Joint_Low_PiecesShape2.instObjGroups" 
		"HUMANRN.placeHolderList[28]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:Joint_Low_Pieces|Walk:Joint_Low_PiecesShape.instObjGroups" 
		"HUMANRN.placeHolderList[29]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_Hand_Low_group|Walk:Joint_Low_Pieces1|Walk:Joint_Low_PiecesShape1.instObjGroups" 
		"HUMANRN.placeHolderList[30]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece13|Walk:left_Fingers_pieceShape13.instObjGroups" 
		"HUMANRN.placeHolderList[31]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece14|Walk:left_Fingers_pieceShape14.instObjGroups" 
		"HUMANRN.placeHolderList[32]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece15|Walk:left_Fingers_pieceShape15.instObjGroups" 
		"HUMANRN.placeHolderList[33]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece17|Walk:left_Fingers_pieceShape17.instObjGroups" 
		"HUMANRN.placeHolderList[34]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece18|Walk:left_Fingers_pieceShape18.instObjGroups" 
		"HUMANRN.placeHolderList[35]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_01|Walk:left_Fingers_piece16|Walk:left_Fingers_pieceShape16.instObjGroups" 
		"HUMANRN.placeHolderList[36]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece7|Walk:left_Fingers_pieceShape7.instObjGroups" 
		"HUMANRN.placeHolderList[37]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece8|Walk:left_Fingers_pieceShape8.instObjGroups" 
		"HUMANRN.placeHolderList[38]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece9|Walk:left_Fingers_pieceShape9.instObjGroups" 
		"HUMANRN.placeHolderList[39]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece10|Walk:left_Fingers_pieceShape10.instObjGroups" 
		"HUMANRN.placeHolderList[40]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece11|Walk:left_Fingers_pieceShape11.instObjGroups" 
		"HUMANRN.placeHolderList[41]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_02|Walk:left_Fingers_piece12|Walk:left_Fingers_pieceShape12.instObjGroups" 
		"HUMANRN.placeHolderList[42]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece1|Walk:left_Fingers_pieceShape1.instObjGroups" 
		"HUMANRN.placeHolderList[43]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece2|Walk:left_Fingers_pieceShape2.instObjGroups" 
		"HUMANRN.placeHolderList[44]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece3|Walk:left_Fingers_pieceShape3.instObjGroups" 
		"HUMANRN.placeHolderList[45]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece4|Walk:left_Fingers_pieceShape4.instObjGroups" 
		"HUMANRN.placeHolderList[46]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece5|Walk:left_Fingers_pieceShape5.instObjGroups" 
		"HUMANRN.placeHolderList[47]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_03|Walk:left_Fingers_piece6|Walk:left_Fingers_pieceShape6.instObjGroups" 
		"HUMANRN.placeHolderList[48]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece31|Walk:left_Fingers_pieceShape31.instObjGroups" 
		"HUMANRN.placeHolderList[49]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece34|Walk:left_Fingers_pieceShape34.instObjGroups" 
		"HUMANRN.placeHolderList[50]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece32|Walk:left_Fingers_pieceShape32.instObjGroups" 
		"HUMANRN.placeHolderList[51]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece33|Walk:left_Fingers_pieceShape33.instObjGroups" 
		"HUMANRN.placeHolderList[52]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece35|Walk:left_Fingers_pieceShape35.instObjGroups" 
		"HUMANRN.placeHolderList[53]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_04|Walk:left_Fingers_piece36|Walk:left_Fingers_pieceShape36.instObjGroups" 
		"HUMANRN.placeHolderList[54]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece26|Walk:left_Fingers_pieceShape26.instObjGroups" 
		"HUMANRN.placeHolderList[55]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece25|Walk:left_Fingers_pieceShape25.instObjGroups" 
		"HUMANRN.placeHolderList[56]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece28|Walk:left_Fingers_pieceShape28.instObjGroups" 
		"HUMANRN.placeHolderList[57]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece30|Walk:left_Fingers_pieceShape30.instObjGroups" 
		"HUMANRN.placeHolderList[58]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece27|Walk:left_Fingers_pieceShape27.instObjGroups" 
		"HUMANRN.placeHolderList[59]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_05|Walk:left_Fingers_piece29|Walk:left_Fingers_pieceShape29.instObjGroups" 
		"HUMANRN.placeHolderList[60]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece20|Walk:left_Fingers_pieceShape20.instObjGroups" 
		"HUMANRN.placeHolderList[61]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece21|Walk:left_Fingers_pieceShape21.instObjGroups" 
		"HUMANRN.placeHolderList[62]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece19|Walk:left_Fingers_pieceShape19.instObjGroups" 
		"HUMANRN.placeHolderList[63]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece22|Walk:left_Fingers_pieceShape22.instObjGroups" 
		"HUMANRN.placeHolderList[64]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece23|Walk:left_Fingers_pieceShape23.instObjGroups" 
		"HUMANRN.placeHolderList[65]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_06|Walk:left_Fingers_piece24|Walk:left_Fingers_pieceShape24.instObjGroups" 
		"HUMANRN.placeHolderList[66]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece50|Walk:left_Fingers_pieceShape50.instObjGroups" 
		"HUMANRN.placeHolderList[67]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece47|Walk:left_Fingers_pieceShape47.instObjGroups" 
		"HUMANRN.placeHolderList[68]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece48|Walk:left_Fingers_pieceShape48.instObjGroups" 
		"HUMANRN.placeHolderList[69]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece49|Walk:left_Fingers_pieceShape49.instObjGroups" 
		"HUMANRN.placeHolderList[70]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece46|Walk:left_Fingers_pieceShape46.instObjGroups" 
		"HUMANRN.placeHolderList[71]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_07|Walk:left_Fingers_piece37|Walk:left_Fingers_pieceShape37.instObjGroups" 
		"HUMANRN.placeHolderList[72]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece53|Walk:left_Fingers_pieceShape53.instObjGroups" 
		"HUMANRN.placeHolderList[73]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece38|Walk:left_Fingers_pieceShape38.instObjGroups" 
		"HUMANRN.placeHolderList[74]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece39|Walk:left_Fingers_pieceShape39.instObjGroups" 
		"HUMANRN.placeHolderList[75]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece51|Walk:left_Fingers_pieceShape51.instObjGroups" 
		"HUMANRN.placeHolderList[76]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece52|Walk:left_Fingers_pieceShape52.instObjGroups" 
		"HUMANRN.placeHolderList[77]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_08|Walk:left_Fingers_piece54|Walk:left_Fingers_pieceShape54.instObjGroups" 
		"HUMANRN.placeHolderList[78]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece42|Walk:left_Fingers_pieceShape42.instObjGroups" 
		"HUMANRN.placeHolderList[79]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece43|Walk:left_Fingers_pieceShape43.instObjGroups" 
		"HUMANRN.placeHolderList[80]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece45|Walk:left_Fingers_pieceShape45.instObjGroups" 
		"HUMANRN.placeHolderList[81]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece40|Walk:left_Fingers_pieceShape40.instObjGroups" 
		"HUMANRN.placeHolderList[82]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece41|Walk:left_Fingers_pieceShape41.instObjGroups" 
		"HUMANRN.placeHolderList[83]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Finger_group_09|Walk:left_Fingers_piece44|Walk:left_Fingers_pieceShape44.instObjGroups" 
		"HUMANRN.placeHolderList[84]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_4|Walk:left_Hand_palm_Shape4.instObjGroups" 
		"HUMANRN.placeHolderList[85]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_3|Walk:left_Hand_palm_Shape3.instObjGroups" 
		"HUMANRN.placeHolderList[86]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_1|Walk:left_Hand_palm_Shape1.instObjGroups" 
		"HUMANRN.placeHolderList[87]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_6|Walk:left_Hand_palm_Shape6.instObjGroups" 
		"HUMANRN.placeHolderList[88]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_2|Walk:left_Hand_palm_Shape2.instObjGroups" 
		"HUMANRN.placeHolderList[89]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Palm_group|Walk:left_Hand_palm_5|Walk:left_Hand_palm_Shape5.instObjGroups" 
		"HUMANRN.placeHolderList[90]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Ball_wrist|Walk:left_Ball_wristShape.instObjGroups" 
		"HUMANRN.placeHolderList[91]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Ball_elbow|Walk:left_Ball_elbowShape.instObjGroups" 
		"HUMANRN.placeHolderList[92]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Arm|Walk:left_ArmShape.instObjGroups" 
		"HUMANRN.placeHolderList[93]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Forearm|Walk:left_ForearmShape.instObjGroups" 
		"HUMANRN.placeHolderList[94]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Hand_group|Walk:left_hand_high_group|Walk:left_Ball_Shoulder|Walk:left_Ball_ShoulderShape.instObjGroups" 
		"HUMANRN.placeHolderList[95]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_29|Walk:LowRes_Peaces_Shape29.instObjGroups" 
		"HUMANRN.placeHolderList[96]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_30|Walk:LowRes_Peaces_Shape30.instObjGroups" 
		"HUMANRN.placeHolderList[97]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_31|Walk:LowRes_Peaces_Shape31.instObjGroups" 
		"HUMANRN.placeHolderList[98]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_38|Walk:LowRes_Peaces_Shape38.instObjGroups" 
		"HUMANRN.placeHolderList[99]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_39|Walk:LowRes_Peaces_Shape39.instObjGroups" 
		"HUMANRN.placeHolderList[100]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_32|Walk:LowRes_Peaces_Shape32.instObjGroups" 
		"HUMANRN.placeHolderList[101]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_33|Walk:LowRes_Peaces_Shape33.instObjGroups" 
		"HUMANRN.placeHolderList[102]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_34|Walk:LowRes_Peaces_Shape34.instObjGroups" 
		"HUMANRN.placeHolderList[103]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_35|Walk:LowRes_Peaces_Shape35.instObjGroups" 
		"HUMANRN.placeHolderList[104]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_36|Walk:LowRes_Peaces_Shape36.instObjGroups" 
		"HUMANRN.placeHolderList[105]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_37|Walk:LowRes_Peaces_Shape37.instObjGroups" 
		"HUMANRN.placeHolderList[106]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:LowRes_Peaces_40|Walk:LowRes_Peaces_Shape40.instObjGroups" 
		"HUMANRN.placeHolderList[107]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:Joint_Low_Pieces4|Walk:Joint_Low_PiecesShape4.instObjGroups" 
		"HUMANRN.placeHolderList[108]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:Joint_Low_Pieces5|Walk:Joint_Low_PiecesShape5.instObjGroups" 
		"HUMANRN.placeHolderList[109]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_Hand_Low|Walk:Joint_Low_Pieces3|Walk:Joint_Low_PiecesShape3.instObjGroups" 
		"HUMANRN.placeHolderList[110]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece13|Walk:right_Fingers_pieceShape13.instObjGroups" 
		"HUMANRN.placeHolderList[111]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece14|Walk:right_Fingers_pieceShape14.instObjGroups" 
		"HUMANRN.placeHolderList[112]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece15|Walk:right_Fingers_pieceShape15.instObjGroups" 
		"HUMANRN.placeHolderList[113]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece17|Walk:right_Fingers_pieceShape17.instObjGroups" 
		"HUMANRN.placeHolderList[114]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece18|Walk:right_Fingers_pieceShape18.instObjGroups" 
		"HUMANRN.placeHolderList[115]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_01|Walk:right_Fingers_piece16|Walk:right_Fingers_pieceShape16.instObjGroups" 
		"HUMANRN.placeHolderList[116]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece7|Walk:right_Fingers_pieceShape7.instObjGroups" 
		"HUMANRN.placeHolderList[117]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece8|Walk:right_Fingers_pieceShape8.instObjGroups" 
		"HUMANRN.placeHolderList[118]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece9|Walk:right_Fingers_pieceShape9.instObjGroups" 
		"HUMANRN.placeHolderList[119]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece10|Walk:right_Fingers_pieceShape10.instObjGroups" 
		"HUMANRN.placeHolderList[120]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece11|Walk:right_Fingers_pieceShape11.instObjGroups" 
		"HUMANRN.placeHolderList[121]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_02|Walk:right_Fingers_piece12|Walk:right_Fingers_pieceShape12.instObjGroups" 
		"HUMANRN.placeHolderList[122]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece1|Walk:right_Fingers_pieceShape1.instObjGroups" 
		"HUMANRN.placeHolderList[123]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece2|Walk:right_Fingers_pieceShape2.instObjGroups" 
		"HUMANRN.placeHolderList[124]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece3|Walk:right_Fingers_pieceShape3.instObjGroups" 
		"HUMANRN.placeHolderList[125]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece4|Walk:right_Fingers_pieceShape4.instObjGroups" 
		"HUMANRN.placeHolderList[126]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece5|Walk:right_Fingers_pieceShape5.instObjGroups" 
		"HUMANRN.placeHolderList[127]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_03|Walk:right_Fingers_piece6|Walk:right_Fingers_pieceShape6.instObjGroups" 
		"HUMANRN.placeHolderList[128]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece31|Walk:right_Fingers_pieceShape31.instObjGroups" 
		"HUMANRN.placeHolderList[129]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece34|Walk:right_Fingers_pieceShape34.instObjGroups" 
		"HUMANRN.placeHolderList[130]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece32|Walk:right_Fingers_pieceShape32.instObjGroups" 
		"HUMANRN.placeHolderList[131]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece33|Walk:right_Fingers_pieceShape33.instObjGroups" 
		"HUMANRN.placeHolderList[132]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:left_Fingers_piece35|Walk:left_Fingers_pieceShape35.instObjGroups" 
		"HUMANRN.placeHolderList[133]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_04|Walk:right_Fingers_piece36|Walk:right_Fingers_pieceShape36.instObjGroups" 
		"HUMANRN.placeHolderList[134]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece26|Walk:right_Fingers_pieceShape26.instObjGroups" 
		"HUMANRN.placeHolderList[135]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece25|Walk:right_Fingers_pieceShape25.instObjGroups" 
		"HUMANRN.placeHolderList[136]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece28|Walk:right_Fingers_pieceShape28.instObjGroups" 
		"HUMANRN.placeHolderList[137]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece30|Walk:right_Fingers_pieceShape30.instObjGroups" 
		"HUMANRN.placeHolderList[138]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece27|Walk:right_Fingers_pieceShape27.instObjGroups" 
		"HUMANRN.placeHolderList[139]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_05|Walk:right_Fingers_piece29|Walk:right_Fingers_pieceShape29.instObjGroups" 
		"HUMANRN.placeHolderList[140]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece20|Walk:right_Fingers_pieceShape20.instObjGroups" 
		"HUMANRN.placeHolderList[141]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece21|Walk:right_Fingers_pieceShape21.instObjGroups" 
		"HUMANRN.placeHolderList[142]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece19|Walk:right_Fingers_pieceShape19.instObjGroups" 
		"HUMANRN.placeHolderList[143]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece22|Walk:right_Fingers_pieceShape22.instObjGroups" 
		"HUMANRN.placeHolderList[144]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece23|Walk:right_Fingers_pieceShape23.instObjGroups" 
		"HUMANRN.placeHolderList[145]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_06|Walk:right_Fingers_piece24|Walk:right_Fingers_pieceShape24.instObjGroups" 
		"HUMANRN.placeHolderList[146]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece50|Walk:right_Fingers_pieceShape50.instObjGroups" 
		"HUMANRN.placeHolderList[147]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece47|Walk:right_Fingers_pieceShape47.instObjGroups" 
		"HUMANRN.placeHolderList[148]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece48|Walk:right_Fingers_pieceShape48.instObjGroups" 
		"HUMANRN.placeHolderList[149]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece49|Walk:right_Fingers_pieceShape49.instObjGroups" 
		"HUMANRN.placeHolderList[150]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece46|Walk:right_Fingers_pieceShape46.instObjGroups" 
		"HUMANRN.placeHolderList[151]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_07|Walk:right_Fingers_piece37|Walk:right_Fingers_pieceShape37.instObjGroups" 
		"HUMANRN.placeHolderList[152]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece53|Walk:right_Fingers_pieceShape53.instObjGroups" 
		"HUMANRN.placeHolderList[153]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece38|Walk:right_Fingers_pieceShape38.instObjGroups" 
		"HUMANRN.placeHolderList[154]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece39|Walk:right_Fingers_pieceShape39.instObjGroups" 
		"HUMANRN.placeHolderList[155]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece51|Walk:right_Fingers_pieceShape51.instObjGroups" 
		"HUMANRN.placeHolderList[156]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece52|Walk:right_Fingers_pieceShape52.instObjGroups" 
		"HUMANRN.placeHolderList[157]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_08|Walk:right_Fingers_piece54|Walk:right_Fingers_pieceShape54.instObjGroups" 
		"HUMANRN.placeHolderList[158]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece42|Walk:right_Fingers_pieceShape42.instObjGroups" 
		"HUMANRN.placeHolderList[159]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece43|Walk:right_Fingers_pieceShape43.instObjGroups" 
		"HUMANRN.placeHolderList[160]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece45|Walk:right_Fingers_pieceShape45.instObjGroups" 
		"HUMANRN.placeHolderList[161]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece40|Walk:right_Fingers_pieceShape40.instObjGroups" 
		"HUMANRN.placeHolderList[162]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece41|Walk:right_Fingers_pieceShape41.instObjGroups" 
		"HUMANRN.placeHolderList[163]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Finger_group_09|Walk:right_Fingers_piece44|Walk:right_Fingers_pieceShape44.instObjGroups" 
		"HUMANRN.placeHolderList[164]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_4|Walk:right_Hand_palm_Shape4.instObjGroups" 
		"HUMANRN.placeHolderList[165]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_3|Walk:right_Hand_palm_Shape3.instObjGroups" 
		"HUMANRN.placeHolderList[166]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_1|Walk:right_Hand_palm_Shape1.instObjGroups" 
		"HUMANRN.placeHolderList[167]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_6|Walk:right_Hand_palm_Shape6.instObjGroups" 
		"HUMANRN.placeHolderList[168]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_2|Walk:right_Hand_palm_Shape2.instObjGroups" 
		"HUMANRN.placeHolderList[169]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Palm_group|Walk:right_Hand_palm_5|Walk:right_Hand_palm_Shape5.instObjGroups" 
		"HUMANRN.placeHolderList[170]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Ball_wrist|Walk:right_Ball_wristShape.instObjGroups" 
		"HUMANRN.placeHolderList[171]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Ball_elbow|Walk:right_Ball_elbowShape.instObjGroups" 
		"HUMANRN.placeHolderList[172]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Arm|Walk:right_ArmShape.instObjGroups" 
		"HUMANRN.placeHolderList[173]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Forearm|Walk:right_ForearmShape.instObjGroups" 
		"HUMANRN.placeHolderList[174]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Hand_group|Walk:right_hand_high_group|Walk:right_Ball_Shoulder|Walk:right_Ball_ShoulderShape.instObjGroups" 
		"HUMANRN.placeHolderList[175]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_44|Walk:LowRes_Peaces_Shape44.instObjGroups" 
		"HUMANRN.placeHolderList[176]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_46|Walk:LowRes_Peaces_Shape46.instObjGroups" 
		"HUMANRN.placeHolderList[177]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_47|Walk:LowRes_Peaces_Shape47.instObjGroups" 
		"HUMANRN.placeHolderList[178]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:LowRes_Peaces_48|Walk:LowRes_Peaces_Shape48.instObjGroups" 
		"HUMANRN.placeHolderList[179]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:Joint_Low_Pieces12|Walk:Joint_Low_PiecesShape12.instObjGroups" 
		"HUMANRN.placeHolderList[180]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:Joint_Low_Pieces11|Walk:Joint_Low_PiecesShape11.instObjGroups" 
		"HUMANRN.placeHolderList[181]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_Leg_low_group|Walk:Joint_Low_Pieces8|Walk:Joint_Low_PiecesShape8.instObjGroups" 
		"HUMANRN.placeHolderList[182]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Thigh_group|Walk:right_Thigh|Walk:right_ThighShape.instObjGroups" 
		"HUMANRN.placeHolderList[183]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Leg_group|Walk:right_Leg|Walk:right_LegShape.instObjGroups" 
		"HUMANRN.placeHolderList[184]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Ball_knee_group|Walk:right_Ball_knee|Walk:right_Ball_kneeShape.instObjGroups" 
		"HUMANRN.placeHolderList[185]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece2|Walk:left_Heel_pieceShape2.instObjGroups" 
		"HUMANRN.placeHolderList[186]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece3|Walk:left_Heel_pieceShape3.instObjGroups" 
		"HUMANRN.placeHolderList[187]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece4|Walk:left_Heel_pieceShape4.instObjGroups" 
		"HUMANRN.placeHolderList[188]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece1|Walk:left_Heel_pieceShape1.instObjGroups" 
		"HUMANRN.placeHolderList[189]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece5|Walk:left_Heel_pieceShape5.instObjGroups" 
		"HUMANRN.placeHolderList[190]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Heel_group|Walk:left_Heel_piece6|Walk:left_Heel_pieceShape6.instObjGroups" 
		"HUMANRN.placeHolderList[191]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.translateX" 
		"HUMANRN.placeHolderList[192]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.translateY" 
		"HUMANRN.placeHolderList[193]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.translateZ" 
		"HUMANRN.placeHolderList[194]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.visibility" 
		"HUMANRN.placeHolderList[195]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.rotateX" 
		"HUMANRN.placeHolderList[196]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.rotateY" 
		"HUMANRN.placeHolderList[197]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.rotateZ" 
		"HUMANRN.placeHolderList[198]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.scaleX" 
		"HUMANRN.placeHolderList[199]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.scaleY" 
		"HUMANRN.placeHolderList[200]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1.scaleZ" 
		"HUMANRN.placeHolderList[201]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece1|Walk:left_Toe_pieceShape1.instObjGroups" 
		"HUMANRN.placeHolderList[202]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.visibility" 
		"HUMANRN.placeHolderList[203]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.translateX" 
		"HUMANRN.placeHolderList[204]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.translateY" 
		"HUMANRN.placeHolderList[205]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.translateZ" 
		"HUMANRN.placeHolderList[206]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.rotateX" 
		"HUMANRN.placeHolderList[207]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.rotateY" 
		"HUMANRN.placeHolderList[208]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.rotateZ" 
		"HUMANRN.placeHolderList[209]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.scaleX" 
		"HUMANRN.placeHolderList[210]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.scaleY" 
		"HUMANRN.placeHolderList[211]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2.scaleZ" 
		"HUMANRN.placeHolderList[212]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece2|Walk:left_Toe_pieceShape2.instObjGroups" 
		"HUMANRN.placeHolderList[213]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.translateX" 
		"HUMANRN.placeHolderList[214]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.translateY" 
		"HUMANRN.placeHolderList[215]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.translateZ" 
		"HUMANRN.placeHolderList[216]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.visibility" 
		"HUMANRN.placeHolderList[217]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.rotateX" 
		"HUMANRN.placeHolderList[218]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.rotateY" 
		"HUMANRN.placeHolderList[219]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.rotateZ" 
		"HUMANRN.placeHolderList[220]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.scaleX" 
		"HUMANRN.placeHolderList[221]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.scaleY" 
		"HUMANRN.placeHolderList[222]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3.scaleZ" 
		"HUMANRN.placeHolderList[223]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece3|Walk:left_Toe_pieceShape3.instObjGroups" 
		"HUMANRN.placeHolderList[224]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece4|Walk:left_Toe_pieceShape4.instObjGroups" 
		"HUMANRN.placeHolderList[225]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.translateX" 
		"HUMANRN.placeHolderList[226]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.translateY" 
		"HUMANRN.placeHolderList[227]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.translateZ" 
		"HUMANRN.placeHolderList[228]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.visibility" 
		"HUMANRN.placeHolderList[229]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.rotateX" 
		"HUMANRN.placeHolderList[230]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.rotateY" 
		"HUMANRN.placeHolderList[231]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.rotateZ" 
		"HUMANRN.placeHolderList[232]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.scaleX" 
		"HUMANRN.placeHolderList[233]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.scaleY" 
		"HUMANRN.placeHolderList[234]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5.scaleZ" 
		"HUMANRN.placeHolderList[235]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece5|Walk:left_Toe_pieceShape5.instObjGroups" 
		"HUMANRN.placeHolderList[236]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.translateX" 
		"HUMANRN.placeHolderList[237]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.translateY" 
		"HUMANRN.placeHolderList[238]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.translateZ" 
		"HUMANRN.placeHolderList[239]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.visibility" 
		"HUMANRN.placeHolderList[240]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.rotateX" 
		"HUMANRN.placeHolderList[241]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.rotateY" 
		"HUMANRN.placeHolderList[242]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.rotateZ" 
		"HUMANRN.placeHolderList[243]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.scaleX" 
		"HUMANRN.placeHolderList[244]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.scaleY" 
		"HUMANRN.placeHolderList[245]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6.scaleZ" 
		"HUMANRN.placeHolderList[246]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Toe_group|Walk:left_Toe_piece6|Walk:left_Toe_pieceShape6.instObjGroups" 
		"HUMANRN.placeHolderList[247]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Ball_ankle|Walk:right_Ball_ankleShape.instObjGroups" 
		"HUMANRN.placeHolderList[248]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:right_Leg_Group|Walk:right_leg_high_group|Walk:right_Ball_hip|Walk:right_Ball_hipShape.instObjGroups" 
		"HUMANRN.placeHolderList[249]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_22|Walk:LowRes_Peaces_Shape22.instObjGroups" 
		"HUMANRN.placeHolderList[250]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_24|Walk:LowRes_Peaces_Shape24.instObjGroups" 
		"HUMANRN.placeHolderList[251]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_25|Walk:LowRes_Peaces_Shape25.instObjGroups" 
		"HUMANRN.placeHolderList[252]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:LowRes_Peaces_26|Walk:LowRes_Peaces_Shape26.instObjGroups" 
		"HUMANRN.placeHolderList[253]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:Joint_Low_Pieces13|Walk:Joint_Low_PiecesShape13.instObjGroups" 
		"HUMANRN.placeHolderList[254]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:Joint_Low_Pieces9|Walk:Joint_Low_PiecesShape9.instObjGroups" 
		"HUMANRN.placeHolderList[255]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_low_Group|Walk:Joint_Low_Pieces10|Walk:Joint_Low_PiecesShape10.instObjGroups" 
		"HUMANRN.placeHolderList[256]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Ball_hip|Walk:left_Ball_hipShape.instObjGroups" 
		"HUMANRN.placeHolderList[257]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Ball_knee_group|Walk:left_Ball_knee|Walk:left_Ball_kneeShape.instObjGroups" 
		"HUMANRN.placeHolderList[258]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Leg_group|Walk:left_Leg|Walk:left_LegShape.instObjGroups" 
		"HUMANRN.placeHolderList[259]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Thigh_group|Walk:left_Thigh|Walk:left_ThighShape.instObjGroups" 
		"HUMANRN.placeHolderList[260]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece2|Walk:left_Heel_pieceShape2.instObjGroups" 
		"HUMANRN.placeHolderList[261]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece3|Walk:left_Heel_pieceShape3.instObjGroups" 
		"HUMANRN.placeHolderList[262]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece4|Walk:left_Heel_pieceShape4.instObjGroups" 
		"HUMANRN.placeHolderList[263]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece1|Walk:left_Heel_pieceShape1.instObjGroups" 
		"HUMANRN.placeHolderList[264]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece5|Walk:left_Heel_pieceShape5.instObjGroups" 
		"HUMANRN.placeHolderList[265]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Heel_group|Walk:left_Heel_piece6|Walk:left_Heel_pieceShape6.instObjGroups" 
		"HUMANRN.placeHolderList[266]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece1.translateZ" 
		"HUMANRN.placeHolderList[267]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece1|Walk:left_Toe_pieceShape1.instObjGroups" 
		"HUMANRN.placeHolderList[268]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece2|Walk:left_Toe_pieceShape2.instObjGroups" 
		"HUMANRN.placeHolderList[269]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece3|Walk:left_Toe_pieceShape3.instObjGroups" 
		"HUMANRN.placeHolderList[270]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece4.translateZ" 
		"HUMANRN.placeHolderList[271]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece4|Walk:left_Toe_pieceShape4.instObjGroups" 
		"HUMANRN.placeHolderList[272]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece5.translateZ" 
		"HUMANRN.placeHolderList[273]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece5|Walk:left_Toe_pieceShape5.instObjGroups" 
		"HUMANRN.placeHolderList[274]" "Walk:blinn1SG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece6.translateZ" 
		"HUMANRN.placeHolderList[275]" ""
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Toe_group|Walk:left_Toe_piece6|Walk:left_Toe_pieceShape6.instObjGroups" 
		"HUMANRN.placeHolderList[276]" "Walk:blinn1SG.dsm"
		5 3 "HUMANRN" "|Walk:MooM_v3|Walk:DoNotTouch_grp|Walk:geo_grp|Walk:left_Leg_Group|Walk:left_leg_High_group|Walk:left_Ball_ankle|Walk:left_Ball_ankleShape.instObjGroups" 
		"HUMANRN.placeHolderList[277]" "Walk:pasted__pasted__shader_footSG.dsm"
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL.translateZ" 
		"HUMANRN.placeHolderList[278]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.PalmBend" 
		"HUMANRN.placeHolderList[279]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Pointer1" 
		"HUMANRN.placeHolderList[280]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Pointer2" 
		"HUMANRN.placeHolderList[281]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Pointer3" 
		"HUMANRN.placeHolderList[282]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.PointerTurn" 
		"HUMANRN.placeHolderList[283]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.PointerRoll" 
		"HUMANRN.placeHolderList[284]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Pinky1" 
		"HUMANRN.placeHolderList[285]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Pinky2" 
		"HUMANRN.placeHolderList[286]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Pinky3" 
		"HUMANRN.placeHolderList[287]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.PinkyTurn" 
		"HUMANRN.placeHolderList[288]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.PinkyRoll" 
		"HUMANRN.placeHolderList[289]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb1" 
		"HUMANRN.placeHolderList[290]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb2" 
		"HUMANRN.placeHolderList[291]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb3" 
		"HUMANRN.placeHolderList[292]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb1UP" 
		"HUMANRN.placeHolderList[293]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb2UP" 
		"HUMANRN.placeHolderList[294]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb3UP" 
		"HUMANRN.placeHolderList[295]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb1Roll" 
		"HUMANRN.placeHolderList[296]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb2Roll" 
		"HUMANRN.placeHolderList[297]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Hand_Details_ctrl_group|Walk:L_FING_CTRL.Thumb3Roll" 
		"HUMANRN.placeHolderList[298]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL.ShoulderUD" 
		"HUMANRN.placeHolderList[299]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL.ShoulderFB" 
		"HUMANRN.placeHolderList[300]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL.rotateX" 
		"HUMANRN.placeHolderList[301]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL.rotateY" 
		"HUMANRN.placeHolderList[302]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[303]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL|Walk:left_Elbow_FK_ctrl.rotateY" 
		"HUMANRN.placeHolderList[304]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL|Walk:left_Elbow_FK_ctrl|Walk:left_Wrist_FK_ctrl.rotateX" 
		"HUMANRN.placeHolderList[305]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL|Walk:left_Elbow_FK_ctrl|Walk:left_Wrist_FK_ctrl.rotateY" 
		"HUMANRN.placeHolderList[306]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_Hand_controllers_all|Walk:left_Shoulder_ctrl_group|Walk:L_SHOULDER_CTRL|Walk:left_Elbow_FK_ctrl|Walk:left_Wrist_FK_ctrl.rotateZ" 
		"HUMANRN.placeHolderList[307]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.PalmBend" 
		"HUMANRN.placeHolderList[308]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Pointer1" 
		"HUMANRN.placeHolderList[309]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Pointer2" 
		"HUMANRN.placeHolderList[310]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Pointer3" 
		"HUMANRN.placeHolderList[311]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.PointerTurn" 
		"HUMANRN.placeHolderList[312]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.PointerRoll" 
		"HUMANRN.placeHolderList[313]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Pinky1" 
		"HUMANRN.placeHolderList[314]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Pinky2" 
		"HUMANRN.placeHolderList[315]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Pinky3" 
		"HUMANRN.placeHolderList[316]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.PinkyTurn" 
		"HUMANRN.placeHolderList[317]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.PinkyRoll" 
		"HUMANRN.placeHolderList[318]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb1" 
		"HUMANRN.placeHolderList[319]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb2" 
		"HUMANRN.placeHolderList[320]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb3" 
		"HUMANRN.placeHolderList[321]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb1UP" 
		"HUMANRN.placeHolderList[322]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb2UP" 
		"HUMANRN.placeHolderList[323]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb3UP" 
		"HUMANRN.placeHolderList[324]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb1Roll" 
		"HUMANRN.placeHolderList[325]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb2Roll" 
		"HUMANRN.placeHolderList[326]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Hand_Details_ctrl_group|Walk:R_FING_CTRL.Thumb3Roll" 
		"HUMANRN.placeHolderList[327]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL.ShoulderUD" 
		"HUMANRN.placeHolderList[328]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL.ShoulderFB" 
		"HUMANRN.placeHolderList[329]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL.rotateX" 
		"HUMANRN.placeHolderList[330]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL.rotateY" 
		"HUMANRN.placeHolderList[331]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[332]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL|Walk:right_Elbow_FK_ctrl.rotateY" 
		"HUMANRN.placeHolderList[333]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL|Walk:right_Elbow_FK_ctrl|Walk:right_Wrist_FK_ctrl.rotateX" 
		"HUMANRN.placeHolderList[334]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL|Walk:right_Elbow_FK_ctrl|Walk:right_Wrist_FK_ctrl.rotateY" 
		"HUMANRN.placeHolderList[335]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_Hand_controllers_all|Walk:right_Shoulder_ctrl_group|Walk:R_SHOULDER_CTRL|Walk:right_Elbow_FK_ctrl|Walk:right_Wrist_FK_ctrl.rotateZ" 
		"HUMANRN.placeHolderList[336]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL.translateY" 
		"HUMANRN.placeHolderList[337]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL.rotateY" 
		"HUMANRN.placeHolderList[338]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[339]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:BODY_CTRL|Walk:SPINE_1_CTRL|Walk:SPINE_2_CTRL.rotateY" 
		"HUMANRN.placeHolderList[340]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Neck_ctrl_group|Walk:NECK_FK_CTRL.rotateX" 
		"HUMANRN.placeHolderList[341]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Head_ctrl_group|Walk:HEAD_CTRL.BlinkL" 
		"HUMANRN.placeHolderList[342]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Head_ctrl_group|Walk:HEAD_CTRL.BlinkR" 
		"HUMANRN.placeHolderList[343]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Head_ctrl_group|Walk:HEAD_CTRL.OpenL" 
		"HUMANRN.placeHolderList[344]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Head_ctrl_group|Walk:HEAD_CTRL.OpenR" 
		"HUMANRN.placeHolderList[345]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Head_ctrl_group|Walk:HEAD_CTRL.rotateX" 
		"HUMANRN.placeHolderList[346]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Head_ctrl_group|Walk:HEAD_CTRL.rotateY" 
		"HUMANRN.placeHolderList[347]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Head_ctrl_group|Walk:HEAD_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[348]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.Heel" 
		"HUMANRN.placeHolderList[349]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.Ball" 
		"HUMANRN.placeHolderList[350]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.Toe_lift" 
		"HUMANRN.placeHolderList[351]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.Toe_wiggle" 
		"HUMANRN.placeHolderList[352]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.ToeTwist" 
		"HUMANRN.placeHolderList[353]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.translateX" 
		"HUMANRN.placeHolderList[354]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.translateY" 
		"HUMANRN.placeHolderList[355]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.translateZ" 
		"HUMANRN.placeHolderList[356]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.rotateX" 
		"HUMANRN.placeHolderList[357]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.rotateY" 
		"HUMANRN.placeHolderList[358]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:L_FOOT_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[359]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:left_leg_Twist_group|Walk:R_KNEE_CTRL.translateX" 
		"HUMANRN.placeHolderList[360]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:left_leg_Twist_group|Walk:R_KNEE_CTRL.translateY" 
		"HUMANRN.placeHolderList[361]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:left_leg_ctrls_group|Walk:left_leg_Twist_group|Walk:R_KNEE_CTRL.translateZ" 
		"HUMANRN.placeHolderList[362]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.Heel" 
		"HUMANRN.placeHolderList[363]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.Ball" 
		"HUMANRN.placeHolderList[364]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.Toe_lift" 
		"HUMANRN.placeHolderList[365]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.Toe_wiggle" 
		"HUMANRN.placeHolderList[366]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.ToeTwist" 
		"HUMANRN.placeHolderList[367]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.translateX" 
		"HUMANRN.placeHolderList[368]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.translateY" 
		"HUMANRN.placeHolderList[369]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.translateZ" 
		"HUMANRN.placeHolderList[370]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.rotateX" 
		"HUMANRN.placeHolderList[371]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.rotateY" 
		"HUMANRN.placeHolderList[372]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:R_FOOT_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[373]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:right_leg_Twist_group|Walk:L_KNEE_CTRL.translateX" 
		"HUMANRN.placeHolderList[374]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:right_leg_Twist_group|Walk:L_KNEE_CTRL.translateY" 
		"HUMANRN.placeHolderList[375]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:right_leg_ctrls_group|Walk:right_leg_Twist_group|Walk:L_KNEE_CTRL.translateZ" 
		"HUMANRN.placeHolderList[376]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine4_Move_ctrl_group|Walk:SHOULDER_CTRL.translateX" 
		"HUMANRN.placeHolderList[377]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine4_Move_ctrl_group|Walk:SHOULDER_CTRL.translateY" 
		"HUMANRN.placeHolderList[378]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine4_Move_ctrl_group|Walk:SHOULDER_CTRL.translateZ" 
		"HUMANRN.placeHolderList[379]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine4_Move_ctrl_group|Walk:SHOULDER_CTRL.rotateX" 
		"HUMANRN.placeHolderList[380]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine4_Move_ctrl_group|Walk:SHOULDER_CTRL.rotateY" 
		"HUMANRN.placeHolderList[381]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine4_Move_ctrl_group|Walk:SHOULDER_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[382]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine2_Move_ctrl_group|Walk:HIP_CTRL.translateX" 
		"HUMANRN.placeHolderList[383]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine2_Move_ctrl_group|Walk:HIP_CTRL.translateY" 
		"HUMANRN.placeHolderList[384]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine2_Move_ctrl_group|Walk:HIP_CTRL.translateZ" 
		"HUMANRN.placeHolderList[385]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine2_Move_ctrl_group|Walk:HIP_CTRL.rotateX" 
		"HUMANRN.placeHolderList[386]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine2_Move_ctrl_group|Walk:HIP_CTRL.rotateY" 
		"HUMANRN.placeHolderList[387]" ""
		5 4 "HUMANRN" "|Walk:MooM_v3|Walk:CONSTRAIN|Walk:WORLD_CTRL|Walk:POSE|Walk:anim_grp|Walk:Small_ctrls_group|Walk:Spine2_Move_ctrl_group|Walk:HIP_CTRL.rotateZ" 
		"HUMANRN.placeHolderList[388]" "";
	setAttr ".ptag" -type "string" "HumanWalk";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "561C7B82-4E3F-CEA1-97C2-DF8F5CF94C8C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -rendererOverrideName \"flairEngine\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -rendererOverrideName \"flairEngine\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n"
		+ "            -camera \"|left\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -rendererOverrideName \"flairEngine\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1730\n            -height 1139\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner2\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner2\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 1\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -camera \\\"|left\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -rendererOverrideName \\\"flairEngine\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1730\\n    -height 1139\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -camera \\\"|left\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -rendererOverrideName \\\"flairEngine\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1730\\n    -height 1139\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B7D3423A-4B22-2B3E-8ECD-0C9251324687";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 175 -ast 0 -aet 250 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Walk:L_FOOT_CTRL_translateX";
	rename -uid "4C9C561F-4BA2-256D-79F3-43A434EB00F0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.4 14 -0.4 19 -0.3 24 -0.4;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:L_FOOT_CTRL_translateY";
	rename -uid "6123015F-4299-6F35-E987-14BF5D4970AB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 14 0 16 0.52043720420038864
		 21 0.085851190387888993 24 0;
	setAttr -s 7 ".kit[2:6]"  2 10 2 10 2;
	setAttr -s 7 ".kot[2:6]"  2 10 3 10 2;
	setAttr -s 7 ".ktl[4:6]" no yes yes;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:L_FOOT_CTRL_translateZ";
	rename -uid "93DBE6BE-4459-5DB9-E059-89B58252B4F9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.315 14 -2.4950624526441278 24 1.315;
	setAttr -s 3 ".kit[1:2]"  2 3;
	setAttr -s 3 ".kot[1:2]"  2 3;
	setAttr -s 3 ".ktl[1:2]" no yes;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:L_FOOT_CTRL_rotateX";
	rename -uid "E7DF4196-4501-6EA7-FFB0-7A86CAC6F5DC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.905905560056892 2 0 6 0 12 0 14 0
		 16 17.207634970491345 17 13.624408549744899 18 9.1760086573572259 24 -10.905905560056892;
	setAttr -s 9 ".kit[0:8]"  3 10 10 10 10 2 10 10 
		3;
	setAttr -s 9 ".kot[0:8]"  3 10 10 10 10 2 10 10 
		3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:L_FOOT_CTRL_rotateY";
	rename -uid "FD6F1124-49D6-E1BE-D389-33A9D90602A5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 9.3600001904961125 6 9.3600001904961001
		 14 9.3600001904961001 17 20 24 9.3600001904961125;
createNode animCurveTA -n "Walk:L_FOOT_CTRL_rotateZ";
	rename -uid "8DC24561-40C0-1FF5-7D98-6F97E82F2BC9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 24 0;
createNode animCurveTU -n "Walk:L_FOOT_CTRL_Heel";
	rename -uid "8E69D656-44C9-AFE8-C316-D99EB276AAD9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "Walk:L_FOOT_CTRL_Ball";
	rename -uid "19D29B7D-4916-CF70-4F46-3F9A3492F5D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 9 0 12 0.52494124142786669 13 0.388870020392588
		 23.996 0 24 0;
	setAttr -s 7 ".kit[2:6]"  3 3 10 10 10;
	setAttr -s 7 ".kot[2:6]"  3 3 10 10 10;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FOOT_CTRL_Toe_lift";
	rename -uid "E9C4C3F9-4E79-9408-B57F-8D81F77C90EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 12 0 14 0.56317874130741652 23.996 0
		 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FOOT_CTRL_Toe_wiggle";
	rename -uid "C563E874-4C79-301A-72C5-FAA68077D1F5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.169 1 0.2 3 0 6 0 12 0 14 0 18 -0.2
		 24 0.169;
	setAttr -s 8 ".kit[0:7]"  1 10 2 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  1 10 2 10 10 10 10 10;
	setAttr -s 8 ".kix[0:7]"  0.46600580215454102 1 0.38461536169052124 
		1 1 1 0.92667645215988159 0.56089776754379272;
	setAttr -s 8 ".kiy[0:7]"  0.88478165864944458 0 -0.92307692766189575 
		0 0 0 0.37585994601249695 0.82788509130477905;
	setAttr -s 8 ".kox[0:7]"  0.47102668881416321 1 1 1 1 1 0.92667645215988159 
		0.56089776754379272;
	setAttr -s 8 ".koy[0:7]"  0.88211899995803833 0 0 0 0 0 0.37585994601249695 
		0.82788509130477905;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FOOT_CTRL_ToeTwist";
	rename -uid "009F0641-4D09-3815-5C12-1085C60D5E04";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "Walk:BODY_CTRL_translateY";
	rename -uid "4396AB71-4330-0278-1038-38B60F692F41";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.2 6 0 12 -0.2 18 0 24 -0.2;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:HIP_CTRL_rotateX";
	rename -uid "66CE8103-4A03-3646-36DD-5797016F53BE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 5 0;
createNode animCurveTA -n "Walk:HIP_CTRL_rotateY";
	rename -uid "4EF5760A-4C7E-7F20-470E-CCA0262488B3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 5 0;
createNode animCurveTA -n "Walk:HIP_CTRL_rotateZ";
	rename -uid "99AC2E7F-4145-C207-6171-D3868EB2ADE4";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 6.0000000000000009 6 7.4999999999999991
		 9 6.0000000000000009 12 0 15 -6.0000000000000009 18 -7.4999999999999991 21 -6.0000000000000009
		 24 0;
	setAttr -s 9 ".kit[0:8]"  10 3 3 3 10 3 3 3 
		10;
	setAttr -s 9 ".kot[0:8]"  10 3 3 3 10 3 3 3 
		10;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:HIP_CTRL_translateX";
	rename -uid "90329EBC-47C0-C712-D7FB-3182B5347189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 0.075 18 -0.075 24 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:HIP_CTRL_translateY";
	rename -uid "A49EA5B1-43AE-9C86-4B80-C384CFB1FB97";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 5 0;
createNode animCurveTL -n "Walk:HIP_CTRL_translateZ";
	rename -uid "E3FB0B35-4D85-6093-1712-9BA54A4A5538";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 5 0;
createNode animCurveTL -n "Walk:left_Toe_piece1_translateZ";
	rename -uid "0883F8F7-4BE1-CA6F-80FE-1997750E8B0A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "Walk:left_Toe_piece4_translateZ";
	rename -uid "34B035AF-4D8E-EAAA-BB2A-9B9BC24E8114";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "Walk:left_Toe_piece5_translateZ";
	rename -uid "AEA139E7-45DF-4262-7693-F7A03884AECC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "Walk:left_Toe_piece6_translateZ";
	rename -uid "F726A6C9-4938-2472-D4C1-D2BA8BB78B48";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "Walk:left_Toe_piece1_visibility";
	rename -uid "E255DC46-4A11-6E0A-A030-AABC055ACFEA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Walk:left_Toe_piece1_translateX";
	rename -uid "C75854B7-4BAF-9C54-40F4-5285F52EB75C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece1_translateY";
	rename -uid "77D4107F-4812-09FD-3C26-029EC50F8300";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece1_translateZ1";
	rename -uid "1C032E45-425D-0FAF-21D6-11A0CC18C8B8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece1_rotateX";
	rename -uid "B5C855C2-4318-A6AD-AFC1-569E3EE35F1A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece1_rotateY";
	rename -uid "79319113-4C66-6CFD-2F8A-9692F4591157";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece1_rotateZ";
	rename -uid "817DECA9-4692-9409-E019-41B63DC32B80";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "Walk:left_Toe_piece1_scaleX";
	rename -uid "48FFD134-48B9-9404-2122-22BF87252777";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece1_scaleY";
	rename -uid "40C77843-4A81-C676-E338-C28FC2819AAF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece1_scaleZ";
	rename -uid "F4A41FDB-4ADE-7FF6-9CE2-BFA61E07B0D7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece2_visibility";
	rename -uid "D350AE57-435C-AE6A-B5B8-9B877E8AEC0B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Walk:left_Toe_piece2_translateX";
	rename -uid "6FD0BC91-4C4B-E287-3117-0D9FB5DB5A0B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece2_translateY";
	rename -uid "3B513AD1-4FD0-B3F1-FBD1-39B3670E7B3B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece2_translateZ";
	rename -uid "E01737B7-46EA-6A23-BBF4-568B304F8519";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece2_rotateX";
	rename -uid "7CDD8549-4AB5-3E7B-CAA5-0FBCFC5E714A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece2_rotateY";
	rename -uid "C3672ACD-41F5-852B-B40F-E2ADC278FC0F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece2_rotateZ";
	rename -uid "6F422565-496D-7034-9A68-8FAF1F27C81C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "Walk:left_Toe_piece2_scaleX";
	rename -uid "BBABA904-42DA-CB62-401D-00B7976504C9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece2_scaleY";
	rename -uid "716E7C11-414D-68CA-7FC7-BD868D698002";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece2_scaleZ";
	rename -uid "2F7E957B-404B-F546-2E99-55BE7F3AA806";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece3_visibility";
	rename -uid "5B5609F4-4213-D556-813F-B5A690DFB9E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Walk:left_Toe_piece3_translateX";
	rename -uid "A463A6DD-4E4C-D635-4C54-B2830DC9D27E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece3_translateY";
	rename -uid "05248F73-4C05-313D-A085-ACBF4D973809";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece3_translateZ";
	rename -uid "7C2FF860-454E-F821-3EB7-5A8153ED9FAF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece3_rotateX";
	rename -uid "42878CD1-4918-1196-2C42-A5921EBB66FF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece3_rotateY";
	rename -uid "A7FE7816-4ACF-34B6-FE5F-1BACB70F1AEA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece3_rotateZ";
	rename -uid "2446E440-47C0-E94F-3768-C8B99F0264B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "Walk:left_Toe_piece3_scaleX";
	rename -uid "D040730B-4B88-82A6-3B8F-84BE30F96A2C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece3_scaleY";
	rename -uid "8D89F02E-41AE-1DA2-3E3E-4393D4303E22";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece3_scaleZ";
	rename -uid "13E68BE9-4251-8B3C-EC14-50BFE5C12D03";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece5_visibility";
	rename -uid "D061DF59-4C9B-6274-89CA-91A8C96C9900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Walk:left_Toe_piece5_translateX";
	rename -uid "E184C8A0-47D6-8F54-514B-F090A9133099";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece5_translateY";
	rename -uid "1799F057-4A0B-73C5-5A1B-57915FC18414";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece5_translateZ1";
	rename -uid "AB006FA7-48AC-70D0-1388-0F857E40ED8E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece5_rotateX";
	rename -uid "80F0736B-42A6-4DD2-1CC3-C7A4E3130363";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece5_rotateY";
	rename -uid "B70EEC2D-402E-0A82-5C98-31A80A694379";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece5_rotateZ";
	rename -uid "8484E920-4006-014F-4FAF-A199DAF05EA8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "Walk:left_Toe_piece5_scaleX";
	rename -uid "E0E608A6-4CF0-34B1-7EF8-458B8D270496";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece5_scaleY";
	rename -uid "0A708F72-4120-DD66-2BEB-20B57F8C89AC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece5_scaleZ";
	rename -uid "B820BFEB-4BA9-7E1D-D54B-F3B857A4E622";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece6_visibility";
	rename -uid "3E9B36CA-4AC4-C2A1-0C80-AFAB740428F6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Walk:left_Toe_piece6_translateX";
	rename -uid "EF564A4A-45B3-82AB-CA52-E99808025DD6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece6_translateY";
	rename -uid "613D7131-4A20-67B2-927A-75B1780FACEA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTL -n "Walk:left_Toe_piece6_translateZ1";
	rename -uid "F67F477E-4EB0-7467-EA9E-D0B6EC047C9C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece6_rotateX";
	rename -uid "34022634-4A39-C9BE-6994-C3BF494039C5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece6_rotateY";
	rename -uid "9C255ECB-4CAC-C5D1-1094-938819D79D51";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTA -n "Walk:left_Toe_piece6_rotateZ";
	rename -uid "24FDF7B7-4B6A-6329-9572-81936AD8795B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "Walk:left_Toe_piece6_scaleX";
	rename -uid "7FA12E42-4272-0E2B-6E50-47982F2B6823";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece6_scaleY";
	rename -uid "7DDEC04E-49A0-B0BA-4FE5-619796005F75";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "Walk:left_Toe_piece6_scaleZ";
	rename -uid "569BFA2D-4EAA-8FE0-8A96-15A316C91531";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTA -n "Walk:SPINE_1_CTRL_rotateZ";
	rename -uid "4DA58994-4F06-2EE4-4C3C-7D85101DB540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 -3.0000000000000004 18 3.0000000000000004
		 24 0;
	setAttr -s 4 ".kit[0:3]"  10 3 3 10;
	setAttr -s 4 ".kot[0:3]"  10 3 3 10;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:right_Elbow_FK_ctrl_rotateY";
	rename -uid "DEA02EA8-44B2-39A2-CCB4-96ABC2739957";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 29.999999999999996 12 0 24 29.999999999999996;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  2 3;
	setAttr -s 3 ".ktl[1:2]" no yes;
	setAttr -s 3 ".kix[1:2]"  0.99965929985046387 1;
	setAttr -s 3 ".kiy[1:2]"  0.026102226227521896 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:R_SHOULDER_CTRL_rotateX";
	rename -uid "C8DAEBEC-4CDD-3AFB-3441-76A592614261";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Walk:R_SHOULDER_CTRL_rotateY";
	rename -uid "8F35DE76-464F-A4B4-0BB2-77B4D8566051";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.521393181993192 12 -5 24 14.521393181993192;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:R_SHOULDER_CTRL_rotateZ";
	rename -uid "F2144925-4375-254D-FDF0-50BCC01933A8";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 72 12 65 24 72;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_SHOULDER_CTRL_ShoulderUD";
	rename -uid "5FE00779-4898-03D8-3138-F2821E6C6F40";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "Walk:R_SHOULDER_CTRL_ShoulderFB";
	rename -uid "8DB437C7-406B-32D6-3D9F-18B5EE2E5F97";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Walk:left_Elbow_FK_ctrl_rotateY";
	rename -uid "479C8FD1-4CF7-DA6F-4C92-74BC60D0BF03";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 -29.999999999999996 24 0;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:L_SHOULDER_CTRL_rotateX";
	rename -uid "11C9641F-44C5-99D7-ACA5-FB878775C663";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Walk:L_SHOULDER_CTRL_rotateY";
	rename -uid "0D7EEB62-4B03-A104-F183-959AB172F738";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5 12 -14.521 24 5;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:L_SHOULDER_CTRL_rotateZ";
	rename -uid "508DC154-442B-F26E-EF28-1CACCC3ED263";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65 12 -72 24 -65;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_SHOULDER_CTRL_ShoulderUD";
	rename -uid "CFC05967-479C-25F0-54FF-A595620EB4D9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "Walk:L_SHOULDER_CTRL_ShoulderFB";
	rename -uid "0D3CE12C-4423-D026-6103-33A17C87A751";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Walk:right_Wrist_FK_ctrl_rotateX";
	rename -uid "941AA54A-460F-D4FB-6F7B-A882983B0DFB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Walk:right_Wrist_FK_ctrl_rotateY";
	rename -uid "F04714A0-446E-C770-A605-10B8CB56AAC0";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 19 16 -14 24 0;
	setAttr -s 4 ".kit[0:3]"  1 3 3 1;
	setAttr -s 4 ".kot[0:3]"  1 3 3 1;
	setAttr -s 4 ".kix[0:3]"  0.66728359460830688 1 1 0.41783672571182251;
	setAttr -s 4 ".kiy[0:3]"  0.74480372667312622 0 0 0.90852218866348267;
	setAttr -s 4 ".kox[0:3]"  0.64598816633224487 1 1 0.41104912757873535;
	setAttr -s 4 ".koy[0:3]"  0.76334744691848755 0 0 0.91161316633224487;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:right_Wrist_FK_ctrl_rotateZ";
	rename -uid "6B3A5EF9-4C94-9901-2A70-52BF0C7F2BAE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Walk:left_Wrist_FK_ctrl_rotateX";
	rename -uid "A09C9654-41F5-6AB2-B188-27B1AF4DCEBB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:left_Wrist_FK_ctrl_rotateY";
	rename -uid "44489CE0-4D0E-934E-1E85-A5A8539A4FE5";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 14 16 -19 24 0;
	setAttr -s 4 ".kit[0:3]"  10 3 3 1;
	setAttr -s 4 ".kot[0:3]"  10 3 3 1;
	setAttr -s 4 ".kix[3]"  0.48015642166137695;
	setAttr -s 4 ".kiy[3]"  0.87718290090560913;
	setAttr -s 4 ".kox[3]"  0.48015642166137695;
	setAttr -s 4 ".koy[3]"  0.87718290090560913;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:left_Wrist_FK_ctrl_rotateZ";
	rename -uid "E46E159C-4FB9-6DA0-5268-5B8D0C3D1BE2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:SPINE_2_CTRL_rotateY";
	rename -uid "23989ECD-4014-B5DE-C6A5-CE8585D38F3E";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20 12 -20 24 20;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:HEAD_CTRL_rotateX";
	rename -uid "B262F0BA-4EB0-E943-65AB-4EAD29B4CF7E";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -28.099112388723661 4 -21.832292758547972
		 11 -28.098812278487909 15 -21.832292758547972 22 -28.099112388723661 23 -28.22328192509573
		 24 -28.099112388723661;
	setAttr -s 7 ".kit[3:6]"  10 1 10 1;
	setAttr -s 7 ".kot[3:6]"  10 1 10 1;
	setAttr -s 7 ".kix[4:6]"  0.99811327457427979 1 0.9967036247253418;
	setAttr -s 7 ".kiy[4:6]"  -0.061399873346090317 0 0.081129081547260284;
	setAttr -s 7 ".kox[4:6]"  0.99811327457427979 1 0.9967036247253418;
	setAttr -s 7 ".koy[4:6]"  -0.061399854719638824 0 0.081129051744937897;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:NECK_FK_CTRL_rotateX";
	rename -uid "99DF0908-4E84-7EEE-6AE6-1A972FB1A02F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 5.0465122746456892 11 0 14 3.9232568325669619
		 24 0;
	setAttr -s 5 ".kit[0:4]"  3 10 10 10 3;
	setAttr -s 5 ".kot[0:4]"  3 10 10 10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_PalmBend";
	rename -uid "C6504CB2-4170-9DC3-39D1-0A9249822984";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Pointer1";
	rename -uid "F2235247-4278-FE34-EB3F-DCA4AACCE369";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.099999999999999978 12 0.3 24 0.099999999999999978;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Pointer2";
	rename -uid "F0104451-4344-EC75-494B-7D9F7EA21D9A";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.099999999999999978 12 0.3 24 0.099999999999999978;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Pointer3";
	rename -uid "047947E0-499A-7435-2638-DDA3486BB58C";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.099999999999999978 12 0.3 24 0.099999999999999978;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_PointerTurn";
	rename -uid "D4D4BB77-4A02-9945-2873-4AAB00BD34FE";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_PointerRoll";
	rename -uid "2F61A90E-49D8-5CD1-8629-F18EC49048AB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Pinky1";
	rename -uid "2657EA93-4836-847D-1577-3A9B2D7EA3EF";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.20000000000000004 12 0.4 24 0.20000000000000004;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Pinky2";
	rename -uid "F6888D06-493A-7A93-753E-41AB744DE240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.20000000000000004 12 0.4 24 0.20000000000000004;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Pinky3";
	rename -uid "43C015DA-4BBB-400B-9E41-76B799D1331D";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.20000000000000004 12 0.4 24 0.20000000000000004;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_PinkyTurn";
	rename -uid "12A22877-470E-FD40-A153-7D82185B58B8";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_PinkyRoll";
	rename -uid "E255BF3A-40F4-6788-A12D-99B51A8271D7";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb1";
	rename -uid "49474B08-4BA8-13C1-8B78-A2A3A8779F4A";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.30000000000000004 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb2";
	rename -uid "1787F9CE-4378-ABB2-99FA-AD8D9E8EED4A";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.30000000000000004 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb3";
	rename -uid "FAAC15BF-4ACF-6B10-641F-7AAB9E99326F";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.30000000000000004 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb1UP";
	rename -uid "1A471431-47C9-EBE9-8FDB-87818865DA71";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.30000000000000004 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb2UP";
	rename -uid "D43237C3-485F-FBA3-1217-17951291AEA7";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.30000000000000004 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb3UP";
	rename -uid "C843F4F1-452A-2BFE-5791-3D8F563DB327";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.30000000000000004 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb1Roll";
	rename -uid "BDC813D6-4C52-7362-6E11-F38B6280FB3D";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb2Roll";
	rename -uid "B4646656-4C55-E8DB-CDCD-48B52A37513B";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FING_CTRL_Thumb3Roll";
	rename -uid "FF0F95A3-440A-DA9F-DE6A-098E5A483CF0";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_PalmBend";
	rename -uid "691ABD5D-46D6-32BD-E0F7-479C89CD911D";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Pointer1";
	rename -uid "D762383E-4BA5-E7DB-B013-318E01170917";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Pointer2";
	rename -uid "C55EE594-4C7A-DA8E-E85B-788E5E84CBE6";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Pointer3";
	rename -uid "F5AE5F1C-4A58-5A81-CB1F-A0A28891028E";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_PointerTurn";
	rename -uid "9B3155BF-4691-BE25-74DA-008AC9B199DE";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_PointerRoll";
	rename -uid "00D70089-47A7-3B2B-9CFD-9FAEB67087D5";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Pinky1";
	rename -uid "4DB67F93-4DE0-A463-5B0A-9F936F3DE5CE";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.30000000000000004 12 0.20000000000000004
		 24 0.30000000000000004;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Pinky2";
	rename -uid "5A734DF4-49DC-320D-6867-93A265C059E7";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.30000000000000004 12 0.20000000000000004
		 24 0.30000000000000004;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Pinky3";
	rename -uid "0A0D712E-4215-6644-F5CC-4484D627A0EA";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.30000000000000004 12 0.20000000000000004
		 24 0.30000000000000004;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_PinkyTurn";
	rename -uid "0443459F-46E0-ABAA-16CB-43AA500C0B4B";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_PinkyRoll";
	rename -uid "FDDD825A-4334-D22A-D217-6DAF133B44DB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb1";
	rename -uid "18EBA9B1-460D-AB0A-09F9-A7B126957BC3";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb2";
	rename -uid "BF5643B8-45EC-BF0A-59FC-E983FB6AF1E0";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb3";
	rename -uid "823E438F-47FC-AD8F-5627-16B70FC48D34";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb1UP";
	rename -uid "BFC4855A-4CF0-7CCA-2C6C-E3AF15C7CDF2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb2UP";
	rename -uid "5EB7A3D9-4242-F09E-39DC-A1A4A066FAA4";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb3UP";
	rename -uid "0232784F-4706-0016-52EF-DD98685FAF99";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.2 12 0.1 24 0.2;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb1Roll";
	rename -uid "D1A6296E-4634-21A3-6720-58A11D5E8A71";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb2Roll";
	rename -uid "2FC0844C-4DA6-7DC4-17EF-21B0DDD5EC0A";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:L_FING_CTRL_Thumb3Roll";
	rename -uid "2C8B50E1-4E04-DD50-D4C2-69BE6355F6E6";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr ".pst" 3;
createNode reference -n "sharedReferenceNode";
	rename -uid "40856D34-41AA-EF5E-F64F-E2AC5685D57C";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTL -n "Walk:SHOULDER_CTRL_translateY";
	rename -uid "008A067F-43E8-1231-923A-6383BC80ED64";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 -0.071321909430119845 6 0 12 0 15 -0.071321909430119845
		 18 0 24 0;
	setAttr -s 7 ".kit[0:6]"  3 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  3 10 10 10 10 10 10;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:SHOULDER_CTRL_translateX";
	rename -uid "8682C262-4A36-162E-B201-90A3D52BDB9B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  17 0 24 0;
createNode animCurveTL -n "Walk:SHOULDER_CTRL_translateZ";
	rename -uid "DC7A523A-449A-2C5C-A67A-DA90717C33DA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  17 -0.18 24 -0.18;
createNode animCurveTA -n "Walk:SHOULDER_CTRL_rotateX";
	rename -uid "3A0C2FA6-44C1-A87C-B4E9-DDBF37F24652";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  17 0 24 0;
createNode animCurveTA -n "Walk:SHOULDER_CTRL_rotateY";
	rename -uid "CF21DD3E-44A8-FF51-6BA1-7BA2AC9CDD5B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  17 0 24 0;
createNode animCurveTA -n "Walk:SHOULDER_CTRL_rotateZ";
	rename -uid "C92E8F36-4A8A-0E69-D9BE-7BB336D4EA16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7 12 7 24 -7;
	setAttr -s 3 ".kit[1:2]"  10 3;
	setAttr -s 3 ".kot[1:2]"  10 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:BODY_CTRL_rotateY";
	rename -uid "075F1405-47D5-80E2-1445-E78192B418FA";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7 12 7 24 -7;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:R_KNEE_CTRL_translateX";
	rename -uid "0089B86F-4ADE-48EB-6115-DA8C768AE002";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 20 -0.34065318485181972 24 0;
	setAttr -s 4 ".kit[1:3]"  2 10 2;
	setAttr -s 4 ".kot[1:3]"  2 10 2;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:R_KNEE_CTRL_translateY";
	rename -uid "23A92FD3-4785-5A4D-92F9-B8A91873AE49";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:R_KNEE_CTRL_translateZ";
	rename -uid "CAD97E00-4DA2-EFF7-7AE0-2D9987BFF08D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:L_KNEE_CTRL_translateX";
	rename -uid "AEBA78DF-444B-42B4-E3F9-5BB5A629611E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 0 4 0 8 0.34065318485181972 12 0;
	setAttr -s 4 ".kit[1:3]"  2 10 2;
	setAttr -s 4 ".kot[1:3]"  2 10 2;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:L_KNEE_CTRL_translateY";
	rename -uid "FA11C034-4698-F9AF-34A4-628B0B241C69";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -12 0 4 0;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:L_KNEE_CTRL_translateZ";
	rename -uid "B56F68BC-434D-A539-F3CB-65B93D958C8B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -12 0 4 0;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FOOT_CTRL_Heel";
	rename -uid "C203813C-4769-5489-5D15-C8A24CA96F10";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -12 0 -6 0 0 0 6 0 12 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FOOT_CTRL_Ball";
	rename -uid "220B0C86-4F11-BC0E-2C27-7F8E899A79C1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -12 0 -6 0 -3 0 0 0.52494124142786669 1 0.388870020392588
		 12 0 12.004 0;
	setAttr -s 7 ".kit[2:6]"  3 3 10 10 10;
	setAttr -s 7 ".kot[2:6]"  3 3 10 10 10;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FOOT_CTRL_Toe_lift";
	rename -uid "2128257F-4FA4-564C-7874-C1A3F21BDDA1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -12 0 -6 0 0 0 2 0.56317874130741652 12 0
		 12.004 0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FOOT_CTRL_Toe_wiggle";
	rename -uid "E44F6BAD-4840-57A3-EA0A-E688A199E0B9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  -12 0.169 -11 0.2 -9 0 -6 0 0 0 2 0 6 -0.2
		 12 0.169;
	setAttr -s 8 ".kit[0:7]"  1 10 2 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  1 10 2 10 10 10 10 10;
	setAttr -s 8 ".kix[0:7]"  0.46600580215454102 1 0.38461542129516602 
		1 1 1 0.92667645215988159 0.56089776754379272;
	setAttr -s 8 ".kiy[0:7]"  0.88478165864944458 0 -0.92307692766189575 
		0 0 0 0.37585997581481934 0.82788509130477905;
	setAttr -s 8 ".kox[0:7]"  0.47102668881416321 1 1 1 1 1 0.92667645215988159 
		0.56089776754379272;
	setAttr -s 8 ".koy[0:7]"  0.88211899995803833 0 0 0 0 0 0.37585997581481934 
		0.82788509130477905;
	setAttr ".pst" 3;
createNode animCurveTU -n "Walk:R_FOOT_CTRL_ToeTwist";
	rename -uid "C5E2A331-4E97-3A93-3C6C-61976B5C2C87";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -12 0 -6 0 0 0 6 0 12 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:R_FOOT_CTRL_translateX";
	rename -uid "5D9CF0D4-497F-5B22-14D1-AD93914D67F5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 0.4 2 0.4 7 0.3 12 0.4;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:R_FOOT_CTRL_translateY";
	rename -uid "D2F4D1C3-4234-9A46-D452-5DB6F5433C24";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -12 0 -6 0 0 0 2 0 4 0.52043720420038864
		 9 0.085851190387888993 12 0;
	setAttr -s 7 ".kit[2:6]"  2 10 2 10 2;
	setAttr -s 7 ".kot[2:6]"  2 10 3 10 2;
	setAttr -s 7 ".ktl[4:6]" no yes yes;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:R_FOOT_CTRL_translateZ";
	rename -uid "6EDDCB25-41FC-9810-E811-AA8062CD59E4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -12 1.315 2 -2.4950624526441278 12 1.315;
	setAttr -s 3 ".kit[1:2]"  2 3;
	setAttr -s 3 ".kot[1:2]"  2 3;
	setAttr -s 3 ".ktl[1:2]" no yes;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:R_FOOT_CTRL_rotateX";
	rename -uid "2B983E8C-4E2A-7B6A-3D80-CEB9E5A9BB32";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  -12 -10.905905560056892 -10 0 -6 0 0 0 2 0
		 4 17.207634970491345 5 13.624408549744899 6 9.1760086573572259 12 -10.905905560056892;
	setAttr -s 9 ".kit[0:8]"  3 10 10 10 10 2 10 10 
		3;
	setAttr -s 9 ".kot[0:8]"  3 10 10 10 10 2 10 10 
		3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:R_FOOT_CTRL_rotateY";
	rename -uid "25A8C2A7-4536-33B2-4188-ABBC86653B5A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -12 -9.3600001904961125 -6 -9.3600001904961001
		 2 -9.3600001904961001 5 -20 12 -9.3600001904961125;
	setAttr ".pst" 3;
createNode animCurveTA -n "Walk:R_FOOT_CTRL_rotateZ";
	rename -uid "62785A8E-47BE-E9FC-125B-43868B7C7BCC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -12 0 -6 0 12 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Walk:WORLD_CTRL_translateZ";
	rename -uid "D975F33C-4000-AECD-A329-1B9E1820CCA2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0040107689826656134 14 3.8060516836614622;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
	setAttr -s 2 ".ktl[1]" no;
	setAttr ".pst" 4;
createNode mute -n "WORLD_CTRL_translateZ";
	rename -uid "DD2E8B76-4957-78DA-C48A-2AAA65BC65B1";
	setAttr ".ihi" 0;
	setAttr ".h" 0.54028390468991183;
	setAttr ".ht" 2;
	setAttr ".m" yes;
createNode animCurveTA -n "Walk:HEAD_CTRL_rotateY";
	rename -uid "2528F63D-4DCF-A4F8-0963-21B44DE7A803";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "Walk:HEAD_CTRL_rotateZ";
	rename -uid "491D6BBF-4882-9310-22DA-49A459FE2E15";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "Walk:HEAD_CTRL_BlinkL";
	rename -uid "0E84384D-4CA2-54C3-9F31-3DBCEDAE41A8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "Walk:HEAD_CTRL_BlinkR";
	rename -uid "574C6C25-4FD8-2C51-92F1-32A7A3DC6BDC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "Walk:HEAD_CTRL_OpenL";
	rename -uid "889C9DB4-455C-47C4-D525-4389DD02E1AE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "Walk:HEAD_CTRL_OpenR";
	rename -uid "A520C8F9-4B4D-296C-A393-F19D4F040EC6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1BD856FC-4CD1-86ED-AF21-A0A387B4D55B";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 24 0 1 2 3 4
		 5 6 7 8 9 10 11 12 13 14 15 16
		 17 18 19 20 21 22 23 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2F8B5A6C-4866-3179-3F0A-D88EA98BA577";
createNode ShaderfxShader -n "Walk:Skin_Shader_SFX";
	rename -uid "A43E40EB-4A42-1360-4A25-BFBA8A8F056E";
	addAttr -ci true -k true -sn "Cutout_Mask" -ln "Cutout_Mask" -min 0 -max 1 -at "bool";
	addAttr -ci true -uaf -sn "Cutout_Mask_File" -ln "Cutout_Mask_File" -dt "string";
	addAttr -ci true -k true -sn "Cut" -ln "Cut" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".ss" no;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=38\n#NT=10100 2 Cutout-Shader Nodes-Flair\n\tPC=57\n\tname=1 v=5000 Cutout_Material\n\tversion=1 v=2003 1.040000\n\tposx=1 v=2003 -1482.650024\n\tposy=1 v=2003 -314.123993\n\tclassname=1 v=5000 Cutout\n\tcategoryname=1 v=5000 Shader Nodes\n\tsubmenuname=1 v=5000 Flair\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -2322.000000\n\tgrpPosY=1 v=2003 69.500000\n\tcolorsetindex_prevPosition=2 e=1 v=2002 0\n\tvalue_Variation_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Form_Procedural_NFX=2 e=1 v=2001 0\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tvalue_NotTransparent=2 e=1 v=2001 1\n\tvalue_Orientation_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Shape_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Transition_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Transparent=2 e=1 v=2001 0\n\tvalue_lightNrDefault=2 e=1 v=2002 0\n\tvalue_VtxControl=2 e=1 v=2001 0\n\tvalue_Width_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_controlSetA=2 e=1 v=2001 0\n\tvalue_controlSetB=2 e=1 v=2001 0\n\tvalue_controlSetC=2 e=1 v=2001 0\n\tvalue_enableDepth=2 e=1 v=2001 1\n"
		+ "\tvalue_Alpha=2 e=1 v=2001 0\n\tvalue_Alpha_Mask_Cutoff=2 e=1 v=2003 0.500000\n\tvalue_Application_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Blending_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Colored=2 e=1 v=2001 0\n\tvalue_Deformed=2 e=1 v=2001 0\n\tvalue_Density_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Detail_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Displacement=2 e=1 v=2001 0\n\tvalue_Distortion_Procedural_NFX=2 e=1 v=2001 0\n\tvalue_Edge_Procedural_NFX=2 e=1 v=2001 0\n\tcolorsetname_Vertex=2 e=2 v=5000 vPos\n\tcolorsetname_prevPosition=2 e=2 v=5000 previousScreenPosition\n\tuvindex_UVs=2 e=2 v=2002 0\n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tperinstanceunshared_prevPosition=2 e=3 v=2001 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalueX_Tile=2 e=5 v=2003 1.000000\n\tvalueY_Tile=2 e=6 v=2003 1.000000\n\tvalueX_Offset=2 e=7 v=2003 0.000000\n\tvalueY_Offset=2 e=8 v=2003 0.000000\n\tvalue_Brightness=2 e=10 v=2003 10.000000\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_Flat_Tessellation_Blend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n"
		+ "\tvalue_Clipping_Bias_Add=2 e=902 v=2003 5.000000\n\toptions_displacementModel=2 e=1000 v=5012 0\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_Displacement_Multiplier=2 e=1002 v=2003 1.000000\n\tvalue_Displacement_Offset=2 e=1003 v=2003 0.000000\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 3002 0 0 0 Color Tint\n\t\tSVT=5001 2003 0 0 0 Cut Mask\n\t\tSVT=5001 2003 0 0 0 Transparency Map\n\t\tSVT=5001 2003 0 0 0 Alpha Mask\n\t\tSVT=5001 3002 0 0 0 Displacement Map\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=2002 2002 0 Number of Lights\n\t\tCC=1\n\t\t\tC=0 0 0 37 0 3 0\n\t\t\tCPC=0\n\t\tSVT=5001 5003 0 \n\t\tCC=1\n\t\t\tC=0 1 0 37 2 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=20\n\tname=1 v=5000 Alpha_Mask\n\tposx=1 v=2003 -1859.048706\n\tposy=1 v=2003 -219.924805\n\tcollapsed=1 v=2001 1\n\tbitmapnodeindex=1 v=2002 64\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1833.000000\n\tgrpPosY=1 v=2003 -145.500000\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n"
		+ "\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Alpha_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Alpha\n\tuiorder_MyTexture=2 e=13 v=2002 12\n\tgroup=-1\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=22\n\tname=1 v=5000 Alpha_Mask\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1632.410034\n\tposy=1 v=2003 -161.904999\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Alpha_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Alpha\n\tuiorder_MyTexture=2 e=13 v=2002 12\n"
		+ "\tgroup=1\n\tISC=3\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 6 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 4 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20028 0\n\tPC=11\n\tposx=1 v=2003 -561.903015\n\tposy=1 v=2003 49.223598\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 Alpha_Texture_File\n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 12\n\tuigroup=2 e=13 v=5000 Alpha\n\tgroup=2\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=2\n\t\t\tC=3 0 2 4 0 1 0\n\t\t\tCPC=0\n\t\t\tC=3 0 2 5 0 3 0\n\t\t\tCPC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -17.002600\n\tposy=1 v=2003 39.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n"
		+ "\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=1\n\t\t\tC=4 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -271.677002\n\tposy=1 v=2003 102.527000\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=5 0 1 4 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -277.582001\n\tposy=1 v=2003 -101.893997\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=6 0 3 4 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 Luminance\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 Luminance\n\t\tCC=1\n\t\t\tC=7 0 0 13 1 2 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=8 1 0 6 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -770.375977\n\tposy=1 v=2003 180.014008\n\tgroup=2\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=3\n\t\t\tC=9 0 1 5 1 2 0\n\t\t\tCPC=0\n\t\t\tC=9 0 1 3 2 4 0\n\t\t\tCPC=0\n\t\t\tC=9 0 1 4 6 13 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Desaturate Color-Hw Shader Nodes-Lighting\n\tPC=11\n\tname=1 v=5000 _DesaturateColor\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 203.557999\n\tposy=1 v=2003 120.602997\n\tclassname=1 v=5000 Desaturate Color\n\tsubmenuname=1 v=5000 Lighting\n\tbitmapnodeindex=1 v=2002 2\n\thelpid=1 v=2002 7\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -478.424988\n\tgrpPosY=1 v=2003 -90.372597\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 _DesaturateColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=7\n\tname=1 v=5000 Alpha_Mask\n\tposx=1 v=2003 -1633.810059\n\tposy=1 v=2003 -278.809998\n\tvalue=2 e=0 v=2001 0\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 10\n\tuigroup=2 e=0 v=5000 Alpha\n\tgroup=1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=1\n\t\t\tC=12 0 1 13 0 1 0\n\t\t\tCPC=0\n#NT=20163 0\n\tPC=3\n\tname=1 v=5000 ifUseAlbedoTexture\n\tposx=1 v=2003 -1433.599976\n\tposy=1 v=2003 -224.072006\n\tgroup=1\n\tISC=4\n\t\tSVT=5001 2001 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n"
		+ "\t\tSVT=5001 1003 5 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 4 \n\t\tCC=1\n\t\t\tC=13 0 4 15 0 0 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tname=1 v=5000 NoAlpha\n\tposx=1 v=2003 -1632.420044\n\tposy=1 v=2003 -5.534270\n\tgroup=1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=14 0 1 13 2 3 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=3\n\tposx=1 v=2003 -1233.000000\n\tposy=1 v=2003 -145.500000\n\tcollapsed=1 v=2001 1\n\tgroup=1\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=15 0 0 0 3 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20167 0\n\tPC=6\n\tname=1 v=5000 graphName\n\tnote=1 v=5000 DO NOT TOUCH\n\tposx=1 v=2003 -1489.750000\n\tposy=1 v=2003 -750.299011\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=5000 mnprx_cutout\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5000 5000 1 \n\t\tCC=0\n#NT=20017 0\n\tPC=6\n\tname=1 v=5000 graphVersion\n\tnote=1 v=5000 DO NOT TOUCH\n\tposx=1 v=2003 -1488.750000\n\tposy=1 v=2003 -617.500000\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=0\n#NT=10100 1 Texture Map-Hw Shader Nodes-Textures\n\tPC=25\n\tname=1 v=5000 Displacement_Map\n"
		+ "\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1861.953369\n\tposy=1 v=2003 -112.250343\n\tcollapsed=1 v=2001 1\n\tclassname=1 v=5000 Texture Map\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Displacement_Map\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Displacement\n\tuiorder_MyTexture=2 e=13 v=2002 3\n\tgroup=-1\n\tISC=4\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=18 1 0 0 4 0 0\n\t\t\tCPC=0\n"
		+ "\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=6\n\tname=1 v=5000 customGraph\n\tnote=1 v=5000 Set to True if Graph has been customized -> it wont update in the future\n\tposx=1 v=2003 -1483.750122\n\tposy=1 v=2003 -461.250031\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=2001 0\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=0\n#NT=10100 0\n\tPC=20\n\tname=1 v=5000 Transparency_Map\n\tposx=1 v=2003 -1861.024780\n\tposy=1 v=2003 -324.897156\n\tcollapsed=1 v=2001 1\n\tbitmapnodeindex=1 v=2002 64\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1833.000000\n\tgrpPosY=1 v=2003 -145.500000\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Transparency_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tuigroup_MyTexture=2 e=13 v=5000 Transparency\n\tuiorder_MyTexture=2 e=13 v=2002 5\n\tgroup=-1\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=22\n\tname=1 v=5000 Transparency_Map\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1630.849976\n\tposy=1 v=2003 -167.925995\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Transparency_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Transparency\n\tuiorder_MyTexture=2 e=13 v=2002 5\n\tgroup=20\n\tISC=3\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=21 0 0 25 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n"
		+ "\t\tCC=1\n\t\t\tC=21 1 0 23 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20028 0\n\tPC=11\n\tposx=1 v=2003 -561.903015\n\tposy=1 v=2003 49.223598\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 Transparency_Texture_File\n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 5\n\tuigroup=2 e=13 v=5000 Transparency\n\tgroup=21\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=2\n\t\t\tC=22 0 2 23 0 1 0\n\t\t\tCPC=0\n\t\t\tC=22 0 2 24 0 3 0\n\t\t\tCPC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -17.002600\n\tposy=1 v=2003 39.977600\n\tgroup=21\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=1\n\t\t\tC=23 1 6 30 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n"
		+ "\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -271.677002\n\tposy=1 v=2003 102.527000\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=24 0 1 23 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -277.582001\n\tposy=1 v=2003 -101.893997\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=25 0 3 23 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 Luminance\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 Luminance\n\t\tCC=1\n\t\t\tC=26 0 0 32 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n"
		+ "\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=21\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=27 1 0 25 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -770.375977\n\tposy=1 v=2003 180.014008\n\tgroup=21\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=3\n\t\t\tC=28 0 1 22 2 4 0\n\t\t\tCPC=0\n\t\t\tC=28 0 1 23 6 13 0\n\t\t\tCPC=0\n\t\t\tC=28 0 1 24 1 2 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=21\n\tISC=0\n\tOSC=0\n#NT=10100 1 Desaturate Color-Hw Shader Nodes-Lighting\n\tPC=11\n\tname=1 v=5000 _DesaturateColor\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 203.557999\n\tposy=1 v=2003 120.602997\n\tclassname=1 v=5000 Desaturate Color\n\tsubmenuname=1 v=5000 Lighting\n\tbitmapnodeindex=1 v=2002 2\n\thelpid=1 v=2002 7\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -478.424988\n\tgrpPosY=1 v=2003 -90.372597\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 _DesaturateColor\n\t\tCC=1\n\t\t\tC=30 0 0 26 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=7\n\tname=1 v=5000 Transparency_Map\n\tposx=1 v=2003 -1633.810059\n\tposy=1 v=2003 -278.809998\n\tvalue=2 e=0 v=2001 0\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 3\n\tuigroup=2 e=0 v=5000 Transparency\n\tgroup=20\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=1\n\t\t\tC=31 0 1 32 0 1 0\n\t\t\tCPC=0\n#NT=20163 0\n\tPC=3\n\tname=1 v=5000 ifUseAlbedoTexture\n\tposx=1 v=2003 -1433.599976\n\tposy=1 v=2003 -224.072006\n\tgroup=20\n\tISC=4\n\t\tSVT=5001 2001 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 1003 5 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 4 \n\t\tCC=1\n\t\t\tC=32 0 4 34 0 0 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tname=1 v=5000 NoTransparency\n\tposx=1 v=2003 -1631.619995\n\tposy=1 v=2003 -15.261000\n\tgroup=20\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=33 0 1 32 2 3 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=3\n\tposx=1 v=2003 -1233.000000\n\tposy=1 v=2003 -145.500000\n\tcollapsed=1 v=2001 1\n\tgroup=20\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=34 0 0 0 2 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=8\n\tname=1 v=5000 Color_Tint\n\tposx=1 v=2003 -1858.430664\n\tposy=1 v=2003 -520.256104\n\tcollapsed=1 v=2001 1\n\tcolor=2 e=0 v=3003 0.116972,0.672457,0.879610,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 2\n\tuigroup=2 e=0 v=5000 Shading\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=35 1 2 0 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=10100 1 Texture Map-Hw Shader Nodes-Textures\n"
		+ "\tPC=25\n\tname=1 v=5000 Cutout_Mask\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1860.351074\n\tposy=1 v=2003 -429.468903\n\tcollapsed=1 v=2001 1\n\tclassname=1 v=5000 Texture Map\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Cutout_Mask_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Shading\n\tuiorder_MyTexture=2 e=13 v=2002 10\n\tgroup=-1\n\tISC=4\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n"
		+ "\t\tCC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=1\n\t\t\tC=36 2 0 0 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20001 0\n\tPC=5\n\tposx=1 v=2003 -1225.100708\n\tposy=1 v=2003 -301.152771\n\tconfig=2 e=0 v=5012 1\n\tshadername=2 e=1 v=5000 C:/Users/santy/Dropbox/DEV/MNPR/private/shaders/mnpr_uber_shorter.fx\n\tsaveshadertodisk=2 e=0 v=5015 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=5001 5016 1 0 0 \n\t\tSVT=5001 5003 2 0 0 \n\tOSC=0\n");
	setAttr ".sprm" -type "string" "Cutout_Mask~315~Cutout_Mask_File~278~Cut~315~";
createNode shadingEngine -n "Walk:Skin_Shader_SFXSG";
	rename -uid "05C889DA-4425-1A03-3BF2-1081A4B53E04";
	setAttr ".ihi" 0;
	setAttr -s 193 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "A5B0F97A-4BA3-E866-30AD-A2AFFEFDE622";
createNode ShaderfxShader -n "Walk:Dark_Brown_Shader_SFX";
	rename -uid "560591D6-4611-F0DA-8C6B-368921B4CF7A";
	addAttr -ci true -k true -sn "Cutout_Mask" -ln "Cutout_Mask" -min 0 -max 1 -at "bool";
	addAttr -ci true -uaf -sn "Cutout_Mask_File" -ln "Cutout_Mask_File" -dt "string";
	addAttr -ci true -k true -sn "Cut" -ln "Cut" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=38\n#NT=10100 2 Cutout-Shader Nodes-Flair\n\tPC=67\n\tname=1 v=5000 Cutout_Material\n\tversion=1 v=2003 1.030000\n\tposx=1 v=2003 -1482.650024\n\tposy=1 v=2003 -314.123993\n\tclassname=1 v=5000 Cutout\n\tcategoryname=1 v=5000 Shader Nodes\n\tsubmenuname=1 v=5000 Flair\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -2322.000000\n\tgrpPosY=1 v=2003 69.500000\n\tcolorsetindex_prevPosition=2 e=1 v=2002 0\n\tvalue_Transparent=2 e=1 v=2001 0\n\tvalue_Variation_3D_MNPR=2 e=1 v=2001 1\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tvalue_Variation_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_VtxControl=2 e=1 v=2001 0\n\tvalue_controlSetA=2 e=1 v=2001 0\n\tvalue_controlSetB=2 e=1 v=2001 0\n\tvalue_controlSetC=2 e=1 v=2001 0\n\tvalue_enableDepth=2 e=1 v=2001 1\n\tvalue_lightNrDefault=2 e=1 v=2002 0\n\tvalue_uIncline_3D_MNPR=2 e=1 v=2001 1\n\tvalue_uIncline_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Blending_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_vIncline_3D_MNPR=2 e=1 v=2001 1\n\tvalue_vIncline_Procedural_MNPR=2 e=1 v=2001 0\n"
		+ "\tvalue_Alpha=2 e=1 v=2001 0\n\tvalue_Alpha_Mask_Cutoff=2 e=1 v=2003 0.500000\n\tvalue_Application_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Application_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Blending_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Detail_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Colored=2 e=1 v=2001 0\n\tvalue_Deformed=2 e=1 v=2001 0\n\tvalue_Density_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Density_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Detail_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Displacement=2 e=1 v=2001 0\n\tvalue_Distortion_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Distortion_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Edge_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Edge_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_NotTransparent=2 e=1 v=2001 1\n\tvalue_Shape_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Shape_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Transition_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Transition_Procedural_MNPR=2 e=1 v=2001 0\n\tcolorsetname_Vertex=2 e=2 v=5000 vPos\n\tcolorsetname_prevPosition=2 e=2 v=5000 previousScreenPosition\n\tuvindex_UVs=2 e=2 v=2002 0\n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tperinstanceunshared_prevPosition=2 e=3 v=2001 0\n"
		+ "\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalueX_Tile=2 e=5 v=2003 1.000000\n\tvalueY_Tile=2 e=6 v=2003 1.000000\n\tvalueX_Offset=2 e=7 v=2003 0.000000\n\tvalueY_Offset=2 e=8 v=2003 0.000000\n\tvalue_Brightness=2 e=10 v=2003 10.000000\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_Flat_Tessellation_Blend=2 e=901 v=2003 0.000000\n\tvalue_Clipping_Bias_Add=2 e=902 v=2003 5.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\toptions_displacementModel=2 e=1000 v=5012 0\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_Displacement_Multiplier=2 e=1002 v=2003 1.000000\n\tvalue_Displacement_Offset=2 e=1003 v=2003 0.000000\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 3002 0 0 0 Color Tint\n\t\tSVT=5001 2003 0 0 0 Cut Mask\n\t\tSVT=5001 2003 0 0 0 Transparency Map\n\t\tSVT=5001 2003 0 0 0 Alpha Mask\n\t\tSVT=5001 3002 0 0 0 Displacement Map\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=2002 2002 0 Number of Lights\n\t\tCC=1\n\t\t\tC=0 0 0 37 0 3 0\n\t\t\tCPC=0\n\t\tSVT=5001 5003 0 \n\t\tCC=1\n\t\t\tC=0 1 0 37 2 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n"
		+ "\tPC=20\n\tname=1 v=5000 Alpha_Mask\n\tposx=1 v=2003 -1859.048706\n\tposy=1 v=2003 -219.924805\n\tcollapsed=1 v=2001 1\n\tbitmapnodeindex=1 v=2002 64\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1833.000000\n\tgrpPosY=1 v=2003 -145.500000\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Alpha_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Alpha\n\tuiorder_MyTexture=2 e=13 v=2002 12\n\tgroup=-1\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=22\n\tname=1 v=5000 Alpha_Mask\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1632.410034\n\tposy=1 v=2003 -161.904999\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n"
		+ "\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Alpha_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Alpha\n\tuiorder_MyTexture=2 e=13 v=2002 12\n\tgroup=1\n\tISC=3\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 6 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 4 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20028 0\n\tPC=11\n\tposx=1 v=2003 -561.903015\n\tposy=1 v=2003 49.223598\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 Alpha_Texture_File\n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 12\n\tuigroup=2 e=13 v=5000 Alpha\n\tgroup=2\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n"
		+ "\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=2\n\t\t\tC=3 0 2 4 0 1 0\n\t\t\tCPC=0\n\t\t\tC=3 0 2 5 0 3 0\n\t\t\tCPC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -17.002600\n\tposy=1 v=2003 39.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=1\n\t\t\tC=4 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -271.677002\n\tposy=1 v=2003 102.527000\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=5 0 1 4 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n"
		+ "\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -277.582001\n\tposy=1 v=2003 -101.893997\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=6 0 3 4 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 Luminance\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 Luminance\n\t\tCC=1\n\t\t\tC=7 0 0 13 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n"
		+ "\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=8 1 0 6 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -770.375977\n\tposy=1 v=2003 180.014008\n\tgroup=2\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=3\n\t\t\tC=9 0 1 5 1 2 0\n\t\t\tCPC=0\n\t\t\tC=9 0 1 3 2 4 0\n\t\t\tCPC=0\n\t\t\tC=9 0 1 4 6 13 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Desaturate Color-Hw Shader Nodes-Lighting\n\tPC=11\n\tname=1 v=5000 _DesaturateColor\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 203.557999\n\tposy=1 v=2003 120.602997\n\tclassname=1 v=5000 Desaturate Color\n\tsubmenuname=1 v=5000 Lighting\n\tbitmapnodeindex=1 v=2002 2\n\thelpid=1 v=2002 7\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -478.424988\n\tgrpPosY=1 v=2003 -90.372597\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 _DesaturateColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=7\n\tname=1 v=5000 Alpha_Mask\n\tposx=1 v=2003 -1633.810059\n\tposy=1 v=2003 -278.809998\n\tvalue=2 e=0 v=2001 0\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 10\n\tuigroup=2 e=0 v=5000 Alpha\n\tgroup=1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=1\n\t\t\tC=12 0 1 13 0 1 0\n\t\t\tCPC=0\n#NT=20163 0\n\tPC=3\n\tname=1 v=5000 ifUseAlbedoTexture\n\tposx=1 v=2003 -1433.599976\n\tposy=1 v=2003 -224.072006\n\tgroup=1\n\tISC=4\n\t\tSVT=5001 2001 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n"
		+ "\t\tSVT=5001 1003 5 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 4 \n\t\tCC=1\n\t\t\tC=13 0 4 15 0 0 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tname=1 v=5000 NoAlpha\n\tposx=1 v=2003 -1632.420044\n\tposy=1 v=2003 -5.534270\n\tgroup=1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=14 0 1 13 2 3 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=3\n\tposx=1 v=2003 -1233.000000\n\tposy=1 v=2003 -145.500000\n\tcollapsed=1 v=2001 1\n\tgroup=1\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=15 0 0 0 3 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20167 0\n\tPC=6\n\tname=1 v=5000 graphName\n\tnote=1 v=5000 DO NOT TOUCH\n\tposx=1 v=2003 -1489.750000\n\tposy=1 v=2003 -750.299011\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=5000 mnprx_cutout\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5000 5000 1 \n\t\tCC=0\n#NT=20017 0\n\tPC=6\n\tname=1 v=5000 graphVersion\n\tnote=1 v=5000 DO NOT TOUCH\n\tposx=1 v=2003 -1488.750000\n\tposy=1 v=2003 -617.500000\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=0\n#NT=10100 1 Texture Map-Hw Shader Nodes-Textures\n\tPC=25\n\tname=1 v=5000 Displacement_Map\n"
		+ "\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1861.953369\n\tposy=1 v=2003 -112.250343\n\tcollapsed=1 v=2001 1\n\tclassname=1 v=5000 Texture Map\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Displacement_Map\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Displacement\n\tuiorder_MyTexture=2 e=13 v=2002 3\n\tgroup=-1\n\tISC=4\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=18 1 0 0 4 0 0\n\t\t\tCPC=0\n"
		+ "\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=6\n\tname=1 v=5000 customGraph\n\tnote=1 v=5000 Set to True if Graph has been customized -> it wont update in the future\n\tposx=1 v=2003 -1483.750122\n\tposy=1 v=2003 -461.250031\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=2001 0\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=0\n#NT=10100 0\n\tPC=20\n\tname=1 v=5000 Transparency_Map\n\tposx=1 v=2003 -1861.024780\n\tposy=1 v=2003 -324.897156\n\tcollapsed=1 v=2001 1\n\tbitmapnodeindex=1 v=2002 64\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1833.000000\n\tgrpPosY=1 v=2003 -145.500000\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Transparency_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tuigroup_MyTexture=2 e=13 v=5000 Transparency\n\tuiorder_MyTexture=2 e=13 v=2002 5\n\tgroup=-1\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=22\n\tname=1 v=5000 Transparency_Map\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1630.849976\n\tposy=1 v=2003 -167.925995\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Transparency_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Transparency\n\tuiorder_MyTexture=2 e=13 v=2002 5\n\tgroup=20\n\tISC=3\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=21 0 0 25 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n"
		+ "\t\tCC=1\n\t\t\tC=21 1 0 23 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20028 0\n\tPC=11\n\tposx=1 v=2003 -561.903015\n\tposy=1 v=2003 49.223598\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 Transparency_Texture_File\n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 5\n\tuigroup=2 e=13 v=5000 Transparency\n\tgroup=21\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=2\n\t\t\tC=22 0 2 23 0 1 0\n\t\t\tCPC=0\n\t\t\tC=22 0 2 24 0 3 0\n\t\t\tCPC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -17.002600\n\tposy=1 v=2003 39.977600\n\tgroup=21\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=1\n\t\t\tC=23 1 6 30 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n"
		+ "\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -271.677002\n\tposy=1 v=2003 102.527000\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=24 0 1 23 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -277.582001\n\tposy=1 v=2003 -101.893997\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=25 0 3 23 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 Luminance\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 Luminance\n\t\tCC=1\n\t\t\tC=26 0 0 32 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n"
		+ "\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=21\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=27 1 0 25 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -770.375977\n\tposy=1 v=2003 180.014008\n\tgroup=21\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=3\n\t\t\tC=28 0 1 22 2 4 0\n\t\t\tCPC=0\n\t\t\tC=28 0 1 23 6 13 0\n\t\t\tCPC=0\n\t\t\tC=28 0 1 24 1 2 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=21\n\tISC=0\n\tOSC=0\n#NT=10100 1 Desaturate Color-Hw Shader Nodes-Lighting\n\tPC=11\n\tname=1 v=5000 _DesaturateColor\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 203.557999\n\tposy=1 v=2003 120.602997\n\tclassname=1 v=5000 Desaturate Color\n\tsubmenuname=1 v=5000 Lighting\n\tbitmapnodeindex=1 v=2002 2\n\thelpid=1 v=2002 7\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -478.424988\n\tgrpPosY=1 v=2003 -90.372597\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 _DesaturateColor\n\t\tCC=1\n\t\t\tC=30 0 0 26 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=7\n\tname=1 v=5000 Transparency_Map\n\tposx=1 v=2003 -1633.810059\n\tposy=1 v=2003 -278.809998\n\tvalue=2 e=0 v=2001 0\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 3\n\tuigroup=2 e=0 v=5000 Transparency\n\tgroup=20\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=1\n\t\t\tC=31 0 1 32 0 1 0\n\t\t\tCPC=0\n#NT=20163 0\n\tPC=3\n\tname=1 v=5000 ifUseAlbedoTexture\n\tposx=1 v=2003 -1433.599976\n\tposy=1 v=2003 -224.072006\n\tgroup=20\n\tISC=4\n\t\tSVT=5001 2001 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 1003 5 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 4 \n\t\tCC=1\n\t\t\tC=32 0 4 34 0 0 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tname=1 v=5000 NoTransparency\n\tposx=1 v=2003 -1631.619995\n\tposy=1 v=2003 -15.261000\n\tgroup=20\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=33 0 1 32 2 3 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=3\n\tposx=1 v=2003 -1233.000000\n\tposy=1 v=2003 -145.500000\n\tcollapsed=1 v=2001 1\n\tgroup=20\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=34 0 0 0 2 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=8\n\tname=1 v=5000 Color_Tint\n\tposx=1 v=2003 -1858.430664\n\tposy=1 v=2003 -520.256104\n\tcollapsed=1 v=2001 1\n\tcolor=2 e=0 v=3003 0.116972,0.672457,0.879610,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 2\n\tuigroup=2 e=0 v=5000 Shading\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=35 1 2 0 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=10100 1 Texture Map-Hw Shader Nodes-Textures\n"
		+ "\tPC=25\n\tname=1 v=5000 Cutout_Mask\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1860.351074\n\tposy=1 v=2003 -429.468903\n\tcollapsed=1 v=2001 1\n\tclassname=1 v=5000 Texture Map\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Cutout_Mask_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Shading\n\tuiorder_MyTexture=2 e=13 v=2002 10\n\tgroup=-1\n\tISC=4\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n"
		+ "\t\tCC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=1\n\t\t\tC=36 2 0 0 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20001 0\n\tPC=5\n\tposx=1 v=2003 -1225.100708\n\tposy=1 v=2003 -301.152771\n\tconfig=2 e=0 v=5012 1\n\tshadername=2 e=1 v=5000 C:/Users/santy/Dropbox/DEV/MNPR/private/shaders/mnpr_uber_shorter.fx\n\tsaveshadertodisk=2 e=0 v=5015 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=5001 5016 1 0 0 \n\t\tSVT=5001 5003 2 0 0 \n\tOSC=0\n");
	setAttr ".sprm" -type "string" "Cutout_Mask~315~Cutout_Mask_File~278~Cut~315~";
	setAttr -k on ".Cut" no;
createNode shadingEngine -n "Walk:Dark_Brown_Shader_SFXSG";
	rename -uid "626C381C-4B2D-B5FA-A388-B2B4E479D2C0";
	setAttr ".ihi" 0;
	setAttr -s 28 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "7877A547-4609-5EBB-72DC-968507383821";
createNode ShaderfxShader -n "Walk:Black_shader_SFX";
	rename -uid "E1585F12-4758-030D-3031-5E88F3B5666F";
	addAttr -ci true -k true -sn "Cutout_Mask" -ln "Cutout_Mask" -min 0 -max 1 -at "bool";
	addAttr -ci true -uaf -sn "Cutout_Mask_File" -ln "Cutout_Mask_File" -dt "string";
	addAttr -ci true -k true -sn "Cut" -ln "Cut" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=38\n#NT=10100 2 Cutout-Shader Nodes-Flair\n\tPC=67\n\tname=1 v=5000 Cutout_Material\n\tversion=1 v=2003 1.030000\n\tposx=1 v=2003 -1482.650024\n\tposy=1 v=2003 -314.123993\n\tclassname=1 v=5000 Cutout\n\tcategoryname=1 v=5000 Shader Nodes\n\tsubmenuname=1 v=5000 Flair\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -2322.000000\n\tgrpPosY=1 v=2003 69.500000\n\tcolorsetindex_prevPosition=2 e=1 v=2002 0\n\tvalue_Transparent=2 e=1 v=2001 0\n\tvalue_Variation_3D_MNPR=2 e=1 v=2001 1\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tvalue_Variation_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_VtxControl=2 e=1 v=2001 0\n\tvalue_controlSetA=2 e=1 v=2001 0\n\tvalue_controlSetB=2 e=1 v=2001 0\n\tvalue_controlSetC=2 e=1 v=2001 0\n\tvalue_enableDepth=2 e=1 v=2001 1\n\tvalue_lightNrDefault=2 e=1 v=2002 0\n\tvalue_uIncline_3D_MNPR=2 e=1 v=2001 1\n\tvalue_uIncline_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Blending_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_vIncline_3D_MNPR=2 e=1 v=2001 1\n\tvalue_vIncline_Procedural_MNPR=2 e=1 v=2001 0\n"
		+ "\tvalue_Alpha=2 e=1 v=2001 0\n\tvalue_Alpha_Mask_Cutoff=2 e=1 v=2003 0.500000\n\tvalue_Application_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Application_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Blending_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Detail_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Colored=2 e=1 v=2001 0\n\tvalue_Deformed=2 e=1 v=2001 0\n\tvalue_Density_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Density_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Detail_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Displacement=2 e=1 v=2001 0\n\tvalue_Distortion_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Distortion_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Edge_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Edge_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_NotTransparent=2 e=1 v=2001 1\n\tvalue_Shape_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Shape_Procedural_MNPR=2 e=1 v=2001 0\n\tvalue_Transition_3D_MNPR=2 e=1 v=2001 1\n\tvalue_Transition_Procedural_MNPR=2 e=1 v=2001 0\n\tcolorsetname_Vertex=2 e=2 v=5000 vPos\n\tcolorsetname_prevPosition=2 e=2 v=5000 previousScreenPosition\n\tuvindex_UVs=2 e=2 v=2002 0\n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tperinstanceunshared_prevPosition=2 e=3 v=2001 0\n"
		+ "\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalueX_Tile=2 e=5 v=2003 1.000000\n\tvalueY_Tile=2 e=6 v=2003 1.000000\n\tvalueX_Offset=2 e=7 v=2003 0.000000\n\tvalueY_Offset=2 e=8 v=2003 0.000000\n\tvalue_Brightness=2 e=10 v=2003 10.000000\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_Flat_Tessellation_Blend=2 e=901 v=2003 0.000000\n\tvalue_Clipping_Bias_Add=2 e=902 v=2003 5.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\toptions_displacementModel=2 e=1000 v=5012 0\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_Displacement_Multiplier=2 e=1002 v=2003 1.000000\n\tvalue_Displacement_Offset=2 e=1003 v=2003 0.000000\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 3002 0 0 0 Color Tint\n\t\tSVT=5001 2003 0 0 0 Cut Mask\n\t\tSVT=5001 2003 0 0 0 Transparency Map\n\t\tSVT=5001 2003 0 0 0 Alpha Mask\n\t\tSVT=5001 3002 0 0 0 Displacement Map\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=2002 2002 0 Number of Lights\n\t\tCC=1\n\t\t\tC=0 0 0 37 0 3 0\n\t\t\tCPC=0\n\t\tSVT=5001 5003 0 \n\t\tCC=1\n\t\t\tC=0 1 0 37 2 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n"
		+ "\tPC=20\n\tname=1 v=5000 Alpha_Mask\n\tposx=1 v=2003 -1859.048706\n\tposy=1 v=2003 -219.924805\n\tcollapsed=1 v=2001 1\n\tbitmapnodeindex=1 v=2002 64\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1833.000000\n\tgrpPosY=1 v=2003 -145.500000\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Alpha_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Alpha\n\tuiorder_MyTexture=2 e=13 v=2002 12\n\tgroup=-1\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=22\n\tname=1 v=5000 Alpha_Mask\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1632.410034\n\tposy=1 v=2003 -161.904999\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n"
		+ "\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Alpha_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Alpha\n\tuiorder_MyTexture=2 e=13 v=2002 12\n\tgroup=1\n\tISC=3\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 6 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 4 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20028 0\n\tPC=11\n\tposx=1 v=2003 -561.903015\n\tposy=1 v=2003 49.223598\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 Alpha_Texture_File\n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 12\n\tuigroup=2 e=13 v=5000 Alpha\n\tgroup=2\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n"
		+ "\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=2\n\t\t\tC=3 0 2 4 0 1 0\n\t\t\tCPC=0\n\t\t\tC=3 0 2 5 0 3 0\n\t\t\tCPC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -17.002600\n\tposy=1 v=2003 39.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=1\n\t\t\tC=4 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -271.677002\n\tposy=1 v=2003 102.527000\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=5 0 1 4 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n"
		+ "\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -277.582001\n\tposy=1 v=2003 -101.893997\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=6 0 3 4 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 Luminance\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 Luminance\n\t\tCC=1\n\t\t\tC=7 0 0 13 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n"
		+ "\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=8 1 0 6 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -770.375977\n\tposy=1 v=2003 180.014008\n\tgroup=2\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=3\n\t\t\tC=9 0 1 5 1 2 0\n\t\t\tCPC=0\n\t\t\tC=9 0 1 3 2 4 0\n\t\t\tCPC=0\n\t\t\tC=9 0 1 4 6 13 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Desaturate Color-Hw Shader Nodes-Lighting\n\tPC=11\n\tname=1 v=5000 _DesaturateColor\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 203.557999\n\tposy=1 v=2003 120.602997\n\tclassname=1 v=5000 Desaturate Color\n\tsubmenuname=1 v=5000 Lighting\n\tbitmapnodeindex=1 v=2002 2\n\thelpid=1 v=2002 7\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -478.424988\n\tgrpPosY=1 v=2003 -90.372597\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 _DesaturateColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=7\n\tname=1 v=5000 Alpha_Mask\n\tposx=1 v=2003 -1633.810059\n\tposy=1 v=2003 -278.809998\n\tvalue=2 e=0 v=2001 0\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 10\n\tuigroup=2 e=0 v=5000 Alpha\n\tgroup=1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=1\n\t\t\tC=12 0 1 13 0 1 0\n\t\t\tCPC=0\n#NT=20163 0\n\tPC=3\n\tname=1 v=5000 ifUseAlbedoTexture\n\tposx=1 v=2003 -1433.599976\n\tposy=1 v=2003 -224.072006\n\tgroup=1\n\tISC=4\n\t\tSVT=5001 2001 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n"
		+ "\t\tSVT=5001 1003 5 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 4 \n\t\tCC=1\n\t\t\tC=13 0 4 15 0 0 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tname=1 v=5000 NoAlpha\n\tposx=1 v=2003 -1632.420044\n\tposy=1 v=2003 -5.534270\n\tgroup=1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=14 0 1 13 2 3 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=3\n\tposx=1 v=2003 -1233.000000\n\tposy=1 v=2003 -145.500000\n\tcollapsed=1 v=2001 1\n\tgroup=1\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=15 0 0 0 3 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20167 0\n\tPC=6\n\tname=1 v=5000 graphName\n\tnote=1 v=5000 DO NOT TOUCH\n\tposx=1 v=2003 -1489.750000\n\tposy=1 v=2003 -750.299011\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=5000 mnprx_cutout\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5000 5000 1 \n\t\tCC=0\n#NT=20017 0\n\tPC=6\n\tname=1 v=5000 graphVersion\n\tnote=1 v=5000 DO NOT TOUCH\n\tposx=1 v=2003 -1488.750000\n\tposy=1 v=2003 -617.500000\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=0\n#NT=10100 1 Texture Map-Hw Shader Nodes-Textures\n\tPC=25\n\tname=1 v=5000 Displacement_Map\n"
		+ "\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1861.953369\n\tposy=1 v=2003 -112.250343\n\tcollapsed=1 v=2001 1\n\tclassname=1 v=5000 Texture Map\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Displacement_Map\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Displacement\n\tuiorder_MyTexture=2 e=13 v=2002 3\n\tgroup=-1\n\tISC=4\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=18 1 0 0 4 0 0\n\t\t\tCPC=0\n"
		+ "\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=6\n\tname=1 v=5000 customGraph\n\tnote=1 v=5000 Set to True if Graph has been customized -> it wont update in the future\n\tposx=1 v=2003 -1483.750122\n\tposy=1 v=2003 -461.250031\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=0 v=2001 0\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=0\n#NT=10100 0\n\tPC=20\n\tname=1 v=5000 Transparency_Map\n\tposx=1 v=2003 -1861.024780\n\tposy=1 v=2003 -324.897156\n\tcollapsed=1 v=2001 1\n\tbitmapnodeindex=1 v=2002 64\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1833.000000\n\tgrpPosY=1 v=2003 -145.500000\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Transparency_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tuigroup_MyTexture=2 e=13 v=5000 Transparency\n\tuiorder_MyTexture=2 e=13 v=2002 5\n\tgroup=-1\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=22\n\tname=1 v=5000 Transparency_Map\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1630.849976\n\tposy=1 v=2003 -167.925995\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Transparency_Texture_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Transparency\n\tuiorder_MyTexture=2 e=13 v=2002 5\n\tgroup=20\n\tISC=3\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=21 0 0 25 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n"
		+ "\t\tCC=1\n\t\t\tC=21 1 0 23 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20028 0\n\tPC=11\n\tposx=1 v=2003 -561.903015\n\tposy=1 v=2003 49.223598\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 Transparency_Texture_File\n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 5\n\tuigroup=2 e=13 v=5000 Transparency\n\tgroup=21\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=2\n\t\t\tC=22 0 2 23 0 1 0\n\t\t\tCPC=0\n\t\t\tC=22 0 2 24 0 3 0\n\t\t\tCPC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -17.002600\n\tposy=1 v=2003 39.977600\n\tgroup=21\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=1\n\t\t\tC=23 1 6 30 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n"
		+ "\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -271.677002\n\tposy=1 v=2003 102.527000\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=24 0 1 23 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -277.582001\n\tposy=1 v=2003 -101.893997\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=25 0 3 23 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 Luminance\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 Luminance\n\t\tCC=1\n\t\t\tC=26 0 0 32 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n"
		+ "\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=21\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=27 1 0 25 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -770.375977\n\tposy=1 v=2003 180.014008\n\tgroup=21\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=3\n\t\t\tC=28 0 1 22 2 4 0\n\t\t\tCPC=0\n\t\t\tC=28 0 1 23 6 13 0\n\t\t\tCPC=0\n\t\t\tC=28 0 1 24 1 2 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=21\n\tISC=0\n\tOSC=0\n#NT=10100 1 Desaturate Color-Hw Shader Nodes-Lighting\n\tPC=11\n\tname=1 v=5000 _DesaturateColor\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 203.557999\n\tposy=1 v=2003 120.602997\n\tclassname=1 v=5000 Desaturate Color\n\tsubmenuname=1 v=5000 Lighting\n\tbitmapnodeindex=1 v=2002 2\n\thelpid=1 v=2002 7\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -478.424988\n\tgrpPosY=1 v=2003 -90.372597\n\tgroup=21\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 _DesaturateColor\n\t\tCC=1\n\t\t\tC=30 0 0 26 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20088 0\n\tPC=7\n\tname=1 v=5000 Transparency_Map\n\tposx=1 v=2003 -1633.810059\n\tposy=1 v=2003 -278.809998\n\tvalue=2 e=0 v=2001 0\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 3\n\tuigroup=2 e=0 v=5000 Transparency\n\tgroup=20\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2001 1 \n\t\tCC=1\n\t\t\tC=31 0 1 32 0 1 0\n\t\t\tCPC=0\n#NT=20163 0\n\tPC=3\n\tname=1 v=5000 ifUseAlbedoTexture\n\tposx=1 v=2003 -1433.599976\n\tposy=1 v=2003 -224.072006\n\tgroup=20\n\tISC=4\n\t\tSVT=5001 2001 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 1003 5 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 4 \n\t\tCC=1\n\t\t\tC=32 0 4 34 0 0 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tname=1 v=5000 NoTransparency\n\tposx=1 v=2003 -1631.619995\n\tposy=1 v=2003 -15.261000\n\tgroup=20\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=33 0 1 32 2 3 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=3\n\tposx=1 v=2003 -1233.000000\n\tposy=1 v=2003 -145.500000\n\tcollapsed=1 v=2001 1\n\tgroup=20\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=34 0 0 0 2 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=8\n\tname=1 v=5000 Color_Tint\n\tposx=1 v=2003 -1858.430664\n\tposy=1 v=2003 -520.256104\n\tcollapsed=1 v=2001 1\n\tcolor=2 e=0 v=3003 0.116972,0.672457,0.879610,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tuiorder=2 e=0 v=2002 2\n\tuigroup=2 e=0 v=5000 Shading\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=35 1 2 0 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=10100 1 Texture Map-Hw Shader Nodes-Textures\n"
		+ "\tPC=25\n\tname=1 v=5000 Cutout_Mask\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -1860.351074\n\tposy=1 v=2003 -429.468903\n\tcollapsed=1 v=2001 1\n\tclassname=1 v=5000 Texture Map\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 \n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 Cutout_Mask_File\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 Shading\n\tuiorder_MyTexture=2 e=13 v=2002 10\n\tgroup=-1\n\tISC=4\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n"
		+ "\t\tCC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=1\n\t\t\tC=36 2 0 0 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20001 0\n\tPC=5\n\tposx=1 v=2003 -1225.100708\n\tposy=1 v=2003 -301.152771\n\tconfig=2 e=0 v=5012 1\n\tshadername=2 e=1 v=5000 C:/Users/santy/Dropbox/DEV/MNPR/private/shaders/mnpr_uber_shorter.fx\n\tsaveshadertodisk=2 e=0 v=5015 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=5001 5016 1 0 0 \n\t\tSVT=5001 5003 2 0 0 \n\tOSC=0\n");
	setAttr ".sprm" -type "string" "Cutout_Mask~315~Cutout_Mask_File~278~Cut~315~";
	setAttr -k on ".Cut" no;
createNode shadingEngine -n "Walk:Black_shader_SFXSG";
	rename -uid "C7FF0EF9-47DF-0EC3-5F54-B29A8F9C3ECC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "B8C00BF4-413A-0580-CA18-4D9789004968";
createNode flairGlobals -n "flairGlobals";
	rename -uid "C4D42015-4DC4-EF8C-1B4B-F58803CA351D";
	setAttr "._version" 20231017;
	setAttr "._taa" yes;
	setAttr "._style" 2;
	setAttr "._hasBloom" yes;
	setAttr ".AORadius" 2.5;
	setAttr ".AOStrength" 1;
	setAttr "._baseWobbleFrequency" 1;
	setAttr ".substrateTexture" -type "string" "hotPress_Fluid_4k.jpg";
	setAttr ".substrateTextureAlt" -type "string" "ingres_Dailer-Rowney_4k.jpg";
	setAttr ".substrateColor" -type "float3" 0.079300001 0.42089999 0.5783 ;
	setAttr ".substrateLightDir" 225;
	setAttr ".substrateScale" 0.97616797685623169;
	setAttr ".substrateRoughness" 0.60000002384185791;
	setAttr ".substrateDistortion" 0;
	setAttr ".substrateRotation" 111.47200012207031;
	setAttr ".altSubstrateColor" -type "float3" 0.93400002 0.73966801 0.56880599 ;
	setAttr ".altSubstrateScale" 0.68331700563430786;
	setAttr ".altSubstrateRoughness" 0.60000002384185791;
	setAttr ".altSubstrateRotation" 56.738998413085938;
	setAttr ".lineIntensity" 0.5;
	setAttr ".lineColoration" 1;
	setAttr ".distortAmplitude" 3.125;
	setAttr ".distortIterMax" 10;
	setAttr ".sketchColoration" 1;
	setAttr ".distance" 3;
	setAttr ".dropShadow" 1;
	setAttr ".outerBevelRadius" 20;
	setAttr ".outerBevelShadow" 0.5;
	setAttr ".cutHighlight" 0.80000001192092896;
	setAttr ".cutOppHighlight" 0.3404259979724884;
	setAttr ".gradientShade" 0.5;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".on" -type "string" "flairEngine";
	setAttr ".vac" 2;
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".hfd";
	setAttr -av ".hfe";
	setAttr -av ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 17 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 2 ".r";
select -ne :lambert1;
	setAttr ".c" -type "float3" 1 1 1 ;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".gama";
	setAttr -k on ".be";
	setAttr ".ep" 1;
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w" 1280;
	setAttr -av -k on ".h" 720;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al" yes;
	setAttr -av -k on ".dar" 1.7777777910232544;
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -av ".gsn";
	setAttr -s 3 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 4 ".hyp";
connectAttr "HUMANRN.phl[1]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[2]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[3]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[4]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[5]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[6]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[7]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[8]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[9]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[10]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[11]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[12]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[13]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[14]" "Walk:Black_shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[15]" "Walk:Black_shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[16]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[17]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[18]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[19]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[20]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[21]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[22]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[23]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[24]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[25]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[26]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[27]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[28]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[29]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[30]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[31]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[32]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[33]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[34]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[35]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[36]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[37]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[38]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[39]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[40]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[41]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[42]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[43]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[44]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[45]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[46]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[47]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[48]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[49]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[50]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[51]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[52]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[53]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[54]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[55]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[56]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[57]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[58]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[59]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[60]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[61]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[62]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[63]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[64]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[65]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[66]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[67]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[68]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[69]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[70]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[71]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[72]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[73]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[74]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[75]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[76]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[77]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[78]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[79]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[80]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[81]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[82]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[83]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[84]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[85]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[86]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[87]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[88]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[89]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[90]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[91]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[92]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[93]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[94]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[95]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[96]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[97]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[98]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[99]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[100]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[101]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[102]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[103]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[104]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[105]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[106]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[107]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[108]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[109]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[110]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[111]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[112]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[113]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[114]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[115]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[116]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[117]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[118]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[119]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[120]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[121]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[122]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[123]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[124]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[125]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[126]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[127]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[128]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[129]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[130]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[131]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[132]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[133]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[134]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[135]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[136]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[137]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[138]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[139]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[140]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[141]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[142]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[143]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[144]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[145]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[146]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[147]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[148]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[149]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[150]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[151]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[152]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[153]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[154]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[155]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[156]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[157]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[158]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[159]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[160]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[161]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[162]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[163]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[164]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[165]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[166]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[167]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[168]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[169]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[170]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[171]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[172]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[173]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[174]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[175]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[176]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[177]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[178]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[179]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[180]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[181]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[182]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[183]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[184]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[185]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[186]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[187]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[188]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[189]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[190]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[191]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece1_translateX.o" "HUMANRN.phl[192]";
connectAttr "Walk:left_Toe_piece1_translateY.o" "HUMANRN.phl[193]";
connectAttr "Walk:left_Toe_piece1_translateZ1.o" "HUMANRN.phl[194]";
connectAttr "Walk:left_Toe_piece1_visibility.o" "HUMANRN.phl[195]";
connectAttr "Walk:left_Toe_piece1_rotateX.o" "HUMANRN.phl[196]";
connectAttr "Walk:left_Toe_piece1_rotateY.o" "HUMANRN.phl[197]";
connectAttr "Walk:left_Toe_piece1_rotateZ.o" "HUMANRN.phl[198]";
connectAttr "Walk:left_Toe_piece1_scaleX.o" "HUMANRN.phl[199]";
connectAttr "Walk:left_Toe_piece1_scaleY.o" "HUMANRN.phl[200]";
connectAttr "Walk:left_Toe_piece1_scaleZ.o" "HUMANRN.phl[201]";
connectAttr "HUMANRN.phl[202]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece2_visibility.o" "HUMANRN.phl[203]";
connectAttr "Walk:left_Toe_piece2_translateX.o" "HUMANRN.phl[204]";
connectAttr "Walk:left_Toe_piece2_translateY.o" "HUMANRN.phl[205]";
connectAttr "Walk:left_Toe_piece2_translateZ.o" "HUMANRN.phl[206]";
connectAttr "Walk:left_Toe_piece2_rotateX.o" "HUMANRN.phl[207]";
connectAttr "Walk:left_Toe_piece2_rotateY.o" "HUMANRN.phl[208]";
connectAttr "Walk:left_Toe_piece2_rotateZ.o" "HUMANRN.phl[209]";
connectAttr "Walk:left_Toe_piece2_scaleX.o" "HUMANRN.phl[210]";
connectAttr "Walk:left_Toe_piece2_scaleY.o" "HUMANRN.phl[211]";
connectAttr "Walk:left_Toe_piece2_scaleZ.o" "HUMANRN.phl[212]";
connectAttr "HUMANRN.phl[213]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece3_translateX.o" "HUMANRN.phl[214]";
connectAttr "Walk:left_Toe_piece3_translateY.o" "HUMANRN.phl[215]";
connectAttr "Walk:left_Toe_piece3_translateZ.o" "HUMANRN.phl[216]";
connectAttr "Walk:left_Toe_piece3_visibility.o" "HUMANRN.phl[217]";
connectAttr "Walk:left_Toe_piece3_rotateX.o" "HUMANRN.phl[218]";
connectAttr "Walk:left_Toe_piece3_rotateY.o" "HUMANRN.phl[219]";
connectAttr "Walk:left_Toe_piece3_rotateZ.o" "HUMANRN.phl[220]";
connectAttr "Walk:left_Toe_piece3_scaleX.o" "HUMANRN.phl[221]";
connectAttr "Walk:left_Toe_piece3_scaleY.o" "HUMANRN.phl[222]";
connectAttr "Walk:left_Toe_piece3_scaleZ.o" "HUMANRN.phl[223]";
connectAttr "HUMANRN.phl[224]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[225]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece5_translateX.o" "HUMANRN.phl[226]";
connectAttr "Walk:left_Toe_piece5_translateY.o" "HUMANRN.phl[227]";
connectAttr "Walk:left_Toe_piece5_translateZ1.o" "HUMANRN.phl[228]";
connectAttr "Walk:left_Toe_piece5_visibility.o" "HUMANRN.phl[229]";
connectAttr "Walk:left_Toe_piece5_rotateX.o" "HUMANRN.phl[230]";
connectAttr "Walk:left_Toe_piece5_rotateY.o" "HUMANRN.phl[231]";
connectAttr "Walk:left_Toe_piece5_rotateZ.o" "HUMANRN.phl[232]";
connectAttr "Walk:left_Toe_piece5_scaleX.o" "HUMANRN.phl[233]";
connectAttr "Walk:left_Toe_piece5_scaleY.o" "HUMANRN.phl[234]";
connectAttr "Walk:left_Toe_piece5_scaleZ.o" "HUMANRN.phl[235]";
connectAttr "HUMANRN.phl[236]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece6_translateX.o" "HUMANRN.phl[237]";
connectAttr "Walk:left_Toe_piece6_translateY.o" "HUMANRN.phl[238]";
connectAttr "Walk:left_Toe_piece6_translateZ1.o" "HUMANRN.phl[239]";
connectAttr "Walk:left_Toe_piece6_visibility.o" "HUMANRN.phl[240]";
connectAttr "Walk:left_Toe_piece6_rotateX.o" "HUMANRN.phl[241]";
connectAttr "Walk:left_Toe_piece6_rotateY.o" "HUMANRN.phl[242]";
connectAttr "Walk:left_Toe_piece6_rotateZ.o" "HUMANRN.phl[243]";
connectAttr "Walk:left_Toe_piece6_scaleX.o" "HUMANRN.phl[244]";
connectAttr "Walk:left_Toe_piece6_scaleY.o" "HUMANRN.phl[245]";
connectAttr "Walk:left_Toe_piece6_scaleZ.o" "HUMANRN.phl[246]";
connectAttr "HUMANRN.phl[247]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[248]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[249]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[250]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[251]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[252]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[253]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[254]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[255]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[256]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[257]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[258]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[259]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[260]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[261]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[262]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[263]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[264]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[265]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[266]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece1_translateZ.o" "HUMANRN.phl[267]";
connectAttr "HUMANRN.phl[268]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[269]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[270]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece4_translateZ.o" "HUMANRN.phl[271]";
connectAttr "HUMANRN.phl[272]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece5_translateZ.o" "HUMANRN.phl[273]";
connectAttr "HUMANRN.phl[274]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "Walk:left_Toe_piece6_translateZ.o" "HUMANRN.phl[275]";
connectAttr "HUMANRN.phl[276]" "Walk:Skin_Shader_SFXSG.dsm" -na;
connectAttr "HUMANRN.phl[277]" "Walk:Dark_Brown_Shader_SFXSG.dsm" -na;
connectAttr "WORLD_CTRL_translateZ.o" "HUMANRN.phl[278]";
connectAttr "Walk:L_FING_CTRL_PalmBend.o" "HUMANRN.phl[279]";
connectAttr "Walk:L_FING_CTRL_Pointer1.o" "HUMANRN.phl[280]";
connectAttr "Walk:L_FING_CTRL_Pointer2.o" "HUMANRN.phl[281]";
connectAttr "Walk:L_FING_CTRL_Pointer3.o" "HUMANRN.phl[282]";
connectAttr "Walk:L_FING_CTRL_PointerTurn.o" "HUMANRN.phl[283]";
connectAttr "Walk:L_FING_CTRL_PointerRoll.o" "HUMANRN.phl[284]";
connectAttr "Walk:L_FING_CTRL_Pinky1.o" "HUMANRN.phl[285]";
connectAttr "Walk:L_FING_CTRL_Pinky2.o" "HUMANRN.phl[286]";
connectAttr "Walk:L_FING_CTRL_Pinky3.o" "HUMANRN.phl[287]";
connectAttr "Walk:L_FING_CTRL_PinkyTurn.o" "HUMANRN.phl[288]";
connectAttr "Walk:L_FING_CTRL_PinkyRoll.o" "HUMANRN.phl[289]";
connectAttr "Walk:L_FING_CTRL_Thumb1.o" "HUMANRN.phl[290]";
connectAttr "Walk:L_FING_CTRL_Thumb2.o" "HUMANRN.phl[291]";
connectAttr "Walk:L_FING_CTRL_Thumb3.o" "HUMANRN.phl[292]";
connectAttr "Walk:L_FING_CTRL_Thumb1UP.o" "HUMANRN.phl[293]";
connectAttr "Walk:L_FING_CTRL_Thumb2UP.o" "HUMANRN.phl[294]";
connectAttr "Walk:L_FING_CTRL_Thumb3UP.o" "HUMANRN.phl[295]";
connectAttr "Walk:L_FING_CTRL_Thumb1Roll.o" "HUMANRN.phl[296]";
connectAttr "Walk:L_FING_CTRL_Thumb2Roll.o" "HUMANRN.phl[297]";
connectAttr "Walk:L_FING_CTRL_Thumb3Roll.o" "HUMANRN.phl[298]";
connectAttr "Walk:L_SHOULDER_CTRL_ShoulderUD.o" "HUMANRN.phl[299]";
connectAttr "Walk:L_SHOULDER_CTRL_ShoulderFB.o" "HUMANRN.phl[300]";
connectAttr "Walk:L_SHOULDER_CTRL_rotateX.o" "HUMANRN.phl[301]";
connectAttr "Walk:L_SHOULDER_CTRL_rotateY.o" "HUMANRN.phl[302]";
connectAttr "Walk:L_SHOULDER_CTRL_rotateZ.o" "HUMANRN.phl[303]";
connectAttr "Walk:left_Elbow_FK_ctrl_rotateY.o" "HUMANRN.phl[304]";
connectAttr "Walk:left_Wrist_FK_ctrl_rotateX.o" "HUMANRN.phl[305]";
connectAttr "Walk:left_Wrist_FK_ctrl_rotateY.o" "HUMANRN.phl[306]";
connectAttr "Walk:left_Wrist_FK_ctrl_rotateZ.o" "HUMANRN.phl[307]";
connectAttr "Walk:R_FING_CTRL_PalmBend.o" "HUMANRN.phl[308]";
connectAttr "Walk:R_FING_CTRL_Pointer1.o" "HUMANRN.phl[309]";
connectAttr "Walk:R_FING_CTRL_Pointer2.o" "HUMANRN.phl[310]";
connectAttr "Walk:R_FING_CTRL_Pointer3.o" "HUMANRN.phl[311]";
connectAttr "Walk:R_FING_CTRL_PointerTurn.o" "HUMANRN.phl[312]";
connectAttr "Walk:R_FING_CTRL_PointerRoll.o" "HUMANRN.phl[313]";
connectAttr "Walk:R_FING_CTRL_Pinky1.o" "HUMANRN.phl[314]";
connectAttr "Walk:R_FING_CTRL_Pinky2.o" "HUMANRN.phl[315]";
connectAttr "Walk:R_FING_CTRL_Pinky3.o" "HUMANRN.phl[316]";
connectAttr "Walk:R_FING_CTRL_PinkyTurn.o" "HUMANRN.phl[317]";
connectAttr "Walk:R_FING_CTRL_PinkyRoll.o" "HUMANRN.phl[318]";
connectAttr "Walk:R_FING_CTRL_Thumb1.o" "HUMANRN.phl[319]";
connectAttr "Walk:R_FING_CTRL_Thumb2.o" "HUMANRN.phl[320]";
connectAttr "Walk:R_FING_CTRL_Thumb3.o" "HUMANRN.phl[321]";
connectAttr "Walk:R_FING_CTRL_Thumb1UP.o" "HUMANRN.phl[322]";
connectAttr "Walk:R_FING_CTRL_Thumb2UP.o" "HUMANRN.phl[323]";
connectAttr "Walk:R_FING_CTRL_Thumb3UP.o" "HUMANRN.phl[324]";
connectAttr "Walk:R_FING_CTRL_Thumb1Roll.o" "HUMANRN.phl[325]";
connectAttr "Walk:R_FING_CTRL_Thumb2Roll.o" "HUMANRN.phl[326]";
connectAttr "Walk:R_FING_CTRL_Thumb3Roll.o" "HUMANRN.phl[327]";
connectAttr "Walk:R_SHOULDER_CTRL_ShoulderUD.o" "HUMANRN.phl[328]";
connectAttr "Walk:R_SHOULDER_CTRL_ShoulderFB.o" "HUMANRN.phl[329]";
connectAttr "Walk:R_SHOULDER_CTRL_rotateX.o" "HUMANRN.phl[330]";
connectAttr "Walk:R_SHOULDER_CTRL_rotateY.o" "HUMANRN.phl[331]";
connectAttr "Walk:R_SHOULDER_CTRL_rotateZ.o" "HUMANRN.phl[332]";
connectAttr "Walk:right_Elbow_FK_ctrl_rotateY.o" "HUMANRN.phl[333]";
connectAttr "Walk:right_Wrist_FK_ctrl_rotateX.o" "HUMANRN.phl[334]";
connectAttr "Walk:right_Wrist_FK_ctrl_rotateY.o" "HUMANRN.phl[335]";
connectAttr "Walk:right_Wrist_FK_ctrl_rotateZ.o" "HUMANRN.phl[336]";
connectAttr "Walk:BODY_CTRL_translateY.o" "HUMANRN.phl[337]";
connectAttr "Walk:BODY_CTRL_rotateY.o" "HUMANRN.phl[338]";
connectAttr "Walk:SPINE_1_CTRL_rotateZ.o" "HUMANRN.phl[339]";
connectAttr "Walk:SPINE_2_CTRL_rotateY.o" "HUMANRN.phl[340]";
connectAttr "Walk:NECK_FK_CTRL_rotateX.o" "HUMANRN.phl[341]";
connectAttr "Walk:HEAD_CTRL_BlinkL.o" "HUMANRN.phl[342]";
connectAttr "Walk:HEAD_CTRL_BlinkR.o" "HUMANRN.phl[343]";
connectAttr "Walk:HEAD_CTRL_OpenL.o" "HUMANRN.phl[344]";
connectAttr "Walk:HEAD_CTRL_OpenR.o" "HUMANRN.phl[345]";
connectAttr "Walk:HEAD_CTRL_rotateX.o" "HUMANRN.phl[346]";
connectAttr "Walk:HEAD_CTRL_rotateY.o" "HUMANRN.phl[347]";
connectAttr "Walk:HEAD_CTRL_rotateZ.o" "HUMANRN.phl[348]";
connectAttr "Walk:L_FOOT_CTRL_Heel.o" "HUMANRN.phl[349]";
connectAttr "Walk:L_FOOT_CTRL_Ball.o" "HUMANRN.phl[350]";
connectAttr "Walk:L_FOOT_CTRL_Toe_lift.o" "HUMANRN.phl[351]";
connectAttr "Walk:L_FOOT_CTRL_Toe_wiggle.o" "HUMANRN.phl[352]";
connectAttr "Walk:L_FOOT_CTRL_ToeTwist.o" "HUMANRN.phl[353]";
connectAttr "Walk:L_FOOT_CTRL_translateX.o" "HUMANRN.phl[354]";
connectAttr "Walk:L_FOOT_CTRL_translateY.o" "HUMANRN.phl[355]";
connectAttr "Walk:L_FOOT_CTRL_translateZ.o" "HUMANRN.phl[356]";
connectAttr "Walk:L_FOOT_CTRL_rotateX.o" "HUMANRN.phl[357]";
connectAttr "Walk:L_FOOT_CTRL_rotateY.o" "HUMANRN.phl[358]";
connectAttr "Walk:L_FOOT_CTRL_rotateZ.o" "HUMANRN.phl[359]";
connectAttr "Walk:R_KNEE_CTRL_translateX.o" "HUMANRN.phl[360]";
connectAttr "Walk:R_KNEE_CTRL_translateY.o" "HUMANRN.phl[361]";
connectAttr "Walk:R_KNEE_CTRL_translateZ.o" "HUMANRN.phl[362]";
connectAttr "Walk:R_FOOT_CTRL_Heel.o" "HUMANRN.phl[363]";
connectAttr "Walk:R_FOOT_CTRL_Ball.o" "HUMANRN.phl[364]";
connectAttr "Walk:R_FOOT_CTRL_Toe_lift.o" "HUMANRN.phl[365]";
connectAttr "Walk:R_FOOT_CTRL_Toe_wiggle.o" "HUMANRN.phl[366]";
connectAttr "Walk:R_FOOT_CTRL_ToeTwist.o" "HUMANRN.phl[367]";
connectAttr "Walk:R_FOOT_CTRL_translateX.o" "HUMANRN.phl[368]";
connectAttr "Walk:R_FOOT_CTRL_translateY.o" "HUMANRN.phl[369]";
connectAttr "Walk:R_FOOT_CTRL_translateZ.o" "HUMANRN.phl[370]";
connectAttr "Walk:R_FOOT_CTRL_rotateX.o" "HUMANRN.phl[371]";
connectAttr "Walk:R_FOOT_CTRL_rotateY.o" "HUMANRN.phl[372]";
connectAttr "Walk:R_FOOT_CTRL_rotateZ.o" "HUMANRN.phl[373]";
connectAttr "Walk:L_KNEE_CTRL_translateX.o" "HUMANRN.phl[374]";
connectAttr "Walk:L_KNEE_CTRL_translateY.o" "HUMANRN.phl[375]";
connectAttr "Walk:L_KNEE_CTRL_translateZ.o" "HUMANRN.phl[376]";
connectAttr "Walk:SHOULDER_CTRL_translateX.o" "HUMANRN.phl[377]";
connectAttr "Walk:SHOULDER_CTRL_translateY.o" "HUMANRN.phl[378]";
connectAttr "Walk:SHOULDER_CTRL_translateZ.o" "HUMANRN.phl[379]";
connectAttr "Walk:SHOULDER_CTRL_rotateX.o" "HUMANRN.phl[380]";
connectAttr "Walk:SHOULDER_CTRL_rotateY.o" "HUMANRN.phl[381]";
connectAttr "Walk:SHOULDER_CTRL_rotateZ.o" "HUMANRN.phl[382]";
connectAttr "Walk:HIP_CTRL_translateX.o" "HUMANRN.phl[383]";
connectAttr "Walk:HIP_CTRL_translateY.o" "HUMANRN.phl[384]";
connectAttr "Walk:HIP_CTRL_translateZ.o" "HUMANRN.phl[385]";
connectAttr "Walk:HIP_CTRL_rotateX.o" "HUMANRN.phl[386]";
connectAttr "Walk:HIP_CTRL_rotateY.o" "HUMANRN.phl[387]";
connectAttr "Walk:HIP_CTRL_rotateZ.o" "HUMANRN.phl[388]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Walk:Skin_Shader_SFXSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Walk:Dark_Brown_Shader_SFXSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Walk:Black_shader_SFXSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Walk:Skin_Shader_SFXSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Walk:Dark_Brown_Shader_SFXSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Walk:Black_shader_SFXSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultRenderGlobals.ren" "defaultRenderLayer.adjs[0].plg";
connectAttr ":defaultRenderGlobals.edl" "defaultRenderLayer.adjs[1].plg";
connectAttr ":frontShape.col" "defaultRenderLayer.adjs[16].plg";
connectAttr ":perspShape.col" "defaultRenderLayer.adjs[17].plg";
connectAttr ":sideShape.col" "defaultRenderLayer.adjs[18].plg";
connectAttr ":topShape.col" "defaultRenderLayer.adjs[19].plg";
connectAttr "sharedReferenceNode.sr" "HUMANRN.sr";
connectAttr "Walk:WORLD_CTRL_translateZ.o" "WORLD_CTRL_translateZ.i";
connectAttr "Walk:Skin_Shader_SFX.oc" "Walk:Skin_Shader_SFXSG.ss";
connectAttr "Walk:Skin_Shader_SFXSG.msg" "materialInfo1.sg";
connectAttr "Walk:Skin_Shader_SFX.msg" "materialInfo1.m";
connectAttr "Walk:Dark_Brown_Shader_SFX.oc" "Walk:Dark_Brown_Shader_SFXSG.ss";
connectAttr "Walk:Dark_Brown_Shader_SFXSG.msg" "materialInfo2.sg";
connectAttr "Walk:Dark_Brown_Shader_SFX.msg" "materialInfo2.m";
connectAttr "Walk:Black_shader_SFX.oc" "Walk:Black_shader_SFXSG.ss";
connectAttr "Walk:Black_shader_SFXSG.msg" "materialInfo3.sg";
connectAttr "Walk:Black_shader_SFX.msg" "materialInfo3.m";
connectAttr "Walk:Skin_Shader_SFXSG.pa" ":renderPartition.st" -na;
connectAttr "Walk:Dark_Brown_Shader_SFXSG.pa" ":renderPartition.st" -na;
connectAttr "Walk:Black_shader_SFXSG.pa" ":renderPartition.st" -na;
connectAttr "Walk:Skin_Shader_SFX.msg" ":defaultShaderList1.s" -na;
connectAttr "Walk:Dark_Brown_Shader_SFX.msg" ":defaultShaderList1.s" -na;
connectAttr "Walk:Black_shader_SFX.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Walk_Cycle.ma
