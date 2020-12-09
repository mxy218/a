.class abstract Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UsbHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;
    }
.end annotation


# static fields
.field protected static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"


# instance fields
.field private mAdbNotificationId:I

.field private mAudioAccessoryConnected:Z

.field private mAudioAccessorySupported:Z

.field private mAudioSourceEnabled:Z

.field protected mBootCompleted:Z

.field private mBroadcastedIntent:Landroid/content/Intent;

.field private mConfigured:Z

.field private mConnected:Z

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field protected mCurrentFunctions:J

.field protected mCurrentFunctionsApplied:Z

.field protected mCurrentUsbFunctionsReceived:Z

.field protected mCurrentUser:I

.field private mHideUsbNotification:Z

.field private mHostConnected:Z

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingBootBroadcast:Z

.field private mScreenLocked:Z

.field protected mScreenUnlockedFunctions:J

.field protected mSettings:Landroid/content/SharedPreferences;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mSinkPower:Z

.field private mSourcePower:Z

.field private mSupportsAllCombinations:Z

.field private mSystemReady:Z

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbCharging:Z

.field protected final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mUsbNotificationId:I

.field protected mUseUsbNotification:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 7

    .line 511
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 513
    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 514
    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 515
    iput-object p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 516
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 518
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 519
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 521
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    .line 522
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    const/4 p3, 0x0

    if-nez p2, :cond_31

    .line 523
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Couldn\'t load shared preferences"

    invoke-static {p2, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 525
    :cond_31
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p5, p1, [Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, p3

    const-string/jumbo v0, "usb-screen-unlocked-config-%d"

    invoke-static {p4, v0, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 526
    const-string p5, ""

    invoke-interface {p2, p4, p5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 525
    invoke-static {p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 533
    :goto_50
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p2

    .line 535
    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object p2

    goto :goto_5e

    :cond_5d
    const/4 p2, 0x0

    .line 537
    :goto_5e
    if-eqz p2, :cond_68

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result p2

    if-eqz p2, :cond_68

    move p2, p1

    goto :goto_69

    :cond_68
    move p2, p3

    .line 538
    :goto_69
    if-nez p2, :cond_7b

    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x11100eb

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_7b

    goto :goto_7c

    :cond_7b
    move p1, p3

    :goto_7c
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    .line 540
    return-void
.end method

.method private dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .registers 16

    .line 1299
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_28

    .line 1300
    const-wide/16 v1, 0x1

    shl-long v7, v1, v0

    and-long v1, p5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    .line 1301
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1302
    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    goto :goto_25

    .line 1304
    :cond_1e
    invoke-static {v7, v8}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 1299
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1308
    :cond_28
    return-void
.end method

.method private isTv()Z
    .registers 3

    .line 1259
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsbStateChanged(Landroid/content/Intent;)Z
    .registers 8

    .line 698
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_27

    .line 700
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 701
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 702
    return v2

    .line 704
    :cond_25
    goto :goto_12

    :cond_26
    goto :goto_54

    .line 706
    :cond_27
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 707
    return v2

    .line 709
    :cond_36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 710
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 711
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v4, v1, :cond_53

    .line 712
    return v2

    .line 714
    :cond_53
    goto :goto_3a

    .line 716
    :cond_54
    :goto_54
    return v3
.end method

.method private notifyAccessoryModeExit()V
    .registers 4

    .line 679
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 682
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_1f

    .line 683
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v1, :cond_1c

    .line 684
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V

    .line 686
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 688
    :cond_1f
    return-void
.end method

.method private setAdbEnabled(Z)V
    .registers 4

    .line 622
    const-string/jumbo v0, "persist.sys.usb.config"

    if-eqz p1, :cond_b

    .line 623
    const-string p1, "adb"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 625
    :cond_b
    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_10
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 629
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 630
    return-void
.end method

.method private setScreenUnlockedFunctions()V
    .registers 4

    .line 784
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 785
    return-void
.end method

.method private updateCurrentAccessory()V
    .registers 11

    .line 640
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    .line 642
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v1, :cond_72

    if-eqz v0, :cond_72

    .line 644
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_67

    .line 646
    new-instance v8, Lcom/android/server/usb/UsbSerialReader;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-direct {v8, v1, v2, v3}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V

    .line 649
    new-instance v9, Landroid/hardware/usb/UsbAccessory;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    const/4 v1, 0x4

    aget-object v6, v0, v1

    move-object v1, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    iput-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 657
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v8, v0}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 659
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering USB accessory mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_66

    .line 662
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 664
    :cond_66
    goto :goto_71

    .line 665
    :cond_67
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nativeGetAccessoryStrings failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_71
    goto :goto_77

    .line 668
    :cond_72
    if-nez v0, :cond_77

    .line 669
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    .line 674
    :cond_77
    :goto_77
    return-void
.end method

.method private updateMidiFunction()V
    .registers 8

    .line 760
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 761
    :goto_10
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eq v0, v3, :cond_56

    .line 762
    if-eqz v0, :cond_54

    .line 763
    const/4 v3, 0x0

    .line 765
    :try_start_17
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_23} :catch_3c
    .catchall {:try_start_17 .. :try_end_23} :catchall_3a

    .line 766
    :try_start_23
    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 767
    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2f} :catch_37
    .catchall {:try_start_23 .. :try_end_2f} :catchall_34

    .line 772
    nop

    .line 773
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_54

    .line 772
    :catchall_34
    move-exception v0

    move-object v3, v4

    goto :goto_4e

    .line 768
    :catch_37
    move-exception v0

    move-object v3, v4

    goto :goto_3d

    .line 772
    :catchall_3a
    move-exception v0

    goto :goto_4e

    .line 768
    :catch_3c
    move-exception v0

    .line 769
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "could not open MIDI file"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_3a

    .line 770
    nop

    .line 772
    if-eqz v3, :cond_4c

    .line 773
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 777
    :cond_4c
    move v0, v2

    goto :goto_54

    .line 772
    :goto_4e
    if-eqz v3, :cond_53

    .line 773
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_53
    throw v0

    .line 777
    :cond_54
    :goto_54
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 779
    :cond_56
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v3, :cond_61

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    move v1, v2

    :goto_62
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    .line 781
    return-void
.end method

.method private updateUsbFunctions()V
    .registers 1

    .line 756
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    .line 757
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 15

    .line 1311
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 1313
    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-string v2, "current_functions"

    const-wide v3, 0x20e00000001L

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1315
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    const-string v0, "current_functions_applied"

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1317
    iget-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v5, "screen_unlocked_functions"

    const-wide v6, 0x20e00000003L

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1319
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-string/jumbo v0, "screen_locked"

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1320
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v0, "connected"

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1321
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v0, "configured"

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1322
    iget-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz p4, :cond_60

    .line 1323
    const-wide v0, 0x10b00000007L

    const-string v2, "current_accessory"

    invoke-static {p1, v2, v0, v1, p4}, Lcom/android/internal/usb/DumpUtils;->writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V

    .line 1326
    :cond_60
    const-wide v0, 0x10800000008L

    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v2, "host_connected"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1327
    const-wide v0, 0x10800000009L

    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    const-string/jumbo v2, "source_power"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1328
    const-wide v0, 0x1080000000aL

    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    const-string/jumbo v2, "sink_power"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1329
    const-wide v0, 0x1080000000bL

    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    const-string/jumbo v2, "usb_charging"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1330
    const-wide v0, 0x1080000000cL

    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v2, "hide_usb_notification"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1332
    const-wide v0, 0x1080000000dL

    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const-string v2, "audio_accessory_connected"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1336
    const/4 p4, 0x0

    const/4 v0, 0x0

    :try_start_ad
    const-string v1, "kernel_state"

    const-wide v2, 0x1090000000fL

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1337
    invoke-static {v4, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1336
    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c6} :catch_c7

    .line 1340
    goto :goto_d1

    .line 1338
    :catch_c7
    move-exception v1

    .line 1339
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not read kernel state"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    :goto_d1
    :try_start_d1
    const-string v1, "kernel_function_list"

    const-wide v2, 0x10900000010L

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/functions"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1345
    invoke-static {v4, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 1343
    invoke-static {p1, v1, v2, v3, p4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ea} :catch_eb

    .line 1348
    goto :goto_f5

    .line 1346
    :catch_eb
    move-exception p4

    .line 1347
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not read kernel function list"

    invoke-static {v0, v1, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1350
    :goto_f5
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1351
    return-void
.end method

.method protected finishBoot()V
    .registers 7

    .line 1016
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v0, :cond_47

    .line 1017
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1018
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1019
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1021
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-wide/16 v2, 0x0

    if-nez v0, :cond_2c

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2c

    .line 1023
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_2f

    .line 1025
    :cond_2c
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 1027
    :goto_2f
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_3e

    .line 1028
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1031
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1032
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 1033
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 1035
    :cond_47
    return-void
.end method

.method getAppliedFunctions(J)J
    .registers 5

    .line 805
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 806
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getChargingFunctions()J

    move-result-wide p1

    return-wide p1

    .line 808
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 809
    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    return-wide p1

    .line 811
    :cond_15
    return-wide p1
.end method

.method protected getChargingFunctions()J
    .registers 3

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1266
    const-wide/16 v0, 0x1

    return-wide v0

    .line 1268
    :cond_9
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 1043
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public getEnabledFunctions()J
    .registers 3

    .line 1285
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    return-wide v0
.end method

.method protected getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6

    .line 691
    new-instance v0, Ljava/io/File;

    .line 692
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "UsbDeviceManagerPrefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    .line 694
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 693
    return-object p1
.end method

.method public getScreenUnlockedFunctions()J
    .registers 3

    .line 1289
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    return-wide v0
.end method

.method protected getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1277
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 816
    iget v0, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "usb-screen-unlocked-config-%d"

    const-wide/16 v2, 0x2

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_27e

    goto/16 :goto_27c

    .line 933
    :pswitch_11  #0xd
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_17

    move v0, v8

    goto :goto_18

    :cond_17
    move v0, v7

    :goto_18
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v0, v1, :cond_1e

    .line 934
    goto/16 :goto_27c

    .line 936
    :cond_1e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v8, :cond_23

    goto :goto_24

    :cond_23
    move v8, v7

    :goto_24
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 937
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez p1, :cond_2c

    .line 938
    goto/16 :goto_27c

    .line 940
    :cond_2c
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz p1, :cond_39

    .line 941
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez p1, :cond_27c

    .line 942
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_27c

    .line 945
    :cond_39
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_27c

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_27c

    .line 948
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_27c

    .line 919
    :pswitch_4a  #0xc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 920
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_78

    .line 921
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 922
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 923
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 922
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 924
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    .line 922
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 925
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 927
    :cond_78
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_27c

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_27c

    .line 929
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_27c

    .line 979
    :pswitch_87  #0xb
    invoke-virtual {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 980
    invoke-virtual {p0, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 981
    goto/16 :goto_27c

    .line 880
    :pswitch_8f  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    .line 881
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 887
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 888
    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 889
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 893
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 894
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v1

    sub-int/2addr v1, v8

    .line 895
    :goto_ae
    if-ltz v1, :cond_da

    .line 896
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v2

    .line 897
    add-int/lit8 v1, v1, -0x1

    .line 898
    invoke-virtual {v2}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v3

    sub-int/2addr v3, v8

    .line 899
    :goto_bb
    if-ltz v3, :cond_d9

    .line 900
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 901
    add-int/lit8 v3, v3, -0x1

    .line 902
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 903
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 904
    goto :goto_d9

    .line 906
    :cond_d8
    goto :goto_bb

    .line 907
    :cond_d9
    :goto_d9
    goto :goto_ae

    .line 908
    :cond_da
    goto :goto_97

    .line 909
    :cond_db
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 910
    goto/16 :goto_27c

    .line 876
    :pswitch_e0  #0x9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v8, :cond_e5

    goto :goto_e6

    :cond_e5
    move v8, v7

    :goto_e6
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 877
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 878
    goto/16 :goto_27c

    .line 1007
    :pswitch_ed  #0x8
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz p1, :cond_f8

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v2

    cmp-long p1, v0, v5

    if-nez p1, :cond_27c

    .line 1008
    :cond_f8
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto/16 :goto_27c

    .line 846
    :pswitch_fd  #0x7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 847
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 848
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/usb/UsbPort;

    .line 849
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/usb/UsbPortStatus;

    .line 850
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v3

    if-ne v3, v8, :cond_113

    move v3, v8

    goto :goto_114

    :cond_113
    move v3, v7

    :goto_114
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 851
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v3

    if-ne v3, v8, :cond_11e

    move v3, v8

    goto :goto_11f

    :cond_11e
    move v3, v7

    :goto_11f
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 852
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_12a

    move v3, v8

    goto :goto_12b

    :cond_12a
    move v3, v7

    :goto_12b
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 853
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v3

    if-ne v3, v4, :cond_135

    move v3, v8

    goto :goto_136

    :cond_135
    move v3, v7

    :goto_136
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 854
    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 858
    invoke-virtual {v2, v8, v8}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 860
    invoke-virtual {v2, v5, v8}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 861
    invoke-virtual {v2, v8, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 863
    invoke-virtual {v2, v5, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_158

    move v1, v8

    goto :goto_159

    :cond_158
    move v1, v7

    :goto_159
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 865
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 866
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 867
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_176

    .line 868
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez p1, :cond_16b

    if-eqz v0, :cond_27c

    .line 869
    :cond_16b
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    goto/16 :goto_27c

    .line 872
    :cond_176
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 874
    goto/16 :goto_27c

    .line 954
    :pswitch_17a  #0x6
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result p1

    if-eqz p1, :cond_27c

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result p1

    if-nez p1, :cond_27c

    .line 955
    invoke-virtual {p0, v5, v6, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_27c

    .line 987
    :pswitch_18d  #0x5
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_27c

    .line 991
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 992
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 993
    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 994
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1bb

    .line 995
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 997
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 996
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 995
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 999
    :cond_1bb
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_27c

    .line 983
    :pswitch_1c0  #0x4
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 984
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    .line 985
    goto/16 :goto_27c

    .line 959
    :pswitch_1c7  #0x3
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 960
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 962
    const-class p1, Landroid/debug/AdbManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/debug/AdbManagerInternal;

    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 963
    invoke-virtual {p1, v0}, Landroid/debug/AdbManagerInternal;->registerTransport(Landroid/debug/IAdbTransport;)V

    .line 966
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isTv()Z

    move-result p1

    if-eqz p1, :cond_200

    .line 968
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v2, 0x1040068

    .line 970
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usbdevicemanager.adb.tv"

    invoke-direct {v0, v2, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 968
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 975
    :cond_200
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    .line 976
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    .line 977
    goto/16 :goto_27c

    .line 915
    :pswitch_207  #0x2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 916
    invoke-virtual {p0, v0, v1, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 917
    goto/16 :goto_27c

    .line 912
    :pswitch_214  #0x1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v8, :cond_219

    move v7, v8

    :cond_219
    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    .line 913
    goto :goto_27c

    .line 818
    :pswitch_21d  #0x0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_223

    move v0, v8

    goto :goto_224

    :cond_223
    move v0, v7

    :goto_224
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 819
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v8, :cond_22c

    move p1, v8

    goto :goto_22d

    :cond_22c
    move p1, v7

    :goto_22d
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 821
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 822
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 823
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_242

    .line 824
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 826
    :cond_242
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v2

    cmp-long p1, v0, v5

    if-eqz p1, :cond_24c

    .line 827
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 829
    :cond_24c
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_279

    .line 830
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez p1, :cond_275

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_275

    const/16 p1, 0x11

    .line 831
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_275

    .line 833
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_272

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_272

    .line 835
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_275

    .line 837
    :cond_272
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 840
    :cond_275
    :goto_275
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_27c

    .line 842
    :cond_279
    iput-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 844
    nop

    .line 1013
    :cond_27c
    :goto_27c
    return-void

    nop

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_21d  #00000000
        :pswitch_214  #00000001
        :pswitch_207  #00000002
        :pswitch_1c7  #00000003
        :pswitch_1c0  #00000004
        :pswitch_18d  #00000005
        :pswitch_17a  #00000006
        :pswitch_fd  #00000007
        :pswitch_ed  #00000008
        :pswitch_e0  #00000009
        :pswitch_8f  #0000000a
        :pswitch_87  #0000000b
        :pswitch_4a  #0000000c
        :pswitch_11  #0000000d
    .end packed-switch
.end method

.method protected isAdbEnabled()Z
    .registers 2

    .line 1188
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->isAdbEnabled()Z

    move-result v0

    return v0
.end method

.method protected isUsbDataTransferActive(J)Z
    .registers 7

    .line 1038
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const-wide/16 v0, 0x10

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method protected isUsbTransferAllowed()Z
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 634
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected putGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4

    .line 1281
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1282
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 3

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 551
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 552
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .registers 4

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 558
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 559
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    return-void
.end method

.method public sendMessage(IZ)V
    .registers 3

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 544
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 545
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    return-void
.end method

.method public sendMessage(IZZ)V
    .registers 4

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 566
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 567
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 568
    iput p3, p1, Landroid/os/Message;->arg2:I

    .line 569
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    return-void
.end method

.method public sendMessageDelayed(IZJ)V
    .registers 5

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 574
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 575
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 576
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 577
    return-void
.end method

.method protected sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 4

    .line 752
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 753
    return-void
.end method

.method protected abstract setEnabledFunctions(JZ)V
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1273
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    return-void
.end method

.method protected updateAdbNotification(Z)V
    .registers 14

    .line 1192
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez p1, :cond_5

    return-void

    .line 1195
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz p1, :cond_13

    move p1, v0

    goto :goto_14

    :cond_13
    move p1, v1

    .line 1196
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 1197
    const-string v4, "adb_port"

    invoke-static {v2, v4, v3}, Llineageos/providers/LineageSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_27

    move v2, v0

    goto :goto_28

    :cond_27
    move v2, v1

    .line 1199
    :goto_28
    const-string/jumbo v4, "persist.adb.notify"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1200
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_notify"

    invoke-static {v3, v4, v0}, Llineageos/providers/LineageSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_40

    goto :goto_42

    :cond_40
    move v3, v1

    goto :goto_43

    :cond_42
    :goto_42
    move v3, v0

    .line 1203
    :goto_43
    if-eqz v3, :cond_47

    .line 1204
    move p1, v1

    goto :goto_5c

    .line 1205
    :cond_47
    if-eqz p1, :cond_4f

    if-eqz v2, :cond_4f

    .line 1206
    const p1, 0x1040067

    goto :goto_5c

    .line 1207
    :cond_4f
    if-eqz p1, :cond_55

    .line 1208
    const p1, 0x1040066

    goto :goto_5c

    .line 1209
    :cond_55
    if-eqz v2, :cond_5b

    .line 1210
    const p1, 0x1040069

    goto :goto_5c

    .line 1212
    :cond_5b
    move p1, v1

    .line 1215
    :goto_5c
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationId:I

    if-eq p1, v2, :cond_f9

    .line 1216
    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-eqz v2, :cond_6c

    .line 1217
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1220
    :cond_6c
    if-eqz p1, :cond_f7

    .line 1221
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1222
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1223
    const v6, 0x1040065

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1226
    new-instance v8, Landroid/content/Intent;

    const-string v6, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1227
    const v6, 0x10008000

    invoke-virtual {v8, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1229
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1232
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x10807e2

    .line 1234
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 1235
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1236
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1237
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1238
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v8, 0x106001c

    .line 1239
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1242
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1243
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 1244
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1245
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1246
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 1248
    const-string/jumbo v2, "usbdevicemanager.adb.tv"

    invoke-virtual {v1, v2}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v1

    .line 1247
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1249
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1250
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1254
    :cond_f7
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationId:I

    .line 1256
    :cond_f9
    return-void
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .registers 5

    .line 609
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 610
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 611
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 613
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 614
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 616
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 617
    return-void
.end method

.method public updateState(Ljava/lang/String;)V
    .registers 6

    .line 582
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 583
    nop

    .line 584
    move p1, v2

    move v0, p1

    goto :goto_25

    .line 585
    :cond_e
    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 586
    nop

    .line 587
    move p1, v1

    move v0, v2

    goto :goto_25

    .line 588
    :cond_1a
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 589
    nop

    .line 590
    move p1, v1

    move v0, p1

    .line 595
    :goto_25
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 596
    if-ne p1, v1, :cond_2f

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 597
    :cond_2f
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 598
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 599
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 601
    if-nez p1, :cond_3c

    const-wide/16 v2, 0x3e8

    goto :goto_3e

    :cond_3c
    const-wide/16 v2, 0x0

    :goto_3e
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 602
    return-void

    .line 592
    :cond_42
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void
.end method

.method protected updateUsbNotification(Z)V
    .registers 21

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_1d7

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v1, :cond_1d7

    .line 1048
    const-string/jumbo v1, "persist.charging.notify"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto/16 :goto_1d7

    .line 1054
    :cond_1d
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v2, "Clear notification"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3e

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v1, :cond_3e

    .line 1055
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_3d

    .line 1056
    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1058
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1059
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_3d
    return-void

    .line 1064
    :cond_3e
    nop

    .line 1065
    nop

    .line 1066
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1067
    const v5, 0x1040721

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1069
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const v7, 0x1040715

    const/16 v8, 0x1f

    const v9, 0x1040724

    const/16 v10, 0x20

    const v11, 0x1040727

    if-eqz v6, :cond_69

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v6, :cond_69

    .line 1070
    nop

    .line 1071
    const/16 v6, 0x29

    move v8, v6

    move v6, v11

    goto/16 :goto_e0

    .line 1072
    :cond_69
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v6, :cond_c7

    .line 1073
    iget-wide v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v14, 0x4

    cmp-long v6, v12, v14

    if-nez v6, :cond_7b

    .line 1074
    const v6, 0x1040720

    .line 1075
    const/16 v12, 0x1b

    goto :goto_ad

    .line 1076
    :cond_7b
    const-wide/16 v14, 0x10

    cmp-long v6, v12, v14

    if-nez v6, :cond_87

    .line 1077
    const v6, 0x1040723

    .line 1078
    const/16 v12, 0x1c

    goto :goto_ad

    .line 1079
    :cond_87
    const-wide/16 v14, 0x8

    cmp-long v6, v12, v14

    if-nez v6, :cond_93

    .line 1080
    const v6, 0x104071a

    .line 1081
    const/16 v12, 0x1d

    goto :goto_ad

    .line 1082
    :cond_93
    const-wide/16 v14, 0x20

    cmp-long v6, v12, v14

    if-nez v6, :cond_9f

    .line 1083
    const v6, 0x1040725

    .line 1084
    const/16 v12, 0x2f

    goto :goto_ad

    .line 1085
    :cond_9f
    const-wide/16 v14, 0x2

    cmp-long v6, v12, v14

    if-nez v6, :cond_ab

    .line 1086
    const v6, 0x1040714

    .line 1087
    const/16 v12, 0x1e

    goto :goto_ad

    .line 1085
    :cond_ab
    move v6, v4

    move v12, v6

    .line 1089
    :goto_ad
    iget-boolean v13, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v13, :cond_bf

    .line 1090
    if-eqz v6, :cond_bc

    .line 1091
    const v5, 0x1040722

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move v8, v12

    goto :goto_e0

    .line 1094
    :cond_bc
    nop

    .line 1095
    move v6, v9

    goto :goto_e0

    .line 1097
    :cond_bf
    if-nez v6, :cond_c5

    .line 1098
    nop

    .line 1099
    move v6, v7

    move v8, v10

    goto :goto_e0

    .line 1097
    :cond_c5
    move v8, v12

    goto :goto_e0

    .line 1101
    :cond_c7
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v6, :cond_ce

    .line 1102
    nop

    .line 1103
    move v6, v9

    goto :goto_e0

    .line 1104
    :cond_ce
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v6, :cond_de

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v6, :cond_de

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-eqz v6, :cond_de

    .line 1105
    nop

    .line 1106
    move v6, v7

    move v8, v10

    goto :goto_e0

    .line 1108
    :cond_de
    move v6, v4

    move v8, v6

    :goto_e0
    iget v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v8, v7, :cond_e6

    if-eqz p1, :cond_1d6

    .line 1110
    :cond_e6
    iget v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v7, :cond_fa

    .line 1111
    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v7, v12}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1113
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1117
    :cond_fa
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10d

    if-ne v8, v10, :cond_10d

    .line 1120
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1121
    return-void

    .line 1124
    :cond_10d
    if-eqz v8, :cond_1d6

    .line 1125
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1129
    const-string v7, "com.android.settings"

    if-eq v6, v11, :cond_136

    .line 1132
    new-instance v1, Landroid/content/ComponentName;

    const-string v9, "com.android.settings.Settings$UsbDetailsActivity"

    invoke-direct {v1, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 1135
    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1137
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 1138
    move-object/from16 v18, v5

    move-object v5, v1

    move-object/from16 v1, v18

    goto :goto_164

    .line 1139
    :cond_136
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1140
    const-string v9, "com.android.settings.HelpTrampoline"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const-string v7, "android.intent.extra.TEXT"

    const-string v9, "help_url_audio_accessory_not_supported"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    iget-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_15a

    .line 1146
    iget-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_15b

    .line 1148
    :cond_15a
    move-object v5, v3

    .line 1151
    :goto_15b
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 1152
    const v9, 0x1040726

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1157
    :goto_164
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x1080801

    .line 1158
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v9, 0x0

    .line 1159
    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1160
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1161
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1162
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    .line 1163
    invoke-virtual {v7, v10}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1166
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1167
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1168
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1169
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1171
    if-ne v6, v11, :cond_1b0

    .line 1174
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1175
    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 1174
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1177
    :cond_1b0
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1179
    iget-object v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v8, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1181
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "push notification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iput v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1185
    :cond_1d6
    return-void

    .line 1049
    :cond_1d7
    :goto_1d7
    return-void
.end method

.method protected updateUsbStateBroadcastIfNeeded(J)V
    .registers 8

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    const/high16 v1, 0x31000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 725
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v2, "host_connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 727
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v2, "configured"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    nop

    .line 729
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    .line 728
    :goto_34
    const-string/jumbo v3, "unlocked"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 731
    nop

    .line 732
    :goto_3b
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-eqz v1, :cond_53

    .line 733
    nop

    .line 734
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v3

    .line 733
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    goto :goto_3b

    .line 739
    :cond_53
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbStateChanged(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 743
    return-void

    .line 747
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 748
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 749
    return-void
.end method
