.class public abstract Lcom/meizu/flyme/update/IQueryUpdateService$Stub;
.super Landroid/os/Binder;
.source "IQueryUpdateService.java"

# interfaces
.implements Lcom/meizu/flyme/update/IQueryUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/update/IQueryUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/update/IQueryUpdateService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.flyme.update.IQueryUpdateService"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 47
    instance-of v1, v0, Lcom/meizu/flyme/update/IQueryUpdateService;

    if-eqz v1, :cond_13

    .line 48
    check-cast v0, Lcom/meizu/flyme/update/IQueryUpdateService;

    return-object v0

    .line 50
    :cond_13
    new-instance v0, Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/meizu/flyme/update/IQueryUpdateService;
    .registers 1

    .line 219
    sget-object v0, Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;->sDefaultImpl:Lcom/meizu/flyme/update/IQueryUpdateService;

    return-object v0
.end method
