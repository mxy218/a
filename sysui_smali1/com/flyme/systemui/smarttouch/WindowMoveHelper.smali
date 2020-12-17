.class public Lcom/flyme/systemui/smarttouch/WindowMoveHelper;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final moveStateListener:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

.field private final mwm:Lflyme/view/WindowManagerExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->context:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->moveStateListener:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    .line 39
    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->handler:Landroid/os/Handler;

    .line 40
    invoke-static {p1}, Lflyme/view/WindowManagerExt;->getInstance(Landroid/content/Context;)Lflyme/view/WindowManagerExt;

    move-result-object p3

    iput-object p3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lflyme/view/WindowManagerExt;

    .line 41
    iget-object p3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lflyme/view/WindowManagerExt;

    new-instance v0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lflyme/view/WindowManagerExt;->setMoveWinListener(Lflyme/view/WindowManagerExt$MoveWinListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->moveStateListener:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    return-object p0
.end method

.method public static resetOnDestroy(Landroid/content/Context;)V
    .registers 3

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "windowmove resetOnDestroy"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0}, Lflyme/view/WindowManagerExt;->getInstance(Landroid/content/Context;)Lflyme/view/WindowManagerExt;

    move-result-object p0

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lflyme/view/WindowManagerExt;->setMoveWinListener(Lflyme/view/WindowManagerExt$MoveWinListener;)V

    const/4 v0, 0x0

    const/16 v1, 0x15e

    .line 33
    invoke-virtual {p0, v0, v1}, Lflyme/view/WindowManagerExt;->moveWindow(II)Z

    return-void
.end method

.method public static resetWindow(Landroid/content/Context;)V
    .registers 3

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "windowmove resetWindow"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p0}, Lflyme/view/WindowManagerExt;->getInstance(Landroid/content/Context;)Lflyme/view/WindowManagerExt;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x15e

    invoke-virtual {p0, v0, v1}, Lflyme/view/WindowManagerExt;->moveWindow(II)Z

    return-void
.end method


# virtual methods
.method public isMoved()Z
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lflyme/view/WindowManagerExt;

    invoke-virtual {p0}, Lflyme/view/WindowManagerExt;->getMovedWinPoint()Landroid/graphics/Point;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 115
    iget p0, p0, Landroid/graphics/Point;->y:I

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final windowMoveIfNeed()V
    .registers 4

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "windowmove down"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lflyme/view/WindowManagerExt;

    const/4 v1, 0x1

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lflyme/view/WindowManagerExt;->moveWindow(II)Z

    .line 121
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->context:Landroid/content/Context;

    const-string/jumbo v0, "window_down"

    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final windowNormalIfNeed()V
    .registers 3

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "windowmove normal"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 127
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lflyme/view/WindowManagerExt;

    const/4 v0, 0x0

    const/16 v1, 0x15e

    invoke-virtual {p0, v0, v1}, Lflyme/view/WindowManagerExt;->moveWindow(II)Z

    :cond_16
    return-void
.end method
