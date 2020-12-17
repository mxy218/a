.class abstract Lcom/flyme/systemui/smarttouch/TargetViewHelper;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;,
        Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private haveDeal:Z

.field private mQucikChangedThread:Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;

.field private final moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

.field onClickAnimationRunnable:Ljava/lang/Runnable;

.field private final optimizeWhenBoundary:I

.field private final recentTask:Lcom/flyme/systemui/smarttouch/SmartTouchTask;

.field final resetShowRunnable:Ljava/lang/Runnable;

.field private final screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$5;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$5;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    .line 73
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    new-instance v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    .line 93
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchTask;

    invoke-direct {v0, p1, p2}, Lcom/flyme/systemui/smarttouch/SmartTouchTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentTask:Lcom/flyme/systemui/smarttouch/SmartTouchTask;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 96
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->screenWidth:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->smarttouch_optimize_when_boundary:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->optimizeWhenBoundary:I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->haveDeal:Z

    return p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/smarttouch/TargetViewHelper;Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Landroid/os/Handler;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private moveDown()V
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowMoveIfNeed()V

    return-void
.end method

.method private onQucikChanged(Z)V
    .registers 6

    .line 325
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    .line 326
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 328
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 329
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 330
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 331
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050187

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 332
    iget v3, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    .line 333
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->mQucikChangedThread:Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 334
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->mQucikChangedThread:Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;

    invoke-virtual {v3}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;->close()V

    .line 336
    :cond_44
    new-instance v3, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;-><init>(Lcom/android/systemui/shared/recents/IOverviewProxy;FFZ)V

    iput-object v3, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->mQucikChangedThread:Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;

    .line 337
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->mQucikChangedThread:Lcom/flyme/systemui/smarttouch/TargetViewHelper$QucikChangedThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_55
    return-void
.end method

.method private processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V
    .registers 8

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->haveDeal:Z

    .line 211
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 212
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowNormalIfNeed()V

    goto/16 :goto_11d

    .line 214
    :cond_12
    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v1, :cond_17

    return-void

    .line 217
    :cond_17
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$6;->$SwitchMap$com$flyme$systemui$smarttouch$TargetViewHelper$UserGesture:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "SmartTouch"

    packed-switch p1, :pswitch_data_11e

    goto/16 :goto_11d

    :pswitch_2a  #0x6
    const-string p1, "gesture double click"

    .line 285
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 287
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-eq p1, v0, :cond_5b

    if-eq p1, v3, :cond_54

    if-eq p1, v2, :cond_4b

    if-eq p1, v4, :cond_42

    goto/16 :goto_11d

    .line 298
    :cond_42
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->expandTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11d

    .line 295
    :cond_4b
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11d

    .line 292
    :cond_54
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/Simulate;->expandNotifications(Landroid/content/Context;)V

    goto/16 :goto_11d

    .line 289
    :cond_5b
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveDown()V

    goto/16 :goto_11d

    :pswitch_60  #0x5
    const-string p1, "gesture click"

    .line 276
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 278
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    if-eqz p1, :cond_73

    goto/16 :goto_11d

    .line 280
    :cond_73
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->back(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11d

    :pswitch_7c  #0x4
    const-string p1, "gesture down"

    .line 258
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 260
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    if-eqz p1, :cond_ae

    if-eq p1, v0, :cond_a7

    if-eq p1, v3, :cond_9e

    if-eq p1, v2, :cond_95

    goto/16 :goto_11d

    .line 271
    :cond_95
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->killTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11d

    .line 268
    :cond_9e
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11d

    .line 265
    :cond_a7
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/Simulate;->expandNotifications(Landroid/content/Context;)V

    goto/16 :goto_11d

    .line 262
    :cond_ae
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveDown()V

    goto/16 :goto_11d

    :pswitch_b3  #0x3
    const-string p1, "gesture up"

    .line 237
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 239
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_up:I

    if-eqz p1, :cond_ec

    if-eq p1, v0, :cond_e4

    if-eq p1, v3, :cond_dc

    if-eq p1, v2, :cond_d4

    if-eq p1, v4, :cond_cc

    goto :goto_11d

    .line 253
    :cond_cc
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->menu(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_11d

    .line 250
    :cond_d4
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->toHome(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_11d

    .line 247
    :cond_dc
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->expandTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_11d

    .line 244
    :cond_e4
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->killTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_11d

    .line 241
    :cond_ec
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {p1, p0}, Lcom/flyme/systemui/smarttouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_11d

    :pswitch_f4  #0x2
    const-string p1, "gesture right"

    .line 228
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 230
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    if-eqz p1, :cond_105

    goto :goto_11d

    .line 232
    :cond_105
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentR()V

    goto :goto_11d

    :pswitch_109  #0x1
    const-string p1, "gesture left"

    .line 219
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 221
    sget-object p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    if-eqz p1, :cond_11a

    goto :goto_11d

    .line 223
    :cond_11a
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentL()V

    :goto_11d
    return-void

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_109  #00000001
        :pswitch_f4  #00000002
        :pswitch_b3  #00000003
        :pswitch_7c  #00000004
        :pswitch_60  #00000005
        :pswitch_2a  #00000006
    .end packed-switch
.end method

.method private recentL()V
    .registers 2

    const/4 v0, 0x1

    .line 308
    invoke-direct {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onQucikChanged(Z)V

    .line 309
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentTask:Lcom/flyme/systemui/smarttouch/SmartTouchTask;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchTask;->recentL()Z

    move-result v0

    if-nez v0, :cond_12

    .line 311
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return-void
.end method

.method private recentR()V
    .registers 2

    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onQucikChanged(Z)V

    .line 318
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentTask:Lcom/flyme/systemui/smarttouch/SmartTouchTask;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchTask;->recentR()Z

    move-result v0

    if-nez v0, :cond_12

    .line 320
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public animateOnUp(Landroid/view/MotionEvent;)V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 134
    iget v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->optimizeWhenBoundary:I

    const-wide/16 v1, 0x64

    if-ge p1, v0, :cond_2d

    .line 135
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c

    .line 143
    :cond_2d
    iget v3, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->screenWidth:I

    sub-int/2addr v3, v0

    if-le p1, v3, :cond_3c

    .line 144
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method public final initOnDown()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    iput-boolean v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->haveDeal:Z

    return-void
.end method

.method public final onDoubleTapUp()Z
    .registers 2

    .line 192
    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onFling(FF)V
    .registers 5

    float-to-double v0, p1

    float-to-double p1, p2

    .line 113
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L  # 180.0

    mul-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    div-double/2addr p1, v0

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x2d

    if-ge v0, v1, :cond_21

    .line 116
    sget-object p1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOWN:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    goto :goto_3c

    :cond_21
    const/16 v1, 0x87

    if-ge v0, v1, :cond_37

    const-wide/16 v0, 0x0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_31

    .line 119
    sget-object p1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->LEFT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    goto :goto_3c

    .line 121
    :cond_31
    sget-object p1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    goto :goto_3c

    .line 124
    :cond_37
    sget-object p1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->UP:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    :goto_3c
    return-void
.end method

.method public final onScroll(ZI)Z
    .registers 5

    if-eqz p1, :cond_18

    .line 163
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, -0x3

    .line 164
    iput v0, p1, Landroid/os/Message;->what:I

    .line 165
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 166
    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_21

    .line 169
    :cond_18
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public final onSingleTapUp()Z
    .registers 2

    .line 157
    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ONE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onUnLock()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 198
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowNormalIfNeed()V

    :cond_d
    return-void
.end method

.method public final resetForMove()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-nez v0, :cond_e

    .line 187
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    return-void
.end method

.method public abstract updateFloatWindow(I)V
.end method
