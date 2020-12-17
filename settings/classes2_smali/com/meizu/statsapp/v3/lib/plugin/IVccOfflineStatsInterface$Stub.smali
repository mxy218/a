.class public abstract Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface$Stub;
.super Landroid/os/Binder;
.source "IVccOfflineStatsInterface.java"

# interfaces
.implements Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.statsapp.v3.lib.plugin.IVccOfflineStatsInterface"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 29
    instance-of v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    return-object v0

    .line 32
    :cond_13
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
