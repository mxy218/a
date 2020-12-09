.class public Landroid/os/IDumpstate$Default;
.super Ljava/lang/Object;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelBugreport()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 p1, 0x0

    return-object p1
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method
