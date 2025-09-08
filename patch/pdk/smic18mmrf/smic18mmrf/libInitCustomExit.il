let( ( libName libPath tools)
  
  libName = "smic18mmrf"
  printf("Loading libInitCustomExit.il for %s\n" libName)
  
  libPath = ddGetObjReadPath(ddGetObj(libName))
  
; setup spectre model files, sections
  when( isContextLoaded("schView")
     envSetVal("asimenv.startup" "simulator" 'string "spectre")
     tools = envGetAvailableTools()
     case( libName
	( "smic18mmrf"
	  when( member("spectre" tools)
	     asiSetEnvOptionVal(
		asiGetTool('spectre) "modelFiles"
		list(
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "bjt_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_res_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "m6_res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_diff_ind_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spri_ind_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_var_spe.ckt") )
		)
	     )
	  ) ; ** when asiTool **
	  when( member("UltraSim" tools)
	     asiSetEnvOptionVal(
		asiGetTool('UltraSim) "modelFiles"
		list(
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "bjt_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p7_res_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "m6_res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_diff_ind_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_spri_ind_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p6_var_spe.ckt") )
		)
	     )
	  ) ; ** when asiTool **
	  when( member("hspiceD" tools)
	     asiSetEnvOptionVal(
		asiGetTool('hspiceD) "modelFiles"
		list(
		   list(strcat( libPath "/../models/hspice/ms018_v1p7.lib") "TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p7.lib") "BJT_TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p7.lib") "RES_TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p7.lib") "MIM_TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p7_res.ckt") )
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p6.lib") "TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p6.lib") "RES_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p6.lib") "M6_RES_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p6.lib") "MIM_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p6_diff_ind.ckt") )
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p6_spri_ind.ckt") )
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p6_var.ckt") )
		)
	     )
	  ) ; ** when asiTool **
	)
     ) ; ** case libName **
  ) ; ** when isContextLoaded **
) ; ** let **