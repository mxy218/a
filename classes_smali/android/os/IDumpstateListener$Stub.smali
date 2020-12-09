.class public abstract Landroid/os/IDumpstateListener$Stub;
.super Landroid/os/Binder;
.source "IDumpstateListener.java"

# interfaces
.implements Landroid/os/IDumpstateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstateListener"

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onFinished:I = 0x3

.field static final TRANSACTION_onMaxProgressUpdated:I = 0x5

.field static final TRANSACTION_onProgress:I = 0x1

.field static final TRANSACTION_onProgressUpdated:I = 0x4

.field static final TRANSACTION_onSectionComplete:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.os.IDumpstateListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;
    .registers 3

    .line 82
    if-nez p0, :cond_4

    .line 83
    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_4
    const-string v0, "android.os.IDumpstateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDumpstateListener;

    if-eqz v1, :cond_13

    .line 87
    check-cast v0, Landroid/os/IDumpstateListener;

    return-object v0

    .line 89
    :cond_13
    new-instance v0, Landroid/os/IDumpstateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDumpstateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstateListener;
    .registers 1

    .line 340
    sget-object v0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstateListener;)Z
    .registers 2

    .line 333
    sget-object v0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 334
    sput-object p0, Landroid/os/IDumpstateListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstateListener;

    .line 335
    const/4 p0, 0x1

    return p0

    .line 337
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 93
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    nop

    .line 98
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.os.IDumpstateListener"

    if-eq p1, v0, :cond_6d

    packed-switch p1, :pswitch_data_72

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_11  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 159
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/os/IDumpstateListener$Stub;->onSectionComplete(Ljava/lang/String;III)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v1

    .line 141
    :pswitch_2b  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onMaxProgressUpdated(I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v1

    .line 132
    :pswitch_39  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onProgressUpdated(I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v1

    .line 125
    :pswitch_47  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/os/IDumpstateListener$Stub;->onFinished()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v1

    .line 116
    :pswitch_51  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onError(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v1

    .line 107
    :pswitch_5f  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onProgress(I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v1

    .line 102
    :cond_6d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5f  #00000001
        :pswitch_51  #00000002
        :pswitch_47  #00000003
        :pswitch_39  #00000004
        :pswitch_2b  #00000005
        :pswitch_11  #00000006
    .end packed-switch
.end method
