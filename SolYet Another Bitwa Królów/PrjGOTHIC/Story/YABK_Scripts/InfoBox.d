const int InfoBox_PosX				= 200; //pozycja X (0-8191)
const int InfoBox_PosY				= 5000; //pozycja Y (0-8191)
const int InfoBox_SpaceBetweenBoxes		= 30; //odstęp między oknami (0-8191)
const int InfoBox_DurationMS			= 5000; //czas w milisekundach po jakim wiadomość ma zacząć zanikać 
const int InfoBox_FadeInTimeMS			= 500; //czas w milisekundach pojawiania się wiadomości (przejście poziomu kanału alfa z 0 do 255)
const int InfoBox_FadeOutTimeMS			= 1000; //czas w milisekundach zanikania wiadomości 
const int InfoBox_MoveXTimeMS			= 500; //czas w milisekundach jaki ma zająć przesuwanie się okna w lewo do pozycji ustalonej w InfoBox_PosX
const int InfoBox_MoveYTimeMS			= 400; //czas w milisekundach jaki ma zająć przesuwanie się okna w górę do pozycji ustalonej w InfoBox_PosY
const string InfoBox_DefaultTexture		= "InfoBox.tga"; //domyślna tekstura

class CInfoBox {
    var int view;
    var int a8_duration;
    var int a8_movementX;
    var int a8_movementY;
    var int a8_alpha;
    var int bFadeOut;
    var int posY;
};

instance InfoBox@(CInfoBox);
var int InfoBox_CurrentSize;

func void InfoBox_Delete(var int hndl) {
    var CInfoBox InfoBox; InfoBox = get(hndl);
    View_Delete(InfoBox.view);
    delete(InfoBox.a8_duration);
    delete(InfoBox.a8_movementX);
    delete(InfoBox.a8_movementY);
    delete(InfoBox.a8_alpha);
    delete(hndl);
};

func void InfoBox_DeleteAll() {
    foreachHndl(InfoBox@, InfoBox_Delete);
};

func void InfoBox_A8PositionX(var int hndl, var int position) {
    var CInfoBox InfoBox; InfoBox = get(hndl);
    View_MoveTo(InfoBox.view, position, -1);
};

func void InfoBox_A8PositionY(var int hndl, var int position) {
    var CInfoBox InfoBox; InfoBox = get(hndl);
    var zCView view; view = View_Get(InfoBox.view);
    View_MoveTo(InfoBox.view, -1, position);

    if (view.vposy + view.vsizey <= 0) {
        InfoBox_Delete(hndl);
    };
};

func void InfoBox_A8Alpha(var int hndl, var int alpha) {
    var CInfoBox InfoBox; InfoBox = get(hndl);
    var zCView view; view = View_Get(InfoBox.view);
    view.alpha = alpha;
    view.fontColor = ChangeAlpha(view.fontColor, alpha);	

    if (InfoBox.bFadeOut && !view.alpha) {
        InfoBox_Delete(hndl);
    };
};

func void InfoBox_A8Duration(var int hndl, var int duration) {
    var CInfoBox InfoBox; InfoBox = get(hndl);

    if (duration == InfoBox_DurationMS) {
        InfoBox.bFadeOut = true;
        Anim8(InfoBox.a8_alpha, 0, InfoBox_FadeOutTimeMS, A8_Constant);
    };
};

func void InfoBox_MoveUp(var int hndl) {
    var CInfoBox InfoBox; InfoBox = get(hndl);

    if (!Hlp_IsValidHandle(InfoBox.a8_movementY)) {
        InfoBox.a8_movementY = Anim8_NewExt(1, InfoBox_A8PositionY, hndl, false);
    };

    Anim8_RemoveIfEmpty(InfoBox.a8_movementY, true);
    var zCView view; view = View_Get(InfoBox.view);
    Anim8(InfoBox.a8_movementY, view.vposy, 0, A8_Constant);
    InfoBox.posY -= InfoBox_CurrentSize + InfoBox_SpaceBetweenBoxes;
    Anim8q(InfoBox.a8_movementY, InfoBox.posY, InfoBox_MoveYTimeMS, A8_SlowEnd);
};

func int InfoBox_GetLongestLineWidth(var string text, var string fontName, var int lines) {
    var int i; var string longest; longest = "";

    repeat(i, lines);
        var string str; str = STR_Split(text, "~", i);

        if (Print_GetStringWidth(str, fontName) > Print_GetStringWidth(longest, fontName)) {
            longest = str;
        };
    end;

    return Print_GetStringWidth(longest, fontName);
};

func int InfoBox_CenterTextLine(var int pixel, var int pixelSize) {
    return (1<<13>>1) - (Print_ToVirtual(pixel, pixelSize) / 2);
};

func int InfoBox_GetLongestLinePositionX(var zCView view) {
    var zCList list; list = _^(view.textLines_next);
	
    while(list.next);
        list = _^(list.next);
        var zCViewText t; t = _^(list.data);
        var int x;

        if (t.posx < x || !x) {
            x = t.posx;
        };
    end;

    return x;
};

func void InfoBox_AlignTextLines(var zCView view, var string fontName, var int bCenterLines) {
    var zCList list; list = _^(view.textLines_next);
	
    while(list.next);
        list = _^(list.next);
        var zCViewText t; t = _^(list.data);

        if (bCenterLines) {
            var int width; width = Print_GetStringWidth(t.text, fontName);
            t.posx = InfoBox_CenterTextLine(width, view.psizex);
        }
        else {
	    t.posx = InfoBox_GetLongestLinePositionX(view);
        };
		
    end;
};

func void InfoBox_Create(var string text, var int bCenterLines, var string fontName, var int fontColor, var string textureName) {
    foreachHndl(InfoBox@, InfoBox_MoveUp);

    var int lines; lines = STR_SplitCount(text, "~");
    var int stringWidth; stringWidth = InfoBox_GetLongestLineWidth(text, fontName, lines);
    var int fontHeight; fontHeight = Print_GetFontHeight(fontName);
    var int x1; x1 = Print_ToPixel(InfoBox_PosX, PS_X);
    var int y1; y1 = Print_ToPixel(InfoBox_PosY, PS_Y);
    var int x2; x2 = x1 + stringWidth + (fontHeight * 2);
    var int y2; y2 = y1 + (fontHeight * 2 * lines);

    var int hndl; hndl = new(InfoBox@);
    var CInfoBox InfoBox; InfoBox = get(hndl);
    InfoBox.view = View_CreatePxl(x1, y1, x2, y2);
    View_SetTexture(InfoBox.view, textureName);
    var zCView view; view = View_Get(InfoBox.view);
    InfoBox.posY = view.vposy;
    InfoBox_CurrentSize = view.vsizey;

    var string firstLine; firstLine = STR_Split(text, "~", 0);
    var int width; width = Print_GetStringWidth(firstLine, fontName);
    var int xPos; xPos = InfoBox_CenterTextLine(width, view.psizex);
    var int posY; posY = InfoBox_CenterTextLine(fontHeight * lines, view.psizey);	
    View_AddText(InfoBox.view, xPos, posY, text, fontName);
    InfoBox_AlignTextLines(view, fontName, bCenterLines);
	
    view.fontColor = fontColor;
    View_MoveTo(InfoBox.view, InfoBox_PosX + view.vsizex, -1);
    View_Open(InfoBox.view);
	
    InfoBox.a8_alpha = Anim8_NewExt(1, InfoBox_A8Alpha, hndl, false);
    Anim8q(InfoBox.a8_alpha, 255, InfoBox_FadeInTimeMS, A8_Constant);

    InfoBox.a8_movementX = Anim8_NewExt(1, InfoBox_A8PositionX, hndl, false);
    Anim8_RemoveIfEmpty(InfoBox.a8_movementX, true);
    Anim8(InfoBox.a8_movementX, view.vposx, 0, A8_Constant);
    Anim8q(InfoBox.a8_movementX, InfoBox_PosX, InfoBox_MoveXTimeMS, A8_SlowEnd);

    InfoBox.a8_duration = Anim8_NewExt(1, InfoBox_A8Duration, hndl, false);
    Anim8_RemoveIfEmpty(InfoBox.a8_duration, true);
    Anim8q(InfoBox.a8_duration, InfoBox_DurationMS, InfoBox_DurationMS, A8_Constant);
};

func void InfoBox(var string text, var int fontColor) {
    InfoBox_Create(text, true, FONT_ScreenSmall, fontColor, InfoBox_DefaultTexture);
};

func void AI_InfoBox(var string text, var int fontColor) {
    AI_Function_SI(hero, InfoBox, text, fontColor);
};