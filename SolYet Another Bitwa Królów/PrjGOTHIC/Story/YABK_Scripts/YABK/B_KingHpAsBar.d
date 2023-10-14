instance StaminaBar(GothicBar) {
    x = 720;
    y = 880;
    backTex = "Bar_Back.tga";
    barTex = "Bar_Misc.tga";
};

var int StamBar;

func void StaminaBarLoop() {
    if(!Hlp_IsValidHandle(StamBar)) {
        StamBar = Bar_Create(StaminaBar);
    };
    Bar_Hide (StamBar);
};
var int StaminaVariable;
var int StaminsMax;
	Bar_SetValue	(StamBar, StaminaVariable);
	Bar_SetMax	(StamBar, StaminaMax);