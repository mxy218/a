.class public interface abstract Lcom/meizu/statsrpk/IRpkStatsInterface;
.super Ljava/lang/Object;
.source "IRpkStatsInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsrpk/IRpkStatsInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
