.pragma library

function getSystemNormalFont() {
    switch (Qt.platform.os) {
    case "windows":
        return "Microsoft Yahei"
    case "osx":
        return "PingFang SC"
    default:
        return ""
    }
}

function platformIsWindows() {
    var curOs = Qt.platform.os
    return curOs === "windows"
}

function getFilePrefix() {
    var curOs = Qt.platform.os
    if (curOs === "windows") {
        return "file:///"
    } else {
        return "file://"
    }
}

function getStyleValue(style, defaultStyle, strKey) {
    if (style === undefined || style[strKey] === undefined)
        return defaultStyle[strKey]
    else
        return style[strKey]
}

var FillDarkColor = "#101012"
var FillHightColor = "#1C1C1F"
var FillHoverColor = "#2E2E33"
var LayerSelectFillColor = "#232326"
var BorderColor = "#E5E7EB"
var BorderColorHight = "#E5E7EB"
var SplitlineColor = "#2E2E33"
// 大功能模块面板间的间隔
var SegmentationLineColor = "#050505"
var BlueText = "#4938FF"
var GrayHighlightText = "#8C8C8C"
var GrayText = "#595959"
var WhiteText = "#E6E6E6"
var BlackColor_1F1F21 = "#1F1F21"
var MaskColor =  Qt.rgba(5.0 / 255, 5.0 / 255, 5.0 / 255, 0.5)

var normalColor = "normalColor"
var hoverColor = "hoverColor"
var activeColor = "activeColor"
// 开关按钮样式
var ComSwitchStyle_Uncheck = {
    borderNormalColor: "#8C8C8C",
    borderHoverColor: "#E6E6E6",
    borderDisableColor: "#668C8C8C",
    backgroundNormalColor: "#1C1C1F",
    backgroundHoverColor: "#1C1C1F",
    backgroundDisableColor: "#661C1C1F",
    sliderNormalColor: "#8C8C8C",
    sliderHoverColor: "#E6E6E6",
    sliderDisableColor: "#668C8C8C"
}

var ComSwitchStyle_Check = {
    borderNormalColor: "#4938FF",
    borderHoverColor: "#E6E6E6",
    borderDisableColor: "#664938FF",
    backgroundNormalColor: "#4938FF",
    backgroundHoverColor: "#4938FF",
    backgroundDisableColor: "#664938FF",
    sliderNormalColor: "#E6E6E6",
    sliderHoverColor: "#E6E6E6",
    sliderDisableColor: "#66E6E6E6"
}

// 输入框样式
var ComInput_Normal = {
    paddingLeft: 8,
    paddingTop: 4,
    paddingRight: 8,
    paddingBottom: 4,
    spacing: 8
}

var ComComboBoxList_TextStyle = {
    "color": "#E6E6E6",
    "font_family": getSystemNormalFont(),
    "font_weight": "Normal",
    "textSize": 11
}

// 分段控制器样式
var ComSegStyle_TypeLevel1 = {
    normalColor: "#050505",
    hoverColor: "#1C1C1F",
    activeColor: "#101012"
}

var ComSegStyle_TypeLevel2 = {
    normalColor: "#1C1C1F",
    hoverColor: "#2E2E33",
    activeColor: "#2E2E33"
}

//文本样式
var ComText_Style = {
    "color": "#E6E6E6",
    "textSize": 12,
    "font_family": getSystemNormalFont(),
    "font_weight": "Normal"
}

var ComText_Style_Bold = {
    "color": "#E6E6E6",
    "textSize": 12,
    "font_family": getSystemNormalFont(),
    "font_weight": "Bold"
}

var ComText_Style_Disable = {
    "color": "#595959",
    "textSize": 12,
    "font_family": getSystemNormalFont(),
    "font_weight": "Normal"
}

var ComText_Style_SubTitle = {
    "color": "#8C8C8C",
    "textSize": 12,
    "font_family": getSystemNormalFont(),
    "font_weight": "Normal"
}

var ComText_Style_11 = {
    "color": "#E6E6E6",
    "textSize": 11,
    "font_family": getSystemNormalFont()
}

var ComText_Style_SubTitle_11 = {
    "color": "#8C8C8C",
    "textSize": 11,
    "font_family": getSystemNormalFont(),
    "font_weight": "Normal"
}

var ComText_Style_Disable_11 = {
    "color": "#595959",
    "textSize": 11,
    "font_family": getSystemNormalFont()
}

var ComText_Style_14 = {
    "color": "#E6E6E6",
    "textSize": 14,
    "font_family": getSystemNormalFont()
}

var ComText_Style_Disable_14 = {
    "color": "#595959",
    "textSize": 14,
    "font_family": getSystemNormalFont()
}

var ComText_Style_14_Bold = {
    "color": "#E6E6E6",
    "textSize": 14,
    "font_family": getSystemNormalFont(),
    "font_weight": "Bold"
}

var ComText_Style_Disable_14_Bold = {
    "color": "#595959",
    "textSize": 14,
    "font_family": getSystemNormalFont(),
    "font_weight": "Bold"
}

var ComText_Style_24 = {
    "color": "#E6E6E6",
    "textSize": 24,
    "font_family": getSystemNormalFont()
}

// 提示失败
var ComText_Style_HintFail = {
    "color": "#FF385D",
    "textSize": 12,
    "font_family": getSystemNormalFont()
}

// 提示成功
var ComText_Style_HintSuccess = {
    "color": "#31D45C",
    "textSize": 12,
    "font_family": getSystemNormalFont()
}

// 普通输入框
var ComTextInput_Style = {
    normalBorderColor: "#2E2E33",
    normalBackgroundColor: "transparent",
    hoveredBorderColor: "#2E2E33",
    hoveredBackgroundColor: "#1C1C1F",
    selectedBorderColor: "#8C8C8C",
    selectedBackgroundColor: "transparent",
    disableBorderColor: "#2E2E33",
    disableBackgroundColor: "#1C1C1F",
    disableTextColor: "#595959",
    selectedTextColor: "tranparent",
    selectionColor: "#e6e6e6",
    placeholderTextColor: "#8C8C8C",
    textColor: "#E6E6E6",
    textSize: 12
}

// ComProgressDescription
var ComProgressDescription_Style = {
    loadingTextColor: "#E6E6E6",
    errorTextColor: "#FF385D",
    successTextColor: "#31D45C",
    normalTextColor: "#E6E6E6",
    textSize: 12,
    fontWeight: "Bold"
}

var ComProgressStatus2_Style = {
    unknowTextColor: "#8C8C8C",
    errorTextColor: "#FF385D",
    successTextColor: "#8C8C8C",
    loadingTextColor: "#E6E6E6",
    textSize: 11
}

var ComErrorPrompt_Style =  {
    textSize: 11,
    textColor: "#FF385D"
}

var ComComboBoxSelectedList_Style = {
    backgroundColor: "#1C1C1F",
    itemBackgroundColor: "#232326",
    borderColor: "#2E2E33",
    hoverBorderColor: "#8C8C8C",
    textColor: "#8C8C8C",
    textSize: 11
}

var ComComboBoxMultList_Style = {
    selectedTextColor: "#E6E6E6",
    hoveredTextColor: "#E6E6E6",
    normalTextColor: "#959596",
    hoveredBackgroundColor: "#232326",
    selectedBackgroundColor: "#1C1C1F",
    backgroundColor: "#1C1C1F"
}

//按钮样式 蓝色按钮
var ComButton_Style_Blue_S = {
    "height": 20,
    "paddingLeft": 6,
    "paddingRight": 6,
    "borderRadius": 2,
    "color": "#4938FF",
    "pressColor": "#3F30D9",
    "hoverColor": "#5C4DFF",
    "disableColor": "#282080",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": Qt.rgba(1, 1, 1, 0.2),
    "textSize": 11,
    "textFontWeight": "Normal"
}

var ComButton_Style_Blue_M = {
    "height": 28,
    "paddingLeft": 14,
    "paddingRight": 14,
    "borderRadius": 4,
    "color": "#4938FF",
    "pressColor": "#3F30D9",
    "hoverColor": "#5C4DFF",
    "disableColor": "#282080",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": Qt.rgba(1, 1, 1, 0.2),
    "textSize": 12,
    "textFontWeight": "Normal"
}

var ComButton_Style_Blue_L = {
    "height": 30,
    "paddingLeft": 16,
    "paddingRight": 16,
    "borderRadius": 4,
    "color": "#4938FF",
    "pressColor": "#3F30D9",
    "hoverColor": "#5C4DFF",
    "disableColor": "#282080",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": Qt.rgba(1, 1, 1, 0.2),
    "textSize": 14,
    "textFontWeight": "Normal"
}

var ComButton_Style_Blue_XL = {
    "height": 34,
    "paddingLeft": 20,
    "paddingRight": 20,
    "borderRadius": 4,
    "color": "#4938FF",
    "pressColor": "#3F30D9",
    "hoverColor": "#5C4DFF",
    "disableColor": "#282080",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": Qt.rgba(1, 1, 1, 0.2),
    "textSize": 14,
    "textFontWeight": "Bold"
}

// 灰色按钮
var ComButton_Style_Gray_S = {
    "height": 20,
    "paddingLeft": 6,
    "paddingRight": 6,
    "borderRadius": 2,
    "color": "#2E2E33",
    "pressColor": "#232226",
    "hoverColor": "#45454D",
    "disableColor": "#232226",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "textSize": 11,
    "textFontWeight": "Normal"
}

var ComButton_Style_Gray_M = {
    "paddingLeft": 14,
    "paddingRight": 14,
    "borderRadius": 4,
    "height": 28,
    "color": "#2E2E33",
    "pressColor": "#232226",
    "hoverColor": "#45454D",
    "disableColor": "#232226",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "textSize": 12,
    "textFontWeight": "Normal"
}

var ComButton_Style_Gray_L = {
    "paddingLeft": 16,
    "paddingRight": 16,
    "borderRadius": 4,
    "height": 30,
    "color": "#2E2E33",
    "pressColor": "#232326",
    "hoverColor": "#45454C",
    "disableColor": "#232326",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "textSize": 14,
    "textFontWeight": "Normal"
}

var ComButton_Style_Gray_XL = {
    "paddingLeft": 20,
    "paddingRight": 20,
    "borderRadius": 4,
    "height": 34,
    "color": "#2E2E33",
    "pressColor": "#232226",
    "hoverColor": "#45454D",
    "disableColor": "#232226",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "textSize": 14,
    "textFontWeight": "Bold"
}

// 黑色按钮带边框
var ComButton_Style_Black_S = {
    "paddingLeft": 6,
    "paddingRight": 6,
    "borderRadius": 2,
    "height": 20,
    "color": "transparent",
    "pressColor": "transparent",
    "hoverColor": "transparent",
    "disableColor": "transparent",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "borderWidth": 1,
    "borderColor": "#8C8C8C",
    "borderPressColor": "#595959",
    "borderHoverColor": "#E6E6E6",
    "borderDisableColor": "#595959",
    "textSize": 11,
    "textFontWeight": "Normal"
}

var ComButton_Style_Black_M = {
    "paddingLeft": 14,
    "paddingRight": 14,
    "borderRadius": 4,
    "height": 28,
    "color": "transparent",
    "pressColor": "transparent",
    "hoverColor": "transparent",
    "disableColor": "transparent",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "borderWidth": 1,
    "borderColor": "#8C8C8C",
    "borderPressColor": "#595959",
    "borderHoverColor": "#E6E6E6",
    "borderDisableColor": "#595959",
    "textSize": 12,
    "textFontWeight": "Normal"
}

var ComButton_Style_Black_L = {
    "paddingLeft": 16,
    "paddingRight": 16,
    "borderRadius": 4,
    "height": 30,
    "color": "transparent",
    "pressColor": "transparent",
    "hoverColor": "transparent",
    "disableColor": "transparent",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "borderWidth": 1,
    "borderColor": "#8C8C8C",
    "borderPressColor": "#595959",
    "borderHoverColor": "#E6E6E6",
    "borderDisableColor": "#595959",
    "textSize": 14,
    "textFontWeight": "Normal"
}

var ComButton_Style_Black_XL = {
    "paddingLeft": 20,
    "paddingRight": 20,
    "borderRadius": 4,
    "height": 34,
    "color": "transparent",
    "pressColor": "transparent",
    "hoverColor": "transparent",
    "disableColor": "transparent",
    "textColor": "#E6E6E6",
    "textPressColor": "#E6E6E6",
    "textHoverColor": "#E6E6E6",
    "textDisableColor": "#595959",
    "borderWidth": 1,
    "borderColor": "#8C8C8C",
    "borderPressColor": "#595959",
    "borderHoverColor": "#E6E6E6",
    "borderDisableColor": "#595959",
    "textSize": 14,
    "textFontWeight": "Bold"
}

var ComButton_Style_Text_Blue_S = {
    "borderRadius": 0,
    "color": "transparent",
    "pressColor": "transparent",
    "hoverColor": "transparent",
    "disableColor": "transparent",
    "textColor": "#6052FF",
    "textPressColor": "#6052FF",
    "textHoverColor": "#7366FF",
    "textDisableColor": "#3527CC",
    "borderWidth": 0,
    "textSize": 11,
    "textFontWeight": "Normal"
}

var ComButton_Style_Text_Blue_M = {
    "borderRadius": 0,
    "color": "transparent",
    "pressColor": "transparent",
    "hoverColor": "transparent",
    "disableColor": "transparent",
    "textColor": "#6052FF",
    "textPressColor": "#6052FF",
    "textHoverColor": "#7366FF",
    "textDisableColor": "#3527CC",
    "borderWidth": 0,
    "textSize": 12,
    "textFontWeight": "Normal"
}




var Com_Number_Input_Style = {
    "textColor": "#6B7280",
    "selectionColor": "#E2E2E2",
    "selectedTextColor": "#060606",
    "textDisableColor": "#4F4F4F",
    "charLengthColor": "#8C8C8C",
    "charSizeOverMaxColor" : "#FF385D",
    "backgroundColor": "#1C1C1F",
    "titleTextColor": "#8a8a8a",
    "hoverBorderColor": "#E5E7EB",
    "focusBorderColor": Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1.0),
}


var Com_Mutiple_Input_Style = {
    "hoverBorderColor": "#E5E7EB",
    "focusBorderColor": Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1.0),
    "textColor": "black",
    "selectionColor": "#E2E2E2",
    "selectedTextColor": "#060606",
    "textDisableColor": "#4F4F4F",
    "prefixTextColor": "#595959",
    "suffixTextColor": "#8C8C8C",
    "charSizeOverMaxColor" : "#FF385D",
    "backgroundColor": "white"
}


