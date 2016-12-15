//Maya ASCII 2017 scene
//Name: computerPart5.ma
//Last modified: Thu, Dec 08, 2016 01:57:37 PM
//Codeset: UTF-8
requires maya "2017";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Mac OS X 10.12.1";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "4972A778-2342-F27B-F213-E4A4EB8DC20A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 204.19995746634939 428.40033089012792 -129.66425575870784 ;
	setAttr ".r" -type "double3" -54.938352730490706 128.59999999997876 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "79652269-2A4D-AE86-24D0-3F96B5DFB29C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 555.11744217758462;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "806B6913-5543-4B92-B7B1-CBA2E61398AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3F07F4F4-C64C-8F4B-649E-F4B0BF55A075";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "49789353-B64D-C278-E27D-7DAD0520BD30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "70CB4D7C-D344-00EA-8DA1-109F621728F0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "AAE394B6-4848-EFF9-1FC8-919822A802BC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0582B64B-614C-1C5F-4F1F-B5A8A7C51412";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "40811C80-654B-C422-97D2-6B8774359F99";
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "12B37D30-9C44-648D-7C9D-E89C60A9C28F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.68092036247253418 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9C68586B-CB41-ECC5-6360-A4BBADAADBCB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E41DED96-BE47-B076-DB31-27916731DE6B";
createNode displayLayer -n "defaultLayer";
	rename -uid "03ACB1ED-3E4B-5D12-C19E-17A353440197";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "430C1AC0-0B48-88EA-3FE4-C384C5E4CA90";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CD1A7C47-2645-F97D-0C1B-DE80DA8145EC";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D7ABFE4B-4E46-02C2-9743-FCB75ECF3CFD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CCE35419-A44B-51E2-4A93-42919510DE06";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "51C26006-3B40-D93F-25FF-819D84DEEBF8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 728\n                -height 555\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 728\n            -height 555\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n"
		+ "                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 728\\n    -height 555\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 728\\n    -height 555\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E1498FB8-A448-9FB5-873A-4DA02F8F2CF3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "31B8EFF3-1042-283C-663E-0E9F34C844DC";
	setAttr ".r" 9.0951835876442075;
	setAttr ".h" 190.80735112536325;
	setAttr ".sa" 50;
	setAttr ".sh" 50;
	setAttr ".cuv" 3;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "356A9DD4-C54F-FA57-F158-159D41D893D8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "3CFC2AE1-F543-584C-542C-2C90C4AE69DB";
	setAttr ".uopa" yes;
	setAttr -s 2552 ".tk";
	setAttr ".tk[0:165]" -type "float3"  52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512 0 2.1316282e-14 52.99956512
		 0 2.1316282e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399 0 -1.0658141e-14 50.013496399
		 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877
		 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877
		 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877
		 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877
		 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877
		 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877
		 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 50.01348877 0 -1.0658141e-14 47.359478
		 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478
		 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478
		 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478
		 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478
		 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478
		 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.359478
		 0 -1.0658141e-14 47.359478 0 -1.0658141e-14 47.35948944 0 -1.0658141e-14 47.35948944
		 -2.3841858e-07 -1.0658141e-14 47.35948944 0 -1.0658141e-14 47.35948563 -1.1920929e-07
		 -1.0658141e-14 47.35948563 0 -1.0658141e-14 47.35948563 5.9604645e-08 -1.0658141e-14
		 47.35948563 1.1920929e-07 -1.0658141e-14 47.35948944 2.3841858e-07 -1.0658141e-14
		 47.35948944 0 -1.0658141e-14 47.35948563 -2.3841858e-07 -1.0658141e-14 47.35948944
		 0 -1.0658141e-14 47.35948944 2.3841858e-07 -1.0658141e-14 47.35948563 0 -1.0658141e-14
		 47.35948563 -5.9604645e-08 -1.0658141e-14 47.35948563 0 -1.0658141e-14 47.35948563
		 0 -1.0658141e-14 47.35948944 -1.1920929e-07 -1.0658141e-14 47.35948944 -4.7683716e-07
		 -1.0658141e-14 47.35948563 2.3841858e-07 -1.0658141e-14 47.35948563 0 -1.0658141e-14
		 47.35948563 -4.7683716e-07 -1.0658141e-14 47.35948563 2.3841858e-07 -1.0658141e-14
		 47.35948563 -2.3841858e-07 -1.0658141e-14 47.35948563 0 -1.0658141e-14 47.35948944
		 1.4901161e-08 -1.0658141e-14 47.35948944 0 -1.0658141e-14 47.35948563 1.1920929e-07
		 -1.0658141e-14 47.35948563 2.3841858e-07 -1.0658141e-14 47.35948563 -2.3841858e-07
		 -1.0658141e-14 47.35948563 0 -1.0658141e-14 45.12739563 -2.3841858e-07 -7.1054274e-15
		 45.12739563 4.7683716e-07 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563
		 0 -7.1054274e-15 45.12739563 1.4901161e-08 -7.1054274e-15 45.12739563 -5.9604645e-08
		 -7.1054274e-15 45.12739563 -1.1920929e-07 -7.1054274e-15 45.12739563 0 -7.1054274e-15
		 45.12739563 -2.3841858e-07 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563
		 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563
		 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15;
	setAttr ".tk[166:331]" 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15
		 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15
		 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15
		 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15
		 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15 45.12739563 0 -7.1054274e-15
		 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15
		 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15
		 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15
		 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15
		 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15
		 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15
		 45.127388 0 -7.1054274e-15 45.127388 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15
		 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15
		 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15
		 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15
		 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15
		 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15
		 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15 43.2429657 0 -7.1054274e-15
		 43.2429657 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15 43.24296188 0 -7.1054274e-15
		 43.24296188 0 -7.1054274e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15 41.79561234 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15;
	setAttr ".tk[332:497]" 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15 40.31768036 0 -3.5527137e-15
		 40.31768036 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15 38.7313652 0 -3.5527137e-15
		 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153
		 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0
		 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0
		 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153
		 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0
		 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0
		 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153
		 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0
		 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0 37.46250153 0 0
		 37.46250153 0 0 37.46250153 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975
		 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0
		 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0
		 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975
		 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0
		 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0
		 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975
		 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0
		 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0 36.15711975 0 0
		 36.15711975 0 0 36.15711975 0 0;
	setAttr ".tk[498:663]" 36.15711975 0 0 36.15711975 0 0 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15 35.12898254 0 3.5527137e-15
		 35.12898254 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15 34.3269577 0 3.5527137e-15
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14
		 33.6708107 0 1.0658141e-14 33.6708107 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14;
	setAttr ".tk[664:829]" 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14 32.91630173 0 1.0658141e-14
		 32.91630173 0 1.0658141e-14 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15 32.23482513 0 -7.1054274e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15
		 32.40526199 0 -5.3290705e-15 32.40526199 0 -5.3290705e-15 32.73641586 0 0 32.73641586
		 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0
		 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0
		 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586
		 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0
		 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0
		 32.73641586 0 0 32.73641586 0 0;
	setAttr ".tk[830:995]" 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586
		 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0
		 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0
		 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586 0 0 32.73641586
		 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0
		 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0
		 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885
		 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0
		 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0
		 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885
		 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0
		 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0
		 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885 0 0 33.45209885
		 0 0 33.45209885 0 0 33.45209885 0 0 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15 34.67425537 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15;
	setAttr ".tk[996:1161]" 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15
		 36.71713638 0 5.3290705e-15 36.71713638 0 5.3290705e-15 38.54735947 0 0 38.54735947
		 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0
		 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0
		 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947
		 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0
		 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0
		 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947
		 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0
		 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0
		 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947 0 0 38.54735947
		 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0
		 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0
		 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768
		 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0
		 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0
		 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768
		 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0
		 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0
		 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768 0 0 40.14365768
		 0 0 40.14365768 0 0 40.14365768 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0
		 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0
		 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788
		 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0
		 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0
		 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788
		 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0
		 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0
		 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788
		 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 40.92329788 0 0 41.29880142 0
		 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0
		 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142
		 0 0;
	setAttr ".tk[1162:1327]" 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142
		 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0
		 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0
		 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142
		 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0
		 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0
		 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142 0 0 41.29880142
		 0 0 41.29880142 0 0 41.29880142 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0
		 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0
		 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013
		 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0
		 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0
		 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013
		 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0
		 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0
		 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013
		 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.61948013 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 -2.5410988e-21
		 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682 0 0 40.037967682
		 0 -2.5410988e-21 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0
		 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955
		 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0
		 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0
		 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955
		 0 0 38.86553955 0 0 38.86553955 0 0;
	setAttr ".tk[1328:1493]" 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955
		 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0
		 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0
		 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955 0 0 38.86553955
		 0 0 38.86553955 0 0 38.86553955 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0
		 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0
		 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357
		 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0
		 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0
		 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357
		 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0
		 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0
		 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357
		 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 36.99947357 0 0 35.10600662 0
		 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0
		 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662
		 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0
		 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0
		 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662
		 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0
		 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0
		 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662
		 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0 0 35.10600662 0
		 0 35.10600662 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0
		 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497
		 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0
		 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0
		 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497
		 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0
		 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0
		 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497
		 0 0 32.95275497 0 0 32.95275497 0 0;
	setAttr ".tk[1494:1659]" 32.95275497 0 0 32.95275497 0 0 32.95275497 0 0 32.95275497
		 0 0 32.95275497 0 0 32.95275497 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0
		 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0
		 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292
		 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0
		 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0
		 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292
		 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0
		 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0
		 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292
		 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 30.75566292 0 0 27.81419182 0
		 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 27.81419182
		 0 -3.5527137e-15 27.81419182 0 -3.5527137e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997 0 -1.7763568e-15 25.17518997
		 0 -1.7763568e-15 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0
		 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102
		 0 0;
	setAttr ".tk[1660:1825]" 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102
		 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0
		 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0
		 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102
		 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0
		 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0
		 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102
		 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 22.67842102 0 0 20.23238373 0
		 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0
		 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373
		 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0
		 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0
		 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373
		 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0
		 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0
		 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373
		 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0 0 20.23238373 0
		 0 20.23238373 0 0 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298
		 0 1.7763568e-15 17.47972298 0 1.7763568e-15 17.47972298 0 1.7763568e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578
		 0 3.5527137e-15 15.28094578 0 3.5527137e-15;
	setAttr ".tk[1826:1991]" 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15 15.28094578 0 3.5527137e-15
		 15.28094578 0 3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15 12.64170647 0 -3.5527137e-15
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14
		 10.29385948 0 -1.0658141e-14 10.29385948 0 -1.0658141e-14 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15;
	setAttr ".tk[1992:2157]" 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15 7.90735769 0 -3.5527137e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15
		 5.99783468 0 -1.7763568e-15 5.99783468 0 -1.7763568e-15 4.017661095 0 0 4.017661095
		 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0
		 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0
		 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095
		 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0
		 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0
		 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095
		 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0
		 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0
		 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095 0 0 4.017661095
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794 0 0 1.54342794
		 0 0 1.54342794 0 0 1.54342794 0 0 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15;
	setAttr ".tk[2158:2323]" -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15 -1.84118795 0 3.5527137e-15
		 -1.84118795 0 3.5527137e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15 -5.72602224 0 5.3290705e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15
		 -9.69203568 0 7.1054274e-15 -9.69203568 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15;
	setAttr ".tk[2324:2489]" -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15 -13.41352081 0 7.1054274e-15
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14
		 -17.28437233 0 1.0658141e-14 -17.28437233 0 1.0658141e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14 -20.33813286 0 3.1974423e-14
		 -20.33813286 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14;
	setAttr ".tk[2490:2551]" -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14
		 -22.42499924 0 3.1974423e-14 -22.42499924 0 3.1974423e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14 -23.97039986 0 -2.8421709e-14
		 -23.97039986 0 -2.8421709e-14 56.93608856 0 -6.9730175e-15 -15.83939552 0 6.9730175e-15;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySmoothFace1.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySmoothFace1.ip";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of computerPart5.ma
