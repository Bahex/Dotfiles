" Vim syntax file
" Language: ArnoldC
" Maintainer: David Croal
" Latest Revision: June 20 2014
" A note about colour schemes and syntax groups - You will get more out of this if your colour scheme makes a disctintion among various syntax preferred and minor groups.
" Statement is a preferred syntax group. 
" The following are minor groups within the Statement group: Conditional, Repeat, Label, Operator, Keyword and Exception. 
" In my copy of MacVim the colour scheme 'elflord' makes this distiction but 'murphy' does not. 

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=@

syntax match ArnoldCConstant /I LIED/
syntax match ArnoldCConstant /NO PROBLEMO/
highlight link ArnoldCConstant Constant

syntax keyword ArnoldCRepeat CHILL
syntax match ArnoldCRepeat /STICK AROUND/
highlight link ArnoldCRepeat Repeat

syntax match ArnoldCStatement /DO IT NOW/
syntax match ArnoldCStatement /ENOUGH TALK/
syntax match ArnoldCStatement /GIVE THESE PEOPLE AIR/
syntax match ArnoldCStatement /GET YOUR ASS TO MARS/
syntax match ArnoldCStatement /GET TO THE CHOPPER/
syntax match ArnoldCStatement /HASTA LA VISTA, BABY/
syntax match ArnoldCStatement /HEY CHRISTMAS TREE/
syntax match ArnoldCStatement /HERE IS MY INVITATION/
syntax match ArnoldCStatement /I WANT TO ASK YOU A BUNCH OF QUESTIONS AND I WANT TO HAVE THEM ANSWERED IMMEDIATELY/
syntax match ArnoldCStatement /I NEED YOUR CLOTHES YOUR BOOTS AND YOUR MOTORCYCLE/
syntax match ArnoldCStatement /I'LL BE BACK/
syntax match ArnoldCStatement /IT'S SHOWTIME/
syntax match ArnoldCStatement /KNOCK KNOCK/
syntax match ArnoldCStatement /LET HIM GO/
syntax match ArnoldCStatement /LISTEN TO ME VERY CAREFULLY/
syntax match ArnoldCStatement /TALK TO THE HAND/
syntax match ArnoldCStatement /YOU HAVE BEEN TERMINATED/
syntax match ArnoldCStatement /YOU SET US UP/
highlight link ArnoldCStatement Statement

syntax region ArnoldCString start=/"/ skip=/\\"/ end=/"/
highlight link ArnoldCString String

syntax match ArnoldCConditional /BECAUSE I'M GOING TO SAY PLEASE/
syntax keyword ArnoldCConditional BULLSHIT
syntax match ArnoldCConditional /YOU HAVE NO RESPECT FOR LOGIC/
highlight link ArnoldCConditional Conditional

syntax match ArnoldCOperator /CONSIDER THAT A DIVORCE/
syntax match ArnoldCOperator /GET UP/
syntax match ArnoldCOperator /GET DOWN/
syntax match ArnoldCOperator /HE HAD TO SPLIT/
syntax match ArnoldCOperator /LET OFF SOME STEAM BENNET/
syntax match ArnoldCOperator /YOU'RE FIRED/
syntax match ArnoldCOperator /YOU ARE NOT YOU YOU ARE ME/
highlight link ArnoldCOperator Operator
