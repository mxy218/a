.class public abstract Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;
.super Landroid/os/Binder;
.source "IFreeWifiManagerService.java"

# interfaces
.implements Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 80
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 81
    instance-of v1, v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    if-eqz v1, :cond_13

    .line 82
    check-cast v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    return-object v0

    .line 84
    :cond_13
    new-instance v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;
    .registers 1

    .line 425
    sget-object v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    return-object v0
.end method
