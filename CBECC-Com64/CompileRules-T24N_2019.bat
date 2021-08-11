if not exist "Data\Rulesets" mkdir "Data\Rulesets"
if not exist "Data\Rulesets\T24N_2019" mkdir "Data\Rulesets\T24N_2019"
if exist BEMCompiler19c.exe BEMCompiler19c.exe --sharedPath1="../RulesetDev/Rulesets/shared/" --bemBaseTxt="../RulesetDev/Rulesets/BEMBase.txt" --bemEnumsTxt="../RulesetDev/Rulesets/T24N/T24N BEMEnums.txt" --bemBaseBin="Data/Rulesets/T24N_2019/T24N_2019 BEMBase.bin" --rulesTxt="../RulesetDev/Rulesets/T24N/Rules/T24N_2019.txt" --rulesBin="Data/Rulesets/T24N_2019.bin" --rulesLog="_T24N-2019 Rules Log.out" --compileDM --compileRules
echo OFF
echo BEMCompiler19c.exe returned (%ERRORLEVEL%) for T24N_2019
if %ERRORLEVEL%==0 goto :copyfiles
goto :error
:copyfiles
copy "..\RulesetDev\Rulesets\T24N\T24N Screens.txt"  "..\CBECC-Com64\Data\Rulesets\T24N_2019\T24N_2019 Screens.txt"
copy "..\RulesetDev\Rulesets\T24N\T24N ToolTips.txt" "..\CBECC-Com64\Data\Rulesets\T24N_2019\T24N_2019 ToolTips.txt"
copy "..\RulesetDev\Rulesets\T24N\*.jpg" "..\CBECC-Com64\Data\Rulesets\T24N_2019\*.*"
copy "..\RulesetDev\Rulesets\T24N\RTF\*.*" "..\CBECC-Com64\Data\Rulesets\T24N_2019\RTF\*.*"
rem copy "..\RulesetDev\Rulesets\CEC 2013 Nonres\CEC 2013 NonRes Defaults.dbd" "..\CBECC-Com\Data\Rulesets\T24N_2019\T24N_2019 Defaults.dbd"
copy "..\RulesetDev\Rulesets\T24N\DHWDU2.txt" "..\CBECC-Com64\CSE\*.*"
goto :done
:error
echo -
echo ----------------------------------
echo --- Errors occurred.
echo --- For more information, review:
echo ---   _T24N-2019 Rules Log.out
echo ----------------------------------
echo -
  pause
:done
