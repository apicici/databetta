require("ffi").cdef[[
typedef struct ImDrawChannel ImDrawChannel;
typedef struct ImDrawCmd ImDrawCmd;
typedef struct ImDrawData ImDrawData;
typedef struct ImDrawList ImDrawList;
typedef struct ImDrawListSharedData ImDrawListSharedData;
typedef struct ImDrawListSplitter ImDrawListSplitter;
typedef struct ImDrawVert ImDrawVert;
typedef struct ImFont ImFont;
typedef struct ImFontAtlas ImFontAtlas;
typedef struct ImFontBuilderIO ImFontBuilderIO;
typedef struct ImFontConfig ImFontConfig;
typedef struct ImFontGlyph ImFontGlyph;
typedef struct ImFontGlyphRangesBuilder ImFontGlyphRangesBuilder;
typedef struct ImColor ImColor;
typedef struct ImGuiContext ImGuiContext;
typedef struct ImGuiIO ImGuiIO;
typedef struct ImGuiInputTextCallbackData ImGuiInputTextCallbackData;
typedef struct ImGuiKeyData ImGuiKeyData;
typedef struct ImGuiListClipper ImGuiListClipper;
typedef struct ImGuiOnceUponAFrame ImGuiOnceUponAFrame;
typedef struct ImGuiPayload ImGuiPayload;
typedef struct ImGuiPlatformIO ImGuiPlatformIO;
typedef struct ImGuiPlatformMonitor ImGuiPlatformMonitor;
typedef struct ImGuiPlatformImeData ImGuiPlatformImeData;
typedef struct ImGuiSizeCallbackData ImGuiSizeCallbackData;
typedef struct ImGuiStorage ImGuiStorage;
typedef struct ImGuiStyle ImGuiStyle;
typedef struct ImGuiTableSortSpecs ImGuiTableSortSpecs;
typedef struct ImGuiTableColumnSortSpecs ImGuiTableColumnSortSpecs;
typedef struct ImGuiTextBuffer ImGuiTextBuffer;
typedef struct ImGuiTextFilter ImGuiTextFilter;
typedef struct ImGuiViewport ImGuiViewport;
typedef struct ImGuiWindowClass ImGuiWindowClass;
typedef struct ImBitVector ImBitVector;
typedef struct ImRect ImRect;
typedef struct ImDrawDataBuilder ImDrawDataBuilder;
typedef struct ImGuiColorMod ImGuiColorMod;
typedef struct ImGuiContextHook ImGuiContextHook;
typedef struct ImGuiDataTypeInfo ImGuiDataTypeInfo;
typedef struct ImGuiDockContext ImGuiDockContext;
typedef struct ImGuiDockRequest ImGuiDockRequest;
typedef struct ImGuiDockNode ImGuiDockNode;
typedef struct ImGuiDockNodeSettings ImGuiDockNodeSettings;
typedef struct ImGuiGroupData ImGuiGroupData;
typedef struct ImGuiInputTextState ImGuiInputTextState;
typedef struct ImGuiLastItemData ImGuiLastItemData;
typedef struct ImGuiMenuColumns ImGuiMenuColumns;
typedef struct ImGuiNavItemData ImGuiNavItemData;
typedef struct ImGuiMetricsConfig ImGuiMetricsConfig;
typedef struct ImGuiNextWindowData ImGuiNextWindowData;
typedef struct ImGuiNextItemData ImGuiNextItemData;
typedef struct ImGuiOldColumnData ImGuiOldColumnData;
typedef struct ImGuiOldColumns ImGuiOldColumns;
typedef struct ImGuiPopupData ImGuiPopupData;
typedef struct ImGuiSettingsHandler ImGuiSettingsHandler;
typedef struct ImGuiStackSizes ImGuiStackSizes;
typedef struct ImGuiStyleMod ImGuiStyleMod;
typedef struct ImGuiTabBar ImGuiTabBar;
typedef struct ImGuiTabItem ImGuiTabItem;
typedef struct ImGuiTable ImGuiTable;
typedef struct ImGuiTableColumn ImGuiTableColumn;
typedef struct ImGuiTableTempData ImGuiTableTempData;
typedef struct ImGuiTableSettings ImGuiTableSettings;
typedef struct ImGuiTableColumnsSettings ImGuiTableColumnsSettings;
typedef struct ImGuiWindow ImGuiWindow;
typedef struct ImGuiWindowTempData ImGuiWindowTempData;
typedef struct ImGuiWindowSettings ImGuiWindowSettings;
typedef struct ImVector_const_charPtr {int Size;int Capacity;const char** Data;} ImVector_const_charPtr;
struct ImDrawChannel;
struct ImDrawCmd;
struct ImDrawData;
struct ImDrawList;
struct ImDrawListSharedData;
struct ImDrawListSplitter;
struct ImDrawVert;
struct ImFont;
struct ImFontAtlas;
struct ImFontBuilderIO;
struct ImFontConfig;
struct ImFontGlyph;
struct ImFontGlyphRangesBuilder;
struct ImColor;
struct ImGuiContext;
struct ImGuiIO;
struct ImGuiInputTextCallbackData;
struct ImGuiKeyData;
struct ImGuiListClipper;
struct ImGuiOnceUponAFrame;
struct ImGuiPayload;
struct ImGuiPlatformIO;
struct ImGuiPlatformMonitor;
struct ImGuiPlatformImeData;
struct ImGuiSizeCallbackData;
struct ImGuiStorage;
struct ImGuiStyle;
struct ImGuiTableSortSpecs;
struct ImGuiTableColumnSortSpecs;
struct ImGuiTextBuffer;
struct ImGuiTextFilter;
struct ImGuiViewport;
struct ImGuiWindowClass;
typedef int ImGuiCol;
typedef int ImGuiCond;
typedef int ImGuiDataType;
typedef int ImGuiDir;
typedef int ImGuiKey;
typedef int ImGuiNavInput;
typedef int ImGuiMouseButton;
typedef int ImGuiMouseCursor;
typedef int ImGuiSortDirection;
typedef int ImGuiStyleVar;
typedef int ImGuiTableBgTarget;
typedef int ImDrawFlags;
typedef int ImDrawListFlags;
typedef int ImFontAtlasFlags;
typedef int ImGuiBackendFlags;
typedef int ImGuiButtonFlags;
typedef int ImGuiColorEditFlags;
typedef int ImGuiConfigFlags;
typedef int ImGuiComboFlags;
typedef int ImGuiDockNodeFlags;
typedef int ImGuiDragDropFlags;
typedef int ImGuiFocusedFlags;
typedef int ImGuiHoveredFlags;
typedef int ImGuiInputTextFlags;
typedef int ImGuiKeyModFlags;
typedef int ImGuiPopupFlags;
typedef int ImGuiSelectableFlags;
typedef int ImGuiSliderFlags;
typedef int ImGuiTabBarFlags;
typedef int ImGuiTabItemFlags;
typedef int ImGuiTableFlags;
typedef int ImGuiTableColumnFlags;
typedef int ImGuiTableRowFlags;
typedef int ImGuiTreeNodeFlags;
typedef int ImGuiViewportFlags;
typedef int ImGuiWindowFlags;
typedef void* ImTextureID;
typedef unsigned short ImDrawIdx;
typedef unsigned int ImGuiID;
typedef signed char ImS8;
typedef unsigned char ImU8;
typedef signed short ImS16;
typedef unsigned short ImU16;
typedef signed int ImS32;
typedef unsigned int ImU32;
typedef signed long long ImS64;
typedef unsigned long long ImU64;
typedef unsigned short ImWchar16;
typedef unsigned int ImWchar32;
typedef ImWchar16 ImWchar;
typedef int (*ImGuiInputTextCallback)(ImGuiInputTextCallbackData* data);
typedef void (*ImGuiSizeCallback)(ImGuiSizeCallbackData* data);
typedef void* (*ImGuiMemAllocFunc)(size_t sz, void* user_data);
typedef void (*ImGuiMemFreeFunc)(void* ptr, void* user_data);
typedef struct ImVec2 ImVec2;
struct ImVec2
{
    float x, y;
};
typedef struct ImVec4 ImVec4;
struct ImVec4
{
    float x, y, z, w;
};
typedef enum {
    ImGuiWindowFlags_None = 0,
    ImGuiWindowFlags_NoTitleBar = 1 << 0,
    ImGuiWindowFlags_NoResize = 1 << 1,
    ImGuiWindowFlags_NoMove = 1 << 2,
    ImGuiWindowFlags_NoScrollbar = 1 << 3,
    ImGuiWindowFlags_NoScrollWithMouse = 1 << 4,
    ImGuiWindowFlags_NoCollapse = 1 << 5,
    ImGuiWindowFlags_AlwaysAutoResize = 1 << 6,
    ImGuiWindowFlags_NoBackground = 1 << 7,
    ImGuiWindowFlags_NoSavedSettings = 1 << 8,
    ImGuiWindowFlags_NoMouseInputs = 1 << 9,
    ImGuiWindowFlags_MenuBar = 1 << 10,
    ImGuiWindowFlags_HorizontalScrollbar = 1 << 11,
    ImGuiWindowFlags_NoFocusOnAppearing = 1 << 12,
    ImGuiWindowFlags_NoBringToFrontOnFocus = 1 << 13,
    ImGuiWindowFlags_AlwaysVerticalScrollbar= 1 << 14,
    ImGuiWindowFlags_AlwaysHorizontalScrollbar=1<< 15,
    ImGuiWindowFlags_AlwaysUseWindowPadding = 1 << 16,
    ImGuiWindowFlags_NoNavInputs = 1 << 18,
    ImGuiWindowFlags_NoNavFocus = 1 << 19,
    ImGuiWindowFlags_UnsavedDocument = 1 << 20,
    ImGuiWindowFlags_NoDocking = 1 << 21,
    ImGuiWindowFlags_NoNav = ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_NoDecoration = ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoCollapse,
    ImGuiWindowFlags_NoInputs = ImGuiWindowFlags_NoMouseInputs | ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_NavFlattened = 1 << 23,
    ImGuiWindowFlags_ChildWindow = 1 << 24,
    ImGuiWindowFlags_Tooltip = 1 << 25,
    ImGuiWindowFlags_Popup = 1 << 26,
    ImGuiWindowFlags_Modal = 1 << 27,
    ImGuiWindowFlags_ChildMenu = 1 << 28,
    ImGuiWindowFlags_DockNodeHost = 1 << 29
}ImGuiWindowFlags_;
typedef enum {
    ImGuiInputTextFlags_None = 0,
    ImGuiInputTextFlags_CharsDecimal = 1 << 0,
    ImGuiInputTextFlags_CharsHexadecimal = 1 << 1,
    ImGuiInputTextFlags_CharsUppercase = 1 << 2,
    ImGuiInputTextFlags_CharsNoBlank = 1 << 3,
    ImGuiInputTextFlags_AutoSelectAll = 1 << 4,
    ImGuiInputTextFlags_EnterReturnsTrue = 1 << 5,
    ImGuiInputTextFlags_CallbackCompletion = 1 << 6,
    ImGuiInputTextFlags_CallbackHistory = 1 << 7,
    ImGuiInputTextFlags_CallbackAlways = 1 << 8,
    ImGuiInputTextFlags_CallbackCharFilter = 1 << 9,
    ImGuiInputTextFlags_AllowTabInput = 1 << 10,
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 11,
    ImGuiInputTextFlags_NoHorizontalScroll = 1 << 12,
    ImGuiInputTextFlags_AlwaysOverwrite = 1 << 13,
    ImGuiInputTextFlags_ReadOnly = 1 << 14,
    ImGuiInputTextFlags_Password = 1 << 15,
    ImGuiInputTextFlags_NoUndoRedo = 1 << 16,
    ImGuiInputTextFlags_CharsScientific = 1 << 17,
    ImGuiInputTextFlags_CallbackResize = 1 << 18,
    ImGuiInputTextFlags_CallbackEdit = 1 << 19
}ImGuiInputTextFlags_;
typedef enum {
    ImGuiTreeNodeFlags_None = 0,
    ImGuiTreeNodeFlags_Selected = 1 << 0,
    ImGuiTreeNodeFlags_Framed = 1 << 1,
    ImGuiTreeNodeFlags_AllowItemOverlap = 1 << 2,
    ImGuiTreeNodeFlags_NoTreePushOnOpen = 1 << 3,
    ImGuiTreeNodeFlags_NoAutoOpenOnLog = 1 << 4,
    ImGuiTreeNodeFlags_DefaultOpen = 1 << 5,
    ImGuiTreeNodeFlags_OpenOnDoubleClick = 1 << 6,
    ImGuiTreeNodeFlags_OpenOnArrow = 1 << 7,
    ImGuiTreeNodeFlags_Leaf = 1 << 8,
    ImGuiTreeNodeFlags_Bullet = 1 << 9,
    ImGuiTreeNodeFlags_FramePadding = 1 << 10,
    ImGuiTreeNodeFlags_SpanAvailWidth = 1 << 11,
    ImGuiTreeNodeFlags_SpanFullWidth = 1 << 12,
    ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 1 << 13,
    ImGuiTreeNodeFlags_CollapsingHeader = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoTreePushOnOpen | ImGuiTreeNodeFlags_NoAutoOpenOnLog
}ImGuiTreeNodeFlags_;
typedef enum {
    ImGuiPopupFlags_None = 0,
    ImGuiPopupFlags_MouseButtonLeft = 0,
    ImGuiPopupFlags_MouseButtonRight = 1,
    ImGuiPopupFlags_MouseButtonMiddle = 2,
    ImGuiPopupFlags_MouseButtonMask_ = 0x1F,
    ImGuiPopupFlags_MouseButtonDefault_ = 1,
    ImGuiPopupFlags_NoOpenOverExistingPopup = 1 << 5,
    ImGuiPopupFlags_NoOpenOverItems = 1 << 6,
    ImGuiPopupFlags_AnyPopupId = 1 << 7,
    ImGuiPopupFlags_AnyPopupLevel = 1 << 8,
    ImGuiPopupFlags_AnyPopup = ImGuiPopupFlags_AnyPopupId | ImGuiPopupFlags_AnyPopupLevel
}ImGuiPopupFlags_;
typedef enum {
    ImGuiSelectableFlags_None = 0,
    ImGuiSelectableFlags_DontClosePopups = 1 << 0,
    ImGuiSelectableFlags_SpanAllColumns = 1 << 1,
    ImGuiSelectableFlags_AllowDoubleClick = 1 << 2,
    ImGuiSelectableFlags_Disabled = 1 << 3,
    ImGuiSelectableFlags_AllowItemOverlap = 1 << 4
}ImGuiSelectableFlags_;
typedef enum {
    ImGuiComboFlags_None = 0,
    ImGuiComboFlags_PopupAlignLeft = 1 << 0,
    ImGuiComboFlags_HeightSmall = 1 << 1,
    ImGuiComboFlags_HeightRegular = 1 << 2,
    ImGuiComboFlags_HeightLarge = 1 << 3,
    ImGuiComboFlags_HeightLargest = 1 << 4,
    ImGuiComboFlags_NoArrowButton = 1 << 5,
    ImGuiComboFlags_NoPreview = 1 << 6,
    ImGuiComboFlags_HeightMask_ = ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest
}ImGuiComboFlags_;
typedef enum {
    ImGuiTabBarFlags_None = 0,
    ImGuiTabBarFlags_Reorderable = 1 << 0,
    ImGuiTabBarFlags_AutoSelectNewTabs = 1 << 1,
    ImGuiTabBarFlags_TabListPopupButton = 1 << 2,
    ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 1 << 3,
    ImGuiTabBarFlags_NoTabListScrollingButtons = 1 << 4,
    ImGuiTabBarFlags_NoTooltip = 1 << 5,
    ImGuiTabBarFlags_FittingPolicyResizeDown = 1 << 6,
    ImGuiTabBarFlags_FittingPolicyScroll = 1 << 7,
    ImGuiTabBarFlags_FittingPolicyMask_ = ImGuiTabBarFlags_FittingPolicyResizeDown | ImGuiTabBarFlags_FittingPolicyScroll,
    ImGuiTabBarFlags_FittingPolicyDefault_ = ImGuiTabBarFlags_FittingPolicyResizeDown
}ImGuiTabBarFlags_;
typedef enum {
    ImGuiTabItemFlags_None = 0,
    ImGuiTabItemFlags_UnsavedDocument = 1 << 0,
    ImGuiTabItemFlags_SetSelected = 1 << 1,
    ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 1 << 2,
    ImGuiTabItemFlags_NoPushId = 1 << 3,
    ImGuiTabItemFlags_NoTooltip = 1 << 4,
    ImGuiTabItemFlags_NoReorder = 1 << 5,
    ImGuiTabItemFlags_Leading = 1 << 6,
    ImGuiTabItemFlags_Trailing = 1 << 7
}ImGuiTabItemFlags_;
typedef enum {
    ImGuiTableFlags_None = 0,
    ImGuiTableFlags_Resizable = 1 << 0,
    ImGuiTableFlags_Reorderable = 1 << 1,
    ImGuiTableFlags_Hideable = 1 << 2,
    ImGuiTableFlags_Sortable = 1 << 3,
    ImGuiTableFlags_NoSavedSettings = 1 << 4,
    ImGuiTableFlags_ContextMenuInBody = 1 << 5,
    ImGuiTableFlags_RowBg = 1 << 6,
    ImGuiTableFlags_BordersInnerH = 1 << 7,
    ImGuiTableFlags_BordersOuterH = 1 << 8,
    ImGuiTableFlags_BordersInnerV = 1 << 9,
    ImGuiTableFlags_BordersOuterV = 1 << 10,
    ImGuiTableFlags_BordersH = ImGuiTableFlags_BordersInnerH | ImGuiTableFlags_BordersOuterH,
    ImGuiTableFlags_BordersV = ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersOuterV,
    ImGuiTableFlags_BordersInner = ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersInnerH,
    ImGuiTableFlags_BordersOuter = ImGuiTableFlags_BordersOuterV | ImGuiTableFlags_BordersOuterH,
    ImGuiTableFlags_Borders = ImGuiTableFlags_BordersInner | ImGuiTableFlags_BordersOuter,
    ImGuiTableFlags_NoBordersInBody = 1 << 11,
    ImGuiTableFlags_NoBordersInBodyUntilResize = 1 << 12,
    ImGuiTableFlags_SizingFixedFit = 1 << 13,
    ImGuiTableFlags_SizingFixedSame = 2 << 13,
    ImGuiTableFlags_SizingStretchProp = 3 << 13,
    ImGuiTableFlags_SizingStretchSame = 4 << 13,
    ImGuiTableFlags_NoHostExtendX = 1 << 16,
    ImGuiTableFlags_NoHostExtendY = 1 << 17,
    ImGuiTableFlags_NoKeepColumnsVisible = 1 << 18,
    ImGuiTableFlags_PreciseWidths = 1 << 19,
    ImGuiTableFlags_NoClip = 1 << 20,
    ImGuiTableFlags_PadOuterX = 1 << 21,
    ImGuiTableFlags_NoPadOuterX = 1 << 22,
    ImGuiTableFlags_NoPadInnerX = 1 << 23,
    ImGuiTableFlags_ScrollX = 1 << 24,
    ImGuiTableFlags_ScrollY = 1 << 25,
    ImGuiTableFlags_SortMulti = 1 << 26,
    ImGuiTableFlags_SortTristate = 1 << 27,
    ImGuiTableFlags_SizingMask_ = ImGuiTableFlags_SizingFixedFit | ImGuiTableFlags_SizingFixedSame | ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_SizingStretchSame
}ImGuiTableFlags_;
typedef enum {
    ImGuiTableColumnFlags_None = 0,
    ImGuiTableColumnFlags_Disabled = 1 << 0,
    ImGuiTableColumnFlags_DefaultHide = 1 << 1,
    ImGuiTableColumnFlags_DefaultSort = 1 << 2,
    ImGuiTableColumnFlags_WidthStretch = 1 << 3,
    ImGuiTableColumnFlags_WidthFixed = 1 << 4,
    ImGuiTableColumnFlags_NoResize = 1 << 5,
    ImGuiTableColumnFlags_NoReorder = 1 << 6,
    ImGuiTableColumnFlags_NoHide = 1 << 7,
    ImGuiTableColumnFlags_NoClip = 1 << 8,
    ImGuiTableColumnFlags_NoSort = 1 << 9,
    ImGuiTableColumnFlags_NoSortAscending = 1 << 10,
    ImGuiTableColumnFlags_NoSortDescending = 1 << 11,
    ImGuiTableColumnFlags_NoHeaderLabel = 1 << 12,
    ImGuiTableColumnFlags_NoHeaderWidth = 1 << 13,
    ImGuiTableColumnFlags_PreferSortAscending = 1 << 14,
    ImGuiTableColumnFlags_PreferSortDescending = 1 << 15,
    ImGuiTableColumnFlags_IndentEnable = 1 << 16,
    ImGuiTableColumnFlags_IndentDisable = 1 << 17,
    ImGuiTableColumnFlags_IsEnabled = 1 << 24,
    ImGuiTableColumnFlags_IsVisible = 1 << 25,
    ImGuiTableColumnFlags_IsSorted = 1 << 26,
    ImGuiTableColumnFlags_IsHovered = 1 << 27,
    ImGuiTableColumnFlags_WidthMask_ = ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_WidthFixed,
    ImGuiTableColumnFlags_IndentMask_ = ImGuiTableColumnFlags_IndentEnable | ImGuiTableColumnFlags_IndentDisable,
    ImGuiTableColumnFlags_StatusMask_ = ImGuiTableColumnFlags_IsEnabled | ImGuiTableColumnFlags_IsVisible | ImGuiTableColumnFlags_IsSorted | ImGuiTableColumnFlags_IsHovered,
    ImGuiTableColumnFlags_NoDirectResize_ = 1 << 30
}ImGuiTableColumnFlags_;
typedef enum {
    ImGuiTableRowFlags_None = 0,
    ImGuiTableRowFlags_Headers = 1 << 0
}ImGuiTableRowFlags_;
typedef enum {
    ImGuiTableBgTarget_None = 0,
    ImGuiTableBgTarget_RowBg0 = 1,
    ImGuiTableBgTarget_RowBg1 = 2,
    ImGuiTableBgTarget_CellBg = 3
}ImGuiTableBgTarget_;
typedef enum {
    ImGuiFocusedFlags_None = 0,
    ImGuiFocusedFlags_ChildWindows = 1 << 0,
    ImGuiFocusedFlags_RootWindow = 1 << 1,
    ImGuiFocusedFlags_AnyWindow = 1 << 2,
    ImGuiFocusedFlags_NoPopupHierarchy = 1 << 3,
    ImGuiFocusedFlags_DockHierarchy = 1 << 4,
    ImGuiFocusedFlags_RootAndChildWindows = ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows
}ImGuiFocusedFlags_;
typedef enum {
    ImGuiHoveredFlags_None = 0,
    ImGuiHoveredFlags_ChildWindows = 1 << 0,
    ImGuiHoveredFlags_RootWindow = 1 << 1,
    ImGuiHoveredFlags_AnyWindow = 1 << 2,
    ImGuiHoveredFlags_NoPopupHierarchy = 1 << 3,
    ImGuiHoveredFlags_DockHierarchy = 1 << 4,
    ImGuiHoveredFlags_AllowWhenBlockedByPopup = 1 << 5,
    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 1 << 7,
    ImGuiHoveredFlags_AllowWhenOverlapped = 1 << 8,
    ImGuiHoveredFlags_AllowWhenDisabled = 1 << 9,
    ImGuiHoveredFlags_RectOnly = ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped,
    ImGuiHoveredFlags_RootAndChildWindows = ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows
}ImGuiHoveredFlags_;
typedef enum {
    ImGuiDockNodeFlags_None = 0,
    ImGuiDockNodeFlags_KeepAliveOnly = 1 << 0,
    ImGuiDockNodeFlags_NoDockingInCentralNode = 1 << 2,
    ImGuiDockNodeFlags_PassthruCentralNode = 1 << 3,
    ImGuiDockNodeFlags_NoSplit = 1 << 4,
    ImGuiDockNodeFlags_NoResize = 1 << 5,
    ImGuiDockNodeFlags_AutoHideTabBar = 1 << 6
}ImGuiDockNodeFlags_;
typedef enum {
    ImGuiDragDropFlags_None = 0,
    ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 << 0,
    ImGuiDragDropFlags_SourceNoDisableHover = 1 << 1,
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 1 << 2,
    ImGuiDragDropFlags_SourceAllowNullID = 1 << 3,
    ImGuiDragDropFlags_SourceExtern = 1 << 4,
    ImGuiDragDropFlags_SourceAutoExpirePayload = 1 << 5,
    ImGuiDragDropFlags_AcceptBeforeDelivery = 1 << 10,
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 1 << 11,
    ImGuiDragDropFlags_AcceptNoPreviewTooltip = 1 << 12,
    ImGuiDragDropFlags_AcceptPeekOnly = ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect
}ImGuiDragDropFlags_;
typedef enum {
    ImGuiDataType_S8,
    ImGuiDataType_U8,
    ImGuiDataType_S16,
    ImGuiDataType_U16,
    ImGuiDataType_S32,
    ImGuiDataType_U32,
    ImGuiDataType_S64,
    ImGuiDataType_U64,
    ImGuiDataType_Float,
    ImGuiDataType_Double,
    ImGuiDataType_COUNT
}ImGuiDataType_;
typedef enum {
    ImGuiDir_None = -1,
    ImGuiDir_Left = 0,
    ImGuiDir_Right = 1,
    ImGuiDir_Up = 2,
    ImGuiDir_Down = 3,
    ImGuiDir_COUNT
}ImGuiDir_;
typedef enum {
    ImGuiSortDirection_None = 0,
    ImGuiSortDirection_Ascending = 1,
    ImGuiSortDirection_Descending = 2
}ImGuiSortDirection_;
typedef enum {
    ImGuiKey_None = 0,
    ImGuiKey_Tab = 512,
    ImGuiKey_LeftArrow,
    ImGuiKey_RightArrow,
    ImGuiKey_UpArrow,
    ImGuiKey_DownArrow,
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,
    ImGuiKey_End,
    ImGuiKey_Insert,
    ImGuiKey_Delete,
    ImGuiKey_Backspace,
    ImGuiKey_Space,
    ImGuiKey_Enter,
    ImGuiKey_Escape,
    ImGuiKey_LeftCtrl, ImGuiKey_LeftShift, ImGuiKey_LeftAlt, ImGuiKey_LeftSuper,
    ImGuiKey_RightCtrl, ImGuiKey_RightShift, ImGuiKey_RightAlt, ImGuiKey_RightSuper,
    ImGuiKey_Menu,
    ImGuiKey_0, ImGuiKey_1, ImGuiKey_2, ImGuiKey_3, ImGuiKey_4, ImGuiKey_5, ImGuiKey_6, ImGuiKey_7, ImGuiKey_8, ImGuiKey_9,
    ImGuiKey_A, ImGuiKey_B, ImGuiKey_C, ImGuiKey_D, ImGuiKey_E, ImGuiKey_F, ImGuiKey_G, ImGuiKey_H, ImGuiKey_I, ImGuiKey_J,
    ImGuiKey_K, ImGuiKey_L, ImGuiKey_M, ImGuiKey_N, ImGuiKey_O, ImGuiKey_P, ImGuiKey_Q, ImGuiKey_R, ImGuiKey_S, ImGuiKey_T,
    ImGuiKey_U, ImGuiKey_V, ImGuiKey_W, ImGuiKey_X, ImGuiKey_Y, ImGuiKey_Z,
    ImGuiKey_F1, ImGuiKey_F2, ImGuiKey_F3, ImGuiKey_F4, ImGuiKey_F5, ImGuiKey_F6,
    ImGuiKey_F7, ImGuiKey_F8, ImGuiKey_F9, ImGuiKey_F10, ImGuiKey_F11, ImGuiKey_F12,
    ImGuiKey_Apostrophe,
    ImGuiKey_Comma,
    ImGuiKey_Minus,
    ImGuiKey_Period,
    ImGuiKey_Slash,
    ImGuiKey_Semicolon,
    ImGuiKey_Equal,
    ImGuiKey_LeftBracket,
    ImGuiKey_Backslash,
    ImGuiKey_RightBracket,
    ImGuiKey_GraveAccent,
    ImGuiKey_CapsLock,
    ImGuiKey_ScrollLock,
    ImGuiKey_NumLock,
    ImGuiKey_PrintScreen,
    ImGuiKey_Pause,
    ImGuiKey_Keypad0, ImGuiKey_Keypad1, ImGuiKey_Keypad2, ImGuiKey_Keypad3, ImGuiKey_Keypad4,
    ImGuiKey_Keypad5, ImGuiKey_Keypad6, ImGuiKey_Keypad7, ImGuiKey_Keypad8, ImGuiKey_Keypad9,
    ImGuiKey_KeypadDecimal,
    ImGuiKey_KeypadDivide,
    ImGuiKey_KeypadMultiply,
    ImGuiKey_KeypadSubtract,
    ImGuiKey_KeypadAdd,
    ImGuiKey_KeypadEnter,
    ImGuiKey_KeypadEqual,
    ImGuiKey_GamepadStart,
    ImGuiKey_GamepadBack,
    ImGuiKey_GamepadFaceUp,
    ImGuiKey_GamepadFaceDown,
    ImGuiKey_GamepadFaceLeft,
    ImGuiKey_GamepadFaceRight,
    ImGuiKey_GamepadDpadUp,
    ImGuiKey_GamepadDpadDown,
    ImGuiKey_GamepadDpadLeft,
    ImGuiKey_GamepadDpadRight,
    ImGuiKey_GamepadL1,
    ImGuiKey_GamepadR1,
    ImGuiKey_GamepadL2,
    ImGuiKey_GamepadR2,
    ImGuiKey_GamepadL3,
    ImGuiKey_GamepadR3,
    ImGuiKey_GamepadLStickUp,
    ImGuiKey_GamepadLStickDown,
    ImGuiKey_GamepadLStickLeft,
    ImGuiKey_GamepadLStickRight,
    ImGuiKey_GamepadRStickUp,
    ImGuiKey_GamepadRStickDown,
    ImGuiKey_GamepadRStickLeft,
    ImGuiKey_GamepadRStickRight,
    ImGuiKey_ModCtrl,
    ImGuiKey_ModShift,
    ImGuiKey_ModAlt,
    ImGuiKey_ModSuper,
    ImGuiKey_COUNT,
    ImGuiKey_NamedKey_BEGIN = 512,
    ImGuiKey_NamedKey_END = ImGuiKey_COUNT,
    ImGuiKey_NamedKey_COUNT = ImGuiKey_NamedKey_END - ImGuiKey_NamedKey_BEGIN,
    ImGuiKey_KeysData_SIZE = ImGuiKey_COUNT,
    ImGuiKey_KeysData_OFFSET = 0
}ImGuiKey_;
typedef enum {
    ImGuiKeyModFlags_None = 0,
    ImGuiKeyModFlags_Ctrl = 1 << 0,
    ImGuiKeyModFlags_Shift = 1 << 1,
    ImGuiKeyModFlags_Alt = 1 << 2,
    ImGuiKeyModFlags_Super = 1 << 3
}ImGuiKeyModFlags_;
typedef enum {
    ImGuiNavInput_Activate,
    ImGuiNavInput_Cancel,
    ImGuiNavInput_Input,
    ImGuiNavInput_Menu,
    ImGuiNavInput_DpadLeft,
    ImGuiNavInput_DpadRight,
    ImGuiNavInput_DpadUp,
    ImGuiNavInput_DpadDown,
    ImGuiNavInput_LStickLeft,
    ImGuiNavInput_LStickRight,
    ImGuiNavInput_LStickUp,
    ImGuiNavInput_LStickDown,
    ImGuiNavInput_FocusPrev,
    ImGuiNavInput_FocusNext,
    ImGuiNavInput_TweakSlow,
    ImGuiNavInput_TweakFast,
    ImGuiNavInput_KeyLeft_,
    ImGuiNavInput_KeyRight_,
    ImGuiNavInput_KeyUp_,
    ImGuiNavInput_KeyDown_,
    ImGuiNavInput_COUNT
}ImGuiNavInput_;
typedef enum {
    ImGuiConfigFlags_None = 0,
    ImGuiConfigFlags_NavEnableKeyboard = 1 << 0,
    ImGuiConfigFlags_NavEnableGamepad = 1 << 1,
    ImGuiConfigFlags_NavEnableSetMousePos = 1 << 2,
    ImGuiConfigFlags_NavNoCaptureKeyboard = 1 << 3,
    ImGuiConfigFlags_NoMouse = 1 << 4,
    ImGuiConfigFlags_NoMouseCursorChange = 1 << 5,
    ImGuiConfigFlags_DockingEnable = 1 << 6,
    ImGuiConfigFlags_ViewportsEnable = 1 << 10,
    ImGuiConfigFlags_DpiEnableScaleViewports= 1 << 14,
    ImGuiConfigFlags_DpiEnableScaleFonts = 1 << 15,
    ImGuiConfigFlags_IsSRGB = 1 << 20,
    ImGuiConfigFlags_IsTouchScreen = 1 << 21
}ImGuiConfigFlags_;
typedef enum {
    ImGuiBackendFlags_None = 0,
    ImGuiBackendFlags_HasGamepad = 1 << 0,
    ImGuiBackendFlags_HasMouseCursors = 1 << 1,
    ImGuiBackendFlags_HasSetMousePos = 1 << 2,
    ImGuiBackendFlags_RendererHasVtxOffset = 1 << 3,
    ImGuiBackendFlags_PlatformHasViewports = 1 << 10,
    ImGuiBackendFlags_HasMouseHoveredViewport=1 << 11,
    ImGuiBackendFlags_RendererHasViewports = 1 << 12
}ImGuiBackendFlags_;
typedef enum {
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,
    ImGuiCol_ChildBg,
    ImGuiCol_PopupBg,
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgActive,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_CheckMark,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Separator,
    ImGuiCol_SeparatorHovered,
    ImGuiCol_SeparatorActive,
    ImGuiCol_ResizeGrip,
    ImGuiCol_ResizeGripHovered,
    ImGuiCol_ResizeGripActive,
    ImGuiCol_Tab,
    ImGuiCol_TabHovered,
    ImGuiCol_TabActive,
    ImGuiCol_TabUnfocused,
    ImGuiCol_TabUnfocusedActive,
    ImGuiCol_DockingPreview,
    ImGuiCol_DockingEmptyBg,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TableHeaderBg,
    ImGuiCol_TableBorderStrong,
    ImGuiCol_TableBorderLight,
    ImGuiCol_TableRowBg,
    ImGuiCol_TableRowBgAlt,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_DragDropTarget,
    ImGuiCol_NavHighlight,
    ImGuiCol_NavWindowingHighlight,
    ImGuiCol_NavWindowingDimBg,
    ImGuiCol_ModalWindowDimBg,
    ImGuiCol_COUNT
}ImGuiCol_;
typedef enum {
    ImGuiStyleVar_Alpha,
    ImGuiStyleVar_DisabledAlpha,
    ImGuiStyleVar_WindowPadding,
    ImGuiStyleVar_WindowRounding,
    ImGuiStyleVar_WindowBorderSize,
    ImGuiStyleVar_WindowMinSize,
    ImGuiStyleVar_WindowTitleAlign,
    ImGuiStyleVar_ChildRounding,
    ImGuiStyleVar_ChildBorderSize,
    ImGuiStyleVar_PopupRounding,
    ImGuiStyleVar_PopupBorderSize,
    ImGuiStyleVar_FramePadding,
    ImGuiStyleVar_FrameRounding,
    ImGuiStyleVar_FrameBorderSize,
    ImGuiStyleVar_ItemSpacing,
    ImGuiStyleVar_ItemInnerSpacing,
    ImGuiStyleVar_IndentSpacing,
    ImGuiStyleVar_CellPadding,
    ImGuiStyleVar_ScrollbarSize,
    ImGuiStyleVar_ScrollbarRounding,
    ImGuiStyleVar_GrabMinSize,
    ImGuiStyleVar_GrabRounding,
    ImGuiStyleVar_TabRounding,
    ImGuiStyleVar_ButtonTextAlign,
    ImGuiStyleVar_SelectableTextAlign,
    ImGuiStyleVar_COUNT
}ImGuiStyleVar_;
typedef enum {
    ImGuiButtonFlags_None = 0,
    ImGuiButtonFlags_MouseButtonLeft = 1 << 0,
    ImGuiButtonFlags_MouseButtonRight = 1 << 1,
    ImGuiButtonFlags_MouseButtonMiddle = 1 << 2,
    ImGuiButtonFlags_MouseButtonMask_ = ImGuiButtonFlags_MouseButtonLeft | ImGuiButtonFlags_MouseButtonRight | ImGuiButtonFlags_MouseButtonMiddle,
    ImGuiButtonFlags_MouseButtonDefault_ = ImGuiButtonFlags_MouseButtonLeft
}ImGuiButtonFlags_;
typedef enum {
    ImGuiColorEditFlags_None = 0,
    ImGuiColorEditFlags_NoAlpha = 1 << 1,
    ImGuiColorEditFlags_NoPicker = 1 << 2,
    ImGuiColorEditFlags_NoOptions = 1 << 3,
    ImGuiColorEditFlags_NoSmallPreview = 1 << 4,
    ImGuiColorEditFlags_NoInputs = 1 << 5,
    ImGuiColorEditFlags_NoTooltip = 1 << 6,
    ImGuiColorEditFlags_NoLabel = 1 << 7,
    ImGuiColorEditFlags_NoSidePreview = 1 << 8,
    ImGuiColorEditFlags_NoDragDrop = 1 << 9,
    ImGuiColorEditFlags_NoBorder = 1 << 10,
    ImGuiColorEditFlags_AlphaBar = 1 << 16,
    ImGuiColorEditFlags_AlphaPreview = 1 << 17,
    ImGuiColorEditFlags_AlphaPreviewHalf= 1 << 18,
    ImGuiColorEditFlags_HDR = 1 << 19,
    ImGuiColorEditFlags_DisplayRGB = 1 << 20,
    ImGuiColorEditFlags_DisplayHSV = 1 << 21,
    ImGuiColorEditFlags_DisplayHex = 1 << 22,
    ImGuiColorEditFlags_Uint8 = 1 << 23,
    ImGuiColorEditFlags_Float = 1 << 24,
    ImGuiColorEditFlags_PickerHueBar = 1 << 25,
    ImGuiColorEditFlags_PickerHueWheel = 1 << 26,
    ImGuiColorEditFlags_InputRGB = 1 << 27,
    ImGuiColorEditFlags_InputHSV = 1 << 28,
    ImGuiColorEditFlags_DefaultOptions_ = ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags_DisplayMask_ = ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_DisplayHSV | ImGuiColorEditFlags_DisplayHex,
    ImGuiColorEditFlags_DataTypeMask_ = ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_Float,
    ImGuiColorEditFlags_PickerMask_ = ImGuiColorEditFlags_PickerHueWheel | ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags_InputMask_ = ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_InputHSV
}ImGuiColorEditFlags_;
typedef enum {
    ImGuiSliderFlags_None = 0,
    ImGuiSliderFlags_AlwaysClamp = 1 << 4,
    ImGuiSliderFlags_Logarithmic = 1 << 5,
    ImGuiSliderFlags_NoRoundToFormat = 1 << 6,
    ImGuiSliderFlags_NoInput = 1 << 7,
    ImGuiSliderFlags_InvalidMask_ = 0x7000000F
}ImGuiSliderFlags_;
typedef enum {
    ImGuiMouseButton_Left = 0,
    ImGuiMouseButton_Right = 1,
    ImGuiMouseButton_Middle = 2,
    ImGuiMouseButton_COUNT = 5
}ImGuiMouseButton_;
typedef enum {
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,
    ImGuiMouseCursor_ResizeAll,
    ImGuiMouseCursor_ResizeNS,
    ImGuiMouseCursor_ResizeEW,
    ImGuiMouseCursor_ResizeNESW,
    ImGuiMouseCursor_ResizeNWSE,
    ImGuiMouseCursor_Hand,
    ImGuiMouseCursor_NotAllowed,
    ImGuiMouseCursor_COUNT
}ImGuiMouseCursor_;
typedef enum {
    ImGuiCond_None = 0,
    ImGuiCond_Always = 1 << 0,
    ImGuiCond_Once = 1 << 1,
    ImGuiCond_FirstUseEver = 1 << 2,
    ImGuiCond_Appearing = 1 << 3
}ImGuiCond_;
struct ImGuiStyle
{
    float Alpha;
    float DisabledAlpha;
    ImVec2 WindowPadding;
    float WindowRounding;
    float WindowBorderSize;
    ImVec2 WindowMinSize;
    ImVec2 WindowTitleAlign;
    ImGuiDir WindowMenuButtonPosition;
    float ChildRounding;
    float ChildBorderSize;
    float PopupRounding;
    float PopupBorderSize;
    ImVec2 FramePadding;
    float FrameRounding;
    float FrameBorderSize;
    ImVec2 ItemSpacing;
    ImVec2 ItemInnerSpacing;
    ImVec2 CellPadding;
    ImVec2 TouchExtraPadding;
    float IndentSpacing;
    float ColumnsMinSpacing;
    float ScrollbarSize;
    float ScrollbarRounding;
    float GrabMinSize;
    float GrabRounding;
    float LogSliderDeadzone;
    float TabRounding;
    float TabBorderSize;
    float TabMinWidthForCloseButton;
    ImGuiDir ColorButtonPosition;
    ImVec2 ButtonTextAlign;
    ImVec2 SelectableTextAlign;
    ImVec2 DisplayWindowPadding;
    ImVec2 DisplaySafeAreaPadding;
    float MouseCursorScale;
    _Bool AntiAliasedLines;
    _Bool AntiAliasedLinesUseTex;
    _Bool AntiAliasedFill;
    float CurveTessellationTol;
    float CircleTessellationMaxError;
    ImVec4 Colors[ImGuiCol_COUNT];
};
struct ImGuiKeyData
{
    _Bool Down;
    float DownDuration;
    float DownDurationPrev;
    float AnalogValue;
};
typedef struct ImVector_ImWchar {int Size;int Capacity;ImWchar* Data;} ImVector_ImWchar;
struct ImGuiIO
{
    ImGuiConfigFlags ConfigFlags;
    ImGuiBackendFlags BackendFlags;
    ImVec2 DisplaySize;
    float DeltaTime;
    float IniSavingRate;
    const char* IniFilename;
    const char* LogFilename;
    float MouseDoubleClickTime;
    float MouseDoubleClickMaxDist;
    float MouseDragThreshold;
    float KeyRepeatDelay;
    float KeyRepeatRate;
    void* UserData;
    ImFontAtlas*Fonts;
    float FontGlobalScale;
    _Bool FontAllowUserScaling;
    ImFont* FontDefault;
    ImVec2 DisplayFramebufferScale;
    _Bool ConfigDockingNoSplit;
    _Bool ConfigDockingWithShift;
    _Bool ConfigDockingAlwaysTabBar;
    _Bool ConfigDockingTransparentPayload;
    _Bool ConfigViewportsNoAutoMerge;
    _Bool ConfigViewportsNoTaskBarIcon;
    _Bool ConfigViewportsNoDecoration;
    _Bool ConfigViewportsNoDefaultParent;
    _Bool MouseDrawCursor;
    _Bool ConfigMacOSXBehaviors;
    _Bool ConfigInputTrickleEventQueue;
    _Bool ConfigInputTextCursorBlink;
    _Bool ConfigDragClickToInputText;
    _Bool ConfigWindowsResizeFromEdges;
    _Bool ConfigWindowsMoveFromTitleBarOnly;
    float ConfigMemoryCompactTimer;
    const char* BackendPlatformName;
    const char* BackendRendererName;
    void* BackendPlatformUserData;
    void* BackendRendererUserData;
    void* BackendLanguageUserData;
    const char* (*GetClipboardTextFn)(void* user_data);
    void (*SetClipboardTextFn)(void* user_data, const char* text);
    void* ClipboardUserData;
    void (*SetPlatformImeDataFn)(ImGuiViewport* viewport, ImGuiPlatformImeData* data);
    void* _UnusedPadding;
    _Bool WantCaptureMouse;
    _Bool WantCaptureKeyboard;
    _Bool WantTextInput;
    _Bool WantSetMousePos;
    _Bool WantSaveIniSettings;
    _Bool NavActive;
    _Bool NavVisible;
    float Framerate;
    int MetricsRenderVertices;
    int MetricsRenderIndices;
    int MetricsRenderWindows;
    int MetricsActiveWindows;
    int MetricsActiveAllocations;
    ImVec2 MouseDelta;
    int KeyMap[ImGuiKey_COUNT];
    _Bool KeysDown[512];
    ImVec2 MousePos;
    _Bool MouseDown[5];
    float MouseWheel;
    float MouseWheelH;
    ImGuiID MouseHoveredViewport;
    _Bool KeyCtrl;
    _Bool KeyShift;
    _Bool KeyAlt;
    _Bool KeySuper;
    float NavInputs[ImGuiNavInput_COUNT];
    ImGuiKeyModFlags KeyMods;
    ImGuiKeyModFlags KeyModsPrev;
    ImGuiKeyData KeysData[ImGuiKey_KeysData_SIZE];
    _Bool WantCaptureMouseUnlessPopupClose;
    ImVec2 MousePosPrev;
    ImVec2 MouseClickedPos[5];
    double MouseClickedTime[5];
    _Bool MouseClicked[5];
    _Bool MouseDoubleClicked[5];
    ImU16 MouseClickedCount[5];
    ImU16 MouseClickedLastCount[5];
    _Bool MouseReleased[5];
    _Bool MouseDownOwned[5];
    _Bool MouseDownOwnedUnlessPopupClose[5];
    float MouseDownDuration[5];
    float MouseDownDurationPrev[5];
    ImVec2 MouseDragMaxDistanceAbs[5];
    float MouseDragMaxDistanceSqr[5];
    float NavInputsDownDuration[ImGuiNavInput_COUNT];
    float NavInputsDownDurationPrev[ImGuiNavInput_COUNT];
    float PenPressure;
    _Bool AppFocusLost;
    ImS8 BackendUsingLegacyKeyArrays;
    _Bool BackendUsingLegacyNavInputArray;
    ImWchar16 InputQueueSurrogate;
    ImVector_ImWchar InputQueueCharacters;
};
struct ImGuiInputTextCallbackData
{
    ImGuiInputTextFlags EventFlag;
    ImGuiInputTextFlags Flags;
    void* UserData;
    ImWchar EventChar;
    ImGuiKey EventKey;
    char* Buf;
    int BufTextLen;
    int BufSize;
    _Bool BufDirty;
    int CursorPos;
    int SelectionStart;
    int SelectionEnd;
};
struct ImGuiSizeCallbackData
{
    void* UserData;
    ImVec2 Pos;
    ImVec2 CurrentSize;
    ImVec2 DesiredSize;
};
struct ImGuiWindowClass
{
    ImGuiID ClassId;
    ImGuiID ParentViewportId;
    ImGuiViewportFlags ViewportFlagsOverrideSet;
    ImGuiViewportFlags ViewportFlagsOverrideClear;
    ImGuiTabItemFlags TabItemFlagsOverrideSet;
    ImGuiDockNodeFlags DockNodeFlagsOverrideSet;
    _Bool DockingAlwaysTabBar;
    _Bool DockingAllowUnclassed;
};
struct ImGuiPayload
{
    void* Data;
    int DataSize;
    ImGuiID SourceId;
    ImGuiID SourceParentId;
    int DataFrameCount;
    char DataType[32 + 1];
    _Bool Preview;
    _Bool Delivery;
};
struct ImGuiTableColumnSortSpecs
{
    ImGuiID ColumnUserID;
    ImS16 ColumnIndex;
    ImS16 SortOrder;
    ImGuiSortDirection SortDirection : 8;
};
struct ImGuiTableSortSpecs
{
    const ImGuiTableColumnSortSpecs* Specs;
    int SpecsCount;
    _Bool SpecsDirty;
};
struct ImGuiOnceUponAFrame
{
     int RefFrame;
};
struct ImGuiTextRange
{
        const char* b;
        const char* e;
};
typedef struct ImGuiTextRange ImGuiTextRange;
typedef struct ImVector_ImGuiTextRange {int Size;int Capacity;ImGuiTextRange* Data;} ImVector_ImGuiTextRange;
struct ImGuiTextFilter
{
    char InputBuf[256];
    ImVector_ImGuiTextRange Filters;
    int CountGrep;
};
typedef struct ImGuiTextRange ImGuiTextRange;
typedef struct ImVector_char {int Size;int Capacity;char* Data;} ImVector_char;
struct ImGuiTextBuffer
{
    ImVector_char Buf;
};
struct ImGuiStoragePair
{
        ImGuiID key;
        union { int val_i; float val_f; void* val_p; };
};
typedef struct ImGuiStoragePair ImGuiStoragePair;
typedef struct ImVector_ImGuiStoragePair {int Size;int Capacity;ImGuiStoragePair* Data;} ImVector_ImGuiStoragePair;
struct ImGuiStorage
{
    ImVector_ImGuiStoragePair Data;
};
typedef struct ImGuiStoragePair ImGuiStoragePair;
struct ImGuiListClipper
{
    int DisplayStart;
    int DisplayEnd;
    int ItemsCount;
    float ItemsHeight;
    float StartPosY;
    void* TempData;
};
struct ImColor
{
    ImVec4 Value;
};
typedef void (*ImDrawCallback)(const ImDrawList* parent_list, const ImDrawCmd* cmd);
struct ImDrawCmd
{
    ImVec4 ClipRect;
    ImTextureID TextureId;
    unsigned int VtxOffset;
    unsigned int IdxOffset;
    unsigned int ElemCount;
    ImDrawCallback UserCallback;
    void* UserCallbackData;
};
struct ImDrawVert
{
    ImVec2 pos;
    ImVec2 uv;
    ImU32 col;
};
typedef struct ImDrawCmdHeader ImDrawCmdHeader;
struct ImDrawCmdHeader
{
    ImVec4 ClipRect;
    ImTextureID TextureId;
    unsigned int VtxOffset;
};
typedef struct ImVector_ImDrawCmd {int Size;int Capacity;ImDrawCmd* Data;} ImVector_ImDrawCmd;
typedef struct ImVector_ImDrawIdx {int Size;int Capacity;ImDrawIdx* Data;} ImVector_ImDrawIdx;
struct ImDrawChannel
{
    ImVector_ImDrawCmd _CmdBuffer;
    ImVector_ImDrawIdx _IdxBuffer;
};
typedef struct ImVector_ImDrawChannel {int Size;int Capacity;ImDrawChannel* Data;} ImVector_ImDrawChannel;
struct ImDrawListSplitter
{
    int _Current;
    int _Count;
    ImVector_ImDrawChannel _Channels;
};
typedef enum {
    ImDrawFlags_None = 0,
    ImDrawFlags_Closed = 1 << 0,
    ImDrawFlags_RoundCornersTopLeft = 1 << 4,
    ImDrawFlags_RoundCornersTopRight = 1 << 5,
    ImDrawFlags_RoundCornersBottomLeft = 1 << 6,
    ImDrawFlags_RoundCornersBottomRight = 1 << 7,
    ImDrawFlags_RoundCornersNone = 1 << 8,
    ImDrawFlags_RoundCornersTop = ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight,
    ImDrawFlags_RoundCornersBottom = ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight,
    ImDrawFlags_RoundCornersLeft = ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersTopLeft,
    ImDrawFlags_RoundCornersRight = ImDrawFlags_RoundCornersBottomRight | ImDrawFlags_RoundCornersTopRight,
    ImDrawFlags_RoundCornersAll = ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight | ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight,
    ImDrawFlags_RoundCornersDefault_ = ImDrawFlags_RoundCornersAll,
    ImDrawFlags_RoundCornersMask_ = ImDrawFlags_RoundCornersAll | ImDrawFlags_RoundCornersNone
}ImDrawFlags_;
typedef enum {
    ImDrawListFlags_None = 0,
    ImDrawListFlags_AntiAliasedLines = 1 << 0,
    ImDrawListFlags_AntiAliasedLinesUseTex = 1 << 1,
    ImDrawListFlags_AntiAliasedFill = 1 << 2,
    ImDrawListFlags_AllowVtxOffset = 1 << 3
}ImDrawListFlags_;
typedef struct ImVector_ImDrawVert {int Size;int Capacity;ImDrawVert* Data;} ImVector_ImDrawVert;
typedef struct ImVector_ImVec4 {int Size;int Capacity;ImVec4* Data;} ImVector_ImVec4;
typedef struct ImVector_ImTextureID {int Size;int Capacity;ImTextureID* Data;} ImVector_ImTextureID;
typedef struct ImVector_ImVec2 {int Size;int Capacity;ImVec2* Data;} ImVector_ImVec2;
struct ImDrawList
{
    ImVector_ImDrawCmd CmdBuffer;
    ImVector_ImDrawIdx IdxBuffer;
    ImVector_ImDrawVert VtxBuffer;
    ImDrawListFlags Flags;
    unsigned int _VtxCurrentIdx;
    const ImDrawListSharedData* _Data;
    const char* _OwnerName;
    ImDrawVert* _VtxWritePtr;
    ImDrawIdx* _IdxWritePtr;
    ImVector_ImVec4 _ClipRectStack;
    ImVector_ImTextureID _TextureIdStack;
    ImVector_ImVec2 _Path;
    ImDrawCmdHeader _CmdHeader;
    ImDrawListSplitter _Splitter;
    float _FringeScale;
};
struct ImDrawData
{
    _Bool Valid;
    int CmdListsCount;
    int TotalIdxCount;
    int TotalVtxCount;
    ImDrawList** CmdLists;
    ImVec2 DisplayPos;
    ImVec2 DisplaySize;
    ImVec2 FramebufferScale;
    ImGuiViewport* OwnerViewport;
};
struct ImFontConfig
{
    void* FontData;
    int FontDataSize;
    _Bool FontDataOwnedByAtlas;
    int FontNo;
    float SizePixels;
    int OversampleH;
    int OversampleV;
    _Bool PixelSnapH;
    ImVec2 GlyphExtraSpacing;
    ImVec2 GlyphOffset;
    const ImWchar* GlyphRanges;
    float GlyphMinAdvanceX;
    float GlyphMaxAdvanceX;
    _Bool MergeMode;
    unsigned int FontBuilderFlags;
    float RasterizerMultiply;
    ImWchar EllipsisChar;
    char Name[40];
    ImFont* DstFont;
};
struct ImFontGlyph
{
    unsigned int Colored : 1;
    unsigned int Visible : 1;
    unsigned int Codepoint : 30;
    float AdvanceX;
    float X0, Y0, X1, Y1;
    float U0, V0, U1, V1;
};
typedef struct ImVector_ImU32 {int Size;int Capacity;ImU32* Data;} ImVector_ImU32;
struct ImFontGlyphRangesBuilder
{
    ImVector_ImU32 UsedChars;
};
typedef struct ImFontAtlasCustomRect ImFontAtlasCustomRect;
struct ImFontAtlasCustomRect
{
    unsigned short Width, Height;
    unsigned short X, Y;
    unsigned int GlyphID;
    float GlyphAdvanceX;
    ImVec2 GlyphOffset;
    ImFont* Font;
};
typedef enum {
    ImFontAtlasFlags_None = 0,
    ImFontAtlasFlags_NoPowerOfTwoHeight = 1 << 0,
    ImFontAtlasFlags_NoMouseCursors = 1 << 1,
    ImFontAtlasFlags_NoBakedLines = 1 << 2
}ImFontAtlasFlags_;
typedef struct ImVector_ImFontPtr {int Size;int Capacity;ImFont** Data;} ImVector_ImFontPtr;
typedef struct ImVector_ImFontAtlasCustomRect {int Size;int Capacity;ImFontAtlasCustomRect* Data;} ImVector_ImFontAtlasCustomRect;
typedef struct ImVector_ImFontConfig {int Size;int Capacity;ImFontConfig* Data;} ImVector_ImFontConfig;
struct ImFontAtlas
{
    ImFontAtlasFlags Flags;
    ImTextureID TexID;
    int TexDesiredWidth;
    int TexGlyphPadding;
    _Bool Locked;
    _Bool TexReady;
    _Bool TexPixelsUseColors;
    unsigned char* TexPixelsAlpha8;
    unsigned int* TexPixelsRGBA32;
    int TexWidth;
    int TexHeight;
    ImVec2 TexUvScale;
    ImVec2 TexUvWhitePixel;
    ImVector_ImFontPtr Fonts;
    ImVector_ImFontAtlasCustomRect CustomRects;
    ImVector_ImFontConfig ConfigData;
    ImVec4 TexUvLines[(63) + 1];
    const ImFontBuilderIO* FontBuilderIO;
    unsigned int FontBuilderFlags;
    int PackIdMouseCursors;
    int PackIdLines;
};
typedef struct ImVector_float {int Size;int Capacity;float* Data;} ImVector_float;
typedef struct ImVector_ImFontGlyph {int Size;int Capacity;ImFontGlyph* Data;} ImVector_ImFontGlyph;
struct ImFont
{
    ImVector_float IndexAdvanceX;
    float FallbackAdvanceX;
    float FontSize;
    ImVector_ImWchar IndexLookup;
    ImVector_ImFontGlyph Glyphs;
    const ImFontGlyph* FallbackGlyph;
    ImFontAtlas* ContainerAtlas;
    const ImFontConfig* ConfigData;
    short ConfigDataCount;
    ImWchar FallbackChar;
    ImWchar EllipsisChar;
    ImWchar DotChar;
    _Bool DirtyLookupTables;
    float Scale;
    float Ascent, Descent;
    int MetricsTotalSurface;
    ImU8 Used4kPagesMap[(0xFFFF +1)/4096/8];
};
typedef enum {
    ImGuiViewportFlags_None = 0,
    ImGuiViewportFlags_IsPlatformWindow = 1 << 0,
    ImGuiViewportFlags_IsPlatformMonitor = 1 << 1,
    ImGuiViewportFlags_OwnedByApp = 1 << 2,
    ImGuiViewportFlags_NoDecoration = 1 << 3,
    ImGuiViewportFlags_NoTaskBarIcon = 1 << 4,
    ImGuiViewportFlags_NoFocusOnAppearing = 1 << 5,
    ImGuiViewportFlags_NoFocusOnClick = 1 << 6,
    ImGuiViewportFlags_NoInputs = 1 << 7,
    ImGuiViewportFlags_NoRendererClear = 1 << 8,
    ImGuiViewportFlags_TopMost = 1 << 9,
    ImGuiViewportFlags_Minimized = 1 << 10,
    ImGuiViewportFlags_NoAutoMerge = 1 << 11,
    ImGuiViewportFlags_CanHostOtherWindows = 1 << 12
}ImGuiViewportFlags_;
struct ImGuiViewport
{
    ImGuiID ID;
    ImGuiViewportFlags Flags;
    ImVec2 Pos;
    ImVec2 Size;
    ImVec2 WorkPos;
    ImVec2 WorkSize;
    float DpiScale;
    ImGuiID ParentViewportId;
    ImDrawData* DrawData;
    void* RendererUserData;
    void* PlatformUserData;
    void* PlatformHandle;
    void* PlatformHandleRaw;
    _Bool PlatformRequestMove;
    _Bool PlatformRequestResize;
    _Bool PlatformRequestClose;
};
typedef struct ImVector_ImGuiPlatformMonitor {int Size;int Capacity;ImGuiPlatformMonitor* Data;} ImVector_ImGuiPlatformMonitor;
typedef struct ImVector_ImGuiViewportPtr {int Size;int Capacity;ImGuiViewport** Data;} ImVector_ImGuiViewportPtr;
struct ImGuiPlatformIO
{
    void (*Platform_CreateWindow)(ImGuiViewport* vp);
    void (*Platform_DestroyWindow)(ImGuiViewport* vp);
    void (*Platform_ShowWindow)(ImGuiViewport* vp);
    void (*Platform_SetWindowPos)(ImGuiViewport* vp, ImVec2 pos);
    ImVec2 (*Platform_GetWindowPos)(ImGuiViewport* vp);
    void (*Platform_SetWindowSize)(ImGuiViewport* vp, ImVec2 size);
    ImVec2 (*Platform_GetWindowSize)(ImGuiViewport* vp);
    void (*Platform_SetWindowFocus)(ImGuiViewport* vp);
    _Bool (*Platform_GetWindowFocus)(ImGuiViewport* vp);
    _Bool (*Platform_GetWindowMinimized)(ImGuiViewport* vp);
    void (*Platform_SetWindowTitle)(ImGuiViewport* vp, const char* str);
    void (*Platform_SetWindowAlpha)(ImGuiViewport* vp, float alpha);
    void (*Platform_UpdateWindow)(ImGuiViewport* vp);
    void (*Platform_RenderWindow)(ImGuiViewport* vp, void* render_arg);
    void (*Platform_SwapBuffers)(ImGuiViewport* vp, void* render_arg);
    float (*Platform_GetWindowDpiScale)(ImGuiViewport* vp);
    void (*Platform_OnChangedViewport)(ImGuiViewport* vp);
    int (*Platform_CreateVkSurface)(ImGuiViewport* vp, ImU64 vk_inst, const void* vk_allocators, ImU64* out_vk_surface);
    void (*Renderer_CreateWindow)(ImGuiViewport* vp);
    void (*Renderer_DestroyWindow)(ImGuiViewport* vp);
    void (*Renderer_SetWindowSize)(ImGuiViewport* vp, ImVec2 size);
    void (*Renderer_RenderWindow)(ImGuiViewport* vp, void* render_arg);
    void (*Renderer_SwapBuffers)(ImGuiViewport* vp, void* render_arg);
    ImVector_ImGuiPlatformMonitor Monitors;
    ImVector_ImGuiViewportPtr Viewports;
};
struct ImGuiPlatformMonitor
{
    ImVec2 MainPos, MainSize;
    ImVec2 WorkPos, WorkSize;
    float DpiScale;
};
struct ImGuiPlatformImeData
{
    _Bool WantVisible;
    ImVec2 InputPos;
    float InputLineHeight;
};
struct ImBitVector;
struct ImRect;
struct ImDrawDataBuilder;
struct ImDrawListSharedData;
struct ImGuiColorMod;
struct ImGuiContext;
struct ImGuiContextHook;
struct ImGuiDataTypeInfo;
struct ImGuiDockContext;
struct ImGuiDockRequest;
struct ImGuiDockNode;
struct ImGuiDockNodeSettings;
struct ImGuiGroupData;
struct ImGuiInputTextState;
struct ImGuiLastItemData;
struct ImGuiMenuColumns;
struct ImGuiNavItemData;
struct ImGuiMetricsConfig;
struct ImGuiNextWindowData;
struct ImGuiNextItemData;
struct ImGuiOldColumnData;
struct ImGuiOldColumns;
struct ImGuiPopupData;
struct ImGuiSettingsHandler;
struct ImGuiStackSizes;
struct ImGuiStyleMod;
struct ImGuiTabBar;
struct ImGuiTabItem;
struct ImGuiTable;
struct ImGuiTableColumn;
struct ImGuiTableTempData;
struct ImGuiTableSettings;
struct ImGuiTableColumnsSettings;
struct ImGuiWindow;
struct ImGuiWindowTempData;
struct ImGuiWindowSettings;
typedef int ImGuiDataAuthority;
typedef int ImGuiLayoutType;
typedef int ImGuiActivateFlags;
typedef int ImGuiItemFlags;
typedef int ImGuiItemStatusFlags;
typedef int ImGuiOldColumnFlags;
typedef int ImGuiNavHighlightFlags;
typedef int ImGuiNavDirSourceFlags;
typedef int ImGuiNavMoveFlags;
typedef int ImGuiNextItemDataFlags;
typedef int ImGuiNextWindowDataFlags;
typedef int ImGuiScrollFlags;
typedef int ImGuiSeparatorFlags;
typedef int ImGuiTextFlags;
typedef int ImGuiTooltipFlags;
typedef void (*ImGuiErrorLogCallback)(void* user_data, const char* fmt, ...);
extern ImGuiContext* GImGui;
typedef struct StbUndoRecord StbUndoRecord;
struct StbUndoRecord
{
   int where;
   int insert_length;
   int delete_length;
   int char_storage;
};
typedef struct StbUndoState StbUndoState;
struct StbUndoState
{
   StbUndoRecord undo_rec [99];
   ImWchar undo_char[999];
   short undo_point, redo_point;
   int undo_char_point, redo_char_point;
};
typedef struct STB_TexteditState STB_TexteditState;
struct STB_TexteditState
{
   int cursor;
   int select_start;
   int select_end;
   unsigned char insert_mode;
   int row_count_per_page;
   unsigned char cursor_at_end_of_line;
   unsigned char initialized;
   unsigned char has_preferred_x;
   unsigned char single_line;
   unsigned char padding1, padding2, padding3;
   float preferred_x;
   StbUndoState undostate;
};
typedef struct StbTexteditRow StbTexteditRow;
struct StbTexteditRow
{
   float x0,x1;
   float baseline_y_delta;
   float ymin,ymax;
   int num_chars;
};
typedef FILE* ImFileHandle;
typedef struct ImVec1 ImVec1;
struct ImVec1
{
    float x;
};
typedef struct ImVec2ih ImVec2ih;
struct ImVec2ih
{
    short x, y;
};
struct ImRect
{
    ImVec2 Min;
    ImVec2 Max;
};
struct ImBitVector
{
    ImVector_ImU32 Storage;
};
typedef int ImPoolIdx;
struct ImDrawListSharedData
{
    ImVec2 TexUvWhitePixel;
    ImFont* Font;
    float FontSize;
    float CurveTessellationTol;
    float CircleSegmentMaxError;
    ImVec4 ClipRectFullscreen;
    ImDrawListFlags InitialFlags;
    ImVec2 ArcFastVtx[48];
    float ArcFastRadiusCutoff;
    ImU8 CircleSegmentCounts[64];
    const ImVec4* TexUvLines;
};
typedef struct ImVector_ImDrawListPtr {int Size;int Capacity;ImDrawList** Data;} ImVector_ImDrawListPtr;
struct ImDrawDataBuilder
{
    ImVector_ImDrawListPtr Layers[2];
};
typedef enum {
    ImGuiItemFlags_None = 0,
    ImGuiItemFlags_NoTabStop = 1 << 0,
    ImGuiItemFlags_ButtonRepeat = 1 << 1,
    ImGuiItemFlags_Disabled = 1 << 2,
    ImGuiItemFlags_NoNav = 1 << 3,
    ImGuiItemFlags_NoNavDefaultFocus = 1 << 4,
    ImGuiItemFlags_SelectableDontClosePopup = 1 << 5,
    ImGuiItemFlags_MixedValue = 1 << 6,
    ImGuiItemFlags_ReadOnly = 1 << 7,
    ImGuiItemFlags_Inputable = 1 << 8
}ImGuiItemFlags_;
typedef enum {
    ImGuiItemStatusFlags_None = 0,
    ImGuiItemStatusFlags_HoveredRect = 1 << 0,
    ImGuiItemStatusFlags_HasDisplayRect = 1 << 1,
    ImGuiItemStatusFlags_Edited = 1 << 2,
    ImGuiItemStatusFlags_ToggledSelection = 1 << 3,
    ImGuiItemStatusFlags_ToggledOpen = 1 << 4,
    ImGuiItemStatusFlags_HasDeactivated = 1 << 5,
    ImGuiItemStatusFlags_Deactivated = 1 << 6,
    ImGuiItemStatusFlags_HoveredWindow = 1 << 7,
    ImGuiItemStatusFlags_FocusedByTabbing = 1 << 8
}ImGuiItemStatusFlags_;
typedef enum {
    ImGuiInputTextFlags_Multiline = 1 << 26,
    ImGuiInputTextFlags_NoMarkEdited = 1 << 27,
    ImGuiInputTextFlags_MergedItem = 1 << 28
}ImGuiInputTextFlagsPrivate_;
typedef enum {
    ImGuiButtonFlags_PressedOnClick = 1 << 4,
    ImGuiButtonFlags_PressedOnClickRelease = 1 << 5,
    ImGuiButtonFlags_PressedOnClickReleaseAnywhere = 1 << 6,
    ImGuiButtonFlags_PressedOnRelease = 1 << 7,
    ImGuiButtonFlags_PressedOnDoubleClick = 1 << 8,
    ImGuiButtonFlags_PressedOnDragDropHold = 1 << 9,
    ImGuiButtonFlags_Repeat = 1 << 10,
    ImGuiButtonFlags_FlattenChildren = 1 << 11,
    ImGuiButtonFlags_AllowItemOverlap = 1 << 12,
    ImGuiButtonFlags_DontClosePopups = 1 << 13,
    ImGuiButtonFlags_AlignTextBaseLine = 1 << 15,
    ImGuiButtonFlags_NoKeyModifiers = 1 << 16,
    ImGuiButtonFlags_NoHoldingActiveId = 1 << 17,
    ImGuiButtonFlags_NoNavFocus = 1 << 18,
    ImGuiButtonFlags_NoHoveredOnFocus = 1 << 19,
    ImGuiButtonFlags_PressedOnMask_ = ImGuiButtonFlags_PressedOnClick | ImGuiButtonFlags_PressedOnClickRelease | ImGuiButtonFlags_PressedOnClickReleaseAnywhere | ImGuiButtonFlags_PressedOnRelease | ImGuiButtonFlags_PressedOnDoubleClick | ImGuiButtonFlags_PressedOnDragDropHold,
    ImGuiButtonFlags_PressedOnDefault_ = ImGuiButtonFlags_PressedOnClickRelease
}ImGuiButtonFlagsPrivate_;
typedef enum {
    ImGuiComboFlags_CustomPreview = 1 << 20
}ImGuiComboFlagsPrivate_;
typedef enum {
    ImGuiSliderFlags_Vertical = 1 << 20,
    ImGuiSliderFlags_ReadOnly = 1 << 21
}ImGuiSliderFlagsPrivate_;
typedef enum {
    ImGuiSelectableFlags_NoHoldingActiveID = 1 << 20,
    ImGuiSelectableFlags_SelectOnNav = 1 << 21,
    ImGuiSelectableFlags_SelectOnClick = 1 << 22,
    ImGuiSelectableFlags_SelectOnRelease = 1 << 23,
    ImGuiSelectableFlags_SpanAvailWidth = 1 << 24,
    ImGuiSelectableFlags_DrawHoveredWhenHeld = 1 << 25,
    ImGuiSelectableFlags_SetNavIdOnHover = 1 << 26,
    ImGuiSelectableFlags_NoPadWithHalfSpacing = 1 << 27
}ImGuiSelectableFlagsPrivate_;
typedef enum {
    ImGuiTreeNodeFlags_ClipLabelForTrailingButton = 1 << 20
}ImGuiTreeNodeFlagsPrivate_;
typedef enum {
    ImGuiSeparatorFlags_None = 0,
    ImGuiSeparatorFlags_Horizontal = 1 << 0,
    ImGuiSeparatorFlags_Vertical = 1 << 1,
    ImGuiSeparatorFlags_SpanAllColumns = 1 << 2
}ImGuiSeparatorFlags_;
typedef enum {
    ImGuiTextFlags_None = 0,
    ImGuiTextFlags_NoWidthForLargeClippedText = 1 << 0
}ImGuiTextFlags_;
typedef enum {
    ImGuiTooltipFlags_None = 0,
    ImGuiTooltipFlags_OverridePreviousTooltip = 1 << 0
}ImGuiTooltipFlags_;
typedef enum {
    ImGuiLayoutType_Horizontal = 0,
    ImGuiLayoutType_Vertical = 1
}ImGuiLayoutType_;
typedef enum {
    ImGuiLogType_None = 0,
    ImGuiLogType_TTY,
    ImGuiLogType_File,
    ImGuiLogType_Buffer,
    ImGuiLogType_Clipboard
}ImGuiLogType;
typedef enum {
    ImGuiAxis_None = -1,
    ImGuiAxis_X = 0,
    ImGuiAxis_Y = 1
}ImGuiAxis;
typedef enum {
    ImGuiPlotType_Lines,
    ImGuiPlotType_Histogram
}ImGuiPlotType;
typedef enum {
    ImGuiPopupPositionPolicy_Default,
    ImGuiPopupPositionPolicy_ComboBox,
    ImGuiPopupPositionPolicy_Tooltip
}ImGuiPopupPositionPolicy;
typedef struct ImGuiDataTypeTempStorage ImGuiDataTypeTempStorage;
struct ImGuiDataTypeTempStorage
{
    ImU8 Data[8];
};
struct ImGuiDataTypeInfo
{
    size_t Size;
    const char* Name;
    const char* PrintFmt;
    const char* ScanFmt;
};
typedef enum {
    ImGuiDataType_String = ImGuiDataType_COUNT + 1,
    ImGuiDataType_Pointer,
    ImGuiDataType_ID
}ImGuiDataTypePrivate_;
struct ImGuiColorMod
{
    ImGuiCol Col;
    ImVec4 BackupValue;
};
struct ImGuiStyleMod
{
    ImGuiStyleVar VarIdx;
    union { int BackupInt[2]; float BackupFloat[2]; };
};
typedef struct ImGuiComboPreviewData ImGuiComboPreviewData;
struct ImGuiComboPreviewData
{
    ImRect PreviewRect;
    ImVec2 BackupCursorPos;
    ImVec2 BackupCursorMaxPos;
    ImVec2 BackupCursorPosPrevLine;
    float BackupPrevLineTextBaseOffset;
    ImGuiLayoutType BackupLayout;
};
struct ImGuiGroupData
{
    ImGuiID WindowID;
    ImVec2 BackupCursorPos;
    ImVec2 BackupCursorMaxPos;
    ImVec1 BackupIndent;
    ImVec1 BackupGroupOffset;
    ImVec2 BackupCurrLineSize;
    float BackupCurrLineTextBaseOffset;
    ImGuiID BackupActiveIdIsAlive;
    _Bool BackupActiveIdPreviousFrameIsAlive;
    _Bool BackupHoveredIdIsAlive;
    _Bool EmitItem;
};
struct ImGuiMenuColumns
{
    ImU32 TotalWidth;
    ImU32 NextTotalWidth;
    ImU16 Spacing;
    ImU16 OffsetIcon;
    ImU16 OffsetLabel;
    ImU16 OffsetShortcut;
    ImU16 OffsetMark;
    ImU16 Widths[4];
};
struct ImGuiInputTextState
{
    ImGuiID ID;
    int CurLenW, CurLenA;
    ImVector_ImWchar TextW;
    ImVector_char TextA;
    ImVector_char InitialTextA;
    _Bool TextAIsValid;
    int BufCapacityA;
    float ScrollX;
    STB_TexteditState Stb;
    float CursorAnim;
    _Bool CursorFollow;
    _Bool SelectedAllMouseLock;
    _Bool Edited;
    ImGuiInputTextFlags Flags;
};
struct ImGuiPopupData
{
    ImGuiID PopupId;
    ImGuiWindow* Window;
    ImGuiWindow* SourceWindow;
    int OpenFrameCount;
    ImGuiID OpenParentId;
    ImVec2 OpenPopupPos;
    ImVec2 OpenMousePos;
};
typedef enum {
    ImGuiNextWindowDataFlags_None = 0,
    ImGuiNextWindowDataFlags_HasPos = 1 << 0,
    ImGuiNextWindowDataFlags_HasSize = 1 << 1,
    ImGuiNextWindowDataFlags_HasContentSize = 1 << 2,
    ImGuiNextWindowDataFlags_HasCollapsed = 1 << 3,
    ImGuiNextWindowDataFlags_HasSizeConstraint = 1 << 4,
    ImGuiNextWindowDataFlags_HasFocus = 1 << 5,
    ImGuiNextWindowDataFlags_HasBgAlpha = 1 << 6,
    ImGuiNextWindowDataFlags_HasScroll = 1 << 7,
    ImGuiNextWindowDataFlags_HasViewport = 1 << 8,
    ImGuiNextWindowDataFlags_HasDock = 1 << 9,
    ImGuiNextWindowDataFlags_HasWindowClass = 1 << 10
}ImGuiNextWindowDataFlags_;
struct ImGuiNextWindowData
{
    ImGuiNextWindowDataFlags Flags;
    ImGuiCond PosCond;
    ImGuiCond SizeCond;
    ImGuiCond CollapsedCond;
    ImGuiCond DockCond;
    ImVec2 PosVal;
    ImVec2 PosPivotVal;
    ImVec2 SizeVal;
    ImVec2 ContentSizeVal;
    ImVec2 ScrollVal;
    _Bool PosUndock;
    _Bool CollapsedVal;
    ImRect SizeConstraintRect;
    ImGuiSizeCallback SizeCallback;
    void* SizeCallbackUserData;
    float BgAlphaVal;
    ImGuiID ViewportId;
    ImGuiID DockId;
    ImGuiWindowClass WindowClass;
    ImVec2 MenuBarOffsetMinVal;
};
typedef enum {
    ImGuiNextItemDataFlags_None = 0,
    ImGuiNextItemDataFlags_HasWidth = 1 << 0,
    ImGuiNextItemDataFlags_HasOpen = 1 << 1
}ImGuiNextItemDataFlags_;
struct ImGuiNextItemData
{
    ImGuiNextItemDataFlags Flags;
    float Width;
    ImGuiID FocusScopeId;
    ImGuiCond OpenCond;
    _Bool OpenVal;
};
struct ImGuiLastItemData
{
    ImGuiID ID;
    ImGuiItemFlags InFlags;
    ImGuiItemStatusFlags StatusFlags;
    ImRect Rect;
    ImRect NavRect;
    ImRect DisplayRect;
};
struct ImGuiStackSizes
{
    short SizeOfIDStack;
    short SizeOfColorStack;
    short SizeOfStyleVarStack;
    short SizeOfFontStack;
    short SizeOfFocusScopeStack;
    short SizeOfGroupStack;
    short SizeOfItemFlagsStack;
    short SizeOfBeginPopupStack;
    short SizeOfDisabledStack;
};
typedef struct ImGuiWindowStackData ImGuiWindowStackData;
struct ImGuiWindowStackData
{
    ImGuiWindow* Window;
    ImGuiLastItemData ParentLastItemDataBackup;
    ImGuiStackSizes StackSizesOnBegin;
};
typedef struct ImGuiShrinkWidthItem ImGuiShrinkWidthItem;
struct ImGuiShrinkWidthItem
{
    int Index;
    float Width;
};
typedef struct ImGuiPtrOrIndex ImGuiPtrOrIndex;
struct ImGuiPtrOrIndex
{
    void* Ptr;
    int Index;
};
typedef struct ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN {ImU32 Storage[(ImGuiKey_NamedKey_COUNT+31)>>5];} ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
typedef ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN ImBitArrayForNamedKeys;
typedef enum {
    ImGuiKey_LegacyNativeKey_BEGIN = 0,
    ImGuiKey_LegacyNativeKey_END = 512,
    ImGuiKey_Gamepad_BEGIN = ImGuiKey_GamepadStart,
    ImGuiKey_Gamepad_END = ImGuiKey_GamepadRStickRight + 1
}ImGuiKeyPrivate_;
typedef enum {
    ImGuiInputEventType_None = 0,
    ImGuiInputEventType_MousePos,
    ImGuiInputEventType_MouseWheel,
    ImGuiInputEventType_MouseButton,
    ImGuiInputEventType_MouseViewport,
    ImGuiInputEventType_Key,
    ImGuiInputEventType_Char,
    ImGuiInputEventType_Focus,
    ImGuiInputEventType_COUNT
}ImGuiInputEventType;
typedef enum {
    ImGuiInputSource_None = 0,
    ImGuiInputSource_Mouse,
    ImGuiInputSource_Keyboard,
    ImGuiInputSource_Gamepad,
    ImGuiInputSource_Clipboard,
    ImGuiInputSource_Nav,
    ImGuiInputSource_COUNT
}ImGuiInputSource;
typedef struct ImGuiInputEventMousePos ImGuiInputEventMousePos;
struct ImGuiInputEventMousePos
{ float PosX, PosY;
};
typedef struct ImGuiInputEventMouseWheel ImGuiInputEventMouseWheel;
struct ImGuiInputEventMouseWheel
{ float WheelX, WheelY;
};
typedef struct ImGuiInputEventMouseButton ImGuiInputEventMouseButton;
struct ImGuiInputEventMouseButton
{ int Button; _Bool Down;
};
typedef struct ImGuiInputEventMouseViewport ImGuiInputEventMouseViewport;
struct ImGuiInputEventMouseViewport
{ ImGuiID HoveredViewportID;
};
typedef struct ImGuiInputEventKey ImGuiInputEventKey;
struct ImGuiInputEventKey
{ ImGuiKey Key; _Bool Down; float AnalogValue;
};
typedef struct ImGuiInputEventText ImGuiInputEventText;
struct ImGuiInputEventText
{ unsigned int Char;
};
typedef struct ImGuiInputEventAppFocused ImGuiInputEventAppFocused;
struct ImGuiInputEventAppFocused
{ _Bool Focused;
};
typedef struct ImGuiInputEvent ImGuiInputEvent;
struct ImGuiInputEvent
{
    ImGuiInputEventType Type;
    ImGuiInputSource Source;
    union
    {
        ImGuiInputEventMousePos MousePos;
        ImGuiInputEventMouseWheel MouseWheel;
        ImGuiInputEventMouseButton MouseButton;
        ImGuiInputEventMouseViewport MouseViewport;
        ImGuiInputEventKey Key;
        ImGuiInputEventText Text;
        ImGuiInputEventAppFocused AppFocused;
    };
    _Bool AddedByTestEngine;
};
typedef enum {
    ImGuiInputReadMode_Down,
    ImGuiInputReadMode_Pressed,
    ImGuiInputReadMode_Released,
    ImGuiInputReadMode_Repeat,
    ImGuiInputReadMode_RepeatSlow,
    ImGuiInputReadMode_RepeatFast
}ImGuiInputReadMode;
typedef struct ImGuiListClipperRange ImGuiListClipperRange;
struct ImGuiListClipperRange
{
    int Min;
    int Max;
    _Bool PosToIndexConvert;
    ImS8 PosToIndexOffsetMin;
    ImS8 PosToIndexOffsetMax;
};
typedef struct ImGuiListClipperData ImGuiListClipperData;
typedef struct ImVector_ImGuiListClipperRange {int Size;int Capacity;ImGuiListClipperRange* Data;} ImVector_ImGuiListClipperRange;
struct ImGuiListClipperData
{
    ImGuiListClipper* ListClipper;
    float LossynessOffset;
    int StepNo;
    int ItemsFrozen;
    ImVector_ImGuiListClipperRange Ranges;
};
typedef enum {
    ImGuiActivateFlags_None = 0,
    ImGuiActivateFlags_PreferInput = 1 << 0,
    ImGuiActivateFlags_PreferTweak = 1 << 1,
    ImGuiActivateFlags_TryToPreserveState = 1 << 2
}ImGuiActivateFlags_;
typedef enum {
    ImGuiScrollFlags_None = 0,
    ImGuiScrollFlags_KeepVisibleEdgeX = 1 << 0,
    ImGuiScrollFlags_KeepVisibleEdgeY = 1 << 1,
    ImGuiScrollFlags_KeepVisibleCenterX = 1 << 2,
    ImGuiScrollFlags_KeepVisibleCenterY = 1 << 3,
    ImGuiScrollFlags_AlwaysCenterX = 1 << 4,
    ImGuiScrollFlags_AlwaysCenterY = 1 << 5,
    ImGuiScrollFlags_NoScrollParent = 1 << 6,
    ImGuiScrollFlags_MaskX_ = ImGuiScrollFlags_KeepVisibleEdgeX | ImGuiScrollFlags_KeepVisibleCenterX | ImGuiScrollFlags_AlwaysCenterX,
    ImGuiScrollFlags_MaskY_ = ImGuiScrollFlags_KeepVisibleEdgeY | ImGuiScrollFlags_KeepVisibleCenterY | ImGuiScrollFlags_AlwaysCenterY
}ImGuiScrollFlags_;
typedef enum {
    ImGuiNavHighlightFlags_None = 0,
    ImGuiNavHighlightFlags_TypeDefault = 1 << 0,
    ImGuiNavHighlightFlags_TypeThin = 1 << 1,
    ImGuiNavHighlightFlags_AlwaysDraw = 1 << 2,
    ImGuiNavHighlightFlags_NoRounding = 1 << 3
}ImGuiNavHighlightFlags_;
typedef enum {
    ImGuiNavDirSourceFlags_None = 0,
    ImGuiNavDirSourceFlags_RawKeyboard = 1 << 0,
    ImGuiNavDirSourceFlags_Keyboard = 1 << 1,
    ImGuiNavDirSourceFlags_PadDPad = 1 << 2,
    ImGuiNavDirSourceFlags_PadLStick = 1 << 3
}ImGuiNavDirSourceFlags_;
typedef enum {
    ImGuiNavMoveFlags_None = 0,
    ImGuiNavMoveFlags_LoopX = 1 << 0,
    ImGuiNavMoveFlags_LoopY = 1 << 1,
    ImGuiNavMoveFlags_WrapX = 1 << 2,
    ImGuiNavMoveFlags_WrapY = 1 << 3,
    ImGuiNavMoveFlags_AllowCurrentNavId = 1 << 4,
    ImGuiNavMoveFlags_AlsoScoreVisibleSet = 1 << 5,
    ImGuiNavMoveFlags_ScrollToEdgeY = 1 << 6,
    ImGuiNavMoveFlags_Forwarded = 1 << 7,
    ImGuiNavMoveFlags_DebugNoResult = 1 << 8,
    ImGuiNavMoveFlags_FocusApi = 1 << 9,
    ImGuiNavMoveFlags_Tabbing = 1 << 10,
    ImGuiNavMoveFlags_Activate = 1 << 11,
    ImGuiNavMoveFlags_DontSetNavHighlight = 1 << 12
}ImGuiNavMoveFlags_;
typedef enum {
    ImGuiNavLayer_Main = 0,
    ImGuiNavLayer_Menu = 1,
    ImGuiNavLayer_COUNT
}ImGuiNavLayer;
struct ImGuiNavItemData
{
    ImGuiWindow* Window;
    ImGuiID ID;
    ImGuiID FocusScopeId;
    ImRect RectRel;
    ImGuiItemFlags InFlags;
    float DistBox;
    float DistCenter;
    float DistAxial;
};
typedef enum {
    ImGuiOldColumnFlags_None = 0,
    ImGuiOldColumnFlags_NoBorder = 1 << 0,
    ImGuiOldColumnFlags_NoResize = 1 << 1,
    ImGuiOldColumnFlags_NoPreserveWidths = 1 << 2,
    ImGuiOldColumnFlags_NoForceWithinWindow = 1 << 3,
    ImGuiOldColumnFlags_GrowParentContentsSize = 1 << 4
}ImGuiOldColumnFlags_;
struct ImGuiOldColumnData
{
    float OffsetNorm;
    float OffsetNormBeforeResize;
    ImGuiOldColumnFlags Flags;
    ImRect ClipRect;
};
typedef struct ImVector_ImGuiOldColumnData {int Size;int Capacity;ImGuiOldColumnData* Data;} ImVector_ImGuiOldColumnData;
struct ImGuiOldColumns
{
    ImGuiID ID;
    ImGuiOldColumnFlags Flags;
    _Bool IsFirstFrame;
    _Bool IsBeingResized;
    int Current;
    int Count;
    float OffMinX, OffMaxX;
    float LineMinY, LineMaxY;
    float HostCursorPosY;
    float HostCursorMaxPosX;
    ImRect HostInitialClipRect;
    ImRect HostBackupClipRect;
    ImRect HostBackupParentWorkRect;
    ImVector_ImGuiOldColumnData Columns;
    ImDrawListSplitter Splitter;
};
typedef enum {
    ImGuiDockNodeFlags_DockSpace = 1 << 10,
    ImGuiDockNodeFlags_CentralNode = 1 << 11,
    ImGuiDockNodeFlags_NoTabBar = 1 << 12,
    ImGuiDockNodeFlags_HiddenTabBar = 1 << 13,
    ImGuiDockNodeFlags_NoWindowMenuButton = 1 << 14,
    ImGuiDockNodeFlags_NoCloseButton = 1 << 15,
    ImGuiDockNodeFlags_NoDocking = 1 << 16,
    ImGuiDockNodeFlags_NoDockingSplitMe = 1 << 17,
    ImGuiDockNodeFlags_NoDockingSplitOther = 1 << 18,
    ImGuiDockNodeFlags_NoDockingOverMe = 1 << 19,
    ImGuiDockNodeFlags_NoDockingOverOther = 1 << 20,
    ImGuiDockNodeFlags_NoDockingOverEmpty = 1 << 21,
    ImGuiDockNodeFlags_NoResizeX = 1 << 22,
    ImGuiDockNodeFlags_NoResizeY = 1 << 23,
    ImGuiDockNodeFlags_SharedFlagsInheritMask_ = ~0,
    ImGuiDockNodeFlags_NoResizeFlagsMask_ = ImGuiDockNodeFlags_NoResize | ImGuiDockNodeFlags_NoResizeX | ImGuiDockNodeFlags_NoResizeY,
    ImGuiDockNodeFlags_LocalFlagsMask_ = ImGuiDockNodeFlags_NoSplit | ImGuiDockNodeFlags_NoResizeFlagsMask_ | ImGuiDockNodeFlags_AutoHideTabBar | ImGuiDockNodeFlags_DockSpace | ImGuiDockNodeFlags_CentralNode | ImGuiDockNodeFlags_NoTabBar | ImGuiDockNodeFlags_HiddenTabBar | ImGuiDockNodeFlags_NoWindowMenuButton | ImGuiDockNodeFlags_NoCloseButton | ImGuiDockNodeFlags_NoDocking,
    ImGuiDockNodeFlags_LocalFlagsTransferMask_ = ImGuiDockNodeFlags_LocalFlagsMask_ & ~ImGuiDockNodeFlags_DockSpace,
    ImGuiDockNodeFlags_SavedFlagsMask_ = ImGuiDockNodeFlags_NoResizeFlagsMask_ | ImGuiDockNodeFlags_DockSpace | ImGuiDockNodeFlags_CentralNode | ImGuiDockNodeFlags_NoTabBar | ImGuiDockNodeFlags_HiddenTabBar | ImGuiDockNodeFlags_NoWindowMenuButton | ImGuiDockNodeFlags_NoCloseButton | ImGuiDockNodeFlags_NoDocking
}ImGuiDockNodeFlagsPrivate_;
typedef enum {
    ImGuiDataAuthority_Auto,
    ImGuiDataAuthority_DockNode,
    ImGuiDataAuthority_Window
}ImGuiDataAuthority_;
typedef enum {
    ImGuiDockNodeState_Unknown,
    ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow,
    ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing,
    ImGuiDockNodeState_HostWindowVisible
}ImGuiDockNodeState;
typedef struct ImVector_ImGuiWindowPtr {int Size;int Capacity;ImGuiWindow** Data;} ImVector_ImGuiWindowPtr;
struct ImGuiDockNode
{
    ImGuiID ID;
    ImGuiDockNodeFlags SharedFlags;
    ImGuiDockNodeFlags LocalFlags;
    ImGuiDockNodeFlags LocalFlagsInWindows;
    ImGuiDockNodeFlags MergedFlags;
    ImGuiDockNodeState State;
    ImGuiDockNode* ParentNode;
    ImGuiDockNode* ChildNodes[2];
    ImVector_ImGuiWindowPtr Windows;
    ImGuiTabBar* TabBar;
    ImVec2 Pos;
    ImVec2 Size;
    ImVec2 SizeRef;
    ImGuiAxis SplitAxis;
    ImGuiWindowClass WindowClass;
    ImU32 LastBgColor;
    ImGuiWindow* HostWindow;
    ImGuiWindow* VisibleWindow;
    ImGuiDockNode* CentralNode;
    ImGuiDockNode* OnlyNodeWithWindows;
    int CountNodeWithWindows;
    int LastFrameAlive;
    int LastFrameActive;
    int LastFrameFocused;
    ImGuiID LastFocusedNodeId;
    ImGuiID SelectedTabId;
    ImGuiID WantCloseTabId;
    ImGuiDataAuthority AuthorityForPos :3;
    ImGuiDataAuthority AuthorityForSize :3;
    ImGuiDataAuthority AuthorityForViewport :3;
    _Bool IsVisible :1;
    _Bool IsFocused :1;
    _Bool IsBgDrawnThisFrame :1;
    _Bool HasCloseButton :1;
    _Bool HasWindowMenuButton :1;
    _Bool HasCentralNodeChild :1;
    _Bool WantCloseAll :1;
    _Bool WantLockSizeOnce :1;
    _Bool WantMouseMove :1;
    _Bool WantHiddenTabBarUpdate :1;
    _Bool WantHiddenTabBarToggle :1;
};
typedef enum {
    ImGuiWindowDockStyleCol_Text,
    ImGuiWindowDockStyleCol_Tab,
    ImGuiWindowDockStyleCol_TabHovered,
    ImGuiWindowDockStyleCol_TabActive,
    ImGuiWindowDockStyleCol_TabUnfocused,
    ImGuiWindowDockStyleCol_TabUnfocusedActive,
    ImGuiWindowDockStyleCol_COUNT
}ImGuiWindowDockStyleCol;
typedef struct ImGuiWindowDockStyle ImGuiWindowDockStyle;
struct ImGuiWindowDockStyle
{
    ImU32 Colors[ImGuiWindowDockStyleCol_COUNT];
};
typedef struct ImVector_ImGuiDockRequest {int Size;int Capacity;ImGuiDockRequest* Data;} ImVector_ImGuiDockRequest;
typedef struct ImVector_ImGuiDockNodeSettings {int Size;int Capacity;ImGuiDockNodeSettings* Data;} ImVector_ImGuiDockNodeSettings;
struct ImGuiDockContext
{
    ImGuiStorage Nodes;
    ImVector_ImGuiDockRequest Requests;
    ImVector_ImGuiDockNodeSettings NodesSettings;
    _Bool WantFullRebuild;
};
typedef struct ImGuiViewportP ImGuiViewportP;
struct ImGuiViewportP
{
    ImGuiViewport _ImGuiViewport;
    int Idx;
    int LastFrameActive;
    int LastFrontMostStampCount;
    ImGuiID LastNameHash;
    ImVec2 LastPos;
    float Alpha;
    float LastAlpha;
    short PlatformMonitor;
    _Bool PlatformWindowCreated;
    ImGuiWindow* Window;
    int DrawListsLastFrame[2];
    ImDrawList* DrawLists[2];
    ImDrawData DrawDataP;
    ImDrawDataBuilder DrawDataBuilder;
    ImVec2 LastPlatformPos;
    ImVec2 LastPlatformSize;
    ImVec2 LastRendererSize;
    ImVec2 WorkOffsetMin;
    ImVec2 WorkOffsetMax;
    ImVec2 BuildWorkOffsetMin;
    ImVec2 BuildWorkOffsetMax;
};
struct ImGuiWindowSettings
{
    ImGuiID ID;
    ImVec2ih Pos;
    ImVec2ih Size;
    ImVec2ih ViewportPos;
    ImGuiID ViewportId;
    ImGuiID DockId;
    ImGuiID ClassId;
    short DockOrder;
    _Bool Collapsed;
    _Bool WantApply;
};
struct ImGuiSettingsHandler
{
    const char* TypeName;
    ImGuiID TypeHash;
    void (*ClearAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void (*ReadInitFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void* (*ReadOpenFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, const char* name);
    void (*ReadLineFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, void* entry, const char* line);
    void (*ApplyAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void (*WriteAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, ImGuiTextBuffer* out_buf);
    void* UserData;
};
struct ImGuiMetricsConfig
{
    _Bool ShowStackTool;
    _Bool ShowWindowsRects;
    _Bool ShowWindowsBeginOrder;
    _Bool ShowTablesRects;
    _Bool ShowDrawCmdMesh;
    _Bool ShowDrawCmdBoundingBoxes;
    _Bool ShowDockingNodes;
    int ShowWindowsRectsType;
    int ShowTablesRectsType;
};
typedef struct ImGuiStackLevelInfo ImGuiStackLevelInfo;
struct ImGuiStackLevelInfo
{
    ImGuiID ID;
    ImS8 QueryFrameCount;
    _Bool QuerySuccess;
    char Desc[58];
};
typedef struct ImGuiStackTool ImGuiStackTool;
typedef struct ImVector_ImGuiStackLevelInfo {int Size;int Capacity;ImGuiStackLevelInfo* Data;} ImVector_ImGuiStackLevelInfo;
struct ImGuiStackTool
{
    int LastActiveFrame;
    int StackLevel;
    ImGuiID QueryId;
    ImVector_ImGuiStackLevelInfo Results;
};
typedef void (*ImGuiContextHookCallback)(ImGuiContext* ctx, ImGuiContextHook* hook);
typedef enum { ImGuiContextHookType_NewFramePre, ImGuiContextHookType_NewFramePost, ImGuiContextHookType_EndFramePre, ImGuiContextHookType_EndFramePost, ImGuiContextHookType_RenderPre, ImGuiContextHookType_RenderPost, ImGuiContextHookType_Shutdown, ImGuiContextHookType_PendingRemoval_ }ImGuiContextHookType;
struct ImGuiContextHook
{
    ImGuiID HookId;
    ImGuiContextHookType Type;
    ImGuiID Owner;
    ImGuiContextHookCallback Callback;
    void* UserData;
};
typedef struct ImVector_ImGuiInputEvent {int Size;int Capacity;ImGuiInputEvent* Data;} ImVector_ImGuiInputEvent;
typedef struct ImVector_ImGuiWindowStackData {int Size;int Capacity;ImGuiWindowStackData* Data;} ImVector_ImGuiWindowStackData;
typedef struct ImVector_ImGuiColorMod {int Size;int Capacity;ImGuiColorMod* Data;} ImVector_ImGuiColorMod;
typedef struct ImVector_ImGuiStyleMod {int Size;int Capacity;ImGuiStyleMod* Data;} ImVector_ImGuiStyleMod;
typedef struct ImVector_ImGuiID {int Size;int Capacity;ImGuiID* Data;} ImVector_ImGuiID;
typedef struct ImVector_ImGuiItemFlags {int Size;int Capacity;ImGuiItemFlags* Data;} ImVector_ImGuiItemFlags;
typedef struct ImVector_ImGuiGroupData {int Size;int Capacity;ImGuiGroupData* Data;} ImVector_ImGuiGroupData;
typedef struct ImVector_ImGuiPopupData {int Size;int Capacity;ImGuiPopupData* Data;} ImVector_ImGuiPopupData;
typedef struct ImVector_ImGuiViewportPPtr {int Size;int Capacity;ImGuiViewportP** Data;} ImVector_ImGuiViewportPPtr;
typedef struct ImVector_unsigned_char {int Size;int Capacity;unsigned char* Data;} ImVector_unsigned_char;
typedef struct ImVector_ImGuiListClipperData {int Size;int Capacity;ImGuiListClipperData* Data;} ImVector_ImGuiListClipperData;
typedef struct ImVector_ImGuiTableTempData {int Size;int Capacity;ImGuiTableTempData* Data;} ImVector_ImGuiTableTempData;
typedef struct ImVector_ImGuiTable {int Size;int Capacity;ImGuiTable* Data;} ImVector_ImGuiTable;
typedef struct ImPool_ImGuiTable {ImVector_ImGuiTable Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiTable;
typedef struct ImVector_ImGuiTabBar {int Size;int Capacity;ImGuiTabBar* Data;} ImVector_ImGuiTabBar;
typedef struct ImPool_ImGuiTabBar {ImVector_ImGuiTabBar Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiTabBar;
typedef struct ImVector_ImGuiPtrOrIndex {int Size;int Capacity;ImGuiPtrOrIndex* Data;} ImVector_ImGuiPtrOrIndex;
typedef struct ImVector_ImGuiShrinkWidthItem {int Size;int Capacity;ImGuiShrinkWidthItem* Data;} ImVector_ImGuiShrinkWidthItem;
typedef struct ImVector_ImGuiSettingsHandler {int Size;int Capacity;ImGuiSettingsHandler* Data;} ImVector_ImGuiSettingsHandler;
typedef struct ImChunkStream_ImGuiWindowSettings {ImVector_char Buf;} ImChunkStream_ImGuiWindowSettings;
typedef struct ImChunkStream_ImGuiTableSettings {ImVector_char Buf;} ImChunkStream_ImGuiTableSettings;
typedef struct ImVector_ImGuiContextHook {int Size;int Capacity;ImGuiContextHook* Data;} ImVector_ImGuiContextHook;
struct ImGuiContext
{
    _Bool Initialized;
    _Bool FontAtlasOwnedByContext;
    ImGuiIO IO;
    ImGuiPlatformIO PlatformIO;
    ImVector_ImGuiInputEvent InputEventsQueue;
    ImVector_ImGuiInputEvent InputEventsTrail;
    ImGuiStyle Style;
    ImGuiConfigFlags ConfigFlagsCurrFrame;
    ImGuiConfigFlags ConfigFlagsLastFrame;
    ImFont* Font;
    float FontSize;
    float FontBaseSize;
    ImDrawListSharedData DrawListSharedData;
    double Time;
    int FrameCount;
    int FrameCountEnded;
    int FrameCountPlatformEnded;
    int FrameCountRendered;
    _Bool WithinFrameScope;
    _Bool WithinFrameScopeWithImplicitWindow;
    _Bool WithinEndChild;
    _Bool GcCompactAll;
    _Bool TestEngineHookItems;
    void* TestEngine;
    ImVector_ImGuiWindowPtr Windows;
    ImVector_ImGuiWindowPtr WindowsFocusOrder;
    ImVector_ImGuiWindowPtr WindowsTempSortBuffer;
    ImVector_ImGuiWindowStackData CurrentWindowStack;
    ImGuiStorage WindowsById;
    int WindowsActiveCount;
    ImVec2 WindowsHoverPadding;
    ImGuiWindow* CurrentWindow;
    ImGuiWindow* HoveredWindow;
    ImGuiWindow* HoveredWindowUnderMovingWindow;
    ImGuiDockNode* HoveredDockNode;
    ImGuiWindow* MovingWindow;
    ImGuiWindow* WheelingWindow;
    ImVec2 WheelingWindowRefMousePos;
    float WheelingWindowTimer;
    ImGuiID DebugHookIdInfo;
    ImGuiID HoveredId;
    ImGuiID HoveredIdPreviousFrame;
    _Bool HoveredIdAllowOverlap;
    _Bool HoveredIdUsingMouseWheel;
    _Bool HoveredIdPreviousFrameUsingMouseWheel;
    _Bool HoveredIdDisabled;
    float HoveredIdTimer;
    float HoveredIdNotActiveTimer;
    ImGuiID ActiveId;
    ImGuiID ActiveIdIsAlive;
    float ActiveIdTimer;
    _Bool ActiveIdIsJustActivated;
    _Bool ActiveIdAllowOverlap;
    _Bool ActiveIdNoClearOnFocusLoss;
    _Bool ActiveIdHasBeenPressedBefore;
    _Bool ActiveIdHasBeenEditedBefore;
    _Bool ActiveIdHasBeenEditedThisFrame;
    _Bool ActiveIdUsingMouseWheel;
    ImU32 ActiveIdUsingNavDirMask;
    ImU32 ActiveIdUsingNavInputMask;
    ImBitArrayForNamedKeys ActiveIdUsingKeyInputMask;
    ImVec2 ActiveIdClickOffset;
    ImGuiWindow* ActiveIdWindow;
    ImGuiInputSource ActiveIdSource;
    int ActiveIdMouseButton;
    ImGuiID ActiveIdPreviousFrame;
    _Bool ActiveIdPreviousFrameIsAlive;
    _Bool ActiveIdPreviousFrameHasBeenEditedBefore;
    ImGuiWindow* ActiveIdPreviousFrameWindow;
    ImGuiID LastActiveId;
    float LastActiveIdTimer;
    ImGuiItemFlags CurrentItemFlags;
    ImGuiNextItemData NextItemData;
    ImGuiLastItemData LastItemData;
    ImGuiNextWindowData NextWindowData;
    ImVector_ImGuiColorMod ColorStack;
    ImVector_ImGuiStyleMod StyleVarStack;
    ImVector_ImFontPtr FontStack;
    ImVector_ImGuiID FocusScopeStack;
    ImVector_ImGuiItemFlags ItemFlagsStack;
    ImVector_ImGuiGroupData GroupStack;
    ImVector_ImGuiPopupData OpenPopupStack;
    ImVector_ImGuiPopupData BeginPopupStack;
    int BeginMenuCount;
    ImVector_ImGuiViewportPPtr Viewports;
    float CurrentDpiScale;
    ImGuiViewportP* CurrentViewport;
    ImGuiViewportP* MouseViewport;
    ImGuiViewportP* MouseLastHoveredViewport;
    ImGuiID PlatformLastFocusedViewportId;
    ImGuiPlatformMonitor FallbackMonitor;
    int ViewportFrontMostStampCount;
    ImGuiWindow* NavWindow;
    ImGuiID NavId;
    ImGuiID NavFocusScopeId;
    ImGuiID NavActivateId;
    ImGuiID NavActivateDownId;
    ImGuiID NavActivatePressedId;
    ImGuiID NavActivateInputId;
    ImGuiActivateFlags NavActivateFlags;
    ImGuiID NavJustMovedToId;
    ImGuiID NavJustMovedToFocusScopeId;
    ImGuiKeyModFlags NavJustMovedToKeyMods;
    ImGuiID NavNextActivateId;
    ImGuiActivateFlags NavNextActivateFlags;
    ImGuiInputSource NavInputSource;
    ImGuiNavLayer NavLayer;
    _Bool NavIdIsAlive;
    _Bool NavMousePosDirty;
    _Bool NavDisableHighlight;
    _Bool NavDisableMouseHover;
    _Bool NavAnyRequest;
    _Bool NavInitRequest;
    _Bool NavInitRequestFromMove;
    ImGuiID NavInitResultId;
    ImRect NavInitResultRectRel;
    _Bool NavMoveSubmitted;
    _Bool NavMoveScoringItems;
    _Bool NavMoveForwardToNextFrame;
    ImGuiNavMoveFlags NavMoveFlags;
    ImGuiScrollFlags NavMoveScrollFlags;
    ImGuiKeyModFlags NavMoveKeyMods;
    ImGuiDir NavMoveDir;
    ImGuiDir NavMoveDirForDebug;
    ImGuiDir NavMoveClipDir;
    ImRect NavScoringRect;
    ImRect NavScoringNoClipRect;
    int NavScoringDebugCount;
    int NavTabbingDir;
    int NavTabbingCounter;
    ImGuiNavItemData NavMoveResultLocal;
    ImGuiNavItemData NavMoveResultLocalVisible;
    ImGuiNavItemData NavMoveResultOther;
    ImGuiNavItemData NavTabbingResultFirst;
    ImGuiWindow* NavWindowingTarget;
    ImGuiWindow* NavWindowingTargetAnim;
    ImGuiWindow* NavWindowingListWindow;
    float NavWindowingTimer;
    float NavWindowingHighlightAlpha;
    _Bool NavWindowingToggleLayer;
    float DimBgRatio;
    ImGuiMouseCursor MouseCursor;
    _Bool DragDropActive;
    _Bool DragDropWithinSource;
    _Bool DragDropWithinTarget;
    ImGuiDragDropFlags DragDropSourceFlags;
    int DragDropSourceFrameCount;
    int DragDropMouseButton;
    ImGuiPayload DragDropPayload;
    ImRect DragDropTargetRect;
    ImGuiID DragDropTargetId;
    ImGuiDragDropFlags DragDropAcceptFlags;
    float DragDropAcceptIdCurrRectSurface;
    ImGuiID DragDropAcceptIdCurr;
    ImGuiID DragDropAcceptIdPrev;
    int DragDropAcceptFrameCount;
    ImGuiID DragDropHoldJustPressedId;
    ImVector_unsigned_char DragDropPayloadBufHeap;
    unsigned char DragDropPayloadBufLocal[16];
    int ClipperTempDataStacked;
    ImVector_ImGuiListClipperData ClipperTempData;
    ImGuiTable* CurrentTable;
    int TablesTempDataStacked;
    ImVector_ImGuiTableTempData TablesTempData;
    ImPool_ImGuiTable Tables;
    ImVector_float TablesLastTimeActive;
    ImVector_ImDrawChannel DrawChannelsTempMergeBuffer;
    ImGuiTabBar* CurrentTabBar;
    ImPool_ImGuiTabBar TabBars;
    ImVector_ImGuiPtrOrIndex CurrentTabBarStack;
    ImVector_ImGuiShrinkWidthItem ShrinkWidthBuffer;
    ImVec2 MouseLastValidPos;
    ImGuiInputTextState InputTextState;
    ImFont InputTextPasswordFont;
    ImGuiID TempInputId;
    ImGuiColorEditFlags ColorEditOptions;
    float ColorEditLastHue;
    float ColorEditLastSat;
    ImU32 ColorEditLastColor;
    ImVec4 ColorPickerRef;
    ImGuiComboPreviewData ComboPreviewData;
    float SliderCurrentAccum;
    _Bool SliderCurrentAccumDirty;
    _Bool DragCurrentAccumDirty;
    float DragCurrentAccum;
    float DragSpeedDefaultRatio;
    float ScrollbarClickDeltaToGrabCenter;
    float DisabledAlphaBackup;
    short DisabledStackSize;
    short TooltipOverrideCount;
    float TooltipSlowDelay;
    ImVector_char ClipboardHandlerData;
    ImVector_ImGuiID MenusIdSubmittedThisFrame;
    ImGuiPlatformImeData PlatformImeData;
    ImGuiPlatformImeData PlatformImeDataPrev;
    ImGuiID PlatformImeViewport;
    char PlatformLocaleDecimalPoint;
    ImGuiDockContext DockContext;
    _Bool SettingsLoaded;
    float SettingsDirtyTimer;
    ImGuiTextBuffer SettingsIniData;
    ImVector_ImGuiSettingsHandler SettingsHandlers;
    ImChunkStream_ImGuiWindowSettings SettingsWindows;
    ImChunkStream_ImGuiTableSettings SettingsTables;
    ImVector_ImGuiContextHook Hooks;
    ImGuiID HookIdNext;
    _Bool LogEnabled;
    ImGuiLogType LogType;
    ImFileHandle LogFile;
    ImGuiTextBuffer LogBuffer;
    const char* LogNextPrefix;
    const char* LogNextSuffix;
    float LogLinePosY;
    _Bool LogLineFirstItem;
    int LogDepthRef;
    int LogDepthToExpand;
    int LogDepthToExpandDefault;
    _Bool DebugItemPickerActive;
    ImGuiID DebugItemPickerBreakId;
    ImGuiMetricsConfig DebugMetricsConfig;
    ImGuiStackTool DebugStackTool;
    float FramerateSecPerFrame[120];
    int FramerateSecPerFrameIdx;
    int FramerateSecPerFrameCount;
    float FramerateSecPerFrameAccum;
    int WantCaptureMouseNextFrame;
    int WantCaptureKeyboardNextFrame;
    int WantTextInputNextFrame;
    char TempBuffer[1024 * 3 + 1];
};
struct ImGuiWindowTempData
{
    ImVec2 CursorPos;
    ImVec2 CursorPosPrevLine;
    ImVec2 CursorStartPos;
    ImVec2 CursorMaxPos;
    ImVec2 IdealMaxPos;
    ImVec2 CurrLineSize;
    ImVec2 PrevLineSize;
    float CurrLineTextBaseOffset;
    float PrevLineTextBaseOffset;
    ImVec1 Indent;
    ImVec1 ColumnsOffset;
    ImVec1 GroupOffset;
    ImVec2 CursorStartPosLossyness;
    ImGuiNavLayer NavLayerCurrent;
    short NavLayersActiveMask;
    short NavLayersActiveMaskNext;
    ImGuiID NavFocusScopeIdCurrent;
    _Bool NavHideHighlightOneFrame;
    _Bool NavHasScroll;
    _Bool MenuBarAppending;
    ImVec2 MenuBarOffset;
    ImGuiMenuColumns MenuColumns;
    int TreeDepth;
    ImU32 TreeJumpToParentOnPopMask;
    ImVector_ImGuiWindowPtr ChildWindows;
    ImGuiStorage* StateStorage;
    ImGuiOldColumns* CurrentColumns;
    int CurrentTableIdx;
    ImGuiLayoutType LayoutType;
    ImGuiLayoutType ParentLayoutType;
    float ItemWidth;
    float TextWrapPos;
    ImVector_float ItemWidthStack;
    ImVector_float TextWrapPosStack;
};
typedef struct ImVector_ImGuiOldColumns {int Size;int Capacity;ImGuiOldColumns* Data;} ImVector_ImGuiOldColumns;
struct ImGuiWindow
{
    char* Name;
    ImGuiID ID;
    ImGuiWindowFlags Flags, FlagsPreviousFrame;
    ImGuiWindowClass WindowClass;
    ImGuiViewportP* Viewport;
    ImGuiID ViewportId;
    ImVec2 ViewportPos;
    int ViewportAllowPlatformMonitorExtend;
    ImVec2 Pos;
    ImVec2 Size;
    ImVec2 SizeFull;
    ImVec2 ContentSize;
    ImVec2 ContentSizeIdeal;
    ImVec2 ContentSizeExplicit;
    ImVec2 WindowPadding;
    float WindowRounding;
    float WindowBorderSize;
    int NameBufLen;
    ImGuiID MoveId;
    ImGuiID TabId;
    ImGuiID ChildId;
    ImVec2 Scroll;
    ImVec2 ScrollMax;
    ImVec2 ScrollTarget;
    ImVec2 ScrollTargetCenterRatio;
    ImVec2 ScrollTargetEdgeSnapDist;
    ImVec2 ScrollbarSizes;
    _Bool ScrollbarX, ScrollbarY;
    _Bool ViewportOwned;
    _Bool Active;
    _Bool WasActive;
    _Bool WriteAccessed;
    _Bool Collapsed;
    _Bool WantCollapseToggle;
    _Bool SkipItems;
    _Bool Appearing;
    _Bool Hidden;
    _Bool IsFallbackWindow;
    _Bool IsExplicitChild;
    _Bool HasCloseButton;
    signed char ResizeBorderHeld;
    short BeginCount;
    short BeginOrderWithinParent;
    short BeginOrderWithinContext;
    short FocusOrder;
    ImGuiID PopupId;
    ImS8 AutoFitFramesX, AutoFitFramesY;
    ImS8 AutoFitChildAxises;
    _Bool AutoFitOnlyGrows;
    ImGuiDir AutoPosLastDirection;
    ImS8 HiddenFramesCanSkipItems;
    ImS8 HiddenFramesCannotSkipItems;
    ImS8 HiddenFramesForRenderOnly;
    ImS8 DisableInputsFrames;
    ImGuiCond SetWindowPosAllowFlags : 8;
    ImGuiCond SetWindowSizeAllowFlags : 8;
    ImGuiCond SetWindowCollapsedAllowFlags : 8;
    ImGuiCond SetWindowDockAllowFlags : 8;
    ImVec2 SetWindowPosVal;
    ImVec2 SetWindowPosPivot;
    ImVector_ImGuiID IDStack;
    ImGuiWindowTempData DC;
    ImRect OuterRectClipped;
    ImRect InnerRect;
    ImRect InnerClipRect;
    ImRect WorkRect;
    ImRect ParentWorkRect;
    ImRect ClipRect;
    ImRect ContentRegionRect;
    ImVec2ih HitTestHoleSize;
    ImVec2ih HitTestHoleOffset;
    int LastFrameActive;
    int LastFrameJustFocused;
    float LastTimeActive;
    float ItemWidthDefault;
    ImGuiStorage StateStorage;
    ImVector_ImGuiOldColumns ColumnsStorage;
    float FontWindowScale;
    float FontDpiScale;
    int SettingsOffset;
    ImDrawList* DrawList;
    ImDrawList DrawListInst;
    ImGuiWindow* ParentWindow;
    ImGuiWindow* ParentWindowInBeginStack;
    ImGuiWindow* RootWindow;
    ImGuiWindow* RootWindowPopupTree;
    ImGuiWindow* RootWindowDockTree;
    ImGuiWindow* RootWindowForTitleBarHighlight;
    ImGuiWindow* RootWindowForNav;
    ImGuiWindow* NavLastChildNavWindow;
    ImGuiID NavLastIds[ImGuiNavLayer_COUNT];
    ImRect NavRectRel[ImGuiNavLayer_COUNT];
    int MemoryDrawListIdxCapacity;
    int MemoryDrawListVtxCapacity;
    _Bool MemoryCompacted;
    _Bool DockIsActive :1;
    _Bool DockNodeIsVisible :1;
    _Bool DockTabIsVisible :1;
    _Bool DockTabWantClose :1;
    short DockOrder;
    ImGuiWindowDockStyle DockStyle;
    ImGuiDockNode* DockNode;
    ImGuiDockNode* DockNodeAsHost;
    ImGuiID DockId;
    ImGuiItemStatusFlags DockTabItemStatusFlags;
    ImRect DockTabItemRect;
};
typedef enum {
    ImGuiTabBarFlags_DockNode = 1 << 20,
    ImGuiTabBarFlags_IsFocused = 1 << 21,
    ImGuiTabBarFlags_SaveSettings = 1 << 22
}ImGuiTabBarFlagsPrivate_;
typedef enum {
    ImGuiTabItemFlags_SectionMask_ = ImGuiTabItemFlags_Leading | ImGuiTabItemFlags_Trailing,
    ImGuiTabItemFlags_NoCloseButton = 1 << 20,
    ImGuiTabItemFlags_Button = 1 << 21,
    ImGuiTabItemFlags_Unsorted = 1 << 22,
    ImGuiTabItemFlags_Preview = 1 << 23
}ImGuiTabItemFlagsPrivate_;
struct ImGuiTabItem
{
    ImGuiID ID;
    ImGuiTabItemFlags Flags;
    ImGuiWindow* Window;
    int LastFrameVisible;
    int LastFrameSelected;
    float Offset;
    float Width;
    float ContentWidth;
    ImS32 NameOffset;
    ImS16 BeginOrder;
    ImS16 IndexDuringLayout;
    _Bool WantClose;
};
typedef struct ImVector_ImGuiTabItem {int Size;int Capacity;ImGuiTabItem* Data;} ImVector_ImGuiTabItem;
struct ImGuiTabBar
{
    ImVector_ImGuiTabItem Tabs;
    ImGuiTabBarFlags Flags;
    ImGuiID ID;
    ImGuiID SelectedTabId;
    ImGuiID NextSelectedTabId;
    ImGuiID VisibleTabId;
    int CurrFrameVisible;
    int PrevFrameVisible;
    ImRect BarRect;
    float CurrTabsContentsHeight;
    float PrevTabsContentsHeight;
    float WidthAllTabs;
    float WidthAllTabsIdeal;
    float ScrollingAnim;
    float ScrollingTarget;
    float ScrollingTargetDistToVisibility;
    float ScrollingSpeed;
    float ScrollingRectMinX;
    float ScrollingRectMaxX;
    ImGuiID ReorderRequestTabId;
    ImS16 ReorderRequestOffset;
    ImS8 BeginCount;
    _Bool WantLayout;
    _Bool VisibleTabWasSubmitted;
    _Bool TabsAddedNew;
    ImS16 TabsActiveCount;
    ImS16 LastTabItemIdx;
    float ItemSpacingY;
    ImVec2 FramePadding;
    ImVec2 BackupCursorPos;
    ImGuiTextBuffer TabsNames;
};
typedef ImS8 ImGuiTableColumnIdx;
typedef ImU8 ImGuiTableDrawChannelIdx;
struct ImGuiTableColumn
{
    ImGuiTableColumnFlags Flags;
    float WidthGiven;
    float MinX;
    float MaxX;
    float WidthRequest;
    float WidthAuto;
    float StretchWeight;
    float InitStretchWeightOrWidth;
    ImRect ClipRect;
    ImGuiID UserID;
    float WorkMinX;
    float WorkMaxX;
    float ItemWidth;
    float ContentMaxXFrozen;
    float ContentMaxXUnfrozen;
    float ContentMaxXHeadersUsed;
    float ContentMaxXHeadersIdeal;
    ImS16 NameOffset;
    ImGuiTableColumnIdx DisplayOrder;
    ImGuiTableColumnIdx IndexWithinEnabledSet;
    ImGuiTableColumnIdx PrevEnabledColumn;
    ImGuiTableColumnIdx NextEnabledColumn;
    ImGuiTableColumnIdx SortOrder;
    ImGuiTableDrawChannelIdx DrawChannelCurrent;
    ImGuiTableDrawChannelIdx DrawChannelFrozen;
    ImGuiTableDrawChannelIdx DrawChannelUnfrozen;
    _Bool IsEnabled;
    _Bool IsUserEnabled;
    _Bool IsUserEnabledNextFrame;
    _Bool IsVisibleX;
    _Bool IsVisibleY;
    _Bool IsRequestOutput;
    _Bool IsSkipItems;
    _Bool IsPreserveWidthAuto;
    ImS8 NavLayerCurrent;
    ImU8 AutoFitQueue;
    ImU8 CannotSkipItemsQueue;
    ImU8 SortDirection : 2;
    ImU8 SortDirectionsAvailCount : 2;
    ImU8 SortDirectionsAvailMask : 4;
    ImU8 SortDirectionsAvailList;
};
typedef struct ImGuiTableCellData ImGuiTableCellData;
struct ImGuiTableCellData
{
    ImU32 BgColor;
    ImGuiTableColumnIdx Column;
};
typedef struct ImSpan_ImGuiTableColumn {ImGuiTableColumn* Data;ImGuiTableColumn* DataEnd;} ImSpan_ImGuiTableColumn;
typedef struct ImSpan_ImGuiTableColumnIdx {ImGuiTableColumnIdx* Data;ImGuiTableColumnIdx* DataEnd;} ImSpan_ImGuiTableColumnIdx;
typedef struct ImSpan_ImGuiTableCellData {ImGuiTableCellData* Data;ImGuiTableCellData* DataEnd;} ImSpan_ImGuiTableCellData;
typedef struct ImVector_ImGuiTableColumnSortSpecs {int Size;int Capacity;ImGuiTableColumnSortSpecs* Data;} ImVector_ImGuiTableColumnSortSpecs;
struct ImGuiTable
{
    ImGuiID ID;
    ImGuiTableFlags Flags;
    void* RawData;
    ImGuiTableTempData* TempData;
    ImSpan_ImGuiTableColumn Columns;
    ImSpan_ImGuiTableColumnIdx DisplayOrderToIndex;
    ImSpan_ImGuiTableCellData RowCellData;
    ImU64 EnabledMaskByDisplayOrder;
    ImU64 EnabledMaskByIndex;
    ImU64 VisibleMaskByIndex;
    ImU64 RequestOutputMaskByIndex;
    ImGuiTableFlags SettingsLoadedFlags;
    int SettingsOffset;
    int LastFrameActive;
    int ColumnsCount;
    int CurrentRow;
    int CurrentColumn;
    ImS16 InstanceCurrent;
    ImS16 InstanceInteracted;
    float RowPosY1;
    float RowPosY2;
    float RowMinHeight;
    float RowTextBaseline;
    float RowIndentOffsetX;
    ImGuiTableRowFlags RowFlags : 16;
    ImGuiTableRowFlags LastRowFlags : 16;
    int RowBgColorCounter;
    ImU32 RowBgColor[2];
    ImU32 BorderColorStrong;
    ImU32 BorderColorLight;
    float BorderX1;
    float BorderX2;
    float HostIndentX;
    float MinColumnWidth;
    float OuterPaddingX;
    float CellPaddingX;
    float CellPaddingY;
    float CellSpacingX1;
    float CellSpacingX2;
    float LastOuterHeight;
    float LastFirstRowHeight;
    float InnerWidth;
    float ColumnsGivenWidth;
    float ColumnsAutoFitWidth;
    float ResizedColumnNextWidth;
    float ResizeLockMinContentsX2;
    float RefScale;
    ImRect OuterRect;
    ImRect InnerRect;
    ImRect WorkRect;
    ImRect InnerClipRect;
    ImRect BgClipRect;
    ImRect Bg0ClipRectForDrawCmd;
    ImRect Bg2ClipRectForDrawCmd;
    ImRect HostClipRect;
    ImRect HostBackupInnerClipRect;
    ImGuiWindow* OuterWindow;
    ImGuiWindow* InnerWindow;
    ImGuiTextBuffer ColumnsNames;
    ImDrawListSplitter* DrawSplitter;
    ImGuiTableColumnSortSpecs SortSpecsSingle;
    ImVector_ImGuiTableColumnSortSpecs SortSpecsMulti;
    ImGuiTableSortSpecs SortSpecs;
    ImGuiTableColumnIdx SortSpecsCount;
    ImGuiTableColumnIdx ColumnsEnabledCount;
    ImGuiTableColumnIdx ColumnsEnabledFixedCount;
    ImGuiTableColumnIdx DeclColumnsCount;
    ImGuiTableColumnIdx HoveredColumnBody;
    ImGuiTableColumnIdx HoveredColumnBorder;
    ImGuiTableColumnIdx AutoFitSingleColumn;
    ImGuiTableColumnIdx ResizedColumn;
    ImGuiTableColumnIdx LastResizedColumn;
    ImGuiTableColumnIdx HeldHeaderColumn;
    ImGuiTableColumnIdx ReorderColumn;
    ImGuiTableColumnIdx ReorderColumnDir;
    ImGuiTableColumnIdx LeftMostEnabledColumn;
    ImGuiTableColumnIdx RightMostEnabledColumn;
    ImGuiTableColumnIdx LeftMostStretchedColumn;
    ImGuiTableColumnIdx RightMostStretchedColumn;
    ImGuiTableColumnIdx ContextPopupColumn;
    ImGuiTableColumnIdx FreezeRowsRequest;
    ImGuiTableColumnIdx FreezeRowsCount;
    ImGuiTableColumnIdx FreezeColumnsRequest;
    ImGuiTableColumnIdx FreezeColumnsCount;
    ImGuiTableColumnIdx RowCellDataCurrent;
    ImGuiTableDrawChannelIdx DummyDrawChannel;
    ImGuiTableDrawChannelIdx Bg2DrawChannelCurrent;
    ImGuiTableDrawChannelIdx Bg2DrawChannelUnfrozen;
    _Bool IsLayoutLocked;
    _Bool IsInsideRow;
    _Bool IsInitializing;
    _Bool IsSortSpecsDirty;
    _Bool IsUsingHeaders;
    _Bool IsContextPopupOpen;
    _Bool IsSettingsRequestLoad;
    _Bool IsSettingsDirty;
    _Bool IsDefaultDisplayOrder;
    _Bool IsResetAllRequest;
    _Bool IsResetDisplayOrderRequest;
    _Bool IsUnfrozenRows;
    _Bool IsDefaultSizingPolicy;
    _Bool MemoryCompacted;
    _Bool HostSkipItems;
};
struct ImGuiTableTempData
{
    int TableIndex;
    float LastTimeActive;
    ImVec2 UserOuterSize;
    ImDrawListSplitter DrawSplitter;
    ImRect HostBackupWorkRect;
    ImRect HostBackupParentWorkRect;
    ImVec2 HostBackupPrevLineSize;
    ImVec2 HostBackupCurrLineSize;
    ImVec2 HostBackupCursorMaxPos;
    ImVec1 HostBackupColumnsOffset;
    float HostBackupItemWidth;
    int HostBackupItemWidthStackSize;
};
typedef struct ImGuiTableColumnSettings ImGuiTableColumnSettings;
struct ImGuiTableColumnSettings
{
    float WidthOrWeight;
    ImGuiID UserID;
    ImGuiTableColumnIdx Index;
    ImGuiTableColumnIdx DisplayOrder;
    ImGuiTableColumnIdx SortOrder;
    ImU8 SortDirection : 2;
    ImU8 IsEnabled : 1;
    ImU8 IsStretch : 1;
};
struct ImGuiTableSettings
{
    ImGuiID ID;
    ImGuiTableFlags SaveFlags;
    float RefScale;
    ImGuiTableColumnIdx ColumnsCount;
    ImGuiTableColumnIdx ColumnsCountMax;
    _Bool WantApply;
};
struct ImFontBuilderIO
{
    _Bool (*FontBuilder_Build)(ImFontAtlas* atlas);
};
extern  ImVec2* ImVec2_ImVec2_Nil(void);
extern  void ImVec2_destroy(ImVec2* self);
extern  ImVec2* ImVec2_ImVec2_Float(float _x,float _y);
extern  ImVec4* ImVec4_ImVec4_Nil(void);
extern  void ImVec4_destroy(ImVec4* self);
extern  ImVec4* ImVec4_ImVec4_Float(float _x,float _y,float _z,float _w);
extern  ImGuiContext* igCreateContext(ImFontAtlas* shared_font_atlas);
extern  void igDestroyContext(ImGuiContext* ctx);
extern  ImGuiContext* igGetCurrentContext(void);
extern  void igSetCurrentContext(ImGuiContext* ctx);
extern  ImGuiIO* igGetIO(void);
extern  ImGuiStyle* igGetStyle(void);
extern  void igNewFrame(void);
extern  void igEndFrame(void);
extern  void igRender(void);
extern  ImDrawData* igGetDrawData(void);
extern  void igShowDemoWindow(_Bool* p_open);
extern  void igShowMetricsWindow(_Bool* p_open);
extern  void igShowStackToolWindow(_Bool* p_open);
extern  void igShowAboutWindow(_Bool* p_open);
extern  void igShowStyleEditor(ImGuiStyle* ref);
extern  _Bool igShowStyleSelector(const char* label);
extern  void igShowFontSelector(const char* label);
extern  void igShowUserGuide(void);
extern  const char* igGetVersion(void);
extern  void igStyleColorsDark(ImGuiStyle* dst);
extern  void igStyleColorsLight(ImGuiStyle* dst);
extern  void igStyleColorsClassic(ImGuiStyle* dst);
extern  _Bool igBegin(const char* name,_Bool* p_open,ImGuiWindowFlags flags);
extern  void igEnd(void);
extern  _Bool igBeginChild_Str(const char* str_id,const ImVec2 size,_Bool border,ImGuiWindowFlags flags);
extern  _Bool igBeginChild_ID(ImGuiID id,const ImVec2 size,_Bool border,ImGuiWindowFlags flags);
extern  void igEndChild(void);
extern  _Bool igIsWindowAppearing(void);
extern  _Bool igIsWindowCollapsed(void);
extern  _Bool igIsWindowFocused(ImGuiFocusedFlags flags);
extern  _Bool igIsWindowHovered(ImGuiHoveredFlags flags);
extern  ImDrawList* igGetWindowDrawList(void);
extern  float igGetWindowDpiScale(void);
extern  void igGetWindowPos(ImVec2 *pOut);
extern  void igGetWindowSize(ImVec2 *pOut);
extern  float igGetWindowWidth(void);
extern  float igGetWindowHeight(void);
extern  ImGuiViewport* igGetWindowViewport(void);
extern  void igSetNextWindowPos(const ImVec2 pos,ImGuiCond cond,const ImVec2 pivot);
extern  void igSetNextWindowSize(const ImVec2 size,ImGuiCond cond);
extern  void igSetNextWindowSizeConstraints(const ImVec2 size_min,const ImVec2 size_max,ImGuiSizeCallback custom_callback,void* custom_callback_data);
extern  void igSetNextWindowContentSize(const ImVec2 size);
extern  void igSetNextWindowCollapsed(_Bool collapsed,ImGuiCond cond);
extern  void igSetNextWindowFocus(void);
extern  void igSetNextWindowBgAlpha(float alpha);
extern  void igSetNextWindowViewport(ImGuiID viewport_id);
extern  void igSetWindowPos_Vec2(const ImVec2 pos,ImGuiCond cond);
extern  void igSetWindowSize_Vec2(const ImVec2 size,ImGuiCond cond);
extern  void igSetWindowCollapsed_Bool(_Bool collapsed,ImGuiCond cond);
extern  void igSetWindowFocus_Nil(void);
extern  void igSetWindowFontScale(float scale);
extern  void igSetWindowPos_Str(const char* name,const ImVec2 pos,ImGuiCond cond);
extern  void igSetWindowSize_Str(const char* name,const ImVec2 size,ImGuiCond cond);
extern  void igSetWindowCollapsed_Str(const char* name,_Bool collapsed,ImGuiCond cond);
extern  void igSetWindowFocus_Str(const char* name);
extern  void igGetContentRegionAvail(ImVec2 *pOut);
extern  void igGetContentRegionMax(ImVec2 *pOut);
extern  void igGetWindowContentRegionMin(ImVec2 *pOut);
extern  void igGetWindowContentRegionMax(ImVec2 *pOut);
extern  float igGetScrollX(void);
extern  float igGetScrollY(void);
extern  void igSetScrollX_Float(float scroll_x);
extern  void igSetScrollY_Float(float scroll_y);
extern  float igGetScrollMaxX(void);
extern  float igGetScrollMaxY(void);
extern  void igSetScrollHereX(float center_x_ratio);
extern  void igSetScrollHereY(float center_y_ratio);
extern  void igSetScrollFromPosX_Float(float local_x,float center_x_ratio);
extern  void igSetScrollFromPosY_Float(float local_y,float center_y_ratio);
extern  void igPushFont(ImFont* font);
extern  void igPopFont(void);
extern  void igPushStyleColor_U32(ImGuiCol idx,ImU32 col);
extern  void igPushStyleColor_Vec4(ImGuiCol idx,const ImVec4 col);
extern  void igPopStyleColor(int count);
extern  void igPushStyleVar_Float(ImGuiStyleVar idx,float val);
extern  void igPushStyleVar_Vec2(ImGuiStyleVar idx,const ImVec2 val);
extern  void igPopStyleVar(int count);
extern  void igPushAllowKeyboardFocus(_Bool allow_keyboard_focus);
extern  void igPopAllowKeyboardFocus(void);
extern  void igPushButtonRepeat(_Bool repeat);
extern  void igPopButtonRepeat(void);
extern  void igPushItemWidth(float item_width);
extern  void igPopItemWidth(void);
extern  void igSetNextItemWidth(float item_width);
extern  float igCalcItemWidth(void);
extern  void igPushTextWrapPos(float wrap_local_pos_x);
extern  void igPopTextWrapPos(void);
extern  ImFont* igGetFont(void);
extern  float igGetFontSize(void);
extern  void igGetFontTexUvWhitePixel(ImVec2 *pOut);
extern  ImU32 igGetColorU32_Col(ImGuiCol idx,float alpha_mul);
extern  ImU32 igGetColorU32_Vec4(const ImVec4 col);
extern  ImU32 igGetColorU32_U32(ImU32 col);
extern  const ImVec4* igGetStyleColorVec4(ImGuiCol idx);
extern  void igSeparator(void);
extern  void igSameLine(float offset_from_start_x,float spacing);
extern  void igNewLine(void);
extern  void igSpacing(void);
extern  void igDummy(const ImVec2 size);
extern  void igIndent(float indent_w);
extern  void igUnindent(float indent_w);
extern  void igBeginGroup(void);
extern  void igEndGroup(void);
extern  void igGetCursorPos(ImVec2 *pOut);
extern  float igGetCursorPosX(void);
extern  float igGetCursorPosY(void);
extern  void igSetCursorPos(const ImVec2 local_pos);
extern  void igSetCursorPosX(float local_x);
extern  void igSetCursorPosY(float local_y);
extern  void igGetCursorStartPos(ImVec2 *pOut);
extern  void igGetCursorScreenPos(ImVec2 *pOut);
extern  void igSetCursorScreenPos(const ImVec2 pos);
extern  void igAlignTextToFramePadding(void);
extern  float igGetTextLineHeight(void);
extern  float igGetTextLineHeightWithSpacing(void);
extern  float igGetFrameHeight(void);
extern  float igGetFrameHeightWithSpacing(void);
extern  void igPushID_Str(const char* str_id);
extern  void igPushID_StrStr(const char* str_id_begin,const char* str_id_end);
extern  void igPushID_Ptr(const void* ptr_id);
extern  void igPushID_Int(int int_id);
extern  void igPopID(void);
extern  ImGuiID igGetID_Str(const char* str_id);
extern  ImGuiID igGetID_StrStr(const char* str_id_begin,const char* str_id_end);
extern  ImGuiID igGetID_Ptr(const void* ptr_id);
extern  void igTextUnformatted(const char* text,const char* text_end);
extern  void igText(const char* fmt,...);
extern  void igTextV(const char* fmt,va_list args);
extern  void igTextColored(const ImVec4 col,const char* fmt,...);
extern  void igTextColoredV(const ImVec4 col,const char* fmt,va_list args);
extern  void igTextDisabled(const char* fmt,...);
extern  void igTextDisabledV(const char* fmt,va_list args);
extern  void igTextWrapped(const char* fmt,...);
extern  void igTextWrappedV(const char* fmt,va_list args);
extern  void igLabelText(const char* label,const char* fmt,...);
extern  void igLabelTextV(const char* label,const char* fmt,va_list args);
extern  void igBulletText(const char* fmt,...);
extern  void igBulletTextV(const char* fmt,va_list args);
extern  _Bool igButton(const char* label,const ImVec2 size);
extern  _Bool igSmallButton(const char* label);
extern  _Bool igInvisibleButton(const char* str_id,const ImVec2 size,ImGuiButtonFlags flags);
extern  _Bool igArrowButton(const char* str_id,ImGuiDir dir);
extern  void igImage(ImTextureID user_texture_id,const ImVec2 size,const ImVec2 uv0,const ImVec2 uv1,const ImVec4 tint_col,const ImVec4 border_col);
extern  _Bool igImageButton(ImTextureID user_texture_id,const ImVec2 size,const ImVec2 uv0,const ImVec2 uv1,int frame_padding,const ImVec4 bg_col,const ImVec4 tint_col);
extern  _Bool igCheckbox(const char* label,_Bool* v);
extern  _Bool igCheckboxFlags_IntPtr(const char* label,int* flags,int flags_value);
extern  _Bool igCheckboxFlags_UintPtr(const char* label,unsigned int* flags,unsigned int flags_value);
extern  _Bool igRadioButton_Bool(const char* label,_Bool active);
extern  _Bool igRadioButton_IntPtr(const char* label,int* v,int v_button);
extern  void igProgressBar(float fraction,const ImVec2 size_arg,const char* overlay);
extern  void igBullet(void);
extern  _Bool igBeginCombo(const char* label,const char* preview_value,ImGuiComboFlags flags);
extern  void igEndCombo(void);
extern  _Bool igCombo_Str_arr(const char* label,int* current_item,const char* const items[],int items_count,int popup_max_height_in_items);
extern  _Bool igCombo_Str(const char* label,int* current_item,const char* items_separated_by_zeros,int popup_max_height_in_items);
extern  _Bool igCombo_FnBoolPtr(const char* label,int* current_item,_Bool(*items_getter)(void* data,int idx,const char** out_text),void* data,int items_count,int popup_max_height_in_items);
extern  _Bool igDragFloat(const char* label,float* v,float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloat2(const char* label,float v[2],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloat3(const char* label,float v[3],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloat4(const char* label,float v[4],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloatRange2(const char* label,float* v_current_min,float* v_current_max,float v_speed,float v_min,float v_max,const char* format,const char* format_max,ImGuiSliderFlags flags);
extern  _Bool igDragInt(const char* label,int* v,float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragInt2(const char* label,int v[2],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragInt3(const char* label,int v[3],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragInt4(const char* label,int v[4],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragIntRange2(const char* label,int* v_current_min,int* v_current_max,float v_speed,int v_min,int v_max,const char* format,const char* format_max,ImGuiSliderFlags flags);
extern  _Bool igDragScalar(const char* label,ImGuiDataType data_type,void* p_data,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat(const char* label,float* v,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat2(const char* label,float v[2],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat3(const char* label,float v[3],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat4(const char* label,float v[4],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderAngle(const char* label,float* v_rad,float v_degrees_min,float v_degrees_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt(const char* label,int* v,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt2(const char* label,int v[2],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt3(const char* label,int v[3],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt4(const char* label,int v[4],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderScalar(const char* label,ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igVSliderFloat(const char* label,const ImVec2 size,float* v,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igVSliderInt(const char* label,const ImVec2 size,int* v,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igVSliderScalar(const char* label,const ImVec2 size,ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igInputText(const char* label,char* buf,size_t buf_size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igInputTextMultiline(const char* label,char* buf,size_t buf_size,const ImVec2 size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igInputTextWithHint(const char* label,const char* hint,char* buf,size_t buf_size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igInputFloat(const char* label,float* v,float step,float step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputFloat2(const char* label,float v[2],const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputFloat3(const char* label,float v[3],const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputFloat4(const char* label,float v[4],const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputInt(const char* label,int* v,int step,int step_fast,ImGuiInputTextFlags flags);
extern  _Bool igInputInt2(const char* label,int v[2],ImGuiInputTextFlags flags);
extern  _Bool igInputInt3(const char* label,int v[3],ImGuiInputTextFlags flags);
extern  _Bool igInputInt4(const char* label,int v[4],ImGuiInputTextFlags flags);
extern  _Bool igInputDouble(const char* label,double* v,double step,double step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputScalar(const char* label,ImGuiDataType data_type,void* p_data,const void* p_step,const void* p_step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,const void* p_step,const void* p_step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igColorEdit3(const char* label,float col[3],ImGuiColorEditFlags flags);
extern  _Bool igColorEdit4(const char* label,float col[4],ImGuiColorEditFlags flags);
extern  _Bool igColorPicker3(const char* label,float col[3],ImGuiColorEditFlags flags);
extern  _Bool igColorPicker4(const char* label,float col[4],ImGuiColorEditFlags flags,const float* ref_col);
extern  _Bool igColorButton(const char* desc_id,const ImVec4 col,ImGuiColorEditFlags flags,ImVec2 size);
extern  void igSetColorEditOptions(ImGuiColorEditFlags flags);
extern  _Bool igTreeNode_Str(const char* label);
extern  _Bool igTreeNode_StrStr(const char* str_id,const char* fmt,...);
extern  _Bool igTreeNode_Ptr(const void* ptr_id,const char* fmt,...);
extern  _Bool igTreeNodeV_Str(const char* str_id,const char* fmt,va_list args);
extern  _Bool igTreeNodeV_Ptr(const void* ptr_id,const char* fmt,va_list args);
extern  _Bool igTreeNodeEx_Str(const char* label,ImGuiTreeNodeFlags flags);
extern  _Bool igTreeNodeEx_StrStr(const char* str_id,ImGuiTreeNodeFlags flags,const char* fmt,...);
extern  _Bool igTreeNodeEx_Ptr(const void* ptr_id,ImGuiTreeNodeFlags flags,const char* fmt,...);
extern  _Bool igTreeNodeExV_Str(const char* str_id,ImGuiTreeNodeFlags flags,const char* fmt,va_list args);
extern  _Bool igTreeNodeExV_Ptr(const void* ptr_id,ImGuiTreeNodeFlags flags,const char* fmt,va_list args);
extern  void igTreePush_Str(const char* str_id);
extern  void igTreePush_Ptr(const void* ptr_id);
extern  void igTreePop(void);
extern  float igGetTreeNodeToLabelSpacing(void);
extern  _Bool igCollapsingHeader_TreeNodeFlags(const char* label,ImGuiTreeNodeFlags flags);
extern  _Bool igCollapsingHeader_BoolPtr(const char* label,_Bool* p_visible,ImGuiTreeNodeFlags flags);
extern  void igSetNextItemOpen(_Bool is_open,ImGuiCond cond);
extern  _Bool igSelectable_Bool(const char* label,_Bool selected,ImGuiSelectableFlags flags,const ImVec2 size);
extern  _Bool igSelectable_BoolPtr(const char* label,_Bool* p_selected,ImGuiSelectableFlags flags,const ImVec2 size);
extern  _Bool igBeginListBox(const char* label,const ImVec2 size);
extern  void igEndListBox(void);
extern  _Bool igListBox_Str_arr(const char* label,int* current_item,const char* const items[],int items_count,int height_in_items);
extern  _Bool igListBox_FnBoolPtr(const char* label,int* current_item,_Bool(*items_getter)(void* data,int idx,const char** out_text),void* data,int items_count,int height_in_items);
extern  void igPlotLines_FloatPtr(const char* label,const float* values,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size,int stride);
extern  void igPlotLines_FnFloatPtr(const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size);
extern  void igPlotHistogram_FloatPtr(const char* label,const float* values,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size,int stride);
extern  void igPlotHistogram_FnFloatPtr(const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size);
extern  void igValue_Bool(const char* prefix,_Bool b);
extern  void igValue_Int(const char* prefix,int v);
extern  void igValue_Uint(const char* prefix,unsigned int v);
extern  void igValue_Float(const char* prefix,float v,const char* float_format);
extern  _Bool igBeginMenuBar(void);
extern  void igEndMenuBar(void);
extern  _Bool igBeginMainMenuBar(void);
extern  void igEndMainMenuBar(void);
extern  _Bool igBeginMenu(const char* label,_Bool enabled);
extern  void igEndMenu(void);
extern  _Bool igMenuItem_Bool(const char* label,const char* shortcut,_Bool selected,_Bool enabled);
extern  _Bool igMenuItem_BoolPtr(const char* label,const char* shortcut,_Bool* p_selected,_Bool enabled);
extern  void igBeginTooltip(void);
extern  void igEndTooltip(void);
extern  void igSetTooltip(const char* fmt,...);
extern  void igSetTooltipV(const char* fmt,va_list args);
extern  _Bool igBeginPopup(const char* str_id,ImGuiWindowFlags flags);
extern  _Bool igBeginPopupModal(const char* name,_Bool* p_open,ImGuiWindowFlags flags);
extern  void igEndPopup(void);
extern  void igOpenPopup_Str(const char* str_id,ImGuiPopupFlags popup_flags);
extern  void igOpenPopup_ID(ImGuiID id,ImGuiPopupFlags popup_flags);
extern  void igOpenPopupOnItemClick(const char* str_id,ImGuiPopupFlags popup_flags);
extern  void igCloseCurrentPopup(void);
extern  _Bool igBeginPopupContextItem(const char* str_id,ImGuiPopupFlags popup_flags);
extern  _Bool igBeginPopupContextWindow(const char* str_id,ImGuiPopupFlags popup_flags);
extern  _Bool igBeginPopupContextVoid(const char* str_id,ImGuiPopupFlags popup_flags);
extern  _Bool igIsPopupOpen_Str(const char* str_id,ImGuiPopupFlags flags);
extern  _Bool igBeginTable(const char* str_id,int column,ImGuiTableFlags flags,const ImVec2 outer_size,float inner_width);
extern  void igEndTable(void);
extern  void igTableNextRow(ImGuiTableRowFlags row_flags,float min_row_height);
extern  _Bool igTableNextColumn(void);
extern  _Bool igTableSetColumnIndex(int column_n);
extern  void igTableSetupColumn(const char* label,ImGuiTableColumnFlags flags,float init_width_or_weight,ImGuiID user_id);
extern  void igTableSetupScrollFreeze(int cols,int rows);
extern  void igTableHeadersRow(void);
extern  void igTableHeader(const char* label);
extern  ImGuiTableSortSpecs* igTableGetSortSpecs(void);
extern  int igTableGetColumnCount(void);
extern  int igTableGetColumnIndex(void);
extern  int igTableGetRowIndex(void);
extern  const char* igTableGetColumnName_Int(int column_n);
extern  ImGuiTableColumnFlags igTableGetColumnFlags(int column_n);
extern  void igTableSetColumnEnabled(int column_n,_Bool v);
extern  void igTableSetBgColor(ImGuiTableBgTarget target,ImU32 color,int column_n);
extern  void igColumns(int count,const char* id,_Bool border);
extern  void igNextColumn(void);
extern  int igGetColumnIndex(void);
extern  float igGetColumnWidth(int column_index);
extern  void igSetColumnWidth(int column_index,float width);
extern  float igGetColumnOffset(int column_index);
extern  void igSetColumnOffset(int column_index,float offset_x);
extern  int igGetColumnsCount(void);
extern  _Bool igBeginTabBar(const char* str_id,ImGuiTabBarFlags flags);
extern  void igEndTabBar(void);
extern  _Bool igBeginTabItem(const char* label,_Bool* p_open,ImGuiTabItemFlags flags);
extern  void igEndTabItem(void);
extern  _Bool igTabItemButton(const char* label,ImGuiTabItemFlags flags);
extern  void igSetTabItemClosed(const char* tab_or_docked_window_label);
extern  ImGuiID igDockSpace(ImGuiID id,const ImVec2 size,ImGuiDockNodeFlags flags,const ImGuiWindowClass* window_class);
extern  ImGuiID igDockSpaceOverViewport(const ImGuiViewport* viewport,ImGuiDockNodeFlags flags,const ImGuiWindowClass* window_class);
extern  void igSetNextWindowDockID(ImGuiID dock_id,ImGuiCond cond);
extern  void igSetNextWindowClass(const ImGuiWindowClass* window_class);
extern  ImGuiID igGetWindowDockID(void);
extern  _Bool igIsWindowDocked(void);
extern  void igLogToTTY(int auto_open_depth);
extern  void igLogToFile(int auto_open_depth,const char* filename);
extern  void igLogToClipboard(int auto_open_depth);
extern  void igLogFinish(void);
extern  void igLogButtons(void);
extern  void igLogTextV(const char* fmt,va_list args);
extern  _Bool igBeginDragDropSource(ImGuiDragDropFlags flags);
extern  _Bool igSetDragDropPayload(const char* type,const void* data,size_t sz,ImGuiCond cond);
extern  void igEndDragDropSource(void);
extern  _Bool igBeginDragDropTarget(void);
extern  const ImGuiPayload* igAcceptDragDropPayload(const char* type,ImGuiDragDropFlags flags);
extern  void igEndDragDropTarget(void);
extern  const ImGuiPayload* igGetDragDropPayload(void);
extern  void igBeginDisabled(_Bool disabled);
extern  void igEndDisabled(void);
extern  void igPushClipRect(const ImVec2 clip_rect_min,const ImVec2 clip_rect_max,_Bool intersect_with_current_clip_rect);
extern  void igPopClipRect(void);
extern  void igSetItemDefaultFocus(void);
extern  void igSetKeyboardFocusHere(int offset);
extern  _Bool igIsItemHovered(ImGuiHoveredFlags flags);
extern  _Bool igIsItemActive(void);
extern  _Bool igIsItemFocused(void);
extern  _Bool igIsItemClicked(ImGuiMouseButton mouse_button);
extern  _Bool igIsItemVisible(void);
extern  _Bool igIsItemEdited(void);
extern  _Bool igIsItemActivated(void);
extern  _Bool igIsItemDeactivated(void);
extern  _Bool igIsItemDeactivatedAfterEdit(void);
extern  _Bool igIsItemToggledOpen(void);
extern  _Bool igIsAnyItemHovered(void);
extern  _Bool igIsAnyItemActive(void);
extern  _Bool igIsAnyItemFocused(void);
extern  void igGetItemRectMin(ImVec2 *pOut);
extern  void igGetItemRectMax(ImVec2 *pOut);
extern  void igGetItemRectSize(ImVec2 *pOut);
extern  void igSetItemAllowOverlap(void);
extern  ImGuiViewport* igGetMainViewport(void);
extern  _Bool igIsRectVisible_Nil(const ImVec2 size);
extern  _Bool igIsRectVisible_Vec2(const ImVec2 rect_min,const ImVec2 rect_max);
extern  double igGetTime(void);
extern  int igGetFrameCount(void);
extern  ImDrawList* igGetBackgroundDrawList_Nil(void);
extern  ImDrawList* igGetForegroundDrawList_Nil(void);
extern  ImDrawList* igGetBackgroundDrawList_ViewportPtr(ImGuiViewport* viewport);
extern  ImDrawList* igGetForegroundDrawList_ViewportPtr(ImGuiViewport* viewport);
extern  ImDrawListSharedData* igGetDrawListSharedData(void);
extern  const char* igGetStyleColorName(ImGuiCol idx);
extern  void igSetStateStorage(ImGuiStorage* storage);
extern  ImGuiStorage* igGetStateStorage(void);
extern  _Bool igBeginChildFrame(ImGuiID id,const ImVec2 size,ImGuiWindowFlags flags);
extern  void igEndChildFrame(void);
extern  void igCalcTextSize(ImVec2 *pOut,const char* text,const char* text_end,_Bool hide_text_after_double_hash,float wrap_width);
extern  void igColorConvertU32ToFloat4(ImVec4 *pOut,ImU32 in);
extern  ImU32 igColorConvertFloat4ToU32(const ImVec4 in);
extern  void igColorConvertRGBtoHSV(float r,float g,float b,float* out_h,float* out_s,float* out_v);
extern  void igColorConvertHSVtoRGB(float h,float s,float v,float* out_r,float* out_g,float* out_b);
extern  _Bool igIsKeyDown(ImGuiKey key);
extern  _Bool igIsKeyPressed(ImGuiKey key,_Bool repeat);
extern  _Bool igIsKeyReleased(ImGuiKey key);
extern  int igGetKeyPressedAmount(ImGuiKey key,float repeat_delay,float rate);
extern  const char* igGetKeyName(ImGuiKey key);
extern  void igCaptureKeyboardFromApp(_Bool want_capture_keyboard_value);
extern  _Bool igIsMouseDown(ImGuiMouseButton button);
extern  _Bool igIsMouseClicked(ImGuiMouseButton button,_Bool repeat);
extern  _Bool igIsMouseReleased(ImGuiMouseButton button);
extern  _Bool igIsMouseDoubleClicked(ImGuiMouseButton button);
extern  int igGetMouseClickedCount(ImGuiMouseButton button);
extern  _Bool igIsMouseHoveringRect(const ImVec2 r_min,const ImVec2 r_max,_Bool clip);
extern  _Bool igIsMousePosValid(const ImVec2* mouse_pos);
extern  _Bool igIsAnyMouseDown(void);
extern  void igGetMousePos(ImVec2 *pOut);
extern  void igGetMousePosOnOpeningCurrentPopup(ImVec2 *pOut);
extern  _Bool igIsMouseDragging(ImGuiMouseButton button,float lock_threshold);
extern  void igGetMouseDragDelta(ImVec2 *pOut,ImGuiMouseButton button,float lock_threshold);
extern  void igResetMouseDragDelta(ImGuiMouseButton button);
extern  ImGuiMouseCursor igGetMouseCursor(void);
extern  void igSetMouseCursor(ImGuiMouseCursor cursor_type);
extern  void igCaptureMouseFromApp(_Bool want_capture_mouse_value);
extern  const char* igGetClipboardText(void);
extern  void igSetClipboardText(const char* text);
extern  void igLoadIniSettingsFromDisk(const char* ini_filename);
extern  void igLoadIniSettingsFromMemory(const char* ini_data,size_t ini_size);
extern  void igSaveIniSettingsToDisk(const char* ini_filename);
extern  const char* igSaveIniSettingsToMemory(size_t* out_ini_size);
extern  _Bool igDebugCheckVersionAndDataLayout(const char* version_str,size_t sz_io,size_t sz_style,size_t sz_vec2,size_t sz_vec4,size_t sz_drawvert,size_t sz_drawidx);
extern  void igSetAllocatorFunctions(ImGuiMemAllocFunc alloc_func,ImGuiMemFreeFunc free_func,void* user_data);
extern  void igGetAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func,ImGuiMemFreeFunc* p_free_func,void** p_user_data);
extern  void* igMemAlloc(size_t size);
extern  void igMemFree(void* ptr);
extern  ImGuiPlatformIO* igGetPlatformIO(void);
extern  void igUpdatePlatformWindows(void);
extern  void igRenderPlatformWindowsDefault(void* platform_render_arg,void* renderer_render_arg);
extern  void igDestroyPlatformWindows(void);
extern  ImGuiViewport* igFindViewportByID(ImGuiID id);
extern  ImGuiViewport* igFindViewportByPlatformHandle(void* platform_handle);
extern  ImGuiStyle* ImGuiStyle_ImGuiStyle(void);
extern  void ImGuiStyle_destroy(ImGuiStyle* self);
extern  void ImGuiStyle_ScaleAllSizes(ImGuiStyle* self,float scale_factor);
extern  void ImGuiIO_AddKeyEvent(ImGuiIO* self,ImGuiKey key,_Bool down);
extern  void ImGuiIO_AddKeyAnalogEvent(ImGuiIO* self,ImGuiKey key,_Bool down,float v);
extern  void ImGuiIO_AddMousePosEvent(ImGuiIO* self,float x,float y);
extern  void ImGuiIO_AddMouseButtonEvent(ImGuiIO* self,int button,_Bool down);
extern  void ImGuiIO_AddMouseWheelEvent(ImGuiIO* self,float wh_x,float wh_y);
extern  void ImGuiIO_AddMouseViewportEvent(ImGuiIO* self,ImGuiID id);
extern  void ImGuiIO_AddFocusEvent(ImGuiIO* self,_Bool focused);
extern  void ImGuiIO_AddInputCharacter(ImGuiIO* self,unsigned int c);
extern  void ImGuiIO_AddInputCharacterUTF16(ImGuiIO* self,ImWchar16 c);
extern  void ImGuiIO_AddInputCharactersUTF8(ImGuiIO* self,const char* str);
extern  void ImGuiIO_ClearInputCharacters(ImGuiIO* self);
extern  void ImGuiIO_ClearInputKeys(ImGuiIO* self);
extern  void ImGuiIO_SetKeyEventNativeData(ImGuiIO* self,ImGuiKey key,int native_keycode,int native_scancode,int native_legacy_index);
extern  ImGuiIO* ImGuiIO_ImGuiIO(void);
extern  void ImGuiIO_destroy(ImGuiIO* self);
extern  ImGuiInputTextCallbackData* ImGuiInputTextCallbackData_ImGuiInputTextCallbackData(void);
extern  void ImGuiInputTextCallbackData_destroy(ImGuiInputTextCallbackData* self);
extern  void ImGuiInputTextCallbackData_DeleteChars(ImGuiInputTextCallbackData* self,int pos,int bytes_count);
extern  void ImGuiInputTextCallbackData_InsertChars(ImGuiInputTextCallbackData* self,int pos,const char* text,const char* text_end);
extern  void ImGuiInputTextCallbackData_SelectAll(ImGuiInputTextCallbackData* self);
extern  void ImGuiInputTextCallbackData_ClearSelection(ImGuiInputTextCallbackData* self);
extern  _Bool ImGuiInputTextCallbackData_HasSelection(ImGuiInputTextCallbackData* self);
extern  ImGuiWindowClass* ImGuiWindowClass_ImGuiWindowClass(void);
extern  void ImGuiWindowClass_destroy(ImGuiWindowClass* self);
extern  ImGuiPayload* ImGuiPayload_ImGuiPayload(void);
extern  void ImGuiPayload_destroy(ImGuiPayload* self);
extern  void ImGuiPayload_Clear(ImGuiPayload* self);
extern  _Bool ImGuiPayload_IsDataType(ImGuiPayload* self,const char* type);
extern  _Bool ImGuiPayload_IsPreview(ImGuiPayload* self);
extern  _Bool ImGuiPayload_IsDelivery(ImGuiPayload* self);
extern  ImGuiTableColumnSortSpecs* ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs(void);
extern  void ImGuiTableColumnSortSpecs_destroy(ImGuiTableColumnSortSpecs* self);
extern  ImGuiTableSortSpecs* ImGuiTableSortSpecs_ImGuiTableSortSpecs(void);
extern  void ImGuiTableSortSpecs_destroy(ImGuiTableSortSpecs* self);
extern  ImGuiOnceUponAFrame* ImGuiOnceUponAFrame_ImGuiOnceUponAFrame(void);
extern  void ImGuiOnceUponAFrame_destroy(ImGuiOnceUponAFrame* self);
extern  ImGuiTextFilter* ImGuiTextFilter_ImGuiTextFilter(const char* default_filter);
extern  void ImGuiTextFilter_destroy(ImGuiTextFilter* self);
extern  _Bool ImGuiTextFilter_Draw(ImGuiTextFilter* self,const char* label,float width);
extern  _Bool ImGuiTextFilter_PassFilter(ImGuiTextFilter* self,const char* text,const char* text_end);
extern  void ImGuiTextFilter_Build(ImGuiTextFilter* self);
extern  void ImGuiTextFilter_Clear(ImGuiTextFilter* self);
extern  _Bool ImGuiTextFilter_IsActive(ImGuiTextFilter* self);
extern  ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Nil(void);
extern  void ImGuiTextRange_destroy(ImGuiTextRange* self);
extern  ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Str(const char* _b,const char* _e);
extern  _Bool ImGuiTextRange_empty(ImGuiTextRange* self);
extern  void ImGuiTextRange_split(ImGuiTextRange* self,char separator,ImVector_ImGuiTextRange* out);
extern  ImGuiTextBuffer* ImGuiTextBuffer_ImGuiTextBuffer(void);
extern  void ImGuiTextBuffer_destroy(ImGuiTextBuffer* self);
extern  const char* ImGuiTextBuffer_begin(ImGuiTextBuffer* self);
extern  const char* ImGuiTextBuffer_end(ImGuiTextBuffer* self);
extern  int ImGuiTextBuffer_size(ImGuiTextBuffer* self);
extern  _Bool ImGuiTextBuffer_empty(ImGuiTextBuffer* self);
extern  void ImGuiTextBuffer_clear(ImGuiTextBuffer* self);
extern  void ImGuiTextBuffer_reserve(ImGuiTextBuffer* self,int capacity);
extern  const char* ImGuiTextBuffer_c_str(ImGuiTextBuffer* self);
extern  void ImGuiTextBuffer_append(ImGuiTextBuffer* self,const char* str,const char* str_end);
extern  void ImGuiTextBuffer_appendfv(ImGuiTextBuffer* self,const char* fmt,va_list args);
extern  ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Int(ImGuiID _key,int _val_i);
extern  void ImGuiStoragePair_destroy(ImGuiStoragePair* self);
extern  ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Float(ImGuiID _key,float _val_f);
extern  ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Ptr(ImGuiID _key,void* _val_p);
extern  void ImGuiStorage_Clear(ImGuiStorage* self);
extern  int ImGuiStorage_GetInt(ImGuiStorage* self,ImGuiID key,int default_val);
extern  void ImGuiStorage_SetInt(ImGuiStorage* self,ImGuiID key,int val);
extern  _Bool ImGuiStorage_GetBool(ImGuiStorage* self,ImGuiID key,_Bool default_val);
extern  void ImGuiStorage_SetBool(ImGuiStorage* self,ImGuiID key,_Bool val);
extern  float ImGuiStorage_GetFloat(ImGuiStorage* self,ImGuiID key,float default_val);
extern  void ImGuiStorage_SetFloat(ImGuiStorage* self,ImGuiID key,float val);
extern  void* ImGuiStorage_GetVoidPtr(ImGuiStorage* self,ImGuiID key);
extern  void ImGuiStorage_SetVoidPtr(ImGuiStorage* self,ImGuiID key,void* val);
extern  int* ImGuiStorage_GetIntRef(ImGuiStorage* self,ImGuiID key,int default_val);
extern  _Bool* ImGuiStorage_GetBoolRef(ImGuiStorage* self,ImGuiID key,_Bool default_val);
extern  float* ImGuiStorage_GetFloatRef(ImGuiStorage* self,ImGuiID key,float default_val);
extern  void** ImGuiStorage_GetVoidPtrRef(ImGuiStorage* self,ImGuiID key,void* default_val);
extern  void ImGuiStorage_SetAllInt(ImGuiStorage* self,int val);
extern  void ImGuiStorage_BuildSortByKey(ImGuiStorage* self);
extern  ImGuiListClipper* ImGuiListClipper_ImGuiListClipper(void);
extern  void ImGuiListClipper_destroy(ImGuiListClipper* self);
extern  void ImGuiListClipper_Begin(ImGuiListClipper* self,int items_count,float items_height);
extern  void ImGuiListClipper_End(ImGuiListClipper* self);
extern  _Bool ImGuiListClipper_Step(ImGuiListClipper* self);
extern  void ImGuiListClipper_ForceDisplayRangeByIndices(ImGuiListClipper* self,int item_min,int item_max);
extern  ImColor* ImColor_ImColor_Nil(void);
extern  void ImColor_destroy(ImColor* self);
extern  ImColor* ImColor_ImColor_Int(int r,int g,int b,int a);
extern  ImColor* ImColor_ImColor_U32(ImU32 rgba);
extern  ImColor* ImColor_ImColor_Float(float r,float g,float b,float a);
extern  ImColor* ImColor_ImColor_Vec4(const ImVec4 col);
extern  void ImColor_SetHSV(ImColor* self,float h,float s,float v,float a);
extern  void ImColor_HSV(ImColor *pOut,float h,float s,float v,float a);
extern  ImDrawCmd* ImDrawCmd_ImDrawCmd(void);
extern  void ImDrawCmd_destroy(ImDrawCmd* self);
extern  ImTextureID ImDrawCmd_GetTexID(ImDrawCmd* self);
extern  ImDrawListSplitter* ImDrawListSplitter_ImDrawListSplitter(void);
extern  void ImDrawListSplitter_destroy(ImDrawListSplitter* self);
extern  void ImDrawListSplitter_Clear(ImDrawListSplitter* self);
extern  void ImDrawListSplitter_ClearFreeMemory(ImDrawListSplitter* self);
extern  void ImDrawListSplitter_Split(ImDrawListSplitter* self,ImDrawList* draw_list,int count);
extern  void ImDrawListSplitter_Merge(ImDrawListSplitter* self,ImDrawList* draw_list);
extern  void ImDrawListSplitter_SetCurrentChannel(ImDrawListSplitter* self,ImDrawList* draw_list,int channel_idx);
extern  ImDrawList* ImDrawList_ImDrawList(const ImDrawListSharedData* shared_data);
extern  void ImDrawList_destroy(ImDrawList* self);
extern  void ImDrawList_PushClipRect(ImDrawList* self,ImVec2 clip_rect_min,ImVec2 clip_rect_max,_Bool intersect_with_current_clip_rect);
extern  void ImDrawList_PushClipRectFullScreen(ImDrawList* self);
extern  void ImDrawList_PopClipRect(ImDrawList* self);
extern  void ImDrawList_PushTextureID(ImDrawList* self,ImTextureID texture_id);
extern  void ImDrawList_PopTextureID(ImDrawList* self);
extern  void ImDrawList_GetClipRectMin(ImVec2 *pOut,ImDrawList* self);
extern  void ImDrawList_GetClipRectMax(ImVec2 *pOut,ImDrawList* self);
extern  void ImDrawList_AddLine(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,ImU32 col,float thickness);
extern  void ImDrawList_AddRect(ImDrawList* self,const ImVec2 p_min,const ImVec2 p_max,ImU32 col,float rounding,ImDrawFlags flags,float thickness);
extern  void ImDrawList_AddRectFilled(ImDrawList* self,const ImVec2 p_min,const ImVec2 p_max,ImU32 col,float rounding,ImDrawFlags flags);
extern  void ImDrawList_AddRectFilledMultiColor(ImDrawList* self,const ImVec2 p_min,const ImVec2 p_max,ImU32 col_upr_left,ImU32 col_upr_right,ImU32 col_bot_right,ImU32 col_bot_left);
extern  void ImDrawList_AddQuad(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,ImU32 col,float thickness);
extern  void ImDrawList_AddQuadFilled(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,ImU32 col);
extern  void ImDrawList_AddTriangle(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,ImU32 col,float thickness);
extern  void ImDrawList_AddTriangleFilled(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,ImU32 col);
extern  void ImDrawList_AddCircle(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments,float thickness);
extern  void ImDrawList_AddCircleFilled(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments);
extern  void ImDrawList_AddNgon(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments,float thickness);
extern  void ImDrawList_AddNgonFilled(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments);
extern  void ImDrawList_AddText_Vec2(ImDrawList* self,const ImVec2 pos,ImU32 col,const char* text_begin,const char* text_end);
extern  void ImDrawList_AddText_FontPtr(ImDrawList* self,const ImFont* font,float font_size,const ImVec2 pos,ImU32 col,const char* text_begin,const char* text_end,float wrap_width,const ImVec4* cpu_fine_clip_rect);
extern  void ImDrawList_AddPolyline(ImDrawList* self,const ImVec2* points,int num_points,ImU32 col,ImDrawFlags flags,float thickness);
extern  void ImDrawList_AddConvexPolyFilled(ImDrawList* self,const ImVec2* points,int num_points,ImU32 col);
extern  void ImDrawList_AddBezierCubic(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,ImU32 col,float thickness,int num_segments);
extern  void ImDrawList_AddBezierQuadratic(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,ImU32 col,float thickness,int num_segments);
extern  void ImDrawList_AddImage(ImDrawList* self,ImTextureID user_texture_id,const ImVec2 p_min,const ImVec2 p_max,const ImVec2 uv_min,const ImVec2 uv_max,ImU32 col);
extern  void ImDrawList_AddImageQuad(ImDrawList* self,ImTextureID user_texture_id,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,const ImVec2 uv1,const ImVec2 uv2,const ImVec2 uv3,const ImVec2 uv4,ImU32 col);
extern  void ImDrawList_AddImageRounded(ImDrawList* self,ImTextureID user_texture_id,const ImVec2 p_min,const ImVec2 p_max,const ImVec2 uv_min,const ImVec2 uv_max,ImU32 col,float rounding,ImDrawFlags flags);
extern  void ImDrawList_PathClear(ImDrawList* self);
extern  void ImDrawList_PathLineTo(ImDrawList* self,const ImVec2 pos);
extern  void ImDrawList_PathLineToMergeDuplicate(ImDrawList* self,const ImVec2 pos);
extern  void ImDrawList_PathFillConvex(ImDrawList* self,ImU32 col);
extern  void ImDrawList_PathStroke(ImDrawList* self,ImU32 col,ImDrawFlags flags,float thickness);
extern  void ImDrawList_PathArcTo(ImDrawList* self,const ImVec2 center,float radius,float a_min,float a_max,int num_segments);
extern  void ImDrawList_PathArcToFast(ImDrawList* self,const ImVec2 center,float radius,int a_min_of_12,int a_max_of_12);
extern  void ImDrawList_PathBezierCubicCurveTo(ImDrawList* self,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,int num_segments);
extern  void ImDrawList_PathBezierQuadraticCurveTo(ImDrawList* self,const ImVec2 p2,const ImVec2 p3,int num_segments);
extern  void ImDrawList_PathRect(ImDrawList* self,const ImVec2 rect_min,const ImVec2 rect_max,float rounding,ImDrawFlags flags);
extern  void ImDrawList_AddCallback(ImDrawList* self,ImDrawCallback callback,void* callback_data);
extern  void ImDrawList_AddDrawCmd(ImDrawList* self);
extern  ImDrawList* ImDrawList_CloneOutput(ImDrawList* self);
extern  void ImDrawList_ChannelsSplit(ImDrawList* self,int count);
extern  void ImDrawList_ChannelsMerge(ImDrawList* self);
extern  void ImDrawList_ChannelsSetCurrent(ImDrawList* self,int n);
extern  void ImDrawList_PrimReserve(ImDrawList* self,int idx_count,int vtx_count);
extern  void ImDrawList_PrimUnreserve(ImDrawList* self,int idx_count,int vtx_count);
extern  void ImDrawList_PrimRect(ImDrawList* self,const ImVec2 a,const ImVec2 b,ImU32 col);
extern  void ImDrawList_PrimRectUV(ImDrawList* self,const ImVec2 a,const ImVec2 b,const ImVec2 uv_a,const ImVec2 uv_b,ImU32 col);
extern  void ImDrawList_PrimQuadUV(ImDrawList* self,const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 d,const ImVec2 uv_a,const ImVec2 uv_b,const ImVec2 uv_c,const ImVec2 uv_d,ImU32 col);
extern  void ImDrawList_PrimWriteVtx(ImDrawList* self,const ImVec2 pos,const ImVec2 uv,ImU32 col);
extern  void ImDrawList_PrimWriteIdx(ImDrawList* self,ImDrawIdx idx);
extern  void ImDrawList_PrimVtx(ImDrawList* self,const ImVec2 pos,const ImVec2 uv,ImU32 col);
extern  void ImDrawList__ResetForNewFrame(ImDrawList* self);
extern  void ImDrawList__ClearFreeMemory(ImDrawList* self);
extern  void ImDrawList__PopUnusedDrawCmd(ImDrawList* self);
extern  void ImDrawList__TryMergeDrawCmds(ImDrawList* self);
extern  void ImDrawList__OnChangedClipRect(ImDrawList* self);
extern  void ImDrawList__OnChangedTextureID(ImDrawList* self);
extern  void ImDrawList__OnChangedVtxOffset(ImDrawList* self);
extern  int ImDrawList__CalcCircleAutoSegmentCount(ImDrawList* self,float radius);
extern  void ImDrawList__PathArcToFastEx(ImDrawList* self,const ImVec2 center,float radius,int a_min_sample,int a_max_sample,int a_step);
extern  void ImDrawList__PathArcToN(ImDrawList* self,const ImVec2 center,float radius,float a_min,float a_max,int num_segments);
extern  ImDrawData* ImDrawData_ImDrawData(void);
extern  void ImDrawData_destroy(ImDrawData* self);
extern  void ImDrawData_Clear(ImDrawData* self);
extern  void ImDrawData_DeIndexAllBuffers(ImDrawData* self);
extern  void ImDrawData_ScaleClipRects(ImDrawData* self,const ImVec2 fb_scale);
extern  ImFontConfig* ImFontConfig_ImFontConfig(void);
extern  void ImFontConfig_destroy(ImFontConfig* self);
extern  ImFontGlyphRangesBuilder* ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder(void);
extern  void ImFontGlyphRangesBuilder_destroy(ImFontGlyphRangesBuilder* self);
extern  void ImFontGlyphRangesBuilder_Clear(ImFontGlyphRangesBuilder* self);
extern  _Bool ImFontGlyphRangesBuilder_GetBit(ImFontGlyphRangesBuilder* self,size_t n);
extern  void ImFontGlyphRangesBuilder_SetBit(ImFontGlyphRangesBuilder* self,size_t n);
extern  void ImFontGlyphRangesBuilder_AddChar(ImFontGlyphRangesBuilder* self,ImWchar c);
extern  void ImFontGlyphRangesBuilder_AddText(ImFontGlyphRangesBuilder* self,const char* text,const char* text_end);
extern  void ImFontGlyphRangesBuilder_AddRanges(ImFontGlyphRangesBuilder* self,const ImWchar* ranges);
extern  void ImFontGlyphRangesBuilder_BuildRanges(ImFontGlyphRangesBuilder* self,ImVector_ImWchar* out_ranges);
extern  ImFontAtlasCustomRect* ImFontAtlasCustomRect_ImFontAtlasCustomRect(void);
extern  void ImFontAtlasCustomRect_destroy(ImFontAtlasCustomRect* self);
extern  _Bool ImFontAtlasCustomRect_IsPacked(ImFontAtlasCustomRect* self);
extern  ImFontAtlas* ImFontAtlas_ImFontAtlas(void);
extern  void ImFontAtlas_destroy(ImFontAtlas* self);
extern  ImFont* ImFontAtlas_AddFont(ImFontAtlas* self,const ImFontConfig* font_cfg);
extern  ImFont* ImFontAtlas_AddFontDefault(ImFontAtlas* self,const ImFontConfig* font_cfg);
extern  ImFont* ImFontAtlas_AddFontFromFileTTF(ImFontAtlas* self,const char* filename,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  ImFont* ImFontAtlas_AddFontFromMemoryTTF(ImFontAtlas* self,void* font_data,int font_size,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  ImFont* ImFontAtlas_AddFontFromMemoryCompressedTTF(ImFontAtlas* self,const void* compressed_font_data,int compressed_font_size,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  ImFont* ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(ImFontAtlas* self,const char* compressed_font_data_base85,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  void ImFontAtlas_ClearInputData(ImFontAtlas* self);
extern  void ImFontAtlas_ClearTexData(ImFontAtlas* self);
extern  void ImFontAtlas_ClearFonts(ImFontAtlas* self);
extern  void ImFontAtlas_Clear(ImFontAtlas* self);
extern  _Bool ImFontAtlas_Build(ImFontAtlas* self);
extern  void ImFontAtlas_GetTexDataAsAlpha8(ImFontAtlas* self,unsigned char** out_pixels,int* out_width,int* out_height,int* out_bytes_per_pixel);
extern  void ImFontAtlas_GetTexDataAsRGBA32(ImFontAtlas* self,unsigned char** out_pixels,int* out_width,int* out_height,int* out_bytes_per_pixel);
extern  _Bool ImFontAtlas_IsBuilt(ImFontAtlas* self);
extern  void ImFontAtlas_SetTexID(ImFontAtlas* self,ImTextureID id);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesDefault(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesKorean(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesJapanese(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesChineseFull(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesCyrillic(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesThai(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesVietnamese(ImFontAtlas* self);
extern  int ImFontAtlas_AddCustomRectRegular(ImFontAtlas* self,int width,int height);
extern  int ImFontAtlas_AddCustomRectFontGlyph(ImFontAtlas* self,ImFont* font,ImWchar id,int width,int height,float advance_x,const ImVec2 offset);
extern  ImFontAtlasCustomRect* ImFontAtlas_GetCustomRectByIndex(ImFontAtlas* self,int index);
extern  void ImFontAtlas_CalcCustomRectUV(ImFontAtlas* self,const ImFontAtlasCustomRect* rect,ImVec2* out_uv_min,ImVec2* out_uv_max);
extern  _Bool ImFontAtlas_GetMouseCursorTexData(ImFontAtlas* self,ImGuiMouseCursor cursor,ImVec2* out_offset,ImVec2* out_size,ImVec2 out_uv_border[2],ImVec2 out_uv_fill[2]);
extern  ImFont* ImFont_ImFont(void);
extern  void ImFont_destroy(ImFont* self);
extern  const ImFontGlyph* ImFont_FindGlyph(ImFont* self,ImWchar c);
extern  const ImFontGlyph* ImFont_FindGlyphNoFallback(ImFont* self,ImWchar c);
extern  float ImFont_GetCharAdvance(ImFont* self,ImWchar c);
extern  _Bool ImFont_IsLoaded(ImFont* self);
extern  const char* ImFont_GetDebugName(ImFont* self);
extern  void ImFont_CalcTextSizeA(ImVec2 *pOut,ImFont* self,float size,float max_width,float wrap_width,const char* text_begin,const char* text_end,const char** remaining);
extern  const char* ImFont_CalcWordWrapPositionA(ImFont* self,float scale,const char* text,const char* text_end,float wrap_width);
extern  void ImFont_RenderChar(ImFont* self,ImDrawList* draw_list,float size,ImVec2 pos,ImU32 col,ImWchar c);
extern  void ImFont_RenderText(ImFont* self,ImDrawList* draw_list,float size,ImVec2 pos,ImU32 col,const ImVec4 clip_rect,const char* text_begin,const char* text_end,float wrap_width,_Bool cpu_fine_clip);
extern  void ImFont_BuildLookupTable(ImFont* self);
extern  void ImFont_ClearOutputData(ImFont* self);
extern  void ImFont_GrowIndex(ImFont* self,int new_size);
extern  void ImFont_AddGlyph(ImFont* self,const ImFontConfig* src_cfg,ImWchar c,float x0,float y0,float x1,float y1,float u0,float v0,float u1,float v1,float advance_x);
extern  void ImFont_AddRemapChar(ImFont* self,ImWchar dst,ImWchar src,_Bool overwrite_dst);
extern  void ImFont_SetGlyphVisible(ImFont* self,ImWchar c,_Bool visible);
extern  _Bool ImFont_IsGlyphRangeUnused(ImFont* self,unsigned int c_begin,unsigned int c_last);
extern  ImGuiViewport* ImGuiViewport_ImGuiViewport(void);
extern  void ImGuiViewport_destroy(ImGuiViewport* self);
extern  void ImGuiViewport_GetCenter(ImVec2 *pOut,ImGuiViewport* self);
extern  void ImGuiViewport_GetWorkCenter(ImVec2 *pOut,ImGuiViewport* self);
extern  ImGuiPlatformIO* ImGuiPlatformIO_ImGuiPlatformIO(void);
extern  void ImGuiPlatformIO_destroy(ImGuiPlatformIO* self);
extern  ImGuiPlatformMonitor* ImGuiPlatformMonitor_ImGuiPlatformMonitor(void);
extern  void ImGuiPlatformMonitor_destroy(ImGuiPlatformMonitor* self);
extern  ImGuiPlatformImeData* ImGuiPlatformImeData_ImGuiPlatformImeData(void);
extern  void ImGuiPlatformImeData_destroy(ImGuiPlatformImeData* self);
extern  int igGetKeyIndex(ImGuiKey key);
extern  ImGuiID igImHashData(const void* data,size_t data_size,ImU32 seed);
extern  ImGuiID igImHashStr(const char* data,size_t data_size,ImU32 seed);
extern  void igImQsort(void* base,size_t count,size_t size_of_element,int(*compare_func)(void const*,void const*));
extern  ImU32 igImAlphaBlendColors(ImU32 col_a,ImU32 col_b);
extern  _Bool igImIsPowerOfTwo_Int(int v);
extern  _Bool igImIsPowerOfTwo_U64(ImU64 v);
extern  int igImUpperPowerOfTwo(int v);
extern  int igImStricmp(const char* str1,const char* str2);
extern  int igImStrnicmp(const char* str1,const char* str2,size_t count);
extern  void igImStrncpy(char* dst,const char* src,size_t count);
extern  char* igImStrdup(const char* str);
extern  char* igImStrdupcpy(char* dst,size_t* p_dst_size,const char* str);
extern  const char* igImStrchrRange(const char* str_begin,const char* str_end,char c);
extern  int igImStrlenW(const ImWchar* str);
extern  const char* igImStreolRange(const char* str,const char* str_end);
extern  const ImWchar* igImStrbolW(const ImWchar* buf_mid_line,const ImWchar* buf_begin);
extern  const char* igImStristr(const char* haystack,const char* haystack_end,const char* needle,const char* needle_end);
extern  void igImStrTrimBlanks(char* str);
extern  const char* igImStrSkipBlank(const char* str);
extern  int igImFormatString(char* buf,size_t buf_size,const char* fmt,...);
extern  int igImFormatStringV(char* buf,size_t buf_size,const char* fmt,va_list args);
extern  const char* igImParseFormatFindStart(const char* format);
extern  const char* igImParseFormatFindEnd(const char* format);
extern  const char* igImParseFormatTrimDecorations(const char* format,char* buf,size_t buf_size);
extern  int igImParseFormatPrecision(const char* format,int default_value);
extern  _Bool igImCharIsBlankA(char c);
extern  _Bool igImCharIsBlankW(unsigned int c);
extern  const char* igImTextCharToUtf8(char out_buf[5],unsigned int c);
extern  int igImTextStrToUtf8(char* out_buf,int out_buf_size,const ImWchar* in_text,const ImWchar* in_text_end);
extern  int igImTextCharFromUtf8(unsigned int* out_char,const char* in_text,const char* in_text_end);
extern  int igImTextStrFromUtf8(ImWchar* out_buf,int out_buf_size,const char* in_text,const char* in_text_end,const char** in_remaining);
extern  int igImTextCountCharsFromUtf8(const char* in_text,const char* in_text_end);
extern  int igImTextCountUtf8BytesFromChar(const char* in_text,const char* in_text_end);
extern  int igImTextCountUtf8BytesFromStr(const ImWchar* in_text,const ImWchar* in_text_end);
extern  ImFileHandle igImFileOpen(const char* filename,const char* mode);
extern  _Bool igImFileClose(ImFileHandle file);
extern  ImU64 igImFileGetSize(ImFileHandle file);
extern  ImU64 igImFileRead(void* data,ImU64 size,ImU64 count,ImFileHandle file);
extern  ImU64 igImFileWrite(const void* data,ImU64 size,ImU64 count,ImFileHandle file);
extern  void* igImFileLoadToMemory(const char* filename,const char* mode,size_t* out_file_size,int padding_bytes);
extern  float igImPow_Float(float x,float y);
extern  double igImPow_double(double x,double y);
extern  float igImLog_Float(float x);
extern  double igImLog_double(double x);
extern  int igImAbs_Int(int x);
extern  float igImAbs_Float(float x);
extern  double igImAbs_double(double x);
extern  float igImSign_Float(float x);
extern  double igImSign_double(double x);
extern  float igImRsqrt_Float(float x);
extern  double igImRsqrt_double(double x);
extern  void igImMin(ImVec2 *pOut,const ImVec2 lhs,const ImVec2 rhs);
extern  void igImMax(ImVec2 *pOut,const ImVec2 lhs,const ImVec2 rhs);
extern  void igImClamp(ImVec2 *pOut,const ImVec2 v,const ImVec2 mn,ImVec2 mx);
extern  void igImLerp_Vec2Float(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,float t);
extern  void igImLerp_Vec2Vec2(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,const ImVec2 t);
extern  void igImLerp_Vec4(ImVec4 *pOut,const ImVec4 a,const ImVec4 b,float t);
extern  float igImSaturate(float f);
extern  float igImLengthSqr_Vec2(const ImVec2 lhs);
extern  float igImLengthSqr_Vec4(const ImVec4 lhs);
extern  float igImInvLength(const ImVec2 lhs,float fail_value);
extern  float igImFloor_Float(float f);
extern  float igImFloorSigned_Float(float f);
extern  void igImFloor_Vec2(ImVec2 *pOut,const ImVec2 v);
extern  void igImFloorSigned_Vec2(ImVec2 *pOut,const ImVec2 v);
extern  int igImModPositive(int a,int b);
extern  float igImDot(const ImVec2 a,const ImVec2 b);
extern  void igImRotate(ImVec2 *pOut,const ImVec2 v,float cos_a,float sin_a);
extern  float igImLinearSweep(float current,float target,float speed);
extern  void igImMul(ImVec2 *pOut,const ImVec2 lhs,const ImVec2 rhs);
extern  _Bool igImIsFloatAboveGuaranteedIntegerPrecision(float f);
extern  void igImBezierCubicCalc(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,float t);
extern  void igImBezierCubicClosestPoint(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,const ImVec2 p,int num_segments);
extern  void igImBezierCubicClosestPointCasteljau(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,const ImVec2 p,float tess_tol);
extern  void igImBezierQuadraticCalc(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,float t);
extern  void igImLineClosestPoint(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,const ImVec2 p);
extern  _Bool igImTriangleContainsPoint(const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 p);
extern  void igImTriangleClosestPoint(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 p);
extern  void igImTriangleBarycentricCoords(const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 p,float* out_u,float* out_v,float* out_w);
extern  float igImTriangleArea(const ImVec2 a,const ImVec2 b,const ImVec2 c);
extern  ImGuiDir igImGetDirQuadrantFromDelta(float dx,float dy);
extern  ImVec1* ImVec1_ImVec1_Nil(void);
extern  void ImVec1_destroy(ImVec1* self);
extern  ImVec1* ImVec1_ImVec1_Float(float _x);
extern  ImVec2ih* ImVec2ih_ImVec2ih_Nil(void);
extern  void ImVec2ih_destroy(ImVec2ih* self);
extern  ImVec2ih* ImVec2ih_ImVec2ih_short(short _x,short _y);
extern  ImVec2ih* ImVec2ih_ImVec2ih_Vec2(const ImVec2 rhs);
extern  ImRect* ImRect_ImRect_Nil(void);
extern  void ImRect_destroy(ImRect* self);
extern  ImRect* ImRect_ImRect_Vec2(const ImVec2 min,const ImVec2 max);
extern  ImRect* ImRect_ImRect_Vec4(const ImVec4 v);
extern  ImRect* ImRect_ImRect_Float(float x1,float y1,float x2,float y2);
extern  void ImRect_GetCenter(ImVec2 *pOut,ImRect* self);
extern  void ImRect_GetSize(ImVec2 *pOut,ImRect* self);
extern  float ImRect_GetWidth(ImRect* self);
extern  float ImRect_GetHeight(ImRect* self);
extern  float ImRect_GetArea(ImRect* self);
extern  void ImRect_GetTL(ImVec2 *pOut,ImRect* self);
extern  void ImRect_GetTR(ImVec2 *pOut,ImRect* self);
extern  void ImRect_GetBL(ImVec2 *pOut,ImRect* self);
extern  void ImRect_GetBR(ImVec2 *pOut,ImRect* self);
extern  _Bool ImRect_Contains_Vec2(ImRect* self,const ImVec2 p);
extern  _Bool ImRect_Contains_Rect(ImRect* self,const ImRect r);
extern  _Bool ImRect_Overlaps(ImRect* self,const ImRect r);
extern  void ImRect_Add_Vec2(ImRect* self,const ImVec2 p);
extern  void ImRect_Add_Rect(ImRect* self,const ImRect r);
extern  void ImRect_Expand_Float(ImRect* self,const float amount);
extern  void ImRect_Expand_Vec2(ImRect* self,const ImVec2 amount);
extern  void ImRect_Translate(ImRect* self,const ImVec2 d);
extern  void ImRect_TranslateX(ImRect* self,float dx);
extern  void ImRect_TranslateY(ImRect* self,float dy);
extern  void ImRect_ClipWith(ImRect* self,const ImRect r);
extern  void ImRect_ClipWithFull(ImRect* self,const ImRect r);
extern  void ImRect_Floor(ImRect* self);
extern  _Bool ImRect_IsInverted(ImRect* self);
extern  void ImRect_ToVec4(ImVec4 *pOut,ImRect* self);
extern  _Bool igImBitArrayTestBit(const ImU32* arr,int n);
extern  void igImBitArrayClearBit(ImU32* arr,int n);
extern  void igImBitArraySetBit(ImU32* arr,int n);
extern  void igImBitArraySetBitRange(ImU32* arr,int n,int n2);
extern  void ImBitVector_Create(ImBitVector* self,int sz);
extern  void ImBitVector_Clear(ImBitVector* self);
extern  _Bool ImBitVector_TestBit(ImBitVector* self,int n);
extern  void ImBitVector_SetBit(ImBitVector* self,int n);
extern  void ImBitVector_ClearBit(ImBitVector* self,int n);
extern  ImDrawListSharedData* ImDrawListSharedData_ImDrawListSharedData(void);
extern  void ImDrawListSharedData_destroy(ImDrawListSharedData* self);
extern  void ImDrawListSharedData_SetCircleTessellationMaxError(ImDrawListSharedData* self,float max_error);
extern  void ImDrawDataBuilder_Clear(ImDrawDataBuilder* self);
extern  void ImDrawDataBuilder_ClearFreeMemory(ImDrawDataBuilder* self);
extern  int ImDrawDataBuilder_GetDrawListCount(ImDrawDataBuilder* self);
extern  void ImDrawDataBuilder_FlattenIntoSingleLayer(ImDrawDataBuilder* self);
extern  ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Int(ImGuiStyleVar idx,int v);
extern  void ImGuiStyleMod_destroy(ImGuiStyleMod* self);
extern  ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Float(ImGuiStyleVar idx,float v);
extern  ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Vec2(ImGuiStyleVar idx,ImVec2 v);
extern  ImGuiComboPreviewData* ImGuiComboPreviewData_ImGuiComboPreviewData(void);
extern  void ImGuiComboPreviewData_destroy(ImGuiComboPreviewData* self);
extern  ImGuiMenuColumns* ImGuiMenuColumns_ImGuiMenuColumns(void);
extern  void ImGuiMenuColumns_destroy(ImGuiMenuColumns* self);
extern  void ImGuiMenuColumns_Update(ImGuiMenuColumns* self,float spacing,_Bool window_reappearing);
extern  float ImGuiMenuColumns_DeclColumns(ImGuiMenuColumns* self,float w_icon,float w_label,float w_shortcut,float w_mark);
extern  void ImGuiMenuColumns_CalcNextTotalWidth(ImGuiMenuColumns* self,_Bool update_offsets);
extern  ImGuiInputTextState* ImGuiInputTextState_ImGuiInputTextState(void);
extern  void ImGuiInputTextState_destroy(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ClearText(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ClearFreeMemory(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetUndoAvailCount(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetRedoAvailCount(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_OnKeyPressed(ImGuiInputTextState* self,int key);
extern  void ImGuiInputTextState_CursorAnimReset(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_CursorClamp(ImGuiInputTextState* self);
extern  _Bool ImGuiInputTextState_HasSelection(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ClearSelection(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetCursorPos(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetSelectionStart(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetSelectionEnd(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_SelectAll(ImGuiInputTextState* self);
extern  ImGuiPopupData* ImGuiPopupData_ImGuiPopupData(void);
extern  void ImGuiPopupData_destroy(ImGuiPopupData* self);
extern  ImGuiNextWindowData* ImGuiNextWindowData_ImGuiNextWindowData(void);
extern  void ImGuiNextWindowData_destroy(ImGuiNextWindowData* self);
extern  void ImGuiNextWindowData_ClearFlags(ImGuiNextWindowData* self);
extern  ImGuiNextItemData* ImGuiNextItemData_ImGuiNextItemData(void);
extern  void ImGuiNextItemData_destroy(ImGuiNextItemData* self);
extern  void ImGuiNextItemData_ClearFlags(ImGuiNextItemData* self);
extern  ImGuiLastItemData* ImGuiLastItemData_ImGuiLastItemData(void);
extern  void ImGuiLastItemData_destroy(ImGuiLastItemData* self);
extern  ImGuiStackSizes* ImGuiStackSizes_ImGuiStackSizes(void);
extern  void ImGuiStackSizes_destroy(ImGuiStackSizes* self);
extern  void ImGuiStackSizes_SetToCurrentState(ImGuiStackSizes* self);
extern  void ImGuiStackSizes_CompareWithCurrentState(ImGuiStackSizes* self);
extern  ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(void* ptr);
extern  void ImGuiPtrOrIndex_destroy(ImGuiPtrOrIndex* self);
extern  ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(int index);
extern  ImGuiInputEvent* ImGuiInputEvent_ImGuiInputEvent(void);
extern  void ImGuiInputEvent_destroy(ImGuiInputEvent* self);
extern  ImGuiListClipperRange ImGuiListClipperRange_FromIndices(int min,int max);
extern  ImGuiListClipperRange ImGuiListClipperRange_FromPositions(float y1,float y2,int off_min,int off_max);
extern  ImGuiListClipperData* ImGuiListClipperData_ImGuiListClipperData(void);
extern  void ImGuiListClipperData_destroy(ImGuiListClipperData* self);
extern  void ImGuiListClipperData_Reset(ImGuiListClipperData* self,ImGuiListClipper* clipper);
extern  ImGuiNavItemData* ImGuiNavItemData_ImGuiNavItemData(void);
extern  void ImGuiNavItemData_destroy(ImGuiNavItemData* self);
extern  void ImGuiNavItemData_Clear(ImGuiNavItemData* self);
extern  ImGuiOldColumnData* ImGuiOldColumnData_ImGuiOldColumnData(void);
extern  void ImGuiOldColumnData_destroy(ImGuiOldColumnData* self);
extern  ImGuiOldColumns* ImGuiOldColumns_ImGuiOldColumns(void);
extern  void ImGuiOldColumns_destroy(ImGuiOldColumns* self);
extern  ImGuiDockNode* ImGuiDockNode_ImGuiDockNode(ImGuiID id);
extern  void ImGuiDockNode_destroy(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsRootNode(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsDockSpace(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsFloatingNode(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsCentralNode(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsHiddenTabBar(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsNoTabBar(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsSplitNode(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsLeafNode(ImGuiDockNode* self);
extern  _Bool ImGuiDockNode_IsEmpty(ImGuiDockNode* self);
extern  void ImGuiDockNode_Rect(ImRect *pOut,ImGuiDockNode* self);
extern  void ImGuiDockNode_SetLocalFlags(ImGuiDockNode* self,ImGuiDockNodeFlags flags);
extern  void ImGuiDockNode_UpdateMergedFlags(ImGuiDockNode* self);
extern  ImGuiDockContext* ImGuiDockContext_ImGuiDockContext(void);
extern  void ImGuiDockContext_destroy(ImGuiDockContext* self);
extern  ImGuiViewportP* ImGuiViewportP_ImGuiViewportP(void);
extern  void ImGuiViewportP_destroy(ImGuiViewportP* self);
extern  void ImGuiViewportP_ClearRequestFlags(ImGuiViewportP* self);
extern  void ImGuiViewportP_CalcWorkRectPos(ImVec2 *pOut,ImGuiViewportP* self,const ImVec2 off_min);
extern  void ImGuiViewportP_CalcWorkRectSize(ImVec2 *pOut,ImGuiViewportP* self,const ImVec2 off_min,const ImVec2 off_max);
extern  void ImGuiViewportP_UpdateWorkRect(ImGuiViewportP* self);
extern  void ImGuiViewportP_GetMainRect(ImRect *pOut,ImGuiViewportP* self);
extern  void ImGuiViewportP_GetWorkRect(ImRect *pOut,ImGuiViewportP* self);
extern  void ImGuiViewportP_GetBuildWorkRect(ImRect *pOut,ImGuiViewportP* self);
extern  ImGuiWindowSettings* ImGuiWindowSettings_ImGuiWindowSettings(void);
extern  void ImGuiWindowSettings_destroy(ImGuiWindowSettings* self);
extern  char* ImGuiWindowSettings_GetName(ImGuiWindowSettings* self);
extern  ImGuiSettingsHandler* ImGuiSettingsHandler_ImGuiSettingsHandler(void);
extern  void ImGuiSettingsHandler_destroy(ImGuiSettingsHandler* self);
extern  ImGuiMetricsConfig* ImGuiMetricsConfig_ImGuiMetricsConfig(void);
extern  void ImGuiMetricsConfig_destroy(ImGuiMetricsConfig* self);
extern  ImGuiStackLevelInfo* ImGuiStackLevelInfo_ImGuiStackLevelInfo(void);
extern  void ImGuiStackLevelInfo_destroy(ImGuiStackLevelInfo* self);
extern  ImGuiStackTool* ImGuiStackTool_ImGuiStackTool(void);
extern  void ImGuiStackTool_destroy(ImGuiStackTool* self);
extern  ImGuiContextHook* ImGuiContextHook_ImGuiContextHook(void);
extern  void ImGuiContextHook_destroy(ImGuiContextHook* self);
extern  ImGuiContext* ImGuiContext_ImGuiContext(ImFontAtlas* shared_font_atlas);
extern  void ImGuiContext_destroy(ImGuiContext* self);
extern  ImGuiWindow* ImGuiWindow_ImGuiWindow(ImGuiContext* context,const char* name);
extern  void ImGuiWindow_destroy(ImGuiWindow* self);
extern  ImGuiID ImGuiWindow_GetID_Str(ImGuiWindow* self,const char* str,const char* str_end);
extern  ImGuiID ImGuiWindow_GetID_Ptr(ImGuiWindow* self,const void* ptr);
extern  ImGuiID ImGuiWindow_GetID_Int(ImGuiWindow* self,int n);
extern  ImGuiID ImGuiWindow_GetIDNoKeepAlive_Str(ImGuiWindow* self,const char* str,const char* str_end);
extern  ImGuiID ImGuiWindow_GetIDNoKeepAlive_Ptr(ImGuiWindow* self,const void* ptr);
extern  ImGuiID ImGuiWindow_GetIDNoKeepAlive_Int(ImGuiWindow* self,int n);
extern  ImGuiID ImGuiWindow_GetIDFromRectangle(ImGuiWindow* self,const ImRect r_abs);
extern  void ImGuiWindow_Rect(ImRect *pOut,ImGuiWindow* self);
extern  float ImGuiWindow_CalcFontSize(ImGuiWindow* self);
extern  float ImGuiWindow_TitleBarHeight(ImGuiWindow* self);
extern  void ImGuiWindow_TitleBarRect(ImRect *pOut,ImGuiWindow* self);
extern  float ImGuiWindow_MenuBarHeight(ImGuiWindow* self);
extern  void ImGuiWindow_MenuBarRect(ImRect *pOut,ImGuiWindow* self);
extern  ImGuiTabItem* ImGuiTabItem_ImGuiTabItem(void);
extern  void ImGuiTabItem_destroy(ImGuiTabItem* self);
extern  ImGuiTabBar* ImGuiTabBar_ImGuiTabBar(void);
extern  void ImGuiTabBar_destroy(ImGuiTabBar* self);
extern  int ImGuiTabBar_GetTabOrder(ImGuiTabBar* self,const ImGuiTabItem* tab);
extern  const char* ImGuiTabBar_GetTabName(ImGuiTabBar* self,const ImGuiTabItem* tab);
extern  ImGuiTableColumn* ImGuiTableColumn_ImGuiTableColumn(void);
extern  void ImGuiTableColumn_destroy(ImGuiTableColumn* self);
extern  ImGuiTable* ImGuiTable_ImGuiTable(void);
extern  void ImGuiTable_destroy(ImGuiTable* self);
extern  ImGuiTableTempData* ImGuiTableTempData_ImGuiTableTempData(void);
extern  void ImGuiTableTempData_destroy(ImGuiTableTempData* self);
extern  ImGuiTableColumnSettings* ImGuiTableColumnSettings_ImGuiTableColumnSettings(void);
extern  void ImGuiTableColumnSettings_destroy(ImGuiTableColumnSettings* self);
extern  ImGuiTableSettings* ImGuiTableSettings_ImGuiTableSettings(void);
extern  void ImGuiTableSettings_destroy(ImGuiTableSettings* self);
extern  ImGuiTableColumnSettings* ImGuiTableSettings_GetColumnSettings(ImGuiTableSettings* self);
extern  ImGuiWindow* igGetCurrentWindowRead(void);
extern  ImGuiWindow* igGetCurrentWindow(void);
extern  ImGuiWindow* igFindWindowByID(ImGuiID id);
extern  ImGuiWindow* igFindWindowByName(const char* name);
extern  void igUpdateWindowParentAndRootLinks(ImGuiWindow* window,ImGuiWindowFlags flags,ImGuiWindow* parent_window);
extern  void igCalcWindowNextAutoFitSize(ImVec2 *pOut,ImGuiWindow* window);
extern  _Bool igIsWindowChildOf(ImGuiWindow* window,ImGuiWindow* potential_parent,_Bool popup_hierarchy,_Bool dock_hierarchy);
extern  _Bool igIsWindowWithinBeginStackOf(ImGuiWindow* window,ImGuiWindow* potential_parent);
extern  _Bool igIsWindowAbove(ImGuiWindow* potential_above,ImGuiWindow* potential_below);
extern  _Bool igIsWindowNavFocusable(ImGuiWindow* window);
extern  void igSetWindowPos_WindowPtr(ImGuiWindow* window,const ImVec2 pos,ImGuiCond cond);
extern  void igSetWindowSize_WindowPtr(ImGuiWindow* window,const ImVec2 size,ImGuiCond cond);
extern  void igSetWindowCollapsed_WindowPtr(ImGuiWindow* window,_Bool collapsed,ImGuiCond cond);
extern  void igSetWindowHitTestHole(ImGuiWindow* window,const ImVec2 pos,const ImVec2 size);
extern  void igWindowRectAbsToRel(ImRect *pOut,ImGuiWindow* window,const ImRect r);
extern  void igWindowRectRelToAbs(ImRect *pOut,ImGuiWindow* window,const ImRect r);
extern  void igFocusWindow(ImGuiWindow* window);
extern  void igFocusTopMostWindowUnderOne(ImGuiWindow* under_this_window,ImGuiWindow* ignore_window);
extern  void igBringWindowToFocusFront(ImGuiWindow* window);
extern  void igBringWindowToDisplayFront(ImGuiWindow* window);
extern  void igBringWindowToDisplayBack(ImGuiWindow* window);
extern  void igBringWindowToDisplayBehind(ImGuiWindow* window,ImGuiWindow* above_window);
extern  int igFindWindowDisplayIndex(ImGuiWindow* window);
extern  ImGuiWindow* igFindBottomMostVisibleWindowWithinBeginStack(ImGuiWindow* window);
extern  void igSetCurrentFont(ImFont* font);
extern  ImFont* igGetDefaultFont(void);
extern  ImDrawList* igGetForegroundDrawList_WindowPtr(ImGuiWindow* window);
extern  void igInitialize(ImGuiContext* context);
extern  void igShutdown(ImGuiContext* context);
extern  void igUpdateInputEvents(_Bool trickle_fast_inputs);
extern  void igUpdateHoveredWindowAndCaptureFlags(void);
extern  void igStartMouseMovingWindow(ImGuiWindow* window);
extern  void igStartMouseMovingWindowOrNode(ImGuiWindow* window,ImGuiDockNode* node,_Bool undock_floating_node);
extern  void igUpdateMouseMovingWindowNewFrame(void);
extern  void igUpdateMouseMovingWindowEndFrame(void);
extern  ImGuiID igAddContextHook(ImGuiContext* context,const ImGuiContextHook* hook);
extern  void igRemoveContextHook(ImGuiContext* context,ImGuiID hook_to_remove);
extern  void igCallContextHooks(ImGuiContext* context,ImGuiContextHookType type);
extern  void igTranslateWindowsInViewport(ImGuiViewportP* viewport,const ImVec2 old_pos,const ImVec2 new_pos);
extern  void igScaleWindowsInViewport(ImGuiViewportP* viewport,float scale);
extern  void igDestroyPlatformWindow(ImGuiViewportP* viewport);
extern  void igSetCurrentViewport(ImGuiWindow* window,ImGuiViewportP* viewport);
extern  const ImGuiPlatformMonitor* igGetViewportPlatformMonitor(ImGuiViewport* viewport);
extern  ImGuiViewportP* igFindHoveredViewportFromPlatformWindowStack(const ImVec2 mouse_platform_pos);
extern  void igMarkIniSettingsDirty_Nil(void);
extern  void igMarkIniSettingsDirty_WindowPtr(ImGuiWindow* window);
extern  void igClearIniSettings(void);
extern  ImGuiWindowSettings* igCreateNewWindowSettings(const char* name);
extern  ImGuiWindowSettings* igFindWindowSettings(ImGuiID id);
extern  ImGuiWindowSettings* igFindOrCreateWindowSettings(const char* name);
extern  ImGuiSettingsHandler* igFindSettingsHandler(const char* type_name);
extern  void igSetNextWindowScroll(const ImVec2 scroll);
extern  void igSetScrollX_WindowPtr(ImGuiWindow* window,float scroll_x);
extern  void igSetScrollY_WindowPtr(ImGuiWindow* window,float scroll_y);
extern  void igSetScrollFromPosX_WindowPtr(ImGuiWindow* window,float local_x,float center_x_ratio);
extern  void igSetScrollFromPosY_WindowPtr(ImGuiWindow* window,float local_y,float center_y_ratio);
extern  void igScrollToItem(ImGuiScrollFlags flags);
extern  void igScrollToRect(ImGuiWindow* window,const ImRect rect,ImGuiScrollFlags flags);
extern  void igScrollToRectEx(ImVec2 *pOut,ImGuiWindow* window,const ImRect rect,ImGuiScrollFlags flags);
extern  void igScrollToBringRectIntoView(ImGuiWindow* window,const ImRect rect);
extern  ImGuiID igGetItemID(void);
extern  ImGuiItemStatusFlags igGetItemStatusFlags(void);
extern  ImGuiItemFlags igGetItemFlags(void);
extern  ImGuiID igGetActiveID(void);
extern  ImGuiID igGetFocusID(void);
extern  void igSetActiveID(ImGuiID id,ImGuiWindow* window);
extern  void igSetFocusID(ImGuiID id,ImGuiWindow* window);
extern  void igClearActiveID(void);
extern  ImGuiID igGetHoveredID(void);
extern  void igSetHoveredID(ImGuiID id);
extern  void igKeepAliveID(ImGuiID id);
extern  void igMarkItemEdited(ImGuiID id);
extern  void igPushOverrideID(ImGuiID id);
extern  ImGuiID igGetIDWithSeed(const char* str_id_begin,const char* str_id_end,ImGuiID seed);
extern  void igItemSize_Vec2(const ImVec2 size,float text_baseline_y);
extern  void igItemSize_Rect(const ImRect bb,float text_baseline_y);
extern  _Bool igItemAdd(const ImRect bb,ImGuiID id,const ImRect* nav_bb,ImGuiItemFlags extra_flags);
extern  _Bool igItemHoverable(const ImRect bb,ImGuiID id);
extern  _Bool igIsClippedEx(const ImRect bb,ImGuiID id);
extern  void igSetLastItemData(ImGuiID item_id,ImGuiItemFlags in_flags,ImGuiItemStatusFlags status_flags,const ImRect item_rect);
extern  void igCalcItemSize(ImVec2 *pOut,ImVec2 size,float default_w,float default_h);
extern  float igCalcWrapWidthForPos(const ImVec2 pos,float wrap_pos_x);
extern  void igPushMultiItemsWidths(int components,float width_full);
extern  _Bool igIsItemToggledSelection(void);
extern  void igGetContentRegionMaxAbs(ImVec2 *pOut);
extern  void igShrinkWidths(ImGuiShrinkWidthItem* items,int count,float width_excess);
extern  void igPushItemFlag(ImGuiItemFlags option,_Bool enabled);
extern  void igPopItemFlag(void);
extern  void igLogBegin(ImGuiLogType type,int auto_open_depth);
extern  void igLogToBuffer(int auto_open_depth);
extern  void igLogRenderedText(const ImVec2* ref_pos,const char* text,const char* text_end);
extern  void igLogSetNextTextDecoration(const char* prefix,const char* suffix);
extern  _Bool igBeginChildEx(const char* name,ImGuiID id,const ImVec2 size_arg,_Bool border,ImGuiWindowFlags flags);
extern  void igOpenPopupEx(ImGuiID id,ImGuiPopupFlags popup_flags);
extern  void igClosePopupToLevel(int remaining,_Bool restore_focus_to_window_under_popup);
extern  void igClosePopupsOverWindow(ImGuiWindow* ref_window,_Bool restore_focus_to_window_under_popup);
extern  void igClosePopupsExceptModals(void);
extern  _Bool igIsPopupOpen_ID(ImGuiID id,ImGuiPopupFlags popup_flags);
extern  _Bool igBeginPopupEx(ImGuiID id,ImGuiWindowFlags extra_flags);
extern  void igBeginTooltipEx(ImGuiTooltipFlags tooltip_flags,ImGuiWindowFlags extra_window_flags);
extern  void igGetPopupAllowedExtentRect(ImRect *pOut,ImGuiWindow* window);
extern  ImGuiWindow* igGetTopMostPopupModal(void);
extern  ImGuiWindow* igGetTopMostAndVisiblePopupModal(void);
extern  void igFindBestWindowPosForPopup(ImVec2 *pOut,ImGuiWindow* window);
extern  void igFindBestWindowPosForPopupEx(ImVec2 *pOut,const ImVec2 ref_pos,const ImVec2 size,ImGuiDir* last_dir,const ImRect r_outer,const ImRect r_avoid,ImGuiPopupPositionPolicy policy);
extern  _Bool igBeginViewportSideBar(const char* name,ImGuiViewport* viewport,ImGuiDir dir,float size,ImGuiWindowFlags window_flags);
extern  _Bool igBeginMenuEx(const char* label,const char* icon,_Bool enabled);
extern  _Bool igMenuItemEx(const char* label,const char* icon,const char* shortcut,_Bool selected,_Bool enabled);
extern  _Bool igBeginComboPopup(ImGuiID popup_id,const ImRect bb,ImGuiComboFlags flags);
extern  _Bool igBeginComboPreview(void);
extern  void igEndComboPreview(void);
extern  void igNavInitWindow(ImGuiWindow* window,_Bool force_reinit);
extern  void igNavInitRequestApplyResult(void);
extern  _Bool igNavMoveRequestButNoResultYet(void);
extern  void igNavMoveRequestSubmit(ImGuiDir move_dir,ImGuiDir clip_dir,ImGuiNavMoveFlags move_flags,ImGuiScrollFlags scroll_flags);
extern  void igNavMoveRequestForward(ImGuiDir move_dir,ImGuiDir clip_dir,ImGuiNavMoveFlags move_flags,ImGuiScrollFlags scroll_flags);
extern  void igNavMoveRequestResolveWithLastItem(ImGuiNavItemData* result);
extern  void igNavMoveRequestCancel(void);
extern  void igNavMoveRequestApplyResult(void);
extern  void igNavMoveRequestTryWrapping(ImGuiWindow* window,ImGuiNavMoveFlags move_flags);
extern  const char* igGetNavInputName(ImGuiNavInput n);
extern  float igGetNavInputAmount(ImGuiNavInput n,ImGuiInputReadMode mode);
extern  void igGetNavInputAmount2d(ImVec2 *pOut,ImGuiNavDirSourceFlags dir_sources,ImGuiInputReadMode mode,float slow_factor,float fast_factor);
extern  int igCalcTypematicRepeatAmount(float t0,float t1,float repeat_delay,float repeat_rate);
extern  void igActivateItem(ImGuiID id);
extern  void igSetNavID(ImGuiID id,ImGuiNavLayer nav_layer,ImGuiID focus_scope_id,const ImRect rect_rel);
extern  void igPushFocusScope(ImGuiID id);
extern  void igPopFocusScope(void);
extern  ImGuiID igGetFocusedFocusScope(void);
extern  ImGuiID igGetFocusScope(void);
extern  _Bool igIsNamedKey(ImGuiKey key);
extern  _Bool igIsLegacyKey(ImGuiKey key);
extern  _Bool igIsGamepadKey(ImGuiKey key);
extern  ImGuiKeyData* igGetKeyData(ImGuiKey key);
extern  void igSetItemUsingMouseWheel(void);
extern  void igSetActiveIdUsingNavAndKeys(void);
extern  _Bool igIsActiveIdUsingNavDir(ImGuiDir dir);
extern  _Bool igIsActiveIdUsingNavInput(ImGuiNavInput input);
extern  _Bool igIsActiveIdUsingKey(ImGuiKey key);
extern  void igSetActiveIdUsingKey(ImGuiKey key);
extern  _Bool igIsMouseDragPastThreshold(ImGuiMouseButton button,float lock_threshold);
extern  _Bool igIsNavInputDown(ImGuiNavInput n);
extern  _Bool igIsNavInputTest(ImGuiNavInput n,ImGuiInputReadMode rm);
extern  ImGuiKeyModFlags igGetMergedKeyModFlags(void);
extern  _Bool igIsKeyPressedMap(ImGuiKey key,_Bool repeat);
extern  void igDockContextInitialize(ImGuiContext* ctx);
extern  void igDockContextShutdown(ImGuiContext* ctx);
extern  void igDockContextClearNodes(ImGuiContext* ctx,ImGuiID root_id,_Bool clear_settings_refs);
extern  void igDockContextRebuildNodes(ImGuiContext* ctx);
extern  void igDockContextNewFrameUpdateUndocking(ImGuiContext* ctx);
extern  void igDockContextNewFrameUpdateDocking(ImGuiContext* ctx);
extern  void igDockContextEndFrame(ImGuiContext* ctx);
extern  ImGuiID igDockContextGenNodeID(ImGuiContext* ctx);
extern  void igDockContextQueueDock(ImGuiContext* ctx,ImGuiWindow* target,ImGuiDockNode* target_node,ImGuiWindow* payload,ImGuiDir split_dir,float split_ratio,_Bool split_outer);
extern  void igDockContextQueueUndockWindow(ImGuiContext* ctx,ImGuiWindow* window);
extern  void igDockContextQueueUndockNode(ImGuiContext* ctx,ImGuiDockNode* node);
extern  _Bool igDockContextCalcDropPosForDocking(ImGuiWindow* target,ImGuiDockNode* target_node,ImGuiWindow* payload,ImGuiDir split_dir,_Bool split_outer,ImVec2* out_pos);
extern  _Bool igDockNodeBeginAmendTabBar(ImGuiDockNode* node);
extern  void igDockNodeEndAmendTabBar(void);
extern  ImGuiDockNode* igDockNodeGetRootNode(ImGuiDockNode* node);
extern  _Bool igDockNodeIsInHierarchyOf(ImGuiDockNode* node,ImGuiDockNode* parent);
extern  int igDockNodeGetDepth(const ImGuiDockNode* node);
extern  ImGuiID igDockNodeGetWindowMenuButtonId(const ImGuiDockNode* node);
extern  ImGuiDockNode* igGetWindowDockNode(void);
extern  _Bool igGetWindowAlwaysWantOwnTabBar(ImGuiWindow* window);
extern  void igBeginDocked(ImGuiWindow* window,_Bool* p_open);
extern  void igBeginDockableDragDropSource(ImGuiWindow* window);
extern  void igBeginDockableDragDropTarget(ImGuiWindow* window);
extern  void igSetWindowDock(ImGuiWindow* window,ImGuiID dock_id,ImGuiCond cond);
extern  void igDockBuilderDockWindow(const char* window_name,ImGuiID node_id);
extern  ImGuiDockNode* igDockBuilderGetNode(ImGuiID node_id);
extern  ImGuiDockNode* igDockBuilderGetCentralNode(ImGuiID node_id);
extern  ImGuiID igDockBuilderAddNode(ImGuiID node_id,ImGuiDockNodeFlags flags);
extern  void igDockBuilderRemoveNode(ImGuiID node_id);
extern  void igDockBuilderRemoveNodeDockedWindows(ImGuiID node_id,_Bool clear_settings_refs);
extern  void igDockBuilderRemoveNodeChildNodes(ImGuiID node_id);
extern  void igDockBuilderSetNodePos(ImGuiID node_id,ImVec2 pos);
extern  void igDockBuilderSetNodeSize(ImGuiID node_id,ImVec2 size);
extern  ImGuiID igDockBuilderSplitNode(ImGuiID node_id,ImGuiDir split_dir,float size_ratio_for_node_at_dir,ImGuiID* out_id_at_dir,ImGuiID* out_id_at_opposite_dir);
extern  void igDockBuilderCopyDockSpace(ImGuiID src_dockspace_id,ImGuiID dst_dockspace_id,ImVector_const_charPtr* in_window_remap_pairs);
extern  void igDockBuilderCopyNode(ImGuiID src_node_id,ImGuiID dst_node_id,ImVector_ImGuiID* out_node_remap_pairs);
extern  void igDockBuilderCopyWindowSettings(const char* src_name,const char* dst_name);
extern  void igDockBuilderFinish(ImGuiID node_id);
extern  _Bool igBeginDragDropTargetCustom(const ImRect bb,ImGuiID id);
extern  void igClearDragDrop(void);
extern  _Bool igIsDragDropPayloadBeingAccepted(void);
extern  void igSetWindowClipRectBeforeSetChannel(ImGuiWindow* window,const ImRect clip_rect);
extern  void igBeginColumns(const char* str_id,int count,ImGuiOldColumnFlags flags);
extern  void igEndColumns(void);
extern  void igPushColumnClipRect(int column_index);
extern  void igPushColumnsBackground(void);
extern  void igPopColumnsBackground(void);
extern  ImGuiID igGetColumnsID(const char* str_id,int count);
extern  ImGuiOldColumns* igFindOrCreateColumns(ImGuiWindow* window,ImGuiID id);
extern  float igGetColumnOffsetFromNorm(const ImGuiOldColumns* columns,float offset_norm);
extern  float igGetColumnNormFromOffset(const ImGuiOldColumns* columns,float offset);
extern  void igTableOpenContextMenu(int column_n);
extern  void igTableSetColumnWidth(int column_n,float width);
extern  void igTableSetColumnSortDirection(int column_n,ImGuiSortDirection sort_direction,_Bool append_to_sort_specs);
extern  int igTableGetHoveredColumn(void);
extern  float igTableGetHeaderRowHeight(void);
extern  void igTablePushBackgroundChannel(void);
extern  void igTablePopBackgroundChannel(void);
extern  ImGuiTable* igGetCurrentTable(void);
extern  ImGuiTable* igTableFindByID(ImGuiID id);
extern  _Bool igBeginTableEx(const char* name,ImGuiID id,int columns_count,ImGuiTableFlags flags,const ImVec2 outer_size,float inner_width);
extern  void igTableBeginInitMemory(ImGuiTable* table,int columns_count);
extern  void igTableBeginApplyRequests(ImGuiTable* table);
extern  void igTableSetupDrawChannels(ImGuiTable* table);
extern  void igTableUpdateLayout(ImGuiTable* table);
extern  void igTableUpdateBorders(ImGuiTable* table);
extern  void igTableUpdateColumnsWeightFromWidth(ImGuiTable* table);
extern  void igTableDrawBorders(ImGuiTable* table);
extern  void igTableDrawContextMenu(ImGuiTable* table);
extern  void igTableMergeDrawChannels(ImGuiTable* table);
extern  void igTableSortSpecsSanitize(ImGuiTable* table);
extern  void igTableSortSpecsBuild(ImGuiTable* table);
extern  ImGuiSortDirection igTableGetColumnNextSortDirection(ImGuiTableColumn* column);
extern  void igTableFixColumnSortDirection(ImGuiTable* table,ImGuiTableColumn* column);
extern  float igTableGetColumnWidthAuto(ImGuiTable* table,ImGuiTableColumn* column);
extern  void igTableBeginRow(ImGuiTable* table);
extern  void igTableEndRow(ImGuiTable* table);
extern  void igTableBeginCell(ImGuiTable* table,int column_n);
extern  void igTableEndCell(ImGuiTable* table);
extern  void igTableGetCellBgRect(ImRect *pOut,const ImGuiTable* table,int column_n);
extern  const char* igTableGetColumnName_TablePtr(const ImGuiTable* table,int column_n);
extern  ImGuiID igTableGetColumnResizeID(const ImGuiTable* table,int column_n,int instance_no);
extern  float igTableGetMaxColumnWidth(const ImGuiTable* table,int column_n);
extern  void igTableSetColumnWidthAutoSingle(ImGuiTable* table,int column_n);
extern  void igTableSetColumnWidthAutoAll(ImGuiTable* table);
extern  void igTableRemove(ImGuiTable* table);
extern  void igTableGcCompactTransientBuffers_TablePtr(ImGuiTable* table);
extern  void igTableGcCompactTransientBuffers_TableTempDataPtr(ImGuiTableTempData* table);
extern  void igTableGcCompactSettings(void);
extern  void igTableLoadSettings(ImGuiTable* table);
extern  void igTableSaveSettings(ImGuiTable* table);
extern  void igTableResetSettings(ImGuiTable* table);
extern  ImGuiTableSettings* igTableGetBoundSettings(ImGuiTable* table);
extern  void igTableSettingsInstallHandler(ImGuiContext* context);
extern  ImGuiTableSettings* igTableSettingsCreate(ImGuiID id,int columns_count);
extern  ImGuiTableSettings* igTableSettingsFindByID(ImGuiID id);
extern  _Bool igBeginTabBarEx(ImGuiTabBar* tab_bar,const ImRect bb,ImGuiTabBarFlags flags,ImGuiDockNode* dock_node);
extern  ImGuiTabItem* igTabBarFindTabByID(ImGuiTabBar* tab_bar,ImGuiID tab_id);
extern  ImGuiTabItem* igTabBarFindMostRecentlySelectedTabForActiveWindow(ImGuiTabBar* tab_bar);
extern  void igTabBarAddTab(ImGuiTabBar* tab_bar,ImGuiTabItemFlags tab_flags,ImGuiWindow* window);
extern  void igTabBarRemoveTab(ImGuiTabBar* tab_bar,ImGuiID tab_id);
extern  void igTabBarCloseTab(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);
extern  void igTabBarQueueReorder(ImGuiTabBar* tab_bar,const ImGuiTabItem* tab,int offset);
extern  void igTabBarQueueReorderFromMousePos(ImGuiTabBar* tab_bar,const ImGuiTabItem* tab,ImVec2 mouse_pos);
extern  _Bool igTabBarProcessReorder(ImGuiTabBar* tab_bar);
extern  _Bool igTabItemEx(ImGuiTabBar* tab_bar,const char* label,_Bool* p_open,ImGuiTabItemFlags flags,ImGuiWindow* docked_window);
extern  void igTabItemCalcSize(ImVec2 *pOut,const char* label,_Bool has_close_button);
extern  void igTabItemBackground(ImDrawList* draw_list,const ImRect bb,ImGuiTabItemFlags flags,ImU32 col);
extern  void igTabItemLabelAndCloseButton(ImDrawList* draw_list,const ImRect bb,ImGuiTabItemFlags flags,ImVec2 frame_padding,const char* label,ImGuiID tab_id,ImGuiID close_button_id,_Bool is_contents_visible,_Bool* out_just_closed,_Bool* out_text_clipped);
extern  void igRenderText(ImVec2 pos,const char* text,const char* text_end,_Bool hide_text_after_hash);
extern  void igRenderTextWrapped(ImVec2 pos,const char* text,const char* text_end,float wrap_width);
extern  void igRenderTextClipped(const ImVec2 pos_min,const ImVec2 pos_max,const char* text,const char* text_end,const ImVec2* text_size_if_known,const ImVec2 align,const ImRect* clip_rect);
extern  void igRenderTextClippedEx(ImDrawList* draw_list,const ImVec2 pos_min,const ImVec2 pos_max,const char* text,const char* text_end,const ImVec2* text_size_if_known,const ImVec2 align,const ImRect* clip_rect);
extern  void igRenderTextEllipsis(ImDrawList* draw_list,const ImVec2 pos_min,const ImVec2 pos_max,float clip_max_x,float ellipsis_max_x,const char* text,const char* text_end,const ImVec2* text_size_if_known);
extern  void igRenderFrame(ImVec2 p_min,ImVec2 p_max,ImU32 fill_col,_Bool border,float rounding);
extern  void igRenderFrameBorder(ImVec2 p_min,ImVec2 p_max,float rounding);
extern  void igRenderColorRectWithAlphaCheckerboard(ImDrawList* draw_list,ImVec2 p_min,ImVec2 p_max,ImU32 fill_col,float grid_step,ImVec2 grid_off,float rounding,ImDrawFlags flags);
extern  void igRenderNavHighlight(const ImRect bb,ImGuiID id,ImGuiNavHighlightFlags flags);
extern  const char* igFindRenderedTextEnd(const char* text,const char* text_end);
extern  void igRenderArrow(ImDrawList* draw_list,ImVec2 pos,ImU32 col,ImGuiDir dir,float scale);
extern  void igRenderBullet(ImDrawList* draw_list,ImVec2 pos,ImU32 col);
extern  void igRenderCheckMark(ImDrawList* draw_list,ImVec2 pos,ImU32 col,float sz);
extern  void igRenderMouseCursor(ImDrawList* draw_list,ImVec2 pos,float scale,ImGuiMouseCursor mouse_cursor,ImU32 col_fill,ImU32 col_border,ImU32 col_shadow);
extern  void igRenderArrowPointingAt(ImDrawList* draw_list,ImVec2 pos,ImVec2 half_sz,ImGuiDir direction,ImU32 col);
extern  void igRenderArrowDockMenu(ImDrawList* draw_list,ImVec2 p_min,float sz,ImU32 col);
extern  void igRenderRectFilledRangeH(ImDrawList* draw_list,const ImRect rect,ImU32 col,float x_start_norm,float x_end_norm,float rounding);
extern  void igRenderRectFilledWithHole(ImDrawList* draw_list,ImRect outer,ImRect inner,ImU32 col,float rounding);
extern  ImDrawFlags igCalcRoundingFlagsForRectInRect(const ImRect r_in,const ImRect r_outer,float threshold);
extern  void igTextEx(const char* text,const char* text_end,ImGuiTextFlags flags);
extern  _Bool igButtonEx(const char* label,const ImVec2 size_arg,ImGuiButtonFlags flags);
extern  _Bool igCloseButton(ImGuiID id,const ImVec2 pos);
extern  _Bool igCollapseButton(ImGuiID id,const ImVec2 pos,ImGuiDockNode* dock_node);
extern  _Bool igArrowButtonEx(const char* str_id,ImGuiDir dir,ImVec2 size_arg,ImGuiButtonFlags flags);
extern  void igScrollbar(ImGuiAxis axis);
extern  _Bool igScrollbarEx(const ImRect bb,ImGuiID id,ImGuiAxis axis,ImS64* p_scroll_v,ImS64 avail_v,ImS64 contents_v,ImDrawFlags flags);
extern  _Bool igImageButtonEx(ImGuiID id,ImTextureID texture_id,const ImVec2 size,const ImVec2 uv0,const ImVec2 uv1,const ImVec2 padding,const ImVec4 bg_col,const ImVec4 tint_col);
extern  void igGetWindowScrollbarRect(ImRect *pOut,ImGuiWindow* window,ImGuiAxis axis);
extern  ImGuiID igGetWindowScrollbarID(ImGuiWindow* window,ImGuiAxis axis);
extern  ImGuiID igGetWindowResizeCornerID(ImGuiWindow* window,int n);
extern  ImGuiID igGetWindowResizeBorderID(ImGuiWindow* window,ImGuiDir dir);
extern  void igSeparatorEx(ImGuiSeparatorFlags flags);
extern  _Bool igCheckboxFlags_S64Ptr(const char* label,ImS64* flags,ImS64 flags_value);
extern  _Bool igCheckboxFlags_U64Ptr(const char* label,ImU64* flags,ImU64 flags_value);
extern  _Bool igButtonBehavior(const ImRect bb,ImGuiID id,_Bool* out_hovered,_Bool* out_held,ImGuiButtonFlags flags);
extern  _Bool igDragBehavior(ImGuiID id,ImGuiDataType data_type,void* p_v,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderBehavior(const ImRect bb,ImGuiID id,ImGuiDataType data_type,void* p_v,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags,ImRect* out_grab_bb);
extern  _Bool igSplitterBehavior(const ImRect bb,ImGuiID id,ImGuiAxis axis,float* size1,float* size2,float min_size1,float min_size2,float hover_extend,float hover_visibility_delay,ImU32 bg_col);
extern  _Bool igTreeNodeBehavior(ImGuiID id,ImGuiTreeNodeFlags flags,const char* label,const char* label_end);
extern  _Bool igTreeNodeBehaviorIsOpen(ImGuiID id,ImGuiTreeNodeFlags flags);
extern  void igTreePushOverrideID(ImGuiID id);
extern  const ImGuiDataTypeInfo* igDataTypeGetInfo(ImGuiDataType data_type);
extern  int igDataTypeFormatString(char* buf,int buf_size,ImGuiDataType data_type,const void* p_data,const char* format);
extern  void igDataTypeApplyOp(ImGuiDataType data_type,int op,void* output,const void* arg_1,const void* arg_2);
extern  _Bool igDataTypeApplyFromText(const char* buf,ImGuiDataType data_type,void* p_data,const char* format);
extern  int igDataTypeCompare(ImGuiDataType data_type,const void* arg_1,const void* arg_2);
extern  _Bool igDataTypeClamp(ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max);
extern  _Bool igInputTextEx(const char* label,const char* hint,char* buf,int buf_size,const ImVec2 size_arg,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igTempInputText(const ImRect bb,ImGuiID id,const char* label,char* buf,int buf_size,ImGuiInputTextFlags flags);
extern  _Bool igTempInputScalar(const ImRect bb,ImGuiID id,const char* label,ImGuiDataType data_type,void* p_data,const char* format,const void* p_clamp_min,const void* p_clamp_max);
extern  _Bool igTempInputIsActive(ImGuiID id);
extern  ImGuiInputTextState* igGetInputTextState(ImGuiID id);
extern  void igColorTooltip(const char* text,const float* col,ImGuiColorEditFlags flags);
extern  void igColorEditOptionsPopup(const float* col,ImGuiColorEditFlags flags);
extern  void igColorPickerOptionsPopup(const float* ref_col,ImGuiColorEditFlags flags);
extern  int igPlotEx(ImGuiPlotType plot_type,const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 frame_size);
extern  void igShadeVertsLinearColorGradientKeepAlpha(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,ImVec2 gradient_p0,ImVec2 gradient_p1,ImU32 col0,ImU32 col1);
extern  void igShadeVertsLinearUV(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,const ImVec2 a,const ImVec2 b,const ImVec2 uv_a,const ImVec2 uv_b,_Bool clamp);
extern  void igGcCompactTransientMiscBuffers(void);
extern  void igGcCompactTransientWindowBuffers(ImGuiWindow* window);
extern  void igGcAwakeTransientWindowBuffers(ImGuiWindow* window);
extern  void igErrorCheckEndFrameRecover(ImGuiErrorLogCallback log_callback,void* user_data);
extern  void igErrorCheckEndWindowRecover(ImGuiErrorLogCallback log_callback,void* user_data);
extern  void igDebugDrawItemRect(ImU32 col);
extern  void igDebugStartItemPicker(void);
extern  void igShowFontAtlas(ImFontAtlas* atlas);
extern  void igDebugHookIdInfo(ImGuiID id,ImGuiDataType data_type,const void* data_id,const void* data_id_end);
extern  void igDebugNodeColumns(ImGuiOldColumns* columns);
extern  void igDebugNodeDockNode(ImGuiDockNode* node,const char* label);
extern  void igDebugNodeDrawList(ImGuiWindow* window,ImGuiViewportP* viewport,const ImDrawList* draw_list,const char* label);
extern  void igDebugNodeDrawCmdShowMeshAndBoundingBox(ImDrawList* out_draw_list,const ImDrawList* draw_list,const ImDrawCmd* draw_cmd,_Bool show_mesh,_Bool show_aabb);
extern  void igDebugNodeFont(ImFont* font);
extern  void igDebugNodeStorage(ImGuiStorage* storage,const char* label);
extern  void igDebugNodeTabBar(ImGuiTabBar* tab_bar,const char* label);
extern  void igDebugNodeTable(ImGuiTable* table);
extern  void igDebugNodeTableSettings(ImGuiTableSettings* settings);
extern  void igDebugNodeWindow(ImGuiWindow* window,const char* label);
extern  void igDebugNodeWindowSettings(ImGuiWindowSettings* settings);
extern  void igDebugNodeWindowsList(ImVector_ImGuiWindowPtr* windows,const char* label);
extern  void igDebugNodeWindowsListByBeginStackParent(ImGuiWindow** windows,int windows_size,ImGuiWindow* parent_in_begin_stack);
extern  void igDebugNodeViewport(ImGuiViewportP* viewport);
extern  void igDebugRenderViewportThumbnail(ImDrawList* draw_list,ImGuiViewportP* viewport,const ImRect bb);
extern  const ImFontBuilderIO* igImFontAtlasGetBuilderForStbTruetype(void);
extern  void igImFontAtlasBuildInit(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildSetupFont(ImFontAtlas* atlas,ImFont* font,ImFontConfig* font_config,float ascent,float descent);
extern  void igImFontAtlasBuildPackCustomRects(ImFontAtlas* atlas,void* stbrp_context_opaque);
extern  void igImFontAtlasBuildFinish(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildRender8bppRectFromString(ImFontAtlas* atlas,int x,int y,int w,int h,const char* in_str,char in_marker_char,unsigned char in_marker_pixel_value);
extern  void igImFontAtlasBuildRender32bppRectFromString(ImFontAtlas* atlas,int x,int y,int w,int h,const char* in_str,char in_marker_char,unsigned int in_marker_pixel_value);
extern  void igImFontAtlasBuildMultiplyCalcLookupTable(unsigned char out_table[256],float in_multiply_factor);
extern  void igImFontAtlasBuildMultiplyRectAlpha8(const unsigned char table[256],unsigned char* pixels,int x,int y,int w,int h,int stride);
extern  void igLogText(const char *fmt, ...);
extern  void ImGuiTextBuffer_appendf(struct ImGuiTextBuffer *buffer, const char *fmt, ...);
extern  float igGET_FLT_MAX();
extern  float igGET_FLT_MIN();
extern  ImVector_ImWchar* ImVector_ImWchar_create();
extern  void ImVector_ImWchar_destroy(ImVector_ImWchar* self);
extern  void ImVector_ImWchar_Init(ImVector_ImWchar* p);
extern  void ImVector_ImWchar_UnInit(ImVector_ImWchar* p);

]]