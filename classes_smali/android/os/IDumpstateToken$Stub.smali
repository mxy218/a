.class public abstract Landroid/os/IDumpstateToken$Stub;
.super Landroid/os/Binder;
.source "IDumpstateToken.java"

# interfaces
.implements Landroid/os/IDumpstateToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstateToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateToken$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstateToken"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.os.IDumpstateToken"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstateToken$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateToken;
    .registers 3

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_4
    const-string v0, "android.os.IDumpstateToken"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDumpstateToken;

    if-eqz v1, :cond_13

    .line 39
    check-cast v0, Landroid/os/IDumpstateToken;

    return-object v0

    .line 41
    :cond_13
    new-instance v0, Landroid/os/IDumpstateToken$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDumpstateToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstateToken;
    .registers 1

    .line 88
    sget-object v0, Landroid/os/IDumpstateToken$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateToken;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstateToken;)Z
    .registers 2

    .line 81
    sget-object v0, Landroid/os/IDumpstateToken$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateToken;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 82
    sput-object p0, Landroid/os/IDumpstateToken$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateToken;

    .line 83
    const/4 p0, 0x1

    return p0

    .line 85
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    nop

    .line 50
    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_b

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 54
    :cond_b
    const-string p1, "android.os.IDumpstateToken"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    const/4 p1, 0x1

    return p1
.end method
