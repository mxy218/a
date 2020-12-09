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

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-object p1, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 862
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 865
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1619
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1622
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1623
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1624
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IInstalld;->assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    return-void

    .line 1627
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    nop

    .line 1633
    return-void

    .line 1630
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 992
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 994
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    move-wide/from16 v8, p5

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 998
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 999
    if-nez v3, :cond_47

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1000
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_52

    .line 1006
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1001
    return-void

    .line 1003
    :cond_47
    :try_start_47
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_52

    .line 1006
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    nop

    .line 1009
    return-void

    .line 1006
    :catchall_52
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1329
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1332
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1333
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1334
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    return-void

    .line 1337
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    nop

    .line 1343
    return-void

    .line 1340
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1215
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1221
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1222
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4b

    .line 1228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1222
    return p1

    .line 1224
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4b

    if-eqz p1, :cond_43

    const/4 v4, 0x1

    .line 1228
    :cond_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1230
    nop

    .line 1231
    return v4

    .line 1228
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1306
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1311
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1312
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1313
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4b

    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1313
    return p1

    .line 1315
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1316
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4b

    if-eqz p1, :cond_43

    const/4 v4, 0x1

    .line 1319
    :cond_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1321
    nop

    .line 1322
    return v4

    .line 1319
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 920
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 921
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 927
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 929
    if-nez v3, :cond_58

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 930
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J

    move-result-wide v3
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_67

    .line 936
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    return-wide v3

    .line 932
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 933
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_67

    .line 936
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 938
    nop

    .line 939
    return-wide v3

    .line 936
    :catchall_67
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1515
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1518
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1519
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1520
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    return-void

    .line 1523
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    nop

    .line 1529
    return-void

    .line 1526
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1369
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1374
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1375
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1376
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4b

    .line 1382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    return p1

    .line 1378
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4b

    if-eqz p1, :cond_43

    const/4 v4, 0x1

    .line 1382
    :cond_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    nop

    .line 1385
    return v4

    .line 1382
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 876
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 882
    if-nez v2, :cond_37

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 883
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 884
    return-void

    .line 886
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 891
    nop

    .line 892
    return-void

    .line 889
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1577
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1581
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1582
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1583
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1584
    return-void

    .line 1586
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1591
    nop

    .line 1592
    return-void

    .line 1589
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1015
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1016
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1017
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1018
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    move-wide/from16 v8, p5

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1021
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1022
    if-nez v3, :cond_47

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1023
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_52

    .line 1029
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1024
    return-void

    .line 1026
    :cond_47
    :try_start_47
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_52

    .line 1029
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1029
    :catchall_52
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1805
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1806
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1807
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1808
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    move-wide/from16 v7, p4

    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1810
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1812
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1813
    if-nez v3, :cond_51

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 1814
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_5c

    .line 1820
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1815
    return-void

    .line 1817
    :cond_51
    :try_start_51
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5c

    .line 1820
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    nop

    .line 1823
    return-void

    .line 1820
    :catchall_5c
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1349
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1351
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1352
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1353
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    return-void

    .line 1356
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1361
    nop

    .line 1362
    return-void

    .line 1359
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1392
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1395
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1396
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1397
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1398
    return-void

    .line 1400
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1405
    nop

    .line 1406
    return-void

    .line 1403
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 898
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 903
    if-nez v2, :cond_34

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 904
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 905
    return-void

    .line 907
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    nop

    .line 913
    return-void

    .line 910
    :catchall_3f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1180
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1181
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1182
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    move-object/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1184
    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1185
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1187
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1189
    move-object/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1190
    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1191
    move-object/from16 v14, p11

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1192
    if-eqz p12, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    move/from16 v15, p13

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    move-object/from16 v4, p14

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v3, p15

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1196
    move-object/from16 v0, p16

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1198
    if-nez v0, :cond_a1

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 1199
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

    .line 1205
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    return-void

    .line 1202
    :cond_a1
    :try_start_a1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_ac

    .line 1205
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1207
    nop

    .line 1208
    return-void

    .line 1205
    :catchall_ac
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1282
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1287
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1288
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1289
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4b

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1289
    return p1

    .line 1291
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4b

    if-eqz p1, :cond_43

    const/4 v4, 0x1

    .line 1295
    :cond_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1297
    nop

    .line 1298
    return v4

    .line 1295
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1038
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1042
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1043
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    return-void

    .line 1046
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1051
    nop

    .line 1052
    return-void

    .line 1049
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public freeCache(Ljava/lang/String;JJI)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1471
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1472
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1473
    move-wide v5, p2

    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1474
    move-wide v7, p4

    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1475
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1477
    if-nez v3, :cond_43

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 1478
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JJI)V
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_4e

    .line 1484
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1479
    return-void

    .line 1481
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4e

    .line 1484
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    nop

    .line 1487
    return-void

    .line 1484
    :catchall_4e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1059
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1060
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1061
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1062
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1066
    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1067
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1068
    if-nez v3, :cond_59

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1069
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_68

    .line 1075
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    return-object v0

    .line 1071
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1072
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_68

    .line 1075
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1077
    nop

    .line 1078
    return-object v0

    .line 1075
    :catchall_68
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1110
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1115
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1116
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1117
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_48

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    return-object p1

    .line 1119
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1125
    nop

    .line 1126
    return-object p1

    .line 1123
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 869
    const-string v0, "android.os.IInstalld"

    return-object v0
.end method

.method public getUserSize(Ljava/lang/String;II[I)[J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1086
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1091
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1092
    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1093
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_48

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1093
    return-object p1

    .line 1095
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    nop

    .line 1102
    return-object p1

    .line 1099
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1666
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1673
    if-nez v2, :cond_41

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1674
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object p1
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_50

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1674
    return-object p1

    .line 1676
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_50

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    nop

    .line 1683
    return-object p1

    .line 1680
    :catchall_50
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1412
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1417
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1418
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IInstalld;->idmap(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1419
    return-void

    .line 1421
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1426
    nop

    .line 1427
    return-void

    .line 1424
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1598
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1601
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1603
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1604
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IInstalld;->installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    return-void

    .line 1607
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1612
    nop

    .line 1613
    return-void

    .line 1610
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public invalidateMounts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1690
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1691
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1692
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1693
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1694
    return-void

    .line 1696
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1701
    nop

    .line 1702
    return-void

    .line 1699
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1709
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1711
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1712
    if-nez v2, :cond_30

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1713
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    return p1

    .line 1715
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 1719
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    nop

    .line 1722
    return v4

    .line 1719
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1535
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1540
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1541
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    return-void

    .line 1544
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1549
    nop

    .line 1550
    return-void

    .line 1547
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1493
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1499
    if-nez v2, :cond_38

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 1500
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1501
    return-void

    .line 1503
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1508
    nop

    .line 1509
    return-void

    .line 1506
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1259
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1263
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1264
    if-nez v2, :cond_36

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1265
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_48

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    return p1

    .line 1267
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_48

    if-eqz p1, :cond_40

    const/4 v4, 0x1

    .line 1271
    :cond_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1273
    nop

    .line 1274
    return v4

    .line 1271
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 970
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 976
    if-nez v2, :cond_37

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 977
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 978
    return-void

    .line 980
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    nop

    .line 986
    return-void

    .line 983
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public migrateLegacyObbData()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1829
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1830
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1831
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1832
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1833
    return-void

    .line 1835
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1840
    nop

    .line 1841
    return-void

    .line 1838
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1556
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1560
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1561
    if-nez v2, :cond_35

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1562
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1563
    return-void

    .line 1565
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1570
    nop

    .line 1571
    return-void

    .line 1568
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1155
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1156
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1157
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1158
    move-object v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1159
    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1162
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1164
    if-nez v3, :cond_58

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 1165
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_63

    .line 1171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    return-void

    .line 1168
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 1171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1173
    nop

    .line 1174
    return-void

    .line 1171
    :catchall_63
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1730
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1731
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1732
    move v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    move-object v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1735
    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1736
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1737
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1738
    if-nez v3, :cond_50

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1739
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_62

    .line 1745
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    return v0

    .line 1741
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1742
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_62

    if-eqz v0, :cond_5a

    const/4 v10, 0x1

    .line 1745
    :cond_5a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    nop

    .line 1748
    return v10

    .line 1745
    :catchall_62
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1640
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1641
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1642
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1643
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    move-object v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1645
    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1646
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1648
    if-nez v3, :cond_50

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1649
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_62

    .line 1655
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1649
    return v0

    .line 1651
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1652
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_62

    if-eqz v0, :cond_5a

    const/4 v10, 0x1

    .line 1655
    :cond_5a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1657
    nop

    .line 1658
    return v10

    .line 1655
    :catchall_62
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeIdmap(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1433
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1435
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1436
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1437
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IInstalld;->removeIdmap(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    return-void

    .line 1440
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1445
    nop

    .line 1446
    return-void

    .line 1443
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1780
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1781
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1782
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1783
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1785
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1789
    if-nez v3, :cond_58

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 1790
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_63

    .line 1796
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1791
    return-void

    .line 1793
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 1796
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1798
    nop

    .line 1799
    return-void

    .line 1796
    :catchall_63
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 946
    :try_start_8
    const-string v0, "android.os.IInstalld"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 947
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 948
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 954
    if-nez v3, :cond_4e

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 955
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_59

    .line 961
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 956
    return-void

    .line 958
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_59

    .line 961
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    nop

    .line 964
    return-void

    .line 961
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1452
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1455
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1456
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1457
    return-void

    .line 1459
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1464
    nop

    .line 1465
    return-void

    .line 1462
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1238
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1241
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1242
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1243
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1244
    return-void

    .line 1246
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1251
    nop

    .line 1252
    return-void

    .line 1249
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1133
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1138
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1139
    if-nez v2, :cond_3c

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 1140
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1141
    return-void

    .line 1143
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1148
    nop

    .line 1149
    return-void

    .line 1146
    :catchall_47
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1756
    :try_start_8
    const-string v2, "android.os.IInstalld"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    iget-object v2, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1763
    if-nez v2, :cond_41

    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1764
    invoke-static {}, Landroid/os/IInstalld$Stub;->getDefaultImpl()Landroid/os/IInstalld;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide p1
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_50

    .line 1770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    return-wide p1

    .line 1766
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_50

    .line 1770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1772
    nop

    .line 1773
    return-wide p1

    .line 1770
    :catchall_50
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
