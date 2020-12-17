.class public abstract Lcom/meizu/statsrpk/IRpkStatsInterface$Stub;
.super Landroid/os/Binder;
.source "IRpkStatsInterface.java"

# interfaces
.implements Lcom/meizu/statsrpk/IRpkStatsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/IRpkStatsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsrpk/IRpkStatsInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.meizu.statsrpk.IRpkStatsInterface"

.field static final TRANSACTION_track:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.meizu.statsrpk.IRpkStatsInterface"

    .line 17
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/statsrpk/IRpkStatsInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.statsrpk.IRpkStatsInterface"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 29
    instance-of v1, v0, Lcom/meizu/statsrpk/IRpkStatsInterface;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/meizu/statsrpk/IRpkStatsInterface;

    return-object v0

    .line 32
    :cond_13
    new-instance v0, Lcom/meizu/statsrpk/IRpkStatsInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/statsrpk/IRpkStatsInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.meizu.statsrpk.IRpkStatsInterface"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 44
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 49
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_26

    .line 52
    sget-object p1, Lcom/meizu/statsrpk/RpkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/statsrpk/RpkEvent;

    goto :goto_27

    :cond_26
    move-object p1, p4

    .line 58
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 59
    sget-object p4, Lcom/meizu/statsrpk/RpkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/meizu/statsrpk/RpkInfo;

    .line 64
    :cond_36
    invoke-interface {p0, p1, p4}, Lcom/meizu/statsrpk/IRpkStatsInterface;->track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
