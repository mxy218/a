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

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_bandwidthRemoveInterfaceAlert:I = 0x30

.field static final TRANSACTION_bandwidthRemoveInterfaceQuota:I = 0x2e

.field static final TRANSACTION_bandwidthRemoveNaughtyApp:I = 0x33

.field static final TRANSACTION_bandwidthRemoveNiceApp:I = 0x35

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

    .line 332
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 333
    const-string v0, "android.net.INetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 341
    if-nez p0, :cond_4

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_4
    const-string v0, "android.net.INetd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 345
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_14

    .line 346
    move-object v1, v0

    check-cast v1, Landroid/net/INetd;

    return-object v1

    .line 348
    :cond_14
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetd;
    .registers 1

    .line 3613
    sget-object v0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetd;)Z
    .registers 2
    .param p0, "impl"  # Landroid/net/INetd;

    .line 3606
    sget-object v0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 3607
    sput-object p0, Landroid/net/INetd$Stub$Proxy;->sDefaultImpl:Landroid/net/INetd;

    .line 3608
    const/4 v0, 0x1

    return v0

    .line 3610
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 352
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 49
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.net.INetd"

    .line 357
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0xffffff

    const/4 v10, 0x1

    if-eq v14, v0, :cond_8e4

    const v0, 0x5f4e5446

    if-eq v14, v0, :cond_8dd

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_8f8

    .line 1501
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1486
    :pswitch_1e  #0x5e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 1488
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1490
    return v10

    .line 1479
    .end local v0  # "_result":Landroid/os/IBinder;
    :pswitch_2c  #0x5d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->trafficSwapActiveStatsMap()V

    .line 1481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    return v10

    .line 1470
    :pswitch_36  #0x5c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1473
    .local v0, "_arg0":[I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->firewallRemoveUidInterfaceRules([I)V

    .line 1474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    return v10

    .line 1459
    .end local v0  # "_arg0":[I
    :pswitch_44  #0x5b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1463
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1464
    .local v1, "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 1465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    return v10

    .line 1450
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":[I
    :pswitch_56  #0x5a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v0

    .line 1453
    .local v0, "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 1454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    return v10

    .line 1439
    .end local v0  # "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    :pswitch_68  #0x59
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    return v10

    .line 1428
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_7a  #0x58
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1433
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    return v10

    .line 1417
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_8c  #0x57
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1422
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    return v10

    .line 1406
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_9e  #0x56
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1411
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 1412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    return v10

    .line 1395
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    :pswitch_b0  #0x55
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1399
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_be

    move v0, v10

    .line 1400
    .local v0, "_arg1":Z
    :cond_be
    invoke-virtual {v15, v1, v0}, Landroid/net/INetd$Stub;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 1401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    return v10

    .line 1386
    .end local v0  # "_arg1":Z
    .end local v1  # "_arg0":Ljava/lang/String;
    :pswitch_c5  #0x54
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    return v10

    .line 1375
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_d3  #0x53
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    .restart local v1  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e1

    move v0, v10

    .line 1380
    .local v0, "_arg1":Z
    :cond_e1
    invoke-virtual {v15, v1, v0}, Landroid/net/INetd$Stub;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    return v10

    .line 1361
    .end local v0  # "_arg1":Z
    .end local v1  # "_arg0":Ljava/lang/String;
    :pswitch_e8  #0x52
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fa

    .line 1364
    sget-object v0, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/InterfaceConfigurationParcel;

    .local v0, "_arg0":Landroid/net/InterfaceConfigurationParcel;
    goto :goto_fb

    .line 1367
    .end local v0  # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :cond_fa
    const/4 v0, 0x0

    .line 1369
    .restart local v0  # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :goto_fb
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 1370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    return v10

    .line 1345
    .end local v0  # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_102  #0x51
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1348
    .restart local v1  # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v1}, Landroid/net/INetd$Stub;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v2

    .line 1349
    .local v2, "_result":Landroid/net/InterfaceConfigurationParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    if-eqz v2, :cond_119

    .line 1351
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    invoke-virtual {v2, v12, v10}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11c

    .line 1355
    :cond_119
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    :goto_11c
    return v10

    .line 1337
    .end local v1  # "_arg0":Ljava/lang/String;
    .end local v2  # "_result":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_11d  #0x50
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1341
    return v10

    .line 1326
    .end local v0  # "_result":[Ljava/lang/String;
    :pswitch_12b  #0x4f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1330
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_139

    move v0, v10

    .line 1331
    .local v0, "_arg1":Z
    :cond_139
    invoke-virtual {v15, v1, v0}, Landroid/net/INetd$Stub;->firewallEnableChildChain(IZ)V

    .line 1332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    return v10

    .line 1313
    .end local v0  # "_arg1":Z
    .end local v1  # "_arg0":I
    :pswitch_140  #0x4e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1317
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1319
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1320
    .local v2, "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->firewallSetUidRule(III)V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    return v10

    .line 1302
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    :pswitch_156  #0x4d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1307
    .restart local v1  # "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    return v10

    .line 1293
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    :pswitch_168  #0x4c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1296
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->firewallSetFirewallType(I)V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    return v10

    .line 1283
    .end local v0  # "_arg0":I
    :pswitch_176  #0x4b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1286
    .restart local v0  # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkCanProtect(I)Z

    move-result v1

    .line 1287
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    return v10

    .line 1274
    .end local v0  # "_arg0":I
    .end local v1  # "_result":Z
    :pswitch_188  #0x4a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1277
    .restart local v0  # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetProtectDeny(I)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    return v10

    .line 1265
    .end local v0  # "_arg0":I
    :pswitch_196  #0x49
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1268
    .restart local v0  # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetProtectAllow(I)V

    .line 1269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    return v10

    .line 1254
    .end local v0  # "_arg0":I
    :pswitch_1a4  #0x48
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1258
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1259
    .local v1, "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->trafficSetNetPermForUids(I[I)V

    .line 1260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    return v10

    .line 1245
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":[I
    :pswitch_1b6  #0x47
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1248
    .local v0, "_arg0":[I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkClearPermissionForUser([I)V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    return v10

    .line 1234
    .end local v0  # "_arg0":[I
    :pswitch_1c4  #0x46
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1238
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1239
    .restart local v1  # "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkSetPermissionForUser(I[I)V

    .line 1240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    return v10

    .line 1223
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":[I
    :pswitch_1d6  #0x45
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1227
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1228
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkSetPermissionForNetwork(II)V

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    return v10

    .line 1216
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    :pswitch_1e8  #0x44
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkClearDefault()V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    return v10

    .line 1207
    :pswitch_1f2  #0x43
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1210
    .restart local v0  # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetDefault(I)V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    return v10

    .line 1199
    .end local v0  # "_arg0":I
    :pswitch_200  #0x42
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkGetDefault()I

    move-result v0

    .line 1201
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    return v10

    .line 1182
    .end local v0  # "_result":I
    :pswitch_20e  #0x41
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1186
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1188
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1190
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1192
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1193
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    return v10

    .line 1165
    .end local v6  # "_arg0":I
    .end local v7  # "_arg1":Ljava/lang/String;
    .end local v8  # "_arg2":Ljava/lang/String;
    .end local v9  # "_arg3":Ljava/lang/String;
    .end local v16  # "_arg4":I
    :pswitch_234  #0x40
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1169
    .restart local v6  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1171
    .restart local v7  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1173
    .restart local v8  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1175
    .restart local v9  # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1176
    .restart local v16  # "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    return v10

    .line 1150
    .end local v6  # "_arg0":I
    .end local v7  # "_arg1":Ljava/lang/String;
    .end local v8  # "_arg2":Ljava/lang/String;
    .end local v9  # "_arg3":Ljava/lang/String;
    .end local v16  # "_arg4":I
    :pswitch_25a  #0x3f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1154
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1159
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    return v10

    .line 1135
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    :pswitch_274  #0x3e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1139
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1143
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    .restart local v3  # "_arg3":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    return v10

    .line 1127
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    :pswitch_28e  #0x3d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1131
    return v10

    .line 1116
    .end local v0  # "_result":[Ljava/lang/String;
    :pswitch_29c  #0x3c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1120
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    return v10

    .line 1108
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":[Ljava/lang/String;
    :pswitch_2ae  #0x3b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1112
    return v10

    .line 1099
    .end local v0  # "_result":[Ljava/lang/String;
    :pswitch_2bc  #0x3a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    return v10

    .line 1090
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_2ca  #0x39
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    return v10

    .line 1082
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_2d8  #0x38
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherIsEnabled()Z

    move-result v0

    .line 1084
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    return v10

    .line 1075
    .end local v0  # "_result":Z
    :pswitch_2e6  #0x37
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherStop()V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    return v10

    .line 1066
    :pswitch_2f0  #0x36
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherStart([Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    return v10

    .line 1057
    .end local v0  # "_arg0":[Ljava/lang/String;
    :pswitch_2fe  #0x35
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1060
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveNiceApp(I)V

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    return v10

    .line 1048
    .end local v0  # "_arg0":I
    :pswitch_30c  #0x34
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1051
    .restart local v0  # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthAddNiceApp(I)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    return v10

    .line 1039
    .end local v0  # "_arg0":I
    :pswitch_31a  #0x33
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1042
    .restart local v0  # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveNaughtyApp(I)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    return v10

    .line 1030
    .end local v0  # "_arg0":I
    :pswitch_328  #0x32
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1033
    .restart local v0  # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthAddNaughtyApp(I)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    return v10

    .line 1021
    .end local v0  # "_arg0":I
    :pswitch_336  #0x31
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1024
    .local v0, "_arg0":J
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->bandwidthSetGlobalAlert(J)V

    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    return v10

    .line 1012
    .end local v0  # "_arg0":J
    :pswitch_344  #0x30
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    return v10

    .line 1001
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_352  #0x2f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1006
    .local v1, "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    return v10

    .line 992
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":J
    :pswitch_364  #0x2e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 995
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    return v10

    .line 981
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_372  #0x2d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 986
    .restart local v1  # "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    return v10

    .line 970
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":J
    :pswitch_384  #0x2c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 974
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    return v10

    .line 959
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_396  #0x2b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 963
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 964
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    return v10

    .line 950
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_3a8  #0x2a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 953
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    return v10

    .line 941
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_3b6  #0x29
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 944
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    return v10

    .line 933
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_3c4  #0x28
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 937
    return v10

    .line 925
    .end local v0  # "_result":[Ljava/lang/String;
    :pswitch_3d2  #0x27
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdEnabled()Z

    move-result v0

    .line 927
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    return v10

    .line 916
    .end local v0  # "_result":Z
    :pswitch_3e0  #0x26
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->clatdStop(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    return v10

    .line 904
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_3ee  #0x25
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 908
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 909
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    return v10

    .line 893
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_result":Ljava/lang/String;
    :pswitch_404  #0x24
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 897
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->strictUidCleartextPenalty(II)V

    .line 899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    return v10

    .line 880
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    :pswitch_416  #0x23
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 886
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    return v10

    .line 867
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    :pswitch_42c  #0x22
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 871
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 873
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 874
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    return v10

    .line 856
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    :pswitch_442  #0x21
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .restart local v1  # "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    return v10

    .line 841
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    :pswitch_454  #0x20
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 845
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 849
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 850
    .local v3, "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    return v10

    .line 826
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":I
    :pswitch_46e  #0x1f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 832
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 834
    .restart local v2  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 835
    .restart local v3  # "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    return v10

    .line 817
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":I
    :pswitch_488  #0x1e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    return v10

    .line 798
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_496  #0x1d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 806
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 808
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 810
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 811
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    return v10

    .line 779
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v8  # "_arg1":Ljava/lang/String;
    .end local v9  # "_arg2":Ljava/lang/String;
    .end local v16  # "_arg3":I
    .end local v17  # "_arg4":I
    .end local v18  # "_arg5":I
    :pswitch_4c3  #0x1c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 783
    .restart local v7  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 785
    .restart local v8  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 787
    .restart local v9  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 789
    .restart local v16  # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 791
    .restart local v17  # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 792
    .restart local v18  # "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    return v10

    .line 760
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v8  # "_arg1":Ljava/lang/String;
    .end local v9  # "_arg2":Ljava/lang/String;
    .end local v16  # "_arg3":I
    .end local v17  # "_arg4":I
    .end local v18  # "_arg5":I
    :pswitch_4f0  #0x1b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 764
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 766
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 768
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 770
    .restart local v16  # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 772
    .restart local v17  # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 773
    .restart local v18  # "_arg5":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    return v10

    .line 735
    .end local v7  # "_arg0":I
    .end local v8  # "_arg1":I
    .end local v9  # "_arg2":I
    .end local v16  # "_arg3":I
    .end local v17  # "_arg4":I
    .end local v18  # "_arg5":I
    :pswitch_51d  #0x1a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 739
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 741
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 743
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 745
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 747
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 749
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 751
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 753
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 754
    .local v24, "_arg8":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    return v10

    .line 710
    .end local v16  # "_arg0":I
    .end local v17  # "_arg1":I
    .end local v18  # "_arg2":I
    .end local v19  # "_arg3":Ljava/lang/String;
    .end local v20  # "_arg4":Ljava/lang/String;
    .end local v21  # "_arg5":I
    .end local v22  # "_arg6":I
    .end local v23  # "_arg7":I
    .end local v24  # "_arg8":I
    :pswitch_55f  #0x19
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 714
    .restart local v16  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 716
    .restart local v17  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 718
    .restart local v18  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 720
    .restart local v19  # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 722
    .restart local v20  # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 724
    .restart local v21  # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 726
    .restart local v22  # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 728
    .restart local v23  # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 729
    .restart local v24  # "_arg8":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    return v10

    .line 696
    .end local v16  # "_arg0":I
    .end local v17  # "_arg1":I
    .end local v18  # "_arg2":I
    .end local v19  # "_arg3":Ljava/lang/String;
    .end local v20  # "_arg4":Ljava/lang/String;
    .end local v21  # "_arg5":I
    .end local v22  # "_arg6":I
    .end local v23  # "_arg7":I
    .end local v24  # "_arg8":I
    :pswitch_5a1  #0x18
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b3

    .line 699
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5b4

    .line 702
    .end local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_5b3
    const/4 v0, 0x0

    .line 704
    .restart local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_5b4
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    return v10

    .line 672
    .end local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_5bb  #0x17
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5ce

    .line 675
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v7, v0

    .restart local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5d0

    .line 678
    .end local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_5ce
    const/4 v0, 0x0

    move-object v7, v0

    .line 681
    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_5d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 683
    .restart local v8  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 685
    .restart local v9  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 687
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 689
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 690
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    return v10

    .line 651
    .end local v7  # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v8  # "_arg1":I
    .end local v9  # "_arg2":I
    .end local v16  # "_arg3":Ljava/lang/String;
    .end local v17  # "_arg4":Ljava/lang/String;
    .end local v18  # "_arg5":I
    :pswitch_5f6  #0x16
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 655
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 657
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 659
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 661
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 663
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 665
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 666
    .local v20, "_arg6":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    return v10

    .line 602
    .end local v8  # "_arg0":I
    .end local v9  # "_arg1":Ljava/lang/String;
    .end local v16  # "_arg2":Ljava/lang/String;
    .end local v17  # "_arg3":I
    .end local v18  # "_arg4":I
    .end local v19  # "_arg5":I
    .end local v20  # "_arg6":I
    :pswitch_62a  #0x15
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg0":I
    move/from16 v1, v22

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg1":I
    move/from16 v2, v23

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v24

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v25

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "_arg4":I
    move/from16 v5, v26

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "_arg5":I
    move/from16 v6, v27

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg6":I
    move/from16 v7, v28

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg7":I
    move/from16 v8, v29

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg8":Ljava/lang/String;
    move-object/from16 v9, v30

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    move v0, v10

    .local v31, "_arg9":[B
    move-object/from16 v10, v31

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    move-object/from16 v33, v11

    .end local v11  # "descriptor":Ljava/lang/String;
    .local v32, "_arg10":I
    .local v33, "descriptor":Ljava/lang/String;
    move/from16 v11, v32

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, "_arg11":Ljava/lang/String;
    move-object/from16 v12, v34

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v35

    .local v35, "_arg12":[B
    move-object/from16 v13, v35

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .local v36, "_arg13":I
    move/from16 v14, v36

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v37

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .local v38, "_arg15":[B
    move-object/from16 v16, v38

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "_arg16":I
    move/from16 v17, v39

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg17":I
    move/from16 v18, v40

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "_arg18":I
    move/from16 v19, v41

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg19":I
    move/from16 v20, v42

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .local v43, "_arg20":I
    move/from16 v21, v43

    .line 645
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v21}, Landroid/net/INetd$Stub;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    const/4 v6, 0x1

    return v6

    .line 586
    .end local v22  # "_arg0":I
    .end local v23  # "_arg1":I
    .end local v24  # "_arg2":Ljava/lang/String;
    .end local v25  # "_arg3":Ljava/lang/String;
    .end local v26  # "_arg4":I
    .end local v27  # "_arg5":I
    .end local v28  # "_arg6":I
    .end local v29  # "_arg7":I
    .end local v30  # "_arg8":Ljava/lang/String;
    .end local v31  # "_arg9":[B
    .end local v32  # "_arg10":I
    .end local v33  # "descriptor":Ljava/lang/String;
    .end local v34  # "_arg11":Ljava/lang/String;
    .end local v35  # "_arg12":[B
    .end local v36  # "_arg13":I
    .end local v37  # "_arg14":Ljava/lang/String;
    .end local v38  # "_arg15":[B
    .end local v39  # "_arg16":I
    .end local v40  # "_arg17":I
    .end local v41  # "_arg18":I
    .end local v42  # "_arg19":I
    .end local v43  # "_arg20":I
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_6b8  #0x14
    move v6, v10

    move-object/from16 v33, v11

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v33  # "descriptor":Ljava/lang/String;
    move-object/from16 v7, p2

    move-object/from16 v8, v33

    .end local v33  # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 590
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 595
    .restart local v3  # "_arg3":I
    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 596
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    move-object/from16 v10, p3

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    return v6

    .line 570
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":I
    .end local v4  # "_result":I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_6e1  #0x13
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f8

    .line 573
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6f9

    .line 576
    .end local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_6f8
    const/4 v0, 0x0

    .line 579
    .restart local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_6f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 580
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    return v6

    .line 553
    .end local v0  # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1  # "_arg1":I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_704  #0x12
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 557
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 559
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 561
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 564
    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    return v6

    .line 537
    .end local v8  # "descriptor":Ljava/lang/String;
    .end local v12  # "_arg1":I
    .end local v13  # "_arg2":Ljava/lang/String;
    .end local v14  # "_arg3":Ljava/lang/String;
    .end local v15  # "_arg4":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_72e  #0x11
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 541
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    return v6

    .line 524
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    .end local v4  # "_result":Ljava/lang/String;
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_751  #0x10
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 531
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    return v6

    .line 511
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_76c  #0xf
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .restart local v2  # "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    return v6

    .line 503
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_787  #0xe
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 505
    .local v0, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {v10, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 507
    return v6

    .line 495
    .end local v0  # "_result":[Landroid/net/TetherStatsParcel;
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_79a  #0xd
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v0

    .line 497
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    return v6

    .line 484
    .end local v0  # "_result":Z
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_7ad  #0xc
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    sget-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 488
    .local v0, "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 489
    .local v1, "_arg1":[I
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    return v6

    .line 473
    .end local v0  # "_arg0":[Landroid/net/UidRangeParcel;
    .end local v1  # "_arg1":[I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_7c8  #0xb
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7d7

    move v0, v6

    .line 477
    .local v0, "_arg0":Z
    :cond_7d7
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 478
    .local v1, "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    return v6

    .line 462
    .end local v0  # "_arg0":Z
    .end local v1  # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_7e6  #0xa
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 467
    .restart local v1  # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    return v6

    .line 451
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_801  #0x9
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    .restart local v0  # "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 456
    .restart local v1  # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    return v6

    .line 440
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_81c  #0x8
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveInterface(ILjava/lang/String;)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    return v6

    .line 429
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_833  #0x7
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 433
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkAddInterface(ILjava/lang/String;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    return v6

    .line 420
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_84a  #0x6
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    .restart local v0  # "_arg0":I
    invoke-virtual {v9, v0}, Landroid/net/INetd$Stub;->networkDestroy(I)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    return v6

    .line 409
    .end local v0  # "_arg0":I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_85d  #0x5
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_870

    move v0, v6

    .line 414
    .local v0, "_arg1":Z
    :cond_870
    invoke-virtual {v9, v1, v0}, Landroid/net/INetd$Stub;->networkCreateVpn(IZ)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    return v6

    .line 398
    .end local v0  # "_arg1":Z
    .end local v1  # "_arg0":I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_877  #0x4
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Landroid/net/INetd$Stub;->networkCreatePhysical(II)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    return v6

    .line 388
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_88e  #0x3
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_89d

    move v0, v6

    .line 391
    .local v0, "_arg0":Z
    :cond_89d
    invoke-virtual {v9, v0}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    .line 392
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    return v6

    .line 374
    .end local v0  # "_arg0":Z
    .end local v1  # "_result":Z
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_8a8  #0x2
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8bb

    move v0, v6

    .line 380
    .local v0, "_arg1":Z
    :cond_8bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 381
    .local v2, "_arg2":[I
    invoke-virtual {v9, v1, v0, v2}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v3

    .line 382
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    return v6

    .line 366
    .end local v0  # "_arg1":Z
    .end local v1  # "_arg0":Ljava/lang/String;
    .end local v2  # "_arg2":[I
    .end local v3  # "_result":Z
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :pswitch_8ca  #0x1
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v0

    .line 368
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return v6

    .line 361
    .end local v0  # "_result":Z
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :cond_8dd
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    return v6

    .line 1494
    .end local v8  # "descriptor":Ljava/lang/String;
    .restart local v11  # "descriptor":Ljava/lang/String;
    :cond_8e4
    move v6, v10

    move-object v8, v11

    move-object v10, v12

    move-object v7, v13

    move-object v9, v15

    .end local v11  # "descriptor":Ljava/lang/String;
    .restart local v8  # "descriptor":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    return v6

    nop

    :pswitch_data_8f8
    .packed-switch 0x1
        :pswitch_8ca  #00000001
        :pswitch_8a8  #00000002
        :pswitch_88e  #00000003
        :pswitch_877  #00000004
        :pswitch_85d  #00000005
        :pswitch_84a  #00000006
        :pswitch_833  #00000007
        :pswitch_81c  #00000008
        :pswitch_801  #00000009
        :pswitch_7e6  #0000000a
        :pswitch_7c8  #0000000b
        :pswitch_7ad  #0000000c
        :pswitch_79a  #0000000d
        :pswitch_787  #0000000e
        :pswitch_76c  #0000000f
        :pswitch_751  #00000010
        :pswitch_72e  #00000011
        :pswitch_704  #00000012
        :pswitch_6e1  #00000013
        :pswitch_6b8  #00000014
        :pswitch_62a  #00000015
        :pswitch_5f6  #00000016
        :pswitch_5bb  #00000017
        :pswitch_5a1  #00000018
        :pswitch_55f  #00000019
        :pswitch_51d  #0000001a
        :pswitch_4f0  #0000001b
        :pswitch_4c3  #0000001c
        :pswitch_496  #0000001d
        :pswitch_488  #0000001e
        :pswitch_46e  #0000001f
        :pswitch_454  #00000020
        :pswitch_442  #00000021
        :pswitch_42c  #00000022
        :pswitch_416  #00000023
        :pswitch_404  #00000024
        :pswitch_3ee  #00000025
        :pswitch_3e0  #00000026
        :pswitch_3d2  #00000027
        :pswitch_3c4  #00000028
        :pswitch_3b6  #00000029
        :pswitch_3a8  #0000002a
        :pswitch_396  #0000002b
        :pswitch_384  #0000002c
        :pswitch_372  #0000002d
        :pswitch_364  #0000002e
        :pswitch_352  #0000002f
        :pswitch_344  #00000030
        :pswitch_336  #00000031
        :pswitch_328  #00000032
        :pswitch_31a  #00000033
        :pswitch_30c  #00000034
        :pswitch_2fe  #00000035
        :pswitch_2f0  #00000036
        :pswitch_2e6  #00000037
        :pswitch_2d8  #00000038
        :pswitch_2ca  #00000039
        :pswitch_2bc  #0000003a
        :pswitch_2ae  #0000003b
        :pswitch_29c  #0000003c
        :pswitch_28e  #0000003d
        :pswitch_274  #0000003e
        :pswitch_25a  #0000003f
        :pswitch_234  #00000040
        :pswitch_20e  #00000041
        :pswitch_200  #00000042
        :pswitch_1f2  #00000043
        :pswitch_1e8  #00000044
        :pswitch_1d6  #00000045
        :pswitch_1c4  #00000046
        :pswitch_1b6  #00000047
        :pswitch_1a4  #00000048
        :pswitch_196  #00000049
        :pswitch_188  #0000004a
        :pswitch_176  #0000004b
        :pswitch_168  #0000004c
        :pswitch_156  #0000004d
        :pswitch_140  #0000004e
        :pswitch_12b  #0000004f
        :pswitch_11d  #00000050
        :pswitch_102  #00000051
        :pswitch_e8  #00000052
        :pswitch_d3  #00000053
        :pswitch_c5  #00000054
        :pswitch_b0  #00000055
        :pswitch_9e  #00000056
        :pswitch_8c  #00000057
        :pswitch_7a  #00000058
        :pswitch_68  #00000059
        :pswitch_56  #0000005a
        :pswitch_44  #0000005b
        :pswitch_36  #0000005c
        :pswitch_2c  #0000005d
        :pswitch_1e  #0000005e
    .end packed-switch
.end method
