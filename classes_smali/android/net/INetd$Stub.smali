.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetd"

.field static final TRANSACTION_bandwidthAddNaughtyApp:I = 0x32

.field static final TRANSACTION_bandwidthAddNiceApp:I = 0x34

.field static final TRANSACTION_bandwidthAddRestrictAppOnInterface:I = 0x5f

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_bandwidthRemoveInterfaceAlert:I = 0x30

.field static final TRANSACTION_bandwidthRemoveInterfaceQuota:I = 0x2e

.field static final TRANSACTION_bandwidthRemoveNaughtyApp:I = 0x33

.field static final TRANSACTION_bandwidthRemoveNiceApp:I = 0x35

.field static final TRANSACTION_bandwidthRemoveRestrictAppOnInterface:I = 0x60

.field static final TRANSACTION_bandwidthSetGlobalAlert:I = 0x31

.field static final TRANSACTION_bandwidthSetInterfaceAlert:I = 0x2f

.field static final TRANSACTION_bandwidthSetInterfaceQuota:I = 0x2d

.field static final TRANSACTION_clatdStart:I = 0x25

.field static final TRANSACTION_clatdStop:I = 0x26

.field static final TRANSACTION_firewallAddUidInterfaceRules:I = 0x5b

.field static final TRANSACTION_firewallEnableChildChain:I = 0x4f

.field static final TRANSACTION_firewallRemoveUidInterfaceRules:I = 0x5c

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_firewallSetFirewallType:I = 0x4c

.field static final TRANSACTION_firewallSetInterfaceRule:I = 0x4d

.field static final TRANSACTION_firewallSetUidRule:I = 0x4e

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getOemNetd:I = 0x5e

.field static final TRANSACTION_getProcSysNet:I = 0x11

.field static final TRANSACTION_idletimerAddInterface:I = 0x22

.field static final TRANSACTION_idletimerRemoveInterface:I = 0x23

.field static final TRANSACTION_interfaceAddAddress:I = 0xf

.field static final TRANSACTION_interfaceClearAddrs:I = 0x54

.field static final TRANSACTION_interfaceDelAddress:I = 0x10

.field static final TRANSACTION_interfaceGetCfg:I = 0x51

.field static final TRANSACTION_interfaceGetList:I = 0x50

.field static final TRANSACTION_interfaceSetCfg:I = 0x52

.field static final TRANSACTION_interfaceSetEnableIPv6:I = 0x55

.field static final TRANSACTION_interfaceSetIPv6PrivacyExtensions:I = 0x53

.field static final TRANSACTION_interfaceSetMtu:I = 0x56

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x15

.field static final TRANSACTION_ipSecAddSecurityPolicy:I = 0x19

.field static final TRANSACTION_ipSecAddTunnelInterface:I = 0x1c

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x14

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x17

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x16

.field static final TRANSACTION_ipSecDeleteSecurityPolicy:I = 0x1b

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x18

.field static final TRANSACTION_ipSecRemoveTunnelInterface:I = 0x1e

.field static final TRANSACTION_ipSecSetEncapSocketOwner:I = 0x13

.field static final TRANSACTION_ipSecUpdateSecurityPolicy:I = 0x1a

.field static final TRANSACTION_ipSecUpdateTunnelInterface:I = 0x1d

.field static final TRANSACTION_ipfwdAddInterfaceForward:I = 0x2b

.field static final TRANSACTION_ipfwdDisableForwarding:I = 0x2a

.field static final TRANSACTION_ipfwdEnableForwarding:I = 0x29

.field static final TRANSACTION_ipfwdEnabled:I = 0x27

.field static final TRANSACTION_ipfwdGetRequesterList:I = 0x28

.field static final TRANSACTION_ipfwdRemoveInterfaceForward:I = 0x2c

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkAddInterface:I = 0x7

.field static final TRANSACTION_networkAddLegacyRoute:I = 0x40

.field static final TRANSACTION_networkAddRoute:I = 0x3e

.field static final TRANSACTION_networkAddUidRanges:I = 0x9

.field static final TRANSACTION_networkCanProtect:I = 0x4b

.field static final TRANSACTION_networkClearDefault:I = 0x44

.field static final TRANSACTION_networkClearPermissionForUser:I = 0x47

.field static final TRANSACTION_networkCreatePhysical:I = 0x4

.field static final TRANSACTION_networkCreateVpn:I = 0x5

.field static final TRANSACTION_networkDestroy:I = 0x6

.field static final TRANSACTION_networkGetDefault:I = 0x42

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0xb

.field static final TRANSACTION_networkRemoveInterface:I = 0x8

.field static final TRANSACTION_networkRemoveLegacyRoute:I = 0x41

.field static final TRANSACTION_networkRemoveRoute:I = 0x3f

.field static final TRANSACTION_networkRemoveUidRanges:I = 0xa

.field static final TRANSACTION_networkSetDefault:I = 0x43

.field static final TRANSACTION_networkSetPermissionForNetwork:I = 0x45

.field static final TRANSACTION_networkSetPermissionForUser:I = 0x46

.field static final TRANSACTION_networkSetProtectAllow:I = 0x49

.field static final TRANSACTION_networkSetProtectDeny:I = 0x4a

.field static final TRANSACTION_registerUnsolicitedEventListener:I = 0x5a

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x21

.field static final TRANSACTION_setProcSysNet:I = 0x12

.field static final TRANSACTION_setTcpRWmemorySize:I = 0x59

.field static final TRANSACTION_socketDestroy:I = 0xc

.field static final TRANSACTION_strictUidCleartextPenalty:I = 0x24

.field static final TRANSACTION_tetherAddForward:I = 0x57

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xd

.field static final TRANSACTION_tetherDnsList:I = 0x3d

.field static final TRANSACTION_tetherDnsSet:I = 0x3c

.field static final TRANSACTION_tetherGetStats:I = 0xe

.field static final TRANSACTION_tetherInterfaceAdd:I = 0x39

.field static final TRANSACTION_tetherInterfaceList:I = 0x3b

.field static final TRANSACTION_tetherInterfaceRemove:I = 0x3a

.field static final TRANSACTION_tetherIsEnabled:I = 0x38

.field static final TRANSACTION_tetherRemoveForward:I = 0x58

.field static final TRANSACTION_tetherStart:I = 0x36

.field static final TRANSACTION_tetherStop:I = 0x37

.field static final TRANSACTION_trafficSetNetPermForUids:I = 0x48

.field static final TRANSACTION_trafficSwapActiveStatsMap:I = 0x5d

.field static final TRANSACTION_wakeupAddInterface:I = 0x1f

.field static final TRANSACTION_wakeupDelInterface:I = 0x20


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 338
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 339
    const-string v0, "android.net.INetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .registers 3

    .line 347
    if-nez p0, :cond_4

    .line 348
    const/4 p0, 0x0

    return-object p0

    .line 350
    :cond_4
    const-string v0, "android.net.INetd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_13

    .line 352
    check-cast v0, Landroid/net/INetd;

    return-object v0

    .line 354
    :cond_13
    new-instance v0, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetd;
    .registers 1

    .line 3689
    sget-object v0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetd;)Z
    .registers 2

    .line 3682
    sget-object v0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 3683
    sput-object p0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    .line 3684
    const/4 p0, 0x1

    return p0

    .line 3686
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 358
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    .line 363
    const v2, 0xffffff

    const/4 v13, 0x1

    const-string v3, "android.net.INetd"

    if-eq v1, v2, :cond_86f

    const v2, 0x5f4e5446

    if-eq v1, v2, :cond_869

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_882

    .line 1533
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1513
    :pswitch_1f  #0x60
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1520
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->bandwidthRemoveRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    return v13

    .line 1500
    :pswitch_35  #0x5f
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1507
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->bandwidthAddRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    return v13

    .line 1492
    :pswitch_4b  #0x5e
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1496
    return v13

    .line 1485
    :pswitch_59  #0x5d
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->trafficSwapActiveStatsMap()V

    .line 1487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    return v13

    .line 1476
    :pswitch_63  #0x5c
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1479
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->firewallRemoveUidInterfaceRules([I)V

    .line 1480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    return v13

    .line 1465
    :pswitch_71  #0x5b
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1470
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 1471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    return v13

    .line 1456
    :pswitch_83  #0x5a
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v1

    .line 1459
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    return v13

    .line 1445
    :pswitch_95  #0x59
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1450
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    return v13

    .line 1434
    :pswitch_a7  #0x58
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1439
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    return v13

    .line 1423
    :pswitch_b9  #0x57
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1428
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    return v13

    .line 1412
    :pswitch_cb  #0x56
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1417
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    return v13

    .line 1401
    :pswitch_dd  #0x55
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_eb

    move v4, v13

    .line 1406
    :cond_eb
    invoke-virtual {v0, v1, v4}, Landroid/net/INetd$Stub;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 1407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    return v13

    .line 1392
    :pswitch_f2  #0x54
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1395
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    return v13

    .line 1381
    :pswitch_100  #0x53
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10e

    move v4, v13

    .line 1386
    :cond_10e
    invoke-virtual {v0, v1, v4}, Landroid/net/INetd$Stub;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    return v13

    .line 1367
    :pswitch_115  #0x52
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_128

    .line 1370
    sget-object v1, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/InterfaceConfigurationParcel;

    goto :goto_129

    .line 1373
    :cond_128
    nop

    .line 1375
    :goto_129
    invoke-virtual {v0, v2}, Landroid/net/INetd$Stub;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 1376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    return v13

    .line 1351
    :pswitch_130  #0x51
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1354
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0

    .line 1355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    if-eqz v0, :cond_147

    .line 1357
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    invoke-virtual {v0, v14, v13}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14a

    .line 1361
    :cond_147
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    :goto_14a
    return v13

    .line 1343
    :pswitch_14b  #0x50
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0

    .line 1345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1347
    return v13

    .line 1332
    :pswitch_159  #0x4f
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_167

    move v4, v13

    .line 1337
    :cond_167
    invoke-virtual {v0, v1, v4}, Landroid/net/INetd$Stub;->firewallEnableChildChain(IZ)V

    .line 1338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    return v13

    .line 1319
    :pswitch_16e  #0x4e
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1326
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->firewallSetUidRule(III)V

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    return v13

    .line 1308
    :pswitch_184  #0x4d
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1313
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    return v13

    .line 1299
    :pswitch_196  #0x4c
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1302
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->firewallSetFirewallType(I)V

    .line 1303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    return v13

    .line 1289
    :pswitch_1a4  #0x4b
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1292
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->networkCanProtect(I)Z

    move-result v0

    .line 1293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    return v13

    .line 1280
    :pswitch_1b6  #0x4a
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1283
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->networkSetProtectDeny(I)V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    return v13

    .line 1271
    :pswitch_1c4  #0x49
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1274
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->networkSetProtectAllow(I)V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    return v13

    .line 1260
    :pswitch_1d2  #0x48
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1265
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->trafficSetNetPermForUids(I[I)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    return v13

    .line 1251
    :pswitch_1e4  #0x47
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1254
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->networkClearPermissionForUser([I)V

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    return v13

    .line 1240
    :pswitch_1f2  #0x46
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1245
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->networkSetPermissionForUser(I[I)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    return v13

    .line 1229
    :pswitch_204  #0x45
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1234
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->networkSetPermissionForNetwork(II)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    return v13

    .line 1222
    :pswitch_216  #0x44
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkClearDefault()V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    return v13

    .line 1213
    :pswitch_220  #0x43
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->networkSetDefault(I)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    return v13

    .line 1205
    :pswitch_22e  #0x42
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkGetDefault()I

    move-result v0

    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    return v13

    .line 1188
    :pswitch_23c  #0x41
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    return v13

    .line 1171
    :pswitch_25c  #0x40
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1182
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    return v13

    .line 1156
    :pswitch_27c  #0x3f
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1165
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/INetd$Stub;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    return v13

    .line 1141
    :pswitch_296  #0x3e
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1150
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/INetd$Stub;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    return v13

    .line 1133
    :pswitch_2b0  #0x3d
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1137
    return v13

    .line 1122
    :pswitch_2be  #0x3c
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    return v13

    .line 1114
    :pswitch_2d0  #0x3b
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 1116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1118
    return v13

    .line 1105
    :pswitch_2de  #0x3a
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    return v13

    .line 1096
    :pswitch_2ec  #0x39
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    return v13

    .line 1088
    :pswitch_2fa  #0x38
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherIsEnabled()Z

    move-result v0

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    return v13

    .line 1081
    :pswitch_308  #0x37
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherStop()V

    .line 1083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    return v13

    .line 1072
    :pswitch_312  #0x36
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1075
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->tetherStart([Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    return v13

    .line 1063
    :pswitch_320  #0x35
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1066
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthRemoveNiceApp(I)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    return v13

    .line 1054
    :pswitch_32e  #0x34
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1057
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthAddNiceApp(I)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    return v13

    .line 1045
    :pswitch_33c  #0x33
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1048
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthRemoveNaughtyApp(I)V

    .line 1049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    return v13

    .line 1036
    :pswitch_34a  #0x32
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1039
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthAddNaughtyApp(I)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    return v13

    .line 1027
    :pswitch_358  #0x31
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1030
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->bandwidthSetGlobalAlert(J)V

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    return v13

    .line 1018
    :pswitch_366  #0x30
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    return v13

    .line 1007
    :pswitch_374  #0x2f
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1012
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    return v13

    .line 998
    :pswitch_386  #0x2e
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    return v13

    .line 987
    :pswitch_394  #0x2d
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 992
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    return v13

    .line 976
    :pswitch_3a6  #0x2c
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 981
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    return v13

    .line 965
    :pswitch_3b8  #0x2b
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 970
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    return v13

    .line 956
    :pswitch_3ca  #0x2a
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    return v13

    .line 947
    :pswitch_3d8  #0x29
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    return v13

    .line 939
    :pswitch_3e6  #0x28
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 943
    return v13

    .line 931
    :pswitch_3f4  #0x27
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdEnabled()Z

    move-result v0

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    return v13

    .line 922
    :pswitch_402  #0x26
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->clatdStop(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    return v13

    .line 910
    :pswitch_410  #0x25
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 918
    return v13

    .line 899
    :pswitch_426  #0x24
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 904
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->strictUidCleartextPenalty(II)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    return v13

    .line 886
    :pswitch_438  #0x23
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 893
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    return v13

    .line 873
    :pswitch_44e  #0x22
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 880
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    return v13

    .line 862
    :pswitch_464  #0x21
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    return v13

    .line 847
    :pswitch_476  #0x20
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 856
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    return v13

    .line 832
    :pswitch_490  #0x1f
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 841
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    return v13

    .line 823
    :pswitch_4aa  #0x1e
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    return v13

    .line 804
    :pswitch_4b8  #0x1d
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 817
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    return v13

    .line 785
    :pswitch_4dc  #0x1c
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 798
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    return v13

    .line 766
    :pswitch_500  #0x1b
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 779
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    return v13

    .line 741
    :pswitch_524  #0x1a
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 760
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    return v13

    .line 716
    :pswitch_554  #0x19
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 735
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    return v13

    .line 702
    :pswitch_584  #0x18
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_597

    .line 705
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_598

    .line 708
    :cond_597
    nop

    .line 710
    :goto_598
    invoke-virtual {v0, v2}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    return v13

    .line 678
    :pswitch_59f  #0x17
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5b1

    .line 681
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_5b2

    .line 684
    :cond_5b1
    move-object v1, v2

    .line 687
    :goto_5b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 696
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    return v13

    .line 657
    :pswitch_5cf  #0x16
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 672
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    return v13

    .line 608
    :pswitch_5f7  #0x15
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    move-object/from16 v13, v16

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move/from16 v14, v16

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v15, v16

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 651
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v21}, Landroid/net/INetd$Stub;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v6, 0x1

    return v6

    .line 592
    :pswitch_65f  #0x14
    move v6, v13

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 601
    move-object/from16 v5, p0

    invoke-virtual {v5, v1, v2, v3, v0}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    move-object/from16 v7, p3

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    return v6

    .line 576
    :pswitch_683  #0x13
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69a

    .line 579
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_69b

    .line 582
    :cond_69a
    nop

    .line 585
    :goto_69b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    invoke-virtual {v5, v2, v0}, Landroid/net/INetd$Stub;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    return v6

    .line 559
    :pswitch_6a6  #0x12
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 570
    move-object/from16 v0, p0

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    return v6

    .line 543
    :pswitch_6cb  #0x11
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v5, v1, v2, v3, v0}, Landroid/net/INetd$Stub;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    return v6

    .line 530
    :pswitch_6ed  #0x10
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 537
    invoke-virtual {v5, v1, v2, v0}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    return v6

    .line 517
    :pswitch_707  #0xf
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    invoke-virtual {v5, v1, v2, v0}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    return v6

    .line 509
    :pswitch_721  #0xe
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v7, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 513
    return v6

    .line 501
    :pswitch_733  #0xd
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v0

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    return v6

    .line 490
    :pswitch_745  #0xc
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 495
    invoke-virtual {v5, v1, v0}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v6

    .line 479
    :pswitch_75f  #0xb
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_76d

    move v4, v6

    .line 483
    :cond_76d
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 484
    invoke-virtual {v5, v4, v0}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    return v6

    .line 468
    :pswitch_77c  #0xa
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 472
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 473
    invoke-virtual {v5, v1, v0}, Landroid/net/INetd$Stub;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    return v6

    .line 457
    :pswitch_796  #0x9
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 462
    invoke-virtual {v5, v1, v0}, Landroid/net/INetd$Stub;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    return v6

    .line 446
    :pswitch_7b0  #0x8
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {v5, v1, v0}, Landroid/net/INetd$Stub;->networkRemoveInterface(ILjava/lang/String;)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    return v6

    .line 435
    :pswitch_7c6  #0x7
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {v5, v1, v0}, Landroid/net/INetd$Stub;->networkAddInterface(ILjava/lang/String;)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    return v6

    .line 426
    :pswitch_7dc  #0x6
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 429
    invoke-virtual {v5, v0}, Landroid/net/INetd$Stub;->networkDestroy(I)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    return v6

    .line 415
    :pswitch_7ee  #0x5
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_800

    move v4, v6

    .line 420
    :cond_800
    invoke-virtual {v5, v1, v4}, Landroid/net/INetd$Stub;->networkCreateVpn(IZ)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    return v6

    .line 404
    :pswitch_807  #0x4
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    invoke-virtual {v5, v1, v0}, Landroid/net/INetd$Stub;->networkCreatePhysical(II)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    return v6

    .line 394
    :pswitch_81d  #0x3
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_82b

    move v4, v6

    .line 397
    :cond_82b
    invoke-virtual {v5, v4}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v0

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    return v6

    .line 380
    :pswitch_836  #0x2
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_848

    move v4, v6

    .line 386
    :cond_848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 387
    invoke-virtual {v5, v1, v4, v0}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v0

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    return v6

    .line 372
    :pswitch_857  #0x1
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v0

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    return v6

    .line 367
    :cond_869
    move v6, v13

    move-object v7, v14

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    return v6

    .line 1526
    :cond_86f
    move-object v5, v0

    move v6, v13

    move-object v7, v14

    move-object v0, v15

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1529
    return v6

    nop

    :pswitch_data_882
    .packed-switch 0x1
        :pswitch_857  #00000001
        :pswitch_836  #00000002
        :pswitch_81d  #00000003
        :pswitch_807  #00000004
        :pswitch_7ee  #00000005
        :pswitch_7dc  #00000006
        :pswitch_7c6  #00000007
        :pswitch_7b0  #00000008
        :pswitch_796  #00000009
        :pswitch_77c  #0000000a
        :pswitch_75f  #0000000b
        :pswitch_745  #0000000c
        :pswitch_733  #0000000d
        :pswitch_721  #0000000e
        :pswitch_707  #0000000f
        :pswitch_6ed  #00000010
        :pswitch_6cb  #00000011
        :pswitch_6a6  #00000012
        :pswitch_683  #00000013
        :pswitch_65f  #00000014
        :pswitch_5f7  #00000015
        :pswitch_5cf  #00000016
        :pswitch_59f  #00000017
        :pswitch_584  #00000018
        :pswitch_554  #00000019
        :pswitch_524  #0000001a
        :pswitch_500  #0000001b
        :pswitch_4dc  #0000001c
        :pswitch_4b8  #0000001d
        :pswitch_4aa  #0000001e
        :pswitch_490  #0000001f
        :pswitch_476  #00000020
        :pswitch_464  #00000021
        :pswitch_44e  #00000022
        :pswitch_438  #00000023
        :pswitch_426  #00000024
        :pswitch_410  #00000025
        :pswitch_402  #00000026
        :pswitch_3f4  #00000027
        :pswitch_3e6  #00000028
        :pswitch_3d8  #00000029
        :pswitch_3ca  #0000002a
        :pswitch_3b8  #0000002b
        :pswitch_3a6  #0000002c
        :pswitch_394  #0000002d
        :pswitch_386  #0000002e
        :pswitch_374  #0000002f
        :pswitch_366  #00000030
        :pswitch_358  #00000031
        :pswitch_34a  #00000032
        :pswitch_33c  #00000033
        :pswitch_32e  #00000034
        :pswitch_320  #00000035
        :pswitch_312  #00000036
        :pswitch_308  #00000037
        :pswitch_2fa  #00000038
        :pswitch_2ec  #00000039
        :pswitch_2de  #0000003a
        :pswitch_2d0  #0000003b
        :pswitch_2be  #0000003c
        :pswitch_2b0  #0000003d
        :pswitch_296  #0000003e
        :pswitch_27c  #0000003f
        :pswitch_25c  #00000040
        :pswitch_23c  #00000041
        :pswitch_22e  #00000042
        :pswitch_220  #00000043
        :pswitch_216  #00000044
        :pswitch_204  #00000045
        :pswitch_1f2  #00000046
        :pswitch_1e4  #00000047
        :pswitch_1d2  #00000048
        :pswitch_1c4  #00000049
        :pswitch_1b6  #0000004a
        :pswitch_1a4  #0000004b
        :pswitch_196  #0000004c
        :pswitch_184  #0000004d
        :pswitch_16e  #0000004e
        :pswitch_159  #0000004f
        :pswitch_14b  #00000050
        :pswitch_130  #00000051
        :pswitch_115  #00000052
        :pswitch_100  #00000053
        :pswitch_f2  #00000054
        :pswitch_dd  #00000055
        :pswitch_cb  #00000056
        :pswitch_b9  #00000057
        :pswitch_a7  #00000058
        :pswitch_95  #00000059
        :pswitch_83  #0000005a
        :pswitch_71  #0000005b
        :pswitch_63  #0000005c
        :pswitch_59  #0000005d
        :pswitch_4b  #0000005e
        :pswitch_35  #0000005f
        :pswitch_1f  #00000060
    .end packed-switch
.end method
