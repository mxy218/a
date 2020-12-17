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
    .registers 14
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "deviceManager"  # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "alsaManager"  # Lcom/android/server/usb/UsbAlsaManager;
    .param p5, "settingsManager"  # Lcom/android/server/usb/UsbSettingsManager;

    .line 1653
    const-string/jumbo v0, "none"

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    .line 1655
    :try_start_6
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->readOemUsbOverrideConfig(Landroid/content/Context;)V

    .line 1657
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1659
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_9a

    const-string/jumbo v3, "sys.usb.state"

    const-string/jumbo v4, "sys.usb.config"

    const/4 v5, 0x1

    if-eqz v2, :cond_4e

    .line 1660
    :try_start_21
    invoke-virtual {p0, v4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1662
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsbHandlerLegacy normal boot mCurrentFunctionsStr = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1664
    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1663
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    goto :goto_80

    .line 1666
    :cond_4e
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1668
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbHandlerLegacy mCurrentFunctionsStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {p0, v4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1671
    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1673
    :goto_80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1674
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentUsbFunctionsReceived:Z

    .line 1676
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateState(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_99} :catch_9a

    .line 1680
    .end local v0  # "state":Ljava/lang/String;
    goto :goto_a4

    .line 1678
    :catch_9a
    move-exception v0

    .line 1679
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1681
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_a4
    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Ljava/lang/String;
    .param p1, "x1"  # Ljava/lang/String;

    .line 1635
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "functions"  # Ljava/lang/String;
    .param p1, "function"  # Ljava/lang/String;

    .line 2044
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2045
    return-object p1

    .line 2047
    :cond_a
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 2048
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2051
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2053
    :cond_36
    return-object p0
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "usbFunctions"  # Ljava/lang/String;

    .line 1715
    if-eqz p1, :cond_f4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v0, :cond_8

    goto/16 :goto_f4

    .line 1719
    :cond_8
    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.bootmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, "bootMode":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

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

    .line 1722
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1723
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1726
    .local v2, "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_f3

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 1727
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 1728
    nop

    .line 1729
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1730
    .local v0, "overrideFunctions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "adb"

    const/4 v4, 0x0

    if-eqz v0, :cond_d7

    .line 1731
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM USB override: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " persist across reboot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 1738
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "newFunction":Ljava/lang/String;
    goto :goto_a6

    .line 1741
    .end local v3  # "newFunction":Ljava/lang/String;
    :cond_a2
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1743
    .restart local v3  # "newFunction":Ljava/lang/String;
    :goto_a6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM USB override persisting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "in prop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1743
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    .end local v3  # "newFunction":Ljava/lang/String;
    :cond_d2
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 1748
    :cond_d7
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v5

    const-string/jumbo v6, "none"

    if-eqz v5, :cond_ec

    .line 1749
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1751
    .restart local v3  # "newFunction":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    .end local v3  # "newFunction":Ljava/lang/String;
    goto :goto_f3

    .line 1753
    :cond_ec
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    .end local v0  # "overrideFunctions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f3
    :goto_f3
    return-object p1

    .line 1716
    .end local v1  # "bootMode":Ljava/lang/String;
    .end local v2  # "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_f4
    :goto_f4
    return-object p1
.end method

.method static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "functions"  # Ljava/lang/String;
    .param p1, "function"  # Ljava/lang/String;

    .line 2080
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2081
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 2082
    :cond_8
    const/16 v2, 0x2c

    if-lez v0, :cond_15

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_15

    return v1

    .line 2083
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 2084
    .local v3, "charAfter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_27

    return v1

    .line 2085
    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method private getPersistProp(Z)Ljava/lang/String;
    .registers 7
    .param p1, "functions"  # Z

    .line 2030
    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.bootmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "bootMode":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.usb.config"

    .line 2032
    .local v2, "persistProp":Ljava/lang/String;
    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2033
    const-string/jumbo v0, "persist.sys.usb."

    if-eqz p1, :cond_36

    .line 2034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".func"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    .line 2036
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".config"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2039
    :cond_4a
    :goto_4a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPersistProp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    return-object v2
.end method

.method private isNormalBoot()Z
    .registers 4

    .line 1845
    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "ro.bootmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1846
    .local v1, "bootMode":Ljava/lang/String;
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
    .registers 13
    .param p1, "context"  # Landroid/content/Context;

    .line 1684
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, "configList":[Ljava/lang/String;
    if-eqz v0, :cond_73

    .line 1688
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_73

    aget-object v4, v0, v3

    .line 1689
    .local v4, "config":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1690
    .local v5, "items":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_22

    array-length v6, v5

    const/4 v8, 0x4

    if-ne v6, v8, :cond_70

    .line 1691
    :cond_22
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v6, :cond_2d

    .line 1692
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1694
    :cond_2d
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v8, v5, v2

    .line 1695
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 1696
    .local v6, "overrideMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v6, :cond_46

    .line 1697
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v6, v8

    .line 1698
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v9, v5, v2

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    :cond_46
    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    .line 1703
    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v7, :cond_62

    .line 1704
    aget-object v7, v5, v8

    new-instance v8, Landroid/util/Pair;

    aget-object v9, v5, v10

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 1706
    :cond_62
    aget-object v8, v5, v8

    new-instance v9, Landroid/util/Pair;

    aget-object v10, v5, v10

    aget-object v7, v5, v7

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    .end local v4  # "config":Ljava/lang/String;
    .end local v5  # "items":[Ljava/lang/String;
    .end local v6  # "overrideMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1712
    :cond_73
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "functions"  # Ljava/lang/String;
    .param p1, "function"  # Ljava/lang/String;

    .line 2057
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2058
    .local v1, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_18

    .line 2059
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2060
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 2058
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2063
    .end local v2  # "i":I
    :cond_18
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-nez v2, :cond_25

    .line 2064
    const-string/jumbo v0, "none"

    return-object v0

    .line 2066
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2067
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    array-length v4, v1

    if-ge v3, v4, :cond_41

    .line 2068
    aget-object v4, v1, v3

    .line 2069
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 2070
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3b

    .line 2071
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    :cond_3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    .end local v4  # "s":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 2076
    .end local v3  # "i":I
    :cond_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUsbConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "config"  # Ljava/lang/String;

    .line 1775
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const-string/jumbo v0, "sys.usb.config"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    return-void
.end method

.method private trySetEnabledFunctions(JZ)Z
    .registers 20
    .param p1, "usbFunctions"  # J
    .param p3, "forceRestart"  # Z

    .line 1864
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    .line 1865
    .local v3, "functions":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_f

    .line 1866
    invoke-static/range {p1 .. p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    .line 1870
    :cond_f
    sget-object v6, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-wide/16 v7, 0x20

    const-wide/16 v9, 0x200

    if-eqz v6, :cond_33

    iget-wide v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    cmp-long v6, v11, v9

    if-nez v6, :cond_33

    cmp-long v6, v1, v7

    if-nez v6, :cond_33

    .line 1873
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "reset functions when high-speed to open rndis"

    invoke-static {v6, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    sget-object v3, Landroid/hardware/usb/UsbManager;->USB_FUNCTION_QPST_HIGH_SPEED:Ljava/lang/String;

    .line 1875
    const/4 v6, 0x1

    .end local p3  # "forceRestart":Z
    .local v6, "forceRestart":Z
    goto :goto_35

    .line 1880
    .end local v6  # "forceRestart":Z
    .restart local p3  # "forceRestart":Z
    :cond_33
    move/from16 v6, p3

    .end local p3  # "forceRestart":Z
    .restart local v6  # "forceRestart":Z
    :goto_35
    const-wide/16 v11, 0x400

    cmp-long v13, v1, v11

    const-wide/16 v14, 0x4

    const-string/jumbo v7, "persist.sys.mtp.open.config"

    const-string/jumbo v8, "yes"

    const-string/jumbo v11, "no"

    if-nez v13, :cond_56

    .line 1881
    invoke-static {v7, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 1882
    iput-wide v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    goto :goto_58

    .line 1884
    :cond_53
    iput-wide v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    goto :goto_58

    .line 1887
    :cond_56
    iput-wide v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1893
    :goto_58
    const/4 v4, 0x1

    const-string/jumbo v5, "none"

    if-nez v3, :cond_c4

    .line 1895
    sget-boolean v12, Landroid/os/BuildExt;->IS_CTA:Z

    if-nez v12, :cond_a3

    sget-object v12, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_6b

    goto :goto_a3

    .line 1900
    :cond_6b
    invoke-static {v7, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 1901
    const-string/jumbo v3, "none"

    .line 1902
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "trySetEnabledFunctions - reset function null to none"

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 1904
    :cond_83
    if-eqz v6, :cond_93

    .line 1905
    const-string/jumbo v3, "none"

    .line 1906
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "trySetEnabledFunctions - click charging only when mtp open"

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 1908
    :cond_93
    const-string/jumbo v3, "mtp"

    .line 1909
    iput-wide v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1910
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "trySetEnabledFunctions - reset function null to MTP"

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 1896
    :cond_a3
    :goto_a3
    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1898
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "trySetEnabledFunctions - cta reset function null to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_c4
    :goto_c4
    if-eqz v3, :cond_d0

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1918
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_108

    .line 1919
    :cond_d0
    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1922
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_108

    .line 1923
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getChargingFunctions()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    .line 1925
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 1926
    const-string/jumbo v3, "none"

    .line 1928
    :cond_ef
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "trySetEnabledFunctions - reset function to charging function "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_108
    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1935
    iget-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    if-nez v7, :cond_11e

    .line 1936
    const-string v7, ""

    iput-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1937
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "reset mCurrentFunctionsStr to \"\""

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_11e
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v12, "sys.usb.charging"

    const/4 v13, 0x0

    if-eqz v7, :cond_14b

    .line 1943
    iput-boolean v13, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 1945
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13d

    .line 1946
    const-string/jumbo v3, "mtp"

    .line 1947
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "trySetEnabledFunctions - reset function none to MTP for charing only"

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_13d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "trySetEnabledFunctions - [Enable USB Charging]"

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-static {v12, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_158

    .line 1952
    :cond_14b
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "trySetEnabledFunctions - [Disable USB Charging]"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :goto_158
    invoke-direct {v0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1959
    .local v7, "oemFunctions":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result v8

    if-nez v8, :cond_171

    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_171

    .line 1960
    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    :cond_171
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "functions = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oemFunctions = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mCurrentOemFunctions = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mCurrentFunctionsStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mCurrentFunctionsApplied = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", forceRestart = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c5

    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1968
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d3

    :cond_1c5
    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1969
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d3

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    if-eqz v8, :cond_1d3

    if-eqz v6, :cond_280

    .line 1972
    :cond_1d3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Setting USB config to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iput-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1974
    iput-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1975
    iput-boolean v13, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1980
    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1982
    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_204

    .line 1983
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to kick USB config"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    return v13

    .line 1990
    :cond_204
    invoke-direct {v0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1992
    iget-boolean v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mBootCompleted:Z

    if-eqz v5, :cond_21a

    .line 1993
    const-string/jumbo v5, "mtp"

    invoke-static {v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21a

    .line 1994
    const-string/jumbo v5, "ptp"

    invoke-static {v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2004
    :cond_21a
    const-wide/16 v11, 0x100

    cmp-long v5, v1, v11

    if-eqz v5, :cond_243

    cmp-long v5, v1, v9

    if-eqz v5, :cond_243

    const-wide/16 v8, 0x400

    cmp-long v5, v1, v8

    if-eqz v5, :cond_243

    sget-object v5, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    .line 2007
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_241

    const-wide/16 v8, 0x20

    cmp-long v5, v1, v8

    if-nez v5, :cond_241

    sget-object v5, Landroid/hardware/usb/UsbManager;->USB_FUNCTION_QPST_HIGH_SPEED:Ljava/lang/String;

    .line 2009
    invoke-static {v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_241

    goto :goto_243

    :cond_241
    move v5, v13

    goto :goto_244

    :cond_243
    :goto_243
    move v5, v4

    .line 2010
    .local v5, "isQpstRelated":Z
    :goto_244
    if-eqz v5, :cond_25f

    .line 2012
    sget-object v8, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_27e

    .line 2013
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "telecom persist qpst function"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const-string/jumbo v8, "persist.sys.usb.config"

    invoke-virtual {v0, v8, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27e

    .line 2017
    :cond_25f
    invoke-direct {v0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_27e

    .line 2018
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to switch USB config to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    return v13

    .line 2024
    :cond_27e
    :goto_27e
    iput-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 2026
    .end local v5  # "isQpstRelated":Z
    :cond_280
    return v4
.end method

.method private waitForState(Ljava/lang/String;)Z
    .registers 6
    .param p1, "state"  # Ljava/lang/String;

    .line 1763
    const/4 v0, 0x0

    .line 1764
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1f

    .line 1766
    const-string/jumbo v2, "sys.usb.state"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1767
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    return v2

    .line 1768
    :cond_17
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1764
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1770
    .end local v1  # "i":I
    :cond_1f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") FAILED: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "functions"  # Ljava/lang/String;

    .line 1852
    if-nez p1, :cond_4

    .line 1853
    const-string p1, ""

    .line 1855
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v0

    const-string v1, "adb"

    if-eqz v0, :cond_11

    .line 1856
    invoke-static {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    .line 1858
    :cond_11
    invoke-static {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1860
    :goto_15
    return-object p1
.end method

.method protected setEnabledFunctions(JZ)V
    .registers 13
    .param p1, "usbFunctions"  # J
    .param p3, "forceRestart"  # Z

    .line 1786
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isUsbDataTransferActive(J)Z

    move-result v0

    .line 1789
    .local v0, "usbDataUnlocked":Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbHandlerLegacy setEnabledFunctions functions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", forceRestart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", usbDataUnlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_37

    .line 1794
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 1795
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateUsbNotification(Z)V

    .line 1796
    const/4 p3, 0x1

    .line 1802
    :cond_37
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1803
    .local v3, "oldFunctions":J
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1804
    .local v1, "oldFunctionsApplied":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1805
    return-void

    .line 1814
    :cond_42
    if-eqz v1, :cond_58

    cmp-long v5, v3, p1

    if-eqz v5, :cond_58

    .line 1815
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failsafe 1: Restoring previous USB functions."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1817
    return-void

    .line 1824
    :cond_58
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failsafe 2: Restoring default USB functions."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-wide/16 v5, 0x0

    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 1826
    return-void

    .line 1833
    :cond_6a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1835
    return-void

    .line 1841
    :cond_7a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Unable to set any USB functions!"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    return-void
.end method
