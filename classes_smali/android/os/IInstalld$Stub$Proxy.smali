.class Landroid/os/IInstalld$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IInstalld;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput-object p1, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 890
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 893
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "filePath"  # Ljava/lang/String;
    .param p2, "expectedHash"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1669
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1670
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1671
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IInstalld;->assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1672
    return-void

    .line 1674
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1677
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1679
    nop

    .line 1680
    return-void

    .line 1677
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 23
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "ceDataInode"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1018
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1020
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_65

    .line 1021
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_63

    .line 1022
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_61

    .line 1023
    move/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_5f

    .line 1024
    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_5d

    .line 1025
    move-wide/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 1026
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1027
    .local v0, "_status":Z
    if-nez v0, :cond_50

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1028
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_5b

    .line 1034
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1029
    return-void

    .line 1031
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    .line 1034
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    nop

    .line 1037
    return-void

    .line 1034
    :catchall_5b
    move-exception v0

    goto :goto_70

    :catchall_5d
    move-exception v0

    goto :goto_6e

    :catchall_5f
    move-exception v0

    goto :goto_6c

    :catchall_61
    move-exception v0

    goto :goto_6a

    :catchall_63
    move-exception v0

    goto :goto_68

    :catchall_65
    move-exception v0

    move-object/from16 v10, p1

    :goto_68
    move-object/from16 v11, p2

    :goto_6a
    move/from16 v12, p3

    :goto_6c
    move/from16 v13, p4

    :goto_6e
    move-wide/from16 v14, p5

    :goto_70
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "profileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1360
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1361
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1362
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    return-void

    .line 1365
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1368
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1370
    nop

    .line 1371
    return-void

    .line 1368
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "apkPath"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "outDexFile"  # Ljava/lang/String;
    .param p4, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1249
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1250
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1250
    return v3

    .line 1252
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    :cond_43
    move v2, v4

    .line 1256
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1258
    nop

    .line 1259
    return v2

    .line 1256
    .end local v2  # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public copyFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "srcPath"  # Ljava/lang/String;
    .param p2, "targetPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1894
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1899
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1900
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1901
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IInstalld;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1902
    return-void

    .line 1904
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1907
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    nop

    .line 1910
    return-void

    .line 1907
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "systemProfile"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "profileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1339
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1340
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1341
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1341
    return v3

    .line 1343
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1344
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    :cond_43
    move v2, v4

    .line 1347
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    nop

    .line 1350
    return v2

    .line 1347
    .end local v2  # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    .registers 24
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "appId"  # I
    .param p6, "seInfo"  # Ljava/lang/String;
    .param p7, "targetSdkVersion"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 945
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 948
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_78

    .line 949
    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_76

    .line 950
    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_74

    .line 951
    move/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_72

    .line 952
    move/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_70

    .line 953
    move/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 957
    .local v0, "_status":Z
    if-nez v0, :cond_5f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 958
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J

    move-result-wide v3
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_6e

    .line 964
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 958
    return-wide v3

    .line 960
    :cond_5f
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 961
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6e

    .line 964
    .end local v0  # "_status":Z
    .local v3, "_result":J
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 966
    nop

    .line 967
    return-wide v3

    .line 964
    .end local v3  # "_result":J
    :catchall_6e
    move-exception v0

    goto :goto_83

    :catchall_70
    move-exception v0

    goto :goto_81

    :catchall_72
    move-exception v0

    goto :goto_7f

    :catchall_74
    move-exception v0

    goto :goto_7d

    :catchall_76
    move-exception v0

    goto :goto_7b

    :catchall_78
    move-exception v0

    move-object/from16 v11, p1

    :goto_7b
    move-object/from16 v12, p2

    :goto_7d
    move/from16 v13, p3

    :goto_7f
    move/from16 v14, p4

    :goto_81
    move/from16 v15, p5

    :goto_83
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "oatDir"  # Ljava/lang/String;
    .param p2, "instructionSet"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1565
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1566
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1567
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1568
    return-void

    .line 1570
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1573
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1575
    nop

    .line 1576
    return-void

    .line 1573
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "appId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "profileName"  # Ljava/lang/String;
    .param p4, "classpath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1402
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1403
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1404
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 1410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1404
    return v3

    .line 1406
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    :cond_43
    move v2, v4

    .line 1410
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    nop

    .line 1413
    return v2

    .line 1410
    .end local v2  # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 10
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "userSerial"  # I
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 910
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 911
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    return-void

    .line 914
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 917
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 919
    nop

    .line 920
    return-void

    .line 917
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "apkPath"  # Ljava/lang/String;
    .param p2, "instructionSet"  # Ljava/lang/String;
    .param p3, "outputPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1626
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1628
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1629
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1630
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    return-void

    .line 1633
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1636
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1638
    nop

    .line 1639
    return-void

    .line 1636
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 23
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "ceDataInode"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1041
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1043
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_65

    .line 1044
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_63

    .line 1045
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_61

    .line 1046
    move/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_5f

    .line 1047
    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_5d

    .line 1048
    move-wide/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 1049
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1050
    .local v0, "_status":Z
    if-nez v0, :cond_50

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1051
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_5b

    .line 1057
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1052
    return-void

    .line 1054
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    .line 1057
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    nop

    .line 1060
    return-void

    .line 1057
    :catchall_5b
    move-exception v0

    goto :goto_70

    :catchall_5d
    move-exception v0

    goto :goto_6e

    :catchall_5f
    move-exception v0

    goto :goto_6c

    :catchall_61
    move-exception v0

    goto :goto_6a

    :catchall_63
    move-exception v0

    goto :goto_68

    :catchall_65
    move-exception v0

    move-object/from16 v10, p1

    :goto_68
    move-object/from16 v11, p2

    :goto_6a
    move/from16 v12, p3

    :goto_6c
    move/from16 v13, p4

    :goto_6e
    move-wide/from16 v14, p5

    :goto_70
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    .registers 24
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "ceSnapshotInode"  # J
    .param p6, "snapshotId"  # I
    .param p7, "storageFlags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1850
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1852
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_6b

    .line 1853
    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_69

    .line 1854
    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_67

    .line 1855
    move/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_65

    .line 1856
    move-wide/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 1857
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1859
    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1860
    .local v0, "_status":Z
    if-nez v0, :cond_58

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 1861
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_51
    .catchall {:try_start_1e .. :try_end_51} :catchall_63

    .line 1867
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    return-void

    .line 1864
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 1867
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    nop

    .line 1870
    return-void

    .line 1867
    :catchall_63
    move-exception v0

    goto :goto_74

    :catchall_65
    move-exception v0

    goto :goto_72

    :catchall_67
    move-exception v0

    goto :goto_70

    :catchall_69
    move-exception v0

    goto :goto_6e

    :catchall_6b
    move-exception v0

    move-object/from16 v11, p1

    :goto_6e
    move-object/from16 v12, p2

    :goto_70
    move/from16 v13, p3

    :goto_72
    move-wide/from16 v14, p4

    :goto_74
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1379
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1380
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1381
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    return-void

    .line 1384
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1387
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1389
    nop

    .line 1390
    return-void

    .line 1387
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "profileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1423
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1424
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1425
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1426
    return-void

    .line 1428
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1431
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1433
    nop

    .line 1434
    return-void

    .line 1431
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 9
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 926
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 931
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 932
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 933
    return-void

    .line 935
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 938
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 940
    nop

    .line 941
    return-void

    .line 938
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 37
    .param p1, "apkPath"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "instructionSet"  # Ljava/lang/String;
    .param p5, "dexoptNeeded"  # I
    .param p6, "outputPath"  # Ljava/lang/String;
    .param p7, "dexFlags"  # I
    .param p8, "compilerFilter"  # Ljava/lang/String;
    .param p9, "uuid"  # Ljava/lang/String;
    .param p10, "sharedLibraries"  # Ljava/lang/String;
    .param p11, "seInfo"  # Ljava/lang/String;
    .param p12, "downgrade"  # Z
    .param p13, "targetSdkVersion"  # I
    .param p14, "profileName"  # Ljava/lang/String;
    .param p15, "dexMetadataPath"  # Ljava/lang/String;
    .param p16, "compilationReason"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1206
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1208
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1209
    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1210
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1213
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1215
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1220
    if-eqz p12, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    move/from16 v4, p13

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    move-object/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1223
    move-object/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1224
    move-object/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1225
    move-object/from16 v15, p0

    iget-object v0, v15, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1226
    .local v0, "_status":Z
    if-nez v0, :cond_a1

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 1227
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    invoke-interface/range {v3 .. v19}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_8 .. :try_end_9a} :catchall_ac

    .line 1233
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1228
    return-void

    .line 1230
    :cond_a1
    :try_start_a1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_ac

    .line 1233
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1235
    nop

    .line 1236
    return-void

    .line 1233
    :catchall_ac
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "profileName"  # Ljava/lang/String;
    .param p4, "codePath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1315
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1316
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1317
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1317
    return v3

    .line 1319
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    :cond_43
    move v2, v4

    .line 1323
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1325
    nop

    .line 1326
    return v2

    .line 1323
    .end local v2  # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 8
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1066
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1070
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1071
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1072
    return-void

    .line 1074
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1077
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    nop

    .line 1080
    return-void

    .line 1077
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public freeCache(Ljava/lang/String;JJI)V
    .registers 23
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "targetFreeBytes"  # J
    .param p4, "cacheReservedBytes"  # J
    .param p6, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1516
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1518
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_5d

    .line 1519
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_5b

    .line 1520
    move-wide/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_59

    .line 1521
    move-wide/from16 v13, p4

    :try_start_19
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_57

    .line 1522
    move/from16 v15, p6

    :try_start_1e
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1524
    .local v0, "_status":Z
    if-nez v0, :cond_4a

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 1525
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JJI)V
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_55

    .line 1531
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1526
    return-void

    .line 1528
    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_55

    .line 1531
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1533
    nop

    .line 1534
    return-void

    .line 1531
    :catchall_55
    move-exception v0

    goto :goto_66

    :catchall_57
    move-exception v0

    goto :goto_64

    :catchall_59
    move-exception v0

    goto :goto_62

    :catchall_5b
    move-exception v0

    goto :goto_60

    :catchall_5d
    move-exception v0

    move-object/from16 v10, p1

    :goto_60
    move-wide/from16 v11, p2

    :goto_62
    move-wide/from16 v13, p4

    :goto_64
    move/from16 v15, p6

    :goto_66
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
    .registers 24
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageNames"  # [Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "appId"  # I
    .param p6, "ceDataInodes"  # [J
    .param p7, "codePaths"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1084
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1087
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7a

    .line 1088
    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_78

    .line 1089
    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_76

    .line 1090
    move/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_74

    .line 1091
    move/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_72

    .line 1092
    move/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1094
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1095
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1096
    .local v0, "_status":Z
    if-nez v0, :cond_60

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1097
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v3
    :try_end_59
    .catchall {:try_start_23 .. :try_end_59} :catchall_70

    .line 1103
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1097
    return-object v3

    .line 1099
    :cond_60
    :try_start_60
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1100
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_70

    move-object v0, v3

    .line 1103
    .local v0, "_result":[J
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1105
    nop

    .line 1106
    return-object v0

    .line 1103
    .end local v0  # "_result":[J
    :catchall_70
    move-exception v0

    goto :goto_85

    :catchall_72
    move-exception v0

    goto :goto_83

    :catchall_74
    move-exception v0

    goto :goto_81

    :catchall_76
    move-exception v0

    goto :goto_7f

    :catchall_78
    move-exception v0

    goto :goto_7d

    :catchall_7a
    move-exception v0

    move-object/from16 v11, p1

    :goto_7d
    move-object/from16 v12, p2

    :goto_7f
    move/from16 v13, p3

    :goto_81
    move/from16 v14, p4

    :goto_83
    move/from16 v15, p5

    :goto_85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 10
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "flags"  # I
    .param p4, "appIds"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1143
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1144
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1145
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    return-object v3

    .line 1147
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 1151
    .local v2, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    nop

    .line 1154
    return-object v2

    .line 1151
    .end local v2  # "_result":[J
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 897
    const-string v0, "android.os.IInstalld"

    return-object v0
.end method

.method public getUserSize(Ljava/lang/String;II[I)[J
    .registers 10
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "flags"  # I
    .param p4, "appIds"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1114
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1119
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1120
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1121
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    return-object v3

    .line 1123
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1124
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 1127
    .local v2, "_result":[J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    nop

    .line 1130
    return-object v2

    .line 1127
    .end local v2  # "_result":[J
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 16
    .param p1, "dexPath"  # Ljava/lang/String;
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "volumeUuid"  # Ljava/lang/String;
    .param p5, "storageFlag"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1720
    .local v2, "_status":Z
    if-nez v2, :cond_41

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 1721
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_51

    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    return-object v3

    .line 1723
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1724
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_51

    move-object v2, v3

    .line 1727
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1729
    nop

    .line 1730
    return-object v2

    .line 1727
    .end local v2  # "_result":[B
    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "targetApkPath"  # Ljava/lang/String;
    .param p2, "overlayApkPath"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1445
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1446
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IInstalld;->idmap(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1447
    return-void

    .line 1449
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1452
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1454
    nop

    .line 1455
    return-void

    .line 1452
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    .registers 9
    .param p1, "filePath"  # Ljava/lang/String;
    .param p2, "verityInput"  # Ljava/io/FileDescriptor;
    .param p3, "contentSize"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1645
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1648
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1650
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1651
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IInstalld;->installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    return-void

    .line 1654
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1657
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    nop

    .line 1660
    return-void

    .line 1657
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public invalidateMounts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1738
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1739
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1740
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    return-void

    .line 1743
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1746
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1748
    nop

    .line 1749
    return-void

    .line 1746
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 7
    .param p1, "uuid"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1756
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1758
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1759
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1760
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    return v3

    .line 1762
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 1766
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    nop

    .line 1769
    return v2

    .line 1766
    .end local v2  # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "relativePath"  # Ljava/lang/String;
    .param p2, "fromBase"  # Ljava/lang/String;
    .param p3, "toBase"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1586
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1587
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1588
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1589
    return-void

    .line 1591
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1594
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1596
    nop

    .line 1597
    return-void

    .line 1594
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "nativeLibPath32"  # Ljava/lang/String;
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1546
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 1547
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1548
    return-void

    .line 1550
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 1553
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1555
    nop

    .line 1556
    return-void

    .line 1553
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public markBootComplete(Ljava/lang/String;)V
    .registers 7
    .param p1, "instructionSet"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1501
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1502
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1503
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IInstalld;->markBootComplete(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1504
    return-void

    .line 1506
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1509
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    nop

    .line 1512
    return-void

    .line 1509
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "profileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1291
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1292
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1293
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_49

    .line 1299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1293
    return v3

    .line 1295
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    :cond_40
    move v2, v4

    .line 1299
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1301
    nop

    .line 1302
    return v2

    .line 1299
    .end local v2  # "_result":Z
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1004
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1005
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    return-void

    .line 1008
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1011
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1013
    nop

    .line 1014
    return-void

    .line 1011
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public migrateLegacyObbData()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1874
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1877
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1878
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1879
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1880
    return-void

    .line 1882
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1885
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1887
    nop

    .line 1888
    return-void

    .line 1885
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "apkPath"  # Ljava/lang/String;
    .param p2, "instructionSet"  # Ljava/lang/String;
    .param p3, "outputPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1603
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1607
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1608
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1609
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1610
    return-void

    .line 1612
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1615
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1617
    nop

    .line 1618
    return-void

    .line 1615
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 24
    .param p1, "fromUuid"  # Ljava/lang/String;
    .param p2, "toUuid"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "dataAppName"  # Ljava/lang/String;
    .param p5, "appId"  # I
    .param p6, "seInfo"  # Ljava/lang/String;
    .param p7, "targetSdkVersion"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1181
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1183
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_74

    .line 1184
    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_72

    .line 1185
    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_70

    .line 1186
    move-object/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6e

    .line 1187
    move-object/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6c

    .line 1188
    move/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1190
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1192
    .local v0, "_status":Z
    if-nez v0, :cond_5f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 1193
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_6a

    .line 1199
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    return-void

    .line 1196
    :cond_5f
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6a

    .line 1199
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1201
    nop

    .line 1202
    return-void

    .line 1199
    :catchall_6a
    move-exception v0

    goto :goto_7f

    :catchall_6c
    move-exception v0

    goto :goto_7d

    :catchall_6e
    move-exception v0

    goto :goto_7b

    :catchall_70
    move-exception v0

    goto :goto_79

    :catchall_72
    move-exception v0

    goto :goto_77

    :catchall_74
    move-exception v0

    move-object/from16 v11, p1

    :goto_77
    move-object/from16 v12, p2

    :goto_79
    move-object/from16 v13, p3

    :goto_7b
    move-object/from16 v14, p4

    :goto_7d
    move/from16 v15, p5

    :goto_7f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "appId"  # I
    .param p4, "profileName"  # Ljava/lang/String;
    .param p5, "codePath"  # Ljava/lang/String;
    .param p6, "dexMetadata"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1774
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1777
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_78

    .line 1778
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_76

    .line 1779
    move/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_74

    .line 1780
    move/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_72

    .line 1781
    move-object/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_70

    .line 1782
    move-object/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6e

    .line 1783
    move-object/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1784
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1785
    .local v0, "_status":Z
    if-nez v0, :cond_59

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1786
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_6c

    .line 1792
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    return v3

    .line 1788
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1789
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_6c

    if-eqz v3, :cond_63

    const/4 v4, 0x1

    :cond_63
    move v0, v4

    .line 1792
    .local v0, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    nop

    .line 1795
    return v0

    .line 1792
    .end local v0  # "_result":Z
    :catchall_6c
    move-exception v0

    goto :goto_85

    :catchall_6e
    move-exception v0

    goto :goto_83

    :catchall_70
    move-exception v0

    goto :goto_81

    :catchall_72
    move-exception v0

    goto :goto_7f

    :catchall_74
    move-exception v0

    goto :goto_7d

    :catchall_76
    move-exception v0

    goto :goto_7b

    :catchall_78
    move-exception v0

    move-object/from16 v10, p1

    :goto_7b
    move/from16 v11, p2

    :goto_7d
    move/from16 v12, p3

    :goto_7f
    move-object/from16 v13, p4

    :goto_81
    move-object/from16 v14, p5

    :goto_83
    move-object/from16 v15, p6

    :goto_85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 23
    .param p1, "dexPath"  # Ljava/lang/String;
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "isas"  # [Ljava/lang/String;
    .param p5, "volume_uuid"  # Ljava/lang/String;
    .param p6, "storage_flag"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1684
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1687
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_78

    .line 1688
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_76

    .line 1689
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_74

    .line 1690
    move/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_72

    .line 1691
    move-object/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_70

    .line 1692
    move-object/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6e

    .line 1693
    move/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1695
    .local v0, "_status":Z
    if-nez v0, :cond_59

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1696
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_6c

    .line 1702
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    return v3

    .line 1698
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1699
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_6c

    if-eqz v3, :cond_63

    const/4 v4, 0x1

    :cond_63
    move v0, v4

    .line 1702
    .local v0, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    nop

    .line 1705
    return v0

    .line 1702
    .end local v0  # "_result":Z
    :catchall_6c
    move-exception v0

    goto :goto_85

    :catchall_6e
    move-exception v0

    goto :goto_83

    :catchall_70
    move-exception v0

    goto :goto_81

    :catchall_72
    move-exception v0

    goto :goto_7f

    :catchall_74
    move-exception v0

    goto :goto_7d

    :catchall_76
    move-exception v0

    goto :goto_7b

    :catchall_78
    move-exception v0

    move-object/from16 v10, p1

    :goto_7b
    move-object/from16 v11, p2

    :goto_7d
    move/from16 v12, p3

    :goto_7f
    move-object/from16 v13, p4

    :goto_81
    move-object/from16 v14, p5

    :goto_83
    move/from16 v15, p6

    :goto_85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeIdmap(Ljava/lang/String;)V
    .registers 7
    .param p1, "overlayApkPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1463
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1464
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1465
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IInstalld;->removeIdmap(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    return-void

    .line 1468
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1471
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1473
    nop

    .line 1474
    return-void

    .line 1471
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .registers 24
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "appId"  # I
    .param p4, "seInfo"  # Ljava/lang/String;
    .param p5, "user"  # I
    .param p6, "snapshotId"  # I
    .param p7, "storageflags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1825
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1827
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_74

    .line 1828
    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_72

    .line 1829
    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_70

    .line 1830
    move/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6e

    .line 1831
    move-object/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6c

    .line 1832
    move/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1836
    .local v0, "_status":Z
    if-nez v0, :cond_5f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 1837
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_6a

    .line 1843
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    return-void

    .line 1840
    :cond_5f
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6a

    .line 1843
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1845
    nop

    .line 1846
    return-void

    .line 1843
    :catchall_6a
    move-exception v0

    goto :goto_7f

    :catchall_6c
    move-exception v0

    goto :goto_7d

    :catchall_6e
    move-exception v0

    goto :goto_7b

    :catchall_70
    move-exception v0

    goto :goto_79

    :catchall_72
    move-exception v0

    goto :goto_77

    :catchall_74
    move-exception v0

    move-object/from16 v11, p1

    :goto_77
    move-object/from16 v12, p2

    :goto_79
    move/from16 v13, p3

    :goto_7b
    move-object/from16 v14, p4

    :goto_7d
    move/from16 v15, p5

    :goto_7f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 23
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "appId"  # I
    .param p6, "seInfo"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 974
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_6e

    .line 975
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_6c

    .line 976
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6a

    .line 977
    move/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_68

    .line 978
    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_66

    .line 979
    move/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_64

    .line 980
    move-object/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 981
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 982
    .local v0, "_status":Z
    if-nez v0, :cond_57

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 983
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_50
    .catchall {:try_start_28 .. :try_end_50} :catchall_62

    .line 989
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    return-void

    .line 986
    :cond_57
    :try_start_57
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_62

    .line 989
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 991
    nop

    .line 992
    return-void

    .line 989
    :catchall_62
    move-exception v0

    goto :goto_7b

    :catchall_64
    move-exception v0

    goto :goto_79

    :catchall_66
    move-exception v0

    goto :goto_77

    :catchall_68
    move-exception v0

    goto :goto_75

    :catchall_6a
    move-exception v0

    goto :goto_73

    :catchall_6c
    move-exception v0

    goto :goto_71

    :catchall_6e
    move-exception v0

    move-object/from16 v10, p1

    :goto_71
    move-object/from16 v11, p2

    :goto_73
    move/from16 v12, p3

    :goto_75
    move/from16 v13, p4

    :goto_77
    move/from16 v14, p5

    :goto_79
    move-object/from16 v15, p6

    :goto_7b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageDir"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1482
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1483
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1484
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1485
    return-void

    .line 1487
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1490
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1492
    nop

    .line 1493
    return-void

    .line 1490
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "codePath"  # Ljava/lang/String;
    .param p2, "instructionSet"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1269
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1270
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1271
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1272
    return-void

    .line 1274
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1277
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    nop

    .line 1280
    return-void

    .line 1277
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 16
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "appId"  # I
    .param p4, "cacheQuota"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1166
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1167
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 1168
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-interface/range {v4 .. v9}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    return-void

    .line 1171
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 1174
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    nop

    .line 1177
    return-void

    .line 1174
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    .registers 16
    .param p1, "uuid"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "snapshotId"  # I
    .param p5, "storageFlags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1800
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1803
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1810
    .local v2, "_status":Z
    if-nez v2, :cond_41

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 1811
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v3
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_51

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
    return-wide v3

    .line 1813
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_51

    move-wide v2, v3

    .line 1817
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1819
    nop

    .line 1820
    return-wide v2

    .line 1817
    .end local v2  # "_result":J
    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
