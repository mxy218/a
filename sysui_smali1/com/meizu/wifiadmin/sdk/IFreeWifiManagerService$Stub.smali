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


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_remoteConnect:I = 0x4

.field static final TRANSACTION_remoteGetFeatureState:I = 0x6

.field static final TRANSACTION_remoteGetFreeWifiList:I = 0x7

.field static final TRANSACTION_remoteLogin:I = 0x5

.field static final TRANSACTION_remoteQuery:I = 0x3

.field static final TRANSACTION_remoteSendExtraCommand:I = 0x8

.field static final TRANSACTION_unRegisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 69
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

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

.method public static setDefaultImpl(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;)Z
    .registers 2

    .line 418
    sget-object v0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 419
    sput-object p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    if-eq p1, v0, :cond_bc

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c0

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 170
    :pswitch_11  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_27

    .line 175
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 180
    :cond_27
    invoke-interface {p0, p1, v0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x0

    if-eqz p0, :cond_33

    move p0, v1

    goto :goto_34

    :cond_33
    move p0, p1

    .line 182
    :goto_34
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_40

    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_43

    .line 188
    :cond_40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_43
    return v1

    .line 163
    :pswitch_44  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteGetFreeWifiList()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 155
    :pswitch_4e  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteGetFeatureState()I

    move-result p0

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :pswitch_5c  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6e

    .line 144
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 149
    :cond_6e
    invoke-interface {p0, v0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteLogin(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_75  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_87

    .line 130
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 135
    :cond_87
    invoke-interface {p0, v0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteConnect(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 120
    :pswitch_8e  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteQuery()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 111
    :pswitch_98  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    move-result-object p1

    .line 114
    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->unRegisterCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_aa  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    move-result-object p1

    .line 105
    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->registerCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 97
    :cond_bc
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_aa  #00000001
        :pswitch_98  #00000002
        :pswitch_8e  #00000003
        :pswitch_75  #00000004
        :pswitch_5c  #00000005
        :pswitch_4e  #00000006
        :pswitch_44  #00000007
        :pswitch_11  #00000008
    .end packed-switch
.end method
