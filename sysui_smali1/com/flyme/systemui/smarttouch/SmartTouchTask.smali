.class public Lcom/flyme/systemui/smarttouch/SmartTouchTask;
.super Ljava/lang/Object;
.source "SmartTouchTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final handler:Landroid/os/Handler;

.field shouldDealWithHome:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchTask;->shouldDealWithHome:Z

    .line 38
    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchTask;->handler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final recentL()Z
    .registers 2

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchTask;->recentL(Z)Z

    move-result p0

    return p0
.end method

.method public final recentL(Z)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method final recentR()Z
    .registers 2

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchTask;->recentR(Z)Z

    move-result p0

    return p0
.end method

.method public final recentR(Z)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
