.class public Lcom/flyme/systemui/smarttouch/SmartTouchService;
.super Landroid/app/Service;
.source "SmartTouchService.java"


# instance fields
.field final mBinder:Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchService;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService;->mBinder:Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string p1, "SmartTouch"

    const-string v0, "bind SmartTouchService"

    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService;->mBinder:Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    const/4 p0, 0x0

    .line 22
    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onForceHide(Z)V

    const-string p0, "SmartTouch"

    const-string/jumbo p1, "unbind SmartTouchService"

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
