.class Lcom/android/server/wm/FlymeFeatureConfig;
.super Ljava/lang/Object;
.source "FlymeFeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeFeatureConfig$Feature;
    }
.end annotation


# static fields
.field static final FLYME_FEATURE_APP_FULLSCREEN:I = 0x3

.field static FLYME_FEATURE_APP_FULLSCREEN_OPEN:Z = false

.field static FLYME_FEATURE_DEBUG_MODE:Z = false

.field static final FLYME_FEATURE_INTERCEPT_WINDOW:I = 0x4

.field static FLYME_FEATURE_INTERCEPT_WINDOW_OPEN:Z = false

.field static FLYME_FEATURE_MASTER_SWITCH_OPEN:Z = false

.field static final FLYME_FEATURE_MOVE_WINDOW:I = 0x2

.field static FLYME_FEATURE_MOVE_WINDOW_OPEN:Z = false

.field static final FLYME_FEATURE_WINDOW_MODE:I = 0x1

.field static FLYME_FEATURE_WINDOW_MODE_CHANGE_DISPLAY:Z

.field static FLYME_FEATURE_WINDOW_MODE_FORCE_RESIZE:Z

.field static FLYME_FEATURE_WINDOW_MODE_FULL_SCREEN_DEBUG:Z

.field static FLYME_FEATURE_WINDOW_MODE_OPEN:Z

.field static FLYME_FEATURE_WINDOW_MODE_SHOULD_RELAUNCH:Z

.field static FLYME_FEATURE_WINDOW_MODE_TOUCH_OFFSET_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_MASTER_SWITCH_OPEN:Z

    .line 9
    sget-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_MASTER_SWITCH_OPEN:Z

    sput-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_OPEN:Z

    .line 10
    sput-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_MOVE_WINDOW_OPEN:Z

    .line 11
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_DEBUG_MODE:Z

    .line 12
    sput-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_APP_FULLSCREEN_OPEN:Z

    .line 13
    sput-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_INTERCEPT_WINDOW_OPEN:Z

    .line 14
    sput-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_FORCE_RESIZE:Z

    .line 15
    sput-boolean v2, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_CHANGE_DISPLAY:Z

    .line 16
    sput-boolean v2, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_SHOULD_RELAUNCH:Z

    .line 17
    sput-boolean v2, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_FULL_SCREEN_DEBUG:Z

    .line 18
    sput-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_TOUCH_OFFSET_DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isFeatureOpen(I)Z
    .registers 4
    .param p0, "feature"  # I
        .annotation build Lcom/android/server/wm/FlymeFeatureConfig$Feature;
        .end annotation
    .end param

    .line 34
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v1, 0x2

    if-eq p0, v1, :cond_28

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    .line 48
    return v2

    .line 45
    :cond_e
    sget-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_INTERCEPT_WINDOW_OPEN:Z

    if-eqz v1, :cond_19

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 42
    :cond_1b
    sget-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_APP_FULLSCREEN_OPEN:Z

    if-eqz v1, :cond_26

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    .line 39
    :cond_28
    sget-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_MOVE_WINDOW_OPEN:Z

    return v0

    .line 36
    :cond_2b
    sget-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_OPEN:Z

    return v0
.end method
