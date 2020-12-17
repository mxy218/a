.class public abstract Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;
.super Landroid/os/Binder;
.source "ISmartTouchService.java"

# interfaces
.implements Lcom/flyme/systemui/smarttouch/ISmartTouchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/ISmartTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/flyme/systemui/smarttouch/ISmartTouchService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.flyme.systemui.smarttouch.ISmartTouchService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/flyme/systemui/smarttouch/ISmartTouchService;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
