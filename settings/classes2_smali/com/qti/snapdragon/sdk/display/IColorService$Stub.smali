.class public abstract Lcom/qti/snapdragon/sdk/display/IColorService$Stub;
.super Landroid/os/Binder;
.source "IColorService.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/IColorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/IColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.qti.snapdragon.sdk.display.IColorService"

    .line 174
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 175
    instance-of v1, v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    if-eqz v1, :cond_13

    .line 176
    check-cast v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    return-object v0

    .line 178
    :cond_13
    new-instance v0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;
    .registers 1

    .line 1309
    sget-object v0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->sDefaultImpl:Lcom/qti/snapdragon/sdk/display/IColorService;

    return-object v0
.end method
