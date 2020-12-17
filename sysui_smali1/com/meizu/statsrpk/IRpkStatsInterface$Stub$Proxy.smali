.class Lcom/meizu/statsrpk/IRpkStatsInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRpkStatsInterface.java"

# interfaces
.implements Lcom/meizu/statsrpk/IRpkStatsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/IRpkStatsInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/meizu/statsrpk/IRpkStatsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/meizu/statsrpk/IRpkStatsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.meizu.statsrpk.IRpkStatsInterface"

    return-object p0
.end method

.method public track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.statsrpk.IRpkStatsInterface"

    .line 91
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1, v0, v3}, Lcom/meizu/statsrpk/RpkEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 97
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p2, v0, v3}, Lcom/meizu/statsrpk/RpkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 104
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_27
    iget-object p0, p0, Lcom/meizu/statsrpk/IRpkStatsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_36

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p0

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
