.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbHandlerLegacy"
.end annotation


# static fields
.field private static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field private static final USB_STATE_PROPERTY:Ljava/lang/String; = "sys.usb.state"


# instance fields
.field private mCurrentFunctionsStr:Ljava/lang/String;

.field private mCurrentOemFunctions:Ljava/lang/String;

.field private mOemModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mUsbDataUnlocked:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 7

    .line 1377
    const-string/jumbo v0, "none"

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    .line 1379
    :try_start_6
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->readOemUsbOverrideConfig(Landroid/content/Context;)V

    .line 1381
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1383
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result p2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_66

    const-string/jumbo p3, "sys.usb.state"

    const-string/jumbo p4, "sys.usb.config"

    const/4 p5, 0x1

    if-eqz p2, :cond_34

    .line 1384
    :try_start_21
    invoke-virtual {p0, p4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1386
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1387
    invoke-virtual {p0, p3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1386
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    goto :goto_4c

    .line 1389
    :cond_34
    invoke-direct {p0, p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1391
    invoke-virtual {p0, p4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1393
    invoke-virtual {p0, p3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1392
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1395
    :goto_4c
    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1396
    iput-boolean p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentUsbFunctionsReceived:Z

    .line 1398
    new-instance p2, Ljava/io/File;

    const-string p3, "/sys/class/android_usb/android0/state"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1399
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateState(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_65} :catch_66

    .line 1402
    goto :goto_70

    .line 1400
    :catch_66
    move-exception p1

    .line 1401
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Error initializing UsbHandler"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    :goto_70
    return-void
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1660
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1661
    return-object p1

    .line 1663
    :cond_a
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1667
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1669
    :cond_36
    return-object p0
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1437
    if-eqz p1, :cond_f3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v0, :cond_8

    goto/16 :goto_f3

    .line 1441
    :cond_8
    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.bootmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOemOverride usbfunctions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bootmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1445
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1448
    if-eqz v2, :cond_f2

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f2

    .line 1449
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    .line 1450
    nop

    .line 1451
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1452
    const-string v1, "adb"

    const/4 v2, 0x0

    if-eqz v0, :cond_d6

    .line 1453
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OEM USB override: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ==> "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " persist across reboot "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 1460
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a6

    .line 1463
    :cond_a2
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1465
    :goto_a6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM USB override persisting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "in prop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1465
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :cond_d1
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1470
    :cond_d6
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v0

    const-string/jumbo v3, "none"

    if-eqz v0, :cond_eb

    .line 1471
    invoke-static {v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1473
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    goto :goto_f2

    .line 1475
    :cond_eb
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_f2
    :goto_f2
    return-object p1

    .line 1438
    :cond_f3
    :goto_f3
    return-object p1
.end method

.method static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1696
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1697
    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 1698
    :cond_8
    const/16 v2, 0x2c

    if-lez v0, :cond_15

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_15

    return v1

    .line 1699
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 1700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_27

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_27

    return v1

    .line 1701
    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method private getPersistProp(Z)Ljava/lang/String;
    .registers 5

    .line 1647
    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.bootmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1648
    nop

    .line 1649
    const-string/jumbo v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 1650
    const-string/jumbo v0, "persist.sys.usb."

    if-eqz p1, :cond_34

    .line 1651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".func"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    .line 1653
    :cond_34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".config"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    .line 1656
    :cond_49
    const-string/jumbo p1, "persist.sys.usb.config"

    :goto_4c
    return-object p1
.end method

.method private isNormalBoot()Z
    .registers 4

    .line 1566
    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.bootmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1567
    const-string/jumbo v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method private readOemUsbOverrideConfig(Landroid/content/Context;)V
    .registers 11

    .line 1406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107005c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1409
    if-eqz p1, :cond_72

    .line 1410
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_72

    aget-object v3, p1, v2

    .line 1411
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1412
    array-length v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_22

    array-length v4, v3

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6f

    .line 1413
    :cond_22
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v4, :cond_2d

    .line 1414
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1416
    :cond_2d
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v6, v3, v1

    .line 1417
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1418
    if-nez v4, :cond_45

    .line 1419
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1420
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v7, v3, v1

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_45
    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 1425
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v5, :cond_61

    .line 1426
    aget-object v5, v3, v6

    new-instance v6, Landroid/util/Pair;

    aget-object v3, v3, v8

    const-string v7, ""

    invoke-direct {v6, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f

    .line 1428
    :cond_61
    aget-object v6, v3, v6

    new-instance v7, Landroid/util/Pair;

    aget-object v8, v3, v8

    aget-object v3, v3, v5

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    :cond_6f
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1434
    :cond_72
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1673
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1674
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_19

    .line 1675
    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1676
    const/4 v3, 0x0

    aput-object v3, p0, v2

    .line 1674
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1679
    :cond_19
    array-length p1, p0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    aget-object p1, p0, v1

    if-nez p1, :cond_25

    .line 1680
    const-string/jumbo p0, "none"

    return-object p0

    .line 1682
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1683
    nop

    :goto_2b
    array-length v2, p0

    if-ge v1, v2, :cond_41

    .line 1684
    aget-object v2, p0, v1

    .line 1685
    if-eqz v2, :cond_3e

    .line 1686
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3b

    .line 1687
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    :cond_3b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1692
    :cond_41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setUsbConfig(Ljava/lang/String;)V
    .registers 3

    .line 1503
    const-string/jumbo v0, "sys.usb.config"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    return-void
.end method

.method private trySetEnabledFunctions(JZ)Z
    .registers 9

    .line 1585
    nop

    .line 1586
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 1587
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1586
    :cond_c
    const/4 v0, 0x0

    .line 1589
    :goto_d
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1590
    const-string/jumbo p1, "none"

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1592
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getChargingFunctions()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    .line 1594
    :cond_26
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1596
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1599
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1603
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    :cond_52
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1604
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    if-eqz v1, :cond_60

    if-eqz p3, :cond_d5

    .line 1607
    :cond_60
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting USB config to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1609
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1610
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1615
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1617
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 1618
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to kick USB config"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    return p3

    .line 1625
    :cond_92
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1627
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mBootCompleted:Z

    if-eqz p1, :cond_b4

    .line 1628
    const-string/jumbo p1, "mtp"

    invoke-static {p2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ab

    .line 1629
    const-string/jumbo p1, "ptp"

    invoke-static {p2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 1633
    :cond_ab
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getAppliedFunctions(J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1636
    :cond_b4
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d3

    .line 1637
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to switch USB config to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return p3

    .line 1641
    :cond_d3
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1643
    :cond_d5
    return v2
.end method

.method private waitForState(Ljava/lang/String;)Z
    .registers 7

    .line 1485
    nop

    .line 1486
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x14

    if-ge v1, v3, :cond_22

    .line 1488
    const-string/jumbo v2, "sys.usb.state"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1489
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p1, 0x1

    return p1

    .line 1490
    :cond_1a
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1486
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1492
    :cond_22
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") FAILED: got "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return v0
.end method


# virtual methods
.method protected applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1573
    if-nez p1, :cond_4

    .line 1574
    const-string p1, ""

    .line 1576
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v0

    const-string v1, "adb"

    if-eqz v0, :cond_11

    .line 1577
    invoke-static {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    .line 1579
    :cond_11
    invoke-static {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1581
    :goto_15
    return-object p1
.end method

.method protected setEnabledFunctions(JZ)V
    .registers 8

    .line 1508
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isUsbDataTransferActive(J)Z

    move-result v0

    .line 1514
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 1515
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 1516
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateUsbNotification(Z)V

    .line 1517
    const/4 p3, 0x1

    .line 1523
    :cond_f
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1524
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1525
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 1526
    return-void

    .line 1535
    :cond_1a
    if-eqz v3, :cond_30

    cmp-long p1, v0, p1

    if-eqz p1, :cond_30

    .line 1536
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failsafe 1: Restoring previous USB functions."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1538
    return-void

    .line 1545
    :cond_30
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failsafe 2: Restoring default USB functions."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result p3

    if-eqz p3, :cond_42

    .line 1547
    return-void

    .line 1554
    :cond_42
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 1556
    return-void

    .line 1562
    :cond_52
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to set any USB functions!"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return-void
.end method
