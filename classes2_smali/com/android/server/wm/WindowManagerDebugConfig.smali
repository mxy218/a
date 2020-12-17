.class public Lcom/android/server/wm/WindowManagerDebugConfig;
.super Ljava/lang/Object;
.source "WindowManagerDebugConfig.java"


# static fields
.field static DEBUG:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_ANIM:Z = false

.field static DEBUG_APP_ORIENTATION:Z = false

.field static DEBUG_APP_TRANSITIONS:Z = false

.field static DEBUG_BOOT:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_DIM_LAYER:Z = false

.field static DEBUG_DISPLAY:Z = false

.field static DEBUG_DRAG:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_FOCUS_LIGHT:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_INPUT_METHOD:Z = false

.field static DEBUG_KEEP_SCREEN_ON:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field static DEBUG_LAYERS:Z = false

.field static DEBUG_LAYOUT:Z = false

.field static DEBUG_LAYOUT_REPEATS:Z = false

.field static DEBUG_ORIENTATION:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_RECENTS_ANIMATIONS:Z = false

.field static DEBUG_REMOTE_ANIMATIONS:Z = false

.field static DEBUG_RESIZE:Z = false

.field static DEBUG_SCREENSHOT:Z = false

.field static DEBUG_SCREEN_ON:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STARTING_WINDOW:Z = false

.field static DEBUG_STARTING_WINDOW_VERBOSE:Z = false

.field static DEBUG_TASK_MOVEMENT:Z = false

.field static DEBUG_TASK_POSITIONING:Z = false

.field static DEBUG_TOKEN_MOVEMENT:Z = false

.field static DEBUG_UNKNOWN_APP_VISIBILITY:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static DEBUG_WALLPAPER:Z = false

.field static DEBUG_WALLPAPER_LIGHT:Z = false

.field static DEBUG_WINDOW_CROP:Z = false

.field static DEBUG_WINDOW_MODE:Z = false

.field static DEBUG_WINDOW_MOVEMENT:Z = false

.field static DEBUG_WINDOW_TRACE:Z = false

.field static SHOW_LIGHT_TRANSACTIONS:Z = false

.field static SHOW_STACK_CRAWLS:Z = false

.field static SHOW_SURFACE_ALLOC:Z = false

.field static SHOW_TRANSACTIONS:Z = false

.field static SHOW_VERBOSE_TRANSACTIONS:Z = false

.field static final TAG_KEEP_SCREEN_ON:Ljava/lang/String; = "DebugKeepScreenOn"

.field static final TAG_WITH_CLASS_NAME:Z = false

.field static final TAG_WM:Ljava/lang/String; = "WindowManager"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    .line 37
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    .line 38
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 39
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 40
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    const/4 v2, 0x1

    if-nez v1, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    .line 41
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    .line 42
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    .line 43
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    .line 44
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    .line 45
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    .line 46
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    .line 47
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 48
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    .line 49
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    .line 50
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    .line 51
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_ORIENTATION:Z

    .line 52
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 53
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    .line 54
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    .line 55
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-nez v1, :cond_35

    move v1, v0

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    .line 56
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    .line 57
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    .line 58
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    .line 59
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    .line 60
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    .line 61
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    .line 62
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    .line 63
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    .line 64
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    .line 65
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    .line 66
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    .line 67
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    .line 68
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    .line 69
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    .line 70
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    .line 71
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    .line 72
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    .line 73
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    .line 74
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    .line 75
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    .line 76
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    .line 77
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    .line 78
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_6d

    move v2, v0

    :cond_6d
    sput-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    .line 80
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    .line 81
    sput-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
