.class public abstract Landroid/os/IVoldListener$Stub;
.super Landroid/os/Binder;
.source "IVoldListener.java"

# interfaces
.implements Landroid/os/IVoldListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldListener"

.field static final TRANSACTION_onDiskCreated:I = 0x1

.field static final TRANSACTION_onDiskDestroyed:I = 0x4

.field static final TRANSACTION_onDiskMetadataChanged:I = 0x3

.field static final TRANSACTION_onDiskScanned:I = 0x2

.field static final TRANSACTION_onVolumeCreated:I = 0x5

.field static final TRANSACTION_onVolumeDestroyed:I = 0xa

.field static final TRANSACTION_onVolumeInternalPathChanged:I = 0x9

.field static final TRANSACTION_onVolumeMetadataChanged:I = 0x7

.field static final TRANSACTION_onVolumePathChanged:I = 0x8

.field static final TRANSACTION_onVolumeStateChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.os.IVoldListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoldListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;
    .registers 3

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    const-string v0, "android.os.IVoldListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IVoldListener;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/os/IVoldListener;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/os/IVoldListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVoldListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IVoldListener;
    .registers 1

    .line 404
    sget-object v0, Landroid/os/IVoldListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IVoldListener;)Z
    .registers 2

    .line 397
    sget-object v0, Landroid/os/IVoldListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 398
    sput-object p0, Landroid/os/IVoldListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldListener;

    .line 399
    const/4 p0, 0x1

    return p0

    .line 401
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    nop

    .line 77
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.os.IVoldListener"

    if-eq p1, v0, :cond_b4

    packed-switch p1, :pswitch_data_b8

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 184
    :pswitch_11  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Landroid/os/IVoldListener$Stub;->onVolumeDestroyed(Ljava/lang/String;)V

    .line 188
    return v1

    .line 174
    :pswitch_1c  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/os/IVoldListener$Stub;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return v1

    .line 164
    :pswitch_2b  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/os/IVoldListener$Stub;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return v1

    .line 150
    :pswitch_3a  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/os/IVoldListener$Stub;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return v1

    .line 140
    :pswitch_51  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/os/IVoldListener$Stub;->onVolumeStateChanged(Ljava/lang/String;I)V

    .line 146
    return v1

    .line 126
    :pswitch_60  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/os/IVoldListener$Stub;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return v1

    .line 118
    :pswitch_77  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Landroid/os/IVoldListener$Stub;->onDiskDestroyed(Ljava/lang/String;)V

    .line 122
    return v1

    .line 104
    :pswitch_82  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 113
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/IVoldListener$Stub;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 114
    return v1

    .line 96
    :pswitch_9a  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Landroid/os/IVoldListener$Stub;->onDiskScanned(Ljava/lang/String;)V

    .line 100
    return v1

    .line 86
    :pswitch_a5  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/os/IVoldListener$Stub;->onDiskCreated(Ljava/lang/String;I)V

    .line 92
    return v1

    .line 81
    :cond_b4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a5  #00000001
        :pswitch_9a  #00000002
        :pswitch_82  #00000003
        :pswitch_77  #00000004
        :pswitch_60  #00000005
        :pswitch_51  #00000006
        :pswitch_3a  #00000007
        :pswitch_2b  #00000008
        :pswitch_1c  #00000009
        :pswitch_11  #0000000a
    .end packed-switch
.end method
