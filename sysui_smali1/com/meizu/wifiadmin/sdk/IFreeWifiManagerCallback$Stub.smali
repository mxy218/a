.class public abstract Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IFreeWifiManagerCallback.java"

# interfaces
.implements Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.meizu.wifiadmin.sdk.IFreeWifiManagerCallback"

.field static final TRANSACTION_onLoginCallBack:I = 0x2

.field static final TRANSACTION_onQueryCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.meizu.wifiadmin.sdk.IFreeWifiManagerCallback"

    .line 36
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.wifiadmin.sdk.IFreeWifiManagerCallback"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 48
    instance-of v1, v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;
    .registers 1

    .line 162
    sget-object v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;->sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)Z
    .registers 2

    .line 155
    sget-object v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;->sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 156
    sput-object p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;->sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
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

    const/4 v0, 0x1

    const-string v1, "com.meizu.wifiadmin.sdk.IFreeWifiManagerCallback"

    if-eq p1, v0, :cond_24

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 64
    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 78
    :cond_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;->onLoginCallBack(I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 69
    :cond_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 72
    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;->onQueryCallback(Ljava/util/List;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
