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
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "bjt_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "var_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_res_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "m6_res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "spirind_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "diffind_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "3tdiffind_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_var_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_mim_spe.ckt") )
		)
	     )
	  ) ; ** when asiTool **
	  when( member("UltraSim" tools)
	     asiSetEnvOptionVal(
		asiGetTool('UltraSim) "modelFiles"
		list(
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "bjt_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "var_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_res_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "m6_res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "mim_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "spirind_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "diffind_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "3tdiffind_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_var_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_mim_spe.ckt") )

		)
	     )
	  ) ; ** when asiTool **
	  when( member("ams" tools)
	     asiSetEnvOptionVal(
		asiGetTool('ams) "modelFiles"
		list(
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "bjt_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "mim_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_spe.lib") "var_tt")
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_res_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "m6_res_tt")
		   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "mim_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "spirind_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "diffind_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_spe.lib") "3tdiffind_tt")
                   list(strcat( libPath "/../models/spectre/ms018_rf_v1p9_var_spe.ckt") )
		   list(strcat( libPath "/../models/spectre/ms018_v1p9_mim_spe.ckt") )
		)
	     )
	  ) ; ** when asiTool **
	  when( member("hspiceD" tools)
	     asiSetEnvOptionVal(
		asiGetTool('hspiceD) "modelFiles"
		list(
		   list(strcat( libPath "/../models/hspice/ms018_v1p9.lib") "TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p9.lib") "BJT_TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p9.lib") "RES_TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p9.lib") "MIM_TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p9.lib") "VAR_TT")
		   list(strcat( libPath "/../models/hspice/ms018_v1p9_res.ckt") )
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9.lib") "TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9.lib") "RES_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9.lib") "M6_RES_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9.lib") "MIM_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9.lib") "SPIRIND_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9.lib") "DIFFIND_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9.lib") "3TDIFFIND_TT")
		   list(strcat( libPath "/../models/hspice/ms018_rf_v1p9_var.ckt") )
		)
	     )
	  ) ; ** when asiTool **
	)
     ) ; ** case libName **
  ) ; ** when isContextLoaded **
) ; ** let **
