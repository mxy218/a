.class public abstract Lcom/meizu/common/pps/IPPSNative;
.super Landroid/os/Binder;
.source "IPPSNative.java"

# interfaces
.implements Lcom/meizu/common/pps/IPPS;


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "pps_server"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.meizu.pps.IPPS"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/common/pps/IPPSNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/common/pps/IPPS;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 21
    if-nez p0, :cond_4

    .line 22
    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_4
    const-string v0, "com.meizu.pps.IPPS"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/IPPS;

    .line 25
    .local v0, "in":Lcom/meizu/common/pps/IPPS;
    if-eqz v0, :cond_f

    .line 26
    return-object v0

    .line 28
    :cond_f
    new-instance v1, Lcom/meizu/common/pps/IPPSProxy;

    invoke-direct {v1, p0}, Lcom/meizu/common/pps/IPPSProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 33
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    move-object v6, p0

    move-object/from16 v7, p3

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_152

    .line 183
    :pswitch_7  #0xd
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 176
    :pswitch_c  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, "uid":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/pps/IPPSNative;->isSensorFastest(I)Z

    move-result v1

    .line 178
    .local v1, "isSensorFastest":Z
    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    return v8

    .line 170
    .end local v0  # "uid":I
    .end local v1  # "isSensorFastest":Z
    :pswitch_1b  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 171
    .local v0, "pids":[I
    invoke-virtual {p0, v0}, Lcom/meizu/common/pps/IPPSNative;->getPssExt([I)[I

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    return v8

    .line 161
    .end local v0  # "pids":[I
    :pswitch_2a  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .local v0, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 163
    .local v1, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/common/pps/IPPSNative;->forceUnfreeze(I[ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v8

    .line 152
    .end local v0  # "uid":I
    .end local v1  # "pids":[I
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "reason":Ljava/lang/String;
    :pswitch_41  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0  # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 154
    .restart local v1  # "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2  # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .restart local v3  # "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/common/pps/IPPSNative;->forceFreeze(I[ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v8

    .line 146
    .end local v0  # "uid":I
    .end local v1  # "pids":[I
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "reason":Ljava/lang/String;
    :pswitch_58  #0x11
    invoke-virtual {p0}, Lcom/meizu/common/pps/IPPSNative;->getNativePss()Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "nativeProcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v8

    .line 137
    .end local v0  # "nativeProcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_63  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 138
    .local v9, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 139
    .local v10, "intervalTime":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 141
    .local v12, "nowTime":J
    move-object v0, p0

    move-object v1, v9

    move v2, v10

    move-object v3, v11

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/pps/IPPSNative;->fastFreezeExt([IILjava/lang/String;J)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v8

    .line 130
    .end local v9  # "pids":[I
    .end local v10  # "intervalTime":I
    .end local v11  # "pkgName":Ljava/lang/String;
    .end local v12  # "nowTime":J
    :pswitch_7f  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 131
    .local v0, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .local v1, "intervalTime":I
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/pps/IPPSNative;->fastFreeze([II)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v8

    .line 123
    .end local v0  # "pids":[I
    .end local v1  # "intervalTime":I
    :pswitch_8e  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "type":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/pps/IPPSNative;->getWorkingList(I)Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v8

    .line 116
    .end local v0  # "type":I
    .end local v1  # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9d  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "userId":I
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/pps/IPPSNative;->restoreUpdatesForPowerSaveAsUser(Ljava/lang/String;I)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    return v8

    .line 109
    .end local v0  # "pkgName":Ljava/lang/String;
    .end local v1  # "userId":I
    :pswitch_ac  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0  # "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1  # "userId":I
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/pps/IPPSNative;->removeUpdatesForPowerSaveAsUser(Ljava/lang/String;I)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v8

    .line 103
    .end local v0  # "pkgName":Ljava/lang/String;
    .end local v1  # "userId":I
    :pswitch_bb  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 104
    .local v0, "pids":[I
    invoke-virtual {p0, v0}, Lcom/meizu/common/pps/IPPSNative;->getPss([I)[I

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v8

    .line 95
    .end local v0  # "pids":[I
    :pswitch_ca  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, "clonedId":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/pps/IPPSNative;->stopPackage(Ljava/lang/String;II)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v8

    .line 88
    .end local v0  # "pkg":Ljava/lang/String;
    .end local v1  # "uid":I
    .end local v2  # "clonedId":I
    :pswitch_dd  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, "pid":I
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/pps/IPPSNative;->killProcess(II)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v8

    .line 81
    .end local v0  # "uid":I
    .end local v1  # "pid":I
    :pswitch_ec  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    .local v1, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/pps/IPPSNative;->setAppList(ILjava/util/ArrayList;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v8

    .line 74
    .end local v0  # "type":I
    .end local v1  # "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_fb  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0  # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 76
    .local v1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/pps/IPPSNative;->setWakelockList(ILjava/util/List;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v8

    .line 66
    .end local v0  # "type":I
    .end local v1  # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10a  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_11a

    move v2, v8

    goto :goto_11b

    :cond_11a
    const/4 v2, 0x0

    .line 69
    .local v2, "disable":Z
    :goto_11b
    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/pps/IPPSNative;->setScreenWakeLockDisabledForPackageName(Ljava/lang/String;IZ)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v8

    .line 60
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v1  # "uid":I
    .end local v2  # "disable":Z
    :pswitch_122  #0x4
    invoke-virtual {p0}, Lcom/meizu/common/pps/IPPSNative;->getPowerSavedPackagesList()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v8

    .line 54
    .end local v0  # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_12d  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/meizu/common/pps/IPPSNative;->restoreUpdatesForPowerSave(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v8

    .line 48
    .end local v0  # "pkgName":Ljava/lang/String;
    :pswitch_138  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0  # "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/meizu/common/pps/IPPSNative;->removeUpdatesForPowerSave(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    return v8

    .line 41
    .end local v0  # "pkgName":Ljava/lang/String;
    :pswitch_143  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 42
    .local v0, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    .local v1, "level":I
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/pps/IPPSNative;->scheduleTrimMemory(II)V

    .line 44
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    return v8

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_143  #00000001
        :pswitch_138  #00000002
        :pswitch_12d  #00000003
        :pswitch_122  #00000004
        :pswitch_10a  #00000005
        :pswitch_fb  #00000006
        :pswitch_ec  #00000007
        :pswitch_dd  #00000008
        :pswitch_ca  #00000009
        :pswitch_bb  #0000000a
        :pswitch_ac  #0000000b
        :pswitch_9d  #0000000c
        :pswitch_7  #0000000d
        :pswitch_8e  #0000000e
        :pswitch_7f  #0000000f
        :pswitch_63  #00000010
        :pswitch_58  #00000011
        :pswitch_41  #00000012
        :pswitch_2a  #00000013
        :pswitch_1b  #00000014
        :pswitch_c  #00000015
    .end packed-switch
.end method
