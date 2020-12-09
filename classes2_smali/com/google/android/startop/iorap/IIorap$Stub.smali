.class public abstract Lcom/google/android/startop/iorap/IIorap$Stub;
.super Landroid/os/Binder;
.source "IIorap.java"

# interfaces
.implements Lcom/google/android/startop/iorap/IIorap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IIorap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.startop.iorap.IIorap"

.field static final TRANSACTION_onAppIntentEvent:I = 0x4

.field static final TRANSACTION_onAppLaunchEvent:I = 0x2

.field static final TRANSACTION_onPackageEvent:I = 0x3

.field static final TRANSACTION_onSystemServiceEvent:I = 0x5

.field static final TRANSACTION_onSystemServiceUserEvent:I = 0x6

.field static final TRANSACTION_setTaskListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/IIorap;
    .registers 3

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_4
    const-string v0, "com.google.android.startop.iorap.IIorap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/startop/iorap/IIorap;

    if-eqz v1, :cond_13

    .line 132
    check-cast v0, Lcom/google/android/startop/iorap/IIorap;

    return-object v0

    .line 134
    :cond_13
    new-instance v0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;
    .registers 1

    .line 522
    sget-object v0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/android/startop/iorap/IIorap;)Z
    .registers 2

    .line 515
    sget-object v0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 516
    sput-object p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    .line 517
    const/4 p0, 0x1

    return p0

    .line 519
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 138
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    nop

    .line 143
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.google.android.startop.iorap.IIorap"

    if-eq p1, v0, :cond_e9

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ee

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 240
    :pswitch_12  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    .line 243
    sget-object p1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    goto :goto_25

    .line 246
    :cond_24
    move-object p1, v0

    .line 249
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_35

    .line 250
    sget-object p3, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;

    goto :goto_36

    .line 253
    :cond_35
    nop

    .line 255
    :goto_36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V

    .line 256
    return v1

    .line 220
    :pswitch_3a  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4c

    .line 223
    sget-object p1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    goto :goto_4d

    .line 226
    :cond_4c
    move-object p1, v0

    .line 229
    :goto_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_5d

    .line 230
    sget-object p3, Lcom/google/android/startop/iorap/SystemServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/startop/iorap/SystemServiceEvent;

    goto :goto_5e

    .line 233
    :cond_5d
    nop

    .line 235
    :goto_5e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V

    .line 236
    return v1

    .line 200
    :pswitch_62  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_74

    .line 203
    sget-object p1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    goto :goto_75

    .line 206
    :cond_74
    move-object p1, v0

    .line 209
    :goto_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_85

    .line 210
    sget-object p3, Lcom/google/android/startop/iorap/AppIntentEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/startop/iorap/AppIntentEvent;

    goto :goto_86

    .line 213
    :cond_85
    nop

    .line 215
    :goto_86
    invoke-virtual {p0, p1, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V

    .line 216
    return v1

    .line 180
    :pswitch_8a  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9c

    .line 183
    sget-object p1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    goto :goto_9d

    .line 186
    :cond_9c
    move-object p1, v0

    .line 189
    :goto_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_ad

    .line 190
    sget-object p3, Lcom/google/android/startop/iorap/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/startop/iorap/PackageEvent;

    goto :goto_ae

    .line 193
    :cond_ad
    nop

    .line 195
    :goto_ae
    invoke-virtual {p0, p1, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V

    .line 196
    return v1

    .line 160
    :pswitch_b2  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c4

    .line 163
    sget-object p1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    goto :goto_c5

    .line 166
    :cond_c4
    move-object p1, v0

    .line 169
    :goto_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_d5

    .line 170
    sget-object p3, Lcom/google/android/startop/iorap/AppLaunchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/startop/iorap/AppLaunchEvent;

    goto :goto_d6

    .line 173
    :cond_d5
    nop

    .line 175
    :goto_d6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    .line 176
    return v1

    .line 152
    :pswitch_da  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/ITaskListener;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/android/startop/iorap/IIorap$Stub;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V

    .line 156
    return v1

    .line 147
    :cond_e9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_da  #00000001
        :pswitch_b2  #00000002
        :pswitch_8a  #00000003
        :pswitch_62  #00000004
        :pswitch_3a  #00000005
        :pswitch_12  #00000006
    .end packed-switch
.end method
