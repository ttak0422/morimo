(local c (require :morimo.colors))
{:DapUINormal {:link :Normal}
 :DapUIVariable {:link :Normal}
 :DapUIScope {:fg c.lightCyan}
 :DapUIType {:fg c.violet}
 :DapUIValue {:link :Normal}
 :DapUIModifiedValue {:fg c.lightCyan :bold true}
 :DapUIDecoration {:fg c.lightCyan}
 :DapUIThread {:fg c.lightYellow}
 :DapUIStoppedThread {:fg c.lightCyan}
 :DapUIFrameName {:link :Normal}
 :DapUISource {:fg c.violet}
 :DapUILineNumber {:fg c.lightCyan}
 :DapUIFloatNormal {:link :NormalFloat}
 :DapUIFloatBorder {:fg c.lightCyan}
 :DapUIWatchesEmpty {:fg c.lightRed}
 :DapUIWatchesValue {:fg c.lightYellow}
 :DapUIWatchesError {:fg c.lightRed}
 :DapUIBreakpointsPath {:fg c.lightCyan}
 :DapUIBreakpointsInfo {:fg c.lightYellow}
 :DapUIBreakpointsCurrentLine {:fg c.lightYellow :bold true}
 :DapUIBreakpointsLine {:link :DapUILineNumber}
 :DapUIBreakpointsDisabledLine {:fg c.grey1}
 :DapUICurrentFrameName {:link :DapUIBreakpointsCurrentLine}
 :DapUIStepOver {:fg c.lightCyan}
 :DapUIStepInto {:fg c.lightCyan}
 :DapUIStepBack {:fg c.lightCyan}
 :DapUIStepOut {:fg c.lightCyan}
 :DapUIStop {:fg c.lightRed}
 :DapUIPlayPause {:fg c.lightYellow}
 :DapUIRestart {:fg c.lightYellow}
 :DapUIUnavailable {:fg c.grey1}
 :DapUIWinSelect {:fg c.lightCyan :bold true}
 :DapUIEndofBuffer {:link :EndofBuffer}}
