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

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.os.IVoldListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoldListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.os.IVoldListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IVoldListener;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/os/IVoldListener;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/os/IVoldListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVoldListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IVoldListener;
    .registers 1

    .line 417
    sget-object v0, Landroid/os/IVoldListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IVoldListener;)Z
    .registers 2
    .param p0, "impl"  # Landroid/os/IVoldListener;

    .line 410
    sget-object v0, Landroid/os/IVoldListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 411
    sput-object p0, Landroid/os/IVoldListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldListener;

    .line 412
    const/4 v0, 0x1

    return v0

    .line 414
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.os.IVoldListener"

    .line 82
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_c2

    packed-switch v7, :pswitch_data_c8

    .line 199
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 191
    :pswitch_16  #0xa
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVoldListener$Stub;->onVolumeDestroyed(Ljava/lang/String;)V

    .line 195
    return v10

    .line 181
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_21  #0x9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVoldListener$Stub;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v10

    .line 171
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_30  #0x8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVoldListener$Stub;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v10

    .line 157
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_3f  #0x7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVoldListener$Stub;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v10

    .line 147
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    :pswitch_56  #0x6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IVoldListener$Stub;->onVolumeStateChanged(Ljava/lang/String;I)V

    .line 153
    return v10

    .line 133
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    :pswitch_65  #0x5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .restart local v3  # "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVoldListener$Stub;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return v10

    .line 125
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    :pswitch_7c  #0x4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVoldListener$Stub;->onDiskDestroyed(Ljava/lang/String;)V

    .line 129
    return v10

    .line 111
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_87  #0x3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 117
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 119
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 120
    .local v15, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v12

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVoldListener$Stub;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 121
    return v10

    .line 103
    .end local v11  # "_arg0":Ljava/lang/String;
    .end local v12  # "_arg1":J
    .end local v14  # "_arg2":Ljava/lang/String;
    .end local v15  # "_arg3":Ljava/lang/String;
    :pswitch_a4  #0x2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVoldListener$Stub;->onDiskScanned(Ljava/lang/String;)V

    .line 107
    return v10

    .line 91
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_af  #0x1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVoldListener$Stub;->onDiskCreated(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    return v10

    .line 86
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    :cond_c2
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v10

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_af  #00000001
        :pswitch_a4  #00000002
        :pswitch_87  #00000003
        :pswitch_7c  #00000004
        :pswitch_65  #00000005
        :pswitch_56  #00000006
        :pswitch_3f  #00000007
        :pswitch_30  #00000008
        :pswitch_21  #00000009
        :pswitch_16  #0000000a
    .end packed-switch
.end method
