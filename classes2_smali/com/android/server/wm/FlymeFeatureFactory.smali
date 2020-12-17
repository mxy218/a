.class Lcom/android/server/wm/FlymeFeatureFactory;
.super Ljava/lang/Object;
.source "FlymeFeatureFactory.java"


# static fields
.field private static mDefaultInterceptWindow:Lcom/android/server/wm/FlymeInterceptWindowController;

.field private static mDefaultMoveWindow:Lcom/android/server/wm/FlymeMoveWindowController;

.field private static mDefaultWindowMode:Lcom/android/server/wm/FlymeWindowModeController;

.field private static mOtherInterceptWindow:Lcom/android/server/wm/FlymeInterceptWindowController;

.field private static mOtherMoveWindow:Lcom/android/server/wm/FlymeMoveWindowController;

.field private static mOtherWindowMode:Lcom/android/server/wm/FlymeWindowModeController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/android/server/wm/FlymeFeatureFactory$1;

    invoke-direct {v0}, Lcom/android/server/wm/FlymeFeatureFactory$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mOtherMoveWindow:Lcom/android/server/wm/FlymeMoveWindowController;

    .line 8
    new-instance v0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-direct {v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mDefaultMoveWindow:Lcom/android/server/wm/FlymeMoveWindowController;

    .line 9
    new-instance v0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;

    invoke-direct {v0}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mDefaultInterceptWindow:Lcom/android/server/wm/FlymeInterceptWindowController;

    .line 10
    new-instance v0, Lcom/android/server/wm/FlymeFeatureFactory$2;

    invoke-direct {v0}, Lcom/android/server/wm/FlymeFeatureFactory$2;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mOtherInterceptWindow:Lcom/android/server/wm/FlymeInterceptWindowController;

    .line 13
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-direct {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mDefaultWindowMode:Lcom/android/server/wm/FlymeWindowModeController;

    .line 14
    sget-object v0, Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;

    sput-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mOtherWindowMode:Lcom/android/server/wm/FlymeWindowModeController;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInterceptWindowController(I)Lcom/android/server/wm/FlymeInterceptWindowController;
    .registers 2
    .param p0, "displayId"  # I

    .line 21
    if-nez p0, :cond_c

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/wm/FlymeFeatureConfig;->isFeatureOpen(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mDefaultInterceptWindow:Lcom/android/server/wm/FlymeInterceptWindowController;

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mOtherInterceptWindow:Lcom/android/server/wm/FlymeInterceptWindowController;

    :goto_e
    return-object v0
.end method

.method static getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;
    .registers 2
    .param p0, "displayId"  # I

    .line 17
    if-nez p0, :cond_c

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/wm/FlymeFeatureConfig;->isFeatureOpen(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mDefaultMoveWindow:Lcom/android/server/wm/FlymeMoveWindowController;

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mOtherMoveWindow:Lcom/android/server/wm/FlymeMoveWindowController;

    :goto_e
    return-object v0
.end method

.method static getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;
    .registers 2
    .param p0, "displayId"  # I

    .line 25
    if-nez p0, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/wm/FlymeFeatureConfig;->isFeatureOpen(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mDefaultWindowMode:Lcom/android/server/wm/FlymeWindowModeController;

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/android/server/wm/FlymeFeatureFactory;->mOtherWindowMode:Lcom/android/server/wm/FlymeWindowModeController;

    :goto_e
    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 9
    .param p0, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p1, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p2, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "options"  # Landroid/app/ActivityOptions;
    .param p5, "phase"  # I
    .param p6, "currentParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p7, "outParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 14
    const/4 v0, 0x0

    return v0
.end method
