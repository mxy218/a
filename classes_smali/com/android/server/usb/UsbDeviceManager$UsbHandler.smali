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
.field private mAdbNotificationShown:Z

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

.field private mLastStatus:I

.field private mLiquidNotificationId:I

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingBootBroadcast:Z

.field private mScreenLocked:Z

.field protected mScreenUnlockedFunctions:J

.field private final mSecurityChangedReceiver:Landroid/content/BroadcastReceiver;

.field protected mSettings:Landroid/content/SharedPreferences;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mSinkPower:Z

.field private mSourcePower:Z

.field private mSupportsAllCombinations:Z

.field private mSystemReady:Z

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbCharging:Z

.field protected final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mUsbHandlerUsbDataUnlocked:Z

.field private mUsbNotificationId:I

.field protected mUseUsbNotification:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 22
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "deviceManager"  # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "alsaManager"  # Lcom/android/server/usb/UsbAlsaManager;
    .param p5, "settingsManager"  # Lcom/android/server/usb/UsbSettingsManager;

    .line 579
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbHandlerUsbDataUnlocked:Z

    .line 651
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    invoke-direct {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecurityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 580
    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 581
    move-object/from16 v3, p3

    iput-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 582
    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 583
    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 586
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    iput v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 587
    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 589
    iget-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    .line 590
    iget-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    const-wide/16 v7, 0x4

    const-string/jumbo v11, "yes"

    const-string v12, ""

    const-string/jumbo v13, "persist.sys.mtp.open.config"

    const-string/jumbo v14, "no"

    const/4 v15, 0x0

    if-nez v6, :cond_51

    .line 591
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Couldn\'t load shared preferences"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 594
    :cond_51
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbManager;->initQpstValue(Landroid/content/Context;)V

    .line 597
    iget-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v0, [Ljava/lang/Object;

    iget v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v15

    const-string/jumbo v0, "usb-screen-unlocked-config-%d"

    invoke-static {v9, v0, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-interface {v6, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "pref":Ljava/lang/String;
    sget-object v6, Landroid/hardware/usb/UsbManager;->USB_FUNCTION_QPST_MTP_ADB:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 601
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 602
    iput-wide v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    goto :goto_8d

    .line 604
    :cond_82
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    goto :goto_8d

    .line 607
    :cond_87
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 610
    :goto_8d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UsbHandler mScreenUnlockedFunctions = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v0  # "pref":Ljava/lang/String;
    :goto_a7
    sget-boolean v0, Landroid/os/BuildExt;->IS_CTA:Z

    if-nez v0, :cond_d9

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b5

    const/4 v0, 0x1

    goto :goto_da

    .line 617
    :cond_b5
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 618
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7, v15}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    const/4 v0, 0x1

    goto :goto_f9

    .line 619
    :cond_c6
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 620
    const/4 v0, 0x1

    const-wide/16 v6, 0x4

    invoke-virtual {v1, v6, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto :goto_f9

    .line 619
    :cond_d7
    const/4 v0, 0x1

    goto :goto_f9

    .line 614
    :cond_d9
    const/4 v0, 0x1

    .line 616
    :goto_da
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cta/telecom keeps current function "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "persist.sys.usb.config"

    invoke-virtual {v1, v8, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_f9
    iget-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v6

    .line 628
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    const/4 v7, 0x0

    if-eqz v6, :cond_107

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v8

    goto :goto_108

    :cond_107
    move-object v8, v7

    .line 630
    .local v8, "primary":Landroid/os/storage/StorageVolume;
    :goto_108
    if-eqz v8, :cond_112

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v9

    if-eqz v9, :cond_112

    move v9, v0

    goto :goto_113

    :cond_112
    move v9, v15

    .line 631
    .local v9, "massStorageSupported":Z
    :goto_113
    if-nez v9, :cond_125

    iget-object v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11100e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_125

    move v15, v0

    :cond_125
    iput-boolean v15, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    .line 638
    :try_start_127
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecurityChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v12, "meizu.intent.action.FINDPHONE_STATE_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v12, "android.permission.send.MEIZU_FINDPHONE_CHANGED"

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_138} :catch_139

    .line 646
    goto :goto_143

    .line 644
    :catch_139
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Error initializing UsbHandler"

    invoke-static {v7, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_143
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p1, "x1"  # Z

    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    return-void
.end method

.method private dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .registers 17
    .param p1, "dump"  # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"  # Ljava/lang/String;
    .param p3, "id"  # J
    .param p5, "functions"  # J

    .line 1550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_34

    .line 1551
    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    and-long/2addr v3, p5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2e

    .line 1552
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1553
    shl-long v8, v1, v0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    goto :goto_31

    .line 1555
    :cond_22
    shl-long/2addr v1, v0

    invoke-static {v1, v2}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_31

    .line 1551
    :cond_2e
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 1550
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_34
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 1559
    .end local v0  # "i":I
    return-void
.end method

.method private isTv()Z
    .registers 3

    .line 1508
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsbStateChanged(Landroid/content/Intent;)Z
    .registers 9
    .param p1, "intent"  # Landroid/content/Intent;

    .line 828
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 829
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_27

    .line 830
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 831
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 832
    return v2

    .line 834
    .end local v4  # "key":Ljava/lang/String;
    :cond_25
    goto :goto_12

    :cond_26
    goto :goto_54

    .line 836
    :cond_27
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 837
    return v2

    .line 839
    :cond_36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 840
    .restart local v4  # "key":Ljava/lang/String;
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 841
    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v5, v6, :cond_53

    .line 842
    return v2

    .line 844
    .end local v4  # "key":Ljava/lang/String;
    :cond_53
    goto :goto_3a

    .line 846
    :cond_54
    :goto_54
    return v3
.end method

.method private notifyAccessoryModeExit()V
    .registers 4

    .line 809
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 812
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_1f

    .line 813
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v1, :cond_1c

    .line 814
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V

    .line 816
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 818
    :cond_1f
    return-void
.end method

.method private setAdbEnabled(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 750
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdbEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string/jumbo v0, "persist.sys.usb.config"

    if-eqz p1, :cond_24

    .line 753
    const-string v1, "adb"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 755
    :cond_24
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :goto_29
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 759
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 760
    return-void
.end method

.method private setScreenUnlockedFunctions()V
    .registers 4

    .line 914
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 915
    return-void
.end method

.method private startFileTransferTipsActivity()V
    .registers 5

    .line 1611
    const-string/jumbo v0, "ro.vendor.customize.isp"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    const-string v1, "chinamobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1614
    .local v0, "isChinamobileVersion":Z
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    .line 1615
    const-string v3, "device_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    .line 1616
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_6f

    if-eqz v0, :cond_53

    .line 1617
    const-string/jumbo v1, "no"

    const-string/jumbo v2, "persist.sys.usb.activation"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    goto :goto_6f

    .line 1623
    :cond_53
    :try_start_53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "flyme.action.FILE_TRANSFER_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1626
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_69} :catch_6a

    .line 1629
    .end local v1  # "intent":Landroid/content/Intent;
    goto :goto_6e

    .line 1627
    :catch_6a
    move-exception v1

    .line 1628
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1631
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_6e
    return-void

    .line 1619
    :cond_6f
    :goto_6f
    return-void
.end method

.method private updateCurrentAccessory()V
    .registers 14

    .line 770
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    .line 772
    .local v0, "enteringAccessoryMode":Z
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v1, :cond_72

    if-eqz v0, :cond_72

    .line 774
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->getAccessoryStrings()[Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "accessoryStrings":[Ljava/lang/String;
    if-eqz v1, :cond_67

    .line 776
    new-instance v2, Lcom/android/server/usb/UsbSerialReader;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V

    .line 779
    .local v2, "serialReader":Lcom/android/server/usb/UsbSerialReader;
    new-instance v3, Landroid/hardware/usb/UsbAccessory;

    const/4 v4, 0x0

    aget-object v7, v1, v4

    const/4 v4, 0x1

    aget-object v8, v1, v4

    const/4 v4, 0x2

    aget-object v9, v1, v4

    const/4 v4, 0x3

    aget-object v10, v1, v4

    const/4 v4, 0x4

    aget-object v11, v1, v4

    move-object v6, v3

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 787
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 789
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entering USB accessory mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v3, :cond_66

    .line 792
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 794
    .end local v2  # "serialReader":Lcom/android/server/usb/UsbSerialReader;
    :cond_66
    goto :goto_71

    .line 795
    :cond_67
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nativeGetAccessoryStrings failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v1  # "accessoryStrings":[Ljava/lang/String;
    :goto_71
    goto :goto_81

    .line 798
    :cond_72
    if-nez v0, :cond_78

    .line 799
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto :goto_81

    .line 801
    :cond_78
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Debouncing accessory mode exit"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_81
    return-void
.end method

.method private updateMidiFunction()V
    .registers 8

    .line 890
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

    .line 891
    .local v0, "enabled":Z
    :goto_10
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eq v0, v3, :cond_4c

    .line 892
    if-eqz v0, :cond_4a

    .line 893
    const/4 v3, 0x0

    .line 895
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_17
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 896
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 897
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_30} :catch_33
    .catchall {:try_start_17 .. :try_end_30} :catchall_31

    .line 902
    goto :goto_40

    :catchall_31
    move-exception v1

    goto :goto_44

    .line 898
    :catch_33
    move-exception v4

    .line 899
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_34
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "could not open MIDI file"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_31

    .line 900
    const/4 v0, 0x0

    .line 902
    .end local v4  # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_4a

    .line 903
    :goto_40
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    goto :goto_4a

    .line 902
    :goto_44
    if-eqz v3, :cond_49

    .line 903
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_49
    throw v1

    .line 907
    .end local v3  # "scanner":Ljava/util/Scanner;
    :cond_4a
    :goto_4a
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 909
    :cond_4c
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v4, :cond_57

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v4, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    .line 911
    return-void
.end method

.method private updateUsbFunctions()V
    .registers 1

    .line 886
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    .line 887
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 17
    .param p1, "dump"  # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"  # Ljava/lang/String;
    .param p3, "id"  # J

    .line 1562
    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1564
    .local v10, "token":J
    iget-wide v6, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-string v3, "current_functions"

    const-wide v4, 0x20e00000001L

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1566
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    const-string v1, "current_functions_applied"

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1568
    iget-wide v6, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v3, "screen_unlocked_functions"

    const-wide v4, 0x20e00000003L

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1570
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-string/jumbo v1, "screen_locked"

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1571
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v1, "connected"

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1572
    iget-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v1, "configured"

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1573
    iget-object v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_62

    .line 1574
    const-wide v1, 0x10b00000007L

    const-string v3, "current_accessory"

    invoke-static {p1, v3, v1, v2, v0}, Lcom/android/internal/usb/DumpUtils;->writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V

    .line 1577
    :cond_62
    const-wide v0, 0x10800000008L

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v3, "host_connected"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1578
    const-wide v0, 0x10800000009L

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    const-string/jumbo v3, "source_power"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1579
    const-wide v0, 0x1080000000aL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    const-string/jumbo v3, "sink_power"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1580
    const-wide v0, 0x1080000000bL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    const-string/jumbo v3, "usb_charging"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1581
    const-wide v0, 0x1080000000cL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v3, "hide_usb_notification"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1583
    const-wide v0, 0x1080000000dL

    iget-boolean v2, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const-string v3, "audio_accessory_connected"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1587
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_af
    const-string/jumbo v0, "kernel_state"

    const-wide v3, 0x1090000000fL

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/state"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1588
    invoke-static {v5, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1587
    invoke-static {p1, v0, v3, v4, v5}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_c9} :catch_ca

    .line 1591
    goto :goto_d4

    .line 1589
    :catch_ca
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not read kernel state"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_d4
    :try_start_d4
    const-string/jumbo v0, "kernel_function_list"

    const-wide v3, 0x10900000010L

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/functions"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1596
    invoke-static {v5, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1594
    invoke-static {p1, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_ee} :catch_ef

    .line 1599
    goto :goto_f9

    .line 1597
    :catch_ef
    move-exception v0

    .line 1598
    .restart local v0  # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read kernel function list"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_f9
    invoke-virtual {p1, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1602
    return-void
.end method

.method protected finishBoot()V
    .registers 7

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v0, :cond_5a

    .line 1201
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1202
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1203
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1207
    :cond_1c
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1209
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "telecom keeps current function"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1211
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-wide/16 v2, 0x0

    if-nez v0, :cond_3f

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3f

    .line 1213
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_42

    .line 1215
    :cond_3f
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 1220
    :goto_42
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_51

    .line 1221
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1224
    :cond_51
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1225
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 1226
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 1228
    :cond_5a
    return-void
.end method

.method getAppliedFunctions(J)J
    .registers 5
    .param p1, "functions"  # J

    .line 935
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 936
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getChargingFunctions()J

    move-result-wide v0

    return-wide v0

    .line 938
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 939
    const-wide/16 v0, 0x1

    or-long/2addr v0, p1

    return-wide v0

    .line 941
    :cond_15
    return-wide p1
.end method

.method protected getChargingFunctions()J
    .registers 3

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1515
    const-wide/16 v0, 0x1

    return-wide v0

    .line 1518
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 1236
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public getEnabledFunctions()J
    .registers 3

    .line 1536
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    return-wide v0
.end method

.method protected getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 821
    new-instance v0, Ljava/io/File;

    .line 822
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "UsbDeviceManagerPrefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 823
    .local v0, "prefsFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 824
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 823
    return-object v1
.end method

.method public getScreenUnlockedFunctions()J
    .registers 3

    .line 1540
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    return-wide v0
.end method

.method protected getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prop"  # Ljava/lang/String;
    .param p2, "def"  # Ljava/lang/String;

    .line 1528
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"  # Landroid/os/Message;

    .line 946
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3ee

    const-string/jumbo v1, "usb-screen-unlocked-config-%d"

    const-wide/16 v2, 0x2

    const/4 v4, 0x4

    const-wide/16 v5, 0x4

    const-string/jumbo v7, "no"

    const-string/jumbo v8, "persist.sys.mtp.open.config"

    const-string/jumbo v9, "yes"

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_3f4

    goto/16 :goto_3f3

    .line 1108
    :pswitch_3a  #0xd
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v13, :cond_40

    move v0, v13

    goto :goto_41

    :cond_40
    move v0, v12

    :goto_41
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbHandlerUsbDataUnlocked:Z

    .line 1109
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsbHandlerUsbDataUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbHandlerUsbDataUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_64

    move v0, v13

    goto :goto_65

    :cond_64
    move v0, v12

    :goto_65
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v0, v1, :cond_8f

    .line 1112
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "break msg.arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenLocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    goto/16 :goto_3f3

    .line 1115
    :cond_8f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_94

    move v12, v13

    :cond_94
    iput-boolean v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1116
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez v0, :cond_9c

    .line 1117
    goto/16 :goto_3f3

    .line 1119
    :cond_9c
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz v0, :cond_a4

    .line 1120
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    goto/16 :goto_3f3

    .line 1124
    :cond_a4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenUnlockedFunctions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentFunctions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3f3

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3f3

    .line 1128
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_3f3

    .line 1093
    :pswitch_da  #0xc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1094
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_108

    .line 1095
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1096
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v13, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1097
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1096
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1098
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1099
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1101
    .end local v0  # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_108
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_3f3

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3f3

    .line 1103
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_3f3

    .line 1159
    :pswitch_117  #0xb
    invoke-virtual {p0, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 1160
    invoke-virtual {p0, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1161
    goto/16 :goto_3f3

    .line 1042
    :pswitch_11f  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    .line 1043
    .local v0, "devices":Ljava/util/Iterator;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v13, :cond_129

    move v1, v13

    goto :goto_12a

    :cond_129
    move v1, v12

    .line 1046
    .local v1, "connected":Z
    :goto_12a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOST_STATE connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iput-boolean v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 1050
    :goto_144
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 1051
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1053
    .local v2, "pair":Ljava/util/Map$Entry;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 1056
    .local v3, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v4

    sub-int/2addr v4, v13

    .line 1057
    .local v4, "configurationCount":I
    :goto_17e
    if-ltz v4, :cond_1aa

    .line 1058
    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v5

    .line 1059
    .local v5, "config":Landroid/hardware/usb/UsbConfiguration;
    add-int/lit8 v4, v4, -0x1

    .line 1060
    invoke-virtual {v5}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v6

    sub-int/2addr v6, v13

    .line 1061
    .local v6, "interfaceCount":I
    :goto_18b
    if-ltz v6, :cond_1a9

    .line 1062
    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    .line 1063
    .local v7, "intrface":Landroid/hardware/usb/UsbInterface;
    add-int/lit8 v6, v6, -0x1

    .line 1064
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$500()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a8

    .line 1065
    iput-boolean v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 1066
    goto :goto_1a9

    .line 1068
    .end local v7  # "intrface":Landroid/hardware/usb/UsbInterface;
    :cond_1a8
    goto :goto_18b

    .line 1069
    .end local v5  # "config":Landroid/hardware/usb/UsbConfiguration;
    .end local v6  # "interfaceCount":I
    :cond_1a9
    :goto_1a9
    goto :goto_17e

    .line 1070
    .end local v2  # "pair":Ljava/util/Map$Entry;
    .end local v3  # "device":Landroid/hardware/usb/UsbDevice;
    .end local v4  # "configurationCount":I
    :cond_1aa
    goto :goto_144

    .line 1072
    :cond_1ab
    if-eqz v1, :cond_3f3

    .line 1073
    invoke-virtual {p0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_3f3

    .line 1038
    .end local v0  # "devices":Ljava/util/Iterator;
    .end local v1  # "connected":Z
    :pswitch_1b2  #0x9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_1b7

    goto :goto_1b8

    :cond_1b7
    move v13, v12

    :goto_1b8
    iput-boolean v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 1039
    invoke-virtual {p0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1040
    goto/16 :goto_3f3

    .line 1185
    :pswitch_1bf  #0x8
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accessory mode enter timeout: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_1e4

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-nez v0, :cond_3f3

    .line 1188
    :cond_1e4
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto/16 :goto_3f3

    .line 1008
    :pswitch_1e9  #0x7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1009
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1010
    .local v1, "prevHostConnected":Z
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/usb/UsbPort;

    .line 1011
    .local v2, "port":Landroid/hardware/usb/UsbPort;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/usb/UsbPortStatus;

    .line 1012
    .local v3, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    if-ne v5, v13, :cond_1ff

    move v5, v13

    goto :goto_200

    :cond_1ff
    move v5, v12

    :goto_200
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1013
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    if-ne v5, v13, :cond_20a

    move v5, v13

    goto :goto_20b

    :cond_20a
    move v5, v12

    :goto_20b
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 1014
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_216

    move v5, v13

    goto :goto_217

    :cond_216
    move v5, v12

    :goto_217
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 1015
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v5

    if-ne v5, v4, :cond_221

    move v5, v13

    goto :goto_222

    :cond_221
    move v5, v12

    :goto_222
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 1016
    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 1020
    invoke-virtual {v3, v13, v13}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_244

    .line 1022
    invoke-virtual {v3, v6, v13}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_244

    .line 1023
    invoke-virtual {v3, v13, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_244

    .line 1025
    invoke-virtual {v3, v6, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_244

    move v4, v13

    goto :goto_245

    :cond_244
    move v4, v12

    :goto_245
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 1027
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1028
    invoke-virtual {p0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1029
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v4, :cond_262

    .line 1030
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez v4, :cond_257

    if-eqz v1, :cond_3f3

    .line 1031
    :cond_257
    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    goto/16 :goto_3f3

    .line 1034
    :cond_262
    iput-boolean v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1036
    goto/16 :goto_3f3

    .line 1134
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "prevHostConnected":Z
    .end local v2  # "port":Landroid/hardware/usb/UsbPort;
    .end local v3  # "status":Landroid/hardware/usb/UsbPortStatus;
    :pswitch_266  #0x6
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v0

    if-eqz v0, :cond_3f3

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v0

    if-nez v0, :cond_3f3

    .line 1135
    invoke-virtual {p0, v10, v11, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_3f3

    .line 1167
    :pswitch_279  #0x5
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_3f3

    .line 1169
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current user switched to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1172
    iput-boolean v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1173
    iput-wide v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1174
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2c1

    .line 1175
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v13, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1177
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1176
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1179
    :cond_2c1
    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_3f3

    .line 1163
    :pswitch_2c6  #0x4
    iput-boolean v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    .line 1165
    goto/16 :goto_3f3

    .line 1139
    :pswitch_2cd  #0x3
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1140
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1142
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 1143
    invoke-virtual {v0, v1}, Landroid/debug/AdbManagerInternal;->registerTransport(Landroid/debug/IAdbTransport;)V

    .line 1146
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isTv()Z

    move-result v0

    if-eqz v0, :cond_306

    .line 1148
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v3, 0x1040066

    .line 1150
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usbdevicemanager.adb.tv"

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1148
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1155
    :cond_306
    iput-boolean v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    .line 1157
    goto/16 :goto_3f3

    .line 1081
    :pswitch_30d  #0x2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1084
    .local v0, "functions":J
    cmp-long v2, v0, v10

    if-eqz v2, :cond_31d

    cmp-long v2, v0, v5

    if-nez v2, :cond_32c

    .line 1085
    :cond_31d
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32c

    .line 1086
    invoke-virtual {p0, v0, v1, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_3f3

    .line 1088
    :cond_32c
    invoke-virtual {p0, v0, v1, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 1091
    goto/16 :goto_3f3

    .line 1078
    .end local v0  # "functions":J
    :pswitch_331  #0x1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_336

    move v12, v13

    :cond_336
    invoke-direct {p0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    .line 1079
    goto/16 :goto_3f3

    .line 951
    :pswitch_33b  #0x0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_346

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_346

    .line 952
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->startFileTransferTipsActivity()V

    .line 956
    :cond_346
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_34c

    move v0, v13

    goto :goto_34d

    :cond_34c
    move v0, v12

    :goto_34d
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 957
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v13, :cond_355

    move v0, v13

    goto :goto_356

    :cond_355
    move v0, v12

    :goto_356
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 959
    invoke-virtual {p0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 960
    invoke-virtual {p0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 961
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_36b

    .line 962
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 964
    :cond_36b
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-eqz v0, :cond_375

    .line 965
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 967
    :cond_375
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_3eb

    .line 969
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_3de

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3de

    const/16 v0, 0x11

    .line 970
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3de

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    .line 971
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3de

    .line 973
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_3cd

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3cd

    .line 976
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b6

    .line 977
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ICEBUERG] Disconnected to reset default to mtp"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {p0, v5, v6, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto :goto_3de

    .line 981
    :cond_3b6
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c9

    .line 982
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected to reset default to charging only"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iput-wide v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 986
    :cond_3c9
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_3de

    .line 991
    :cond_3cd
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3db

    .line 992
    invoke-virtual {p0, v5, v6, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto :goto_3de

    .line 994
    :cond_3db
    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 1000
    :cond_3de
    :goto_3de
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1002
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_3f3

    .line 1004
    :cond_3eb
    iput-boolean v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1006
    goto :goto_3f3

    .line 1193
    :cond_3ee
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateLiquidNotification(I)V

    .line 1197
    :cond_3f3
    :goto_3f3
    return-void

    :pswitch_data_3f4
    .packed-switch 0x0
        :pswitch_33b  #00000000
        :pswitch_331  #00000001
        :pswitch_30d  #00000002
        :pswitch_2cd  #00000003
        :pswitch_2c6  #00000004
        :pswitch_279  #00000005
        :pswitch_266  #00000006
        :pswitch_1e9  #00000007
        :pswitch_1bf  #00000008
        :pswitch_1b2  #00000009
        :pswitch_11f  #0000000a
        :pswitch_117  #0000000b
        :pswitch_da  #0000000c
        :pswitch_3a  #0000000d
    .end packed-switch
.end method

.method protected isAdbEnabled()Z
    .registers 3

    .line 1404
    nop

    .line 1405
    const-string/jumbo v0, "persist.sys.usb.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    const-string v1, "adb"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isUsbDataTransferActive(J)Z
    .registers 7
    .param p1, "functions"  # J

    .line 1231
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method protected isUsbTransferAllowed()Z
    .registers 3

    .line 763
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 764
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method protected putGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4
    .param p1, "contentResolver"  # Landroid/content/ContentResolver;
    .param p2, "setting"  # Ljava/lang/String;
    .param p3, "val"  # I

    .line 1532
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1533
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"  # I
    .param p2, "arg"  # Ljava/lang/Object;

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 681
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 682
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 683
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .registers 5
    .param p1, "what"  # I
    .param p2, "arg"  # Ljava/lang/Object;
    .param p3, "arg1"  # Z

    .line 687
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 688
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 689
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 690
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 692
    return-void
.end method

.method public sendMessage(IZ)V
    .registers 4
    .param p1, "what"  # I
    .param p2, "arg"  # Z

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 674
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 675
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 676
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    return-void
.end method

.method public sendMessage(IZZ)V
    .registers 5
    .param p1, "what"  # I
    .param p2, "arg1"  # Z
    .param p3, "arg2"  # Z

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 696
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 698
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    return-void
.end method

.method public sendMessageDelayed(IZJ)V
    .registers 6
    .param p1, "what"  # I
    .param p2, "arg"  # Z
    .param p3, "delayMillis"  # J

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 704
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 705
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 706
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 707
    return-void
.end method

.method protected sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;

    .line 882
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 883
    return-void
.end method

.method protected abstract setEnabledFunctions(JZ)V
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "prop"  # Ljava/lang/String;
    .param p2, "val"  # Ljava/lang/String;

    .line 1523
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemProperty("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method protected updateAdbNotification(Z)V
    .registers 19
    .param p1, "force"  # Z

    .line 1411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_7

    return-void

    .line 1412
    :cond_7
    const/16 v1, 0x1a

    .line 1413
    .local v1, "id":I
    const v2, 0x1040065

    .line 1415
    .local v2, "titleRes":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v3

    const v4, 0x1040065

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_ee

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v3, :cond_ee

    .line 1416
    const-string/jumbo v3, "persist.adb.notify"

    const-string v8, ""

    invoke-virtual {v0, v3, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "0"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-void

    .line 1418
    :cond_2f
    if-eqz p1, :cond_3e

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz v3, :cond_3e

    .line 1419
    iput-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1420
    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v5, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1423
    :cond_3e
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-nez v3, :cond_11e

    .line 1424
    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1425
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1426
    .local v4, "title":Ljava/lang/CharSequence;
    const v8, 0x1040064

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1429
    .local v8, "message":Ljava/lang/CharSequence;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v9, "intent":Landroid/content/Intent;
    const v10, 0x10008000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1432
    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v13, v9

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1435
    .local v10, "pi":Landroid/app/PendingIntent;
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0xa080291

    .line 1437
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 1438
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1439
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1440
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1441
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1442
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v13, 0x106001c

    .line 1443
    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1446
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1447
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1448
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1449
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v11, Landroid/app/Notification$TvExtender;

    invoke-direct {v11}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 1451
    const-string/jumbo v13, "usbdevicemanager.adb.tv"

    invoke-virtual {v11, v13}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v11

    .line 1450
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1452
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 1453
    .local v7, "notification":Landroid/app/Notification;
    iget-object v11, v7, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    const v13, 0xa0802c3

    iput v13, v11, Landroid/app/NotificationExt;->notificationIcon:I

    .line 1454
    iput-boolean v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1455
    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v5, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1457
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAdbNotification - show "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .end local v3  # "r":Landroid/content/res/Resources;
    .end local v4  # "title":Ljava/lang/CharSequence;
    .end local v7  # "notification":Landroid/app/Notification;
    .end local v8  # "message":Ljava/lang/CharSequence;
    .end local v9  # "intent":Landroid/content/Intent;
    .end local v10  # "pi":Landroid/app/PendingIntent;
    goto :goto_11e

    .line 1459
    :cond_ee
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz v3, :cond_11e

    .line 1460
    iput-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1461
    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v5, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1462
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAdbNotification - cancel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_11e
    :goto_11e
    return-void
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .registers 7
    .param p1, "port"  # Landroid/hardware/usb/UsbPort;
    .param p2, "status"  # Landroid/hardware/usb/UsbPortStatus;

    .line 736
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHostState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 740
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 741
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 743
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 744
    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 746
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 747
    return-void
.end method

.method protected updateLiquidNotification(I)V
    .registers 15
    .param p1, "currentStatus"  # I

    .line 1468
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mLastStatus:I

    if-ne v0, p1, :cond_5

    .line 1469
    return-void

    .line 1471
    :cond_5
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mLastStatus:I

    .line 1472
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mLiquidNotificationId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 1473
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v0, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1475
    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mLiquidNotificationId:I

    .line 1476
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear liquid notification, currentStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    return-void

    .line 1480
    :cond_2f
    const/16 v0, 0x3c

    .line 1481
    .local v0, "id":I
    const v3, 0x1040718

    .line 1482
    .local v3, "titleRes":I
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1483
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x1040717

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1484
    .local v5, "message":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1485
    .local v6, "title":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 1486
    .local v7, "pi":Landroid/app/PendingIntent;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 1487
    .local v8, "channel":Ljava/lang/String;
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    .line 1488
    .local v9, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0xa080293

    .line 1489
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v11, 0x0

    .line 1490
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1491
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 1492
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1493
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1494
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v10, 0x1

    .line 1495
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1497
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1498
    .local v10, "notification":Landroid/app/Notification;
    const v11, 0x4000002

    iput v11, v10, Landroid/app/Notification;->flags:I

    .line 1499
    iget-object v11, v10, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    const v12, 0xa0802c6

    iput v12, v11, Landroid/app/NotificationExt;->notificationIcon:I

    .line 1501
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v0, v10, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1502
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "push liquid notification:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mLiquidNotificationId:I

    .line 1505
    return-void
.end method

.method public updateState(Ljava/lang/String;)V
    .registers 7
    .param p1, "state"  # Ljava/lang/String;

    .line 712
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "connected":I
    const/4 v1, 0x0

    .local v1, "configured":I
    goto :goto_20

    .line 715
    .end local v0  # "connected":I
    .end local v1  # "configured":I
    :cond_b
    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 716
    const/4 v0, 0x1

    .line 717
    .restart local v0  # "connected":I
    const/4 v1, 0x0

    .restart local v1  # "configured":I
    goto :goto_20

    .line 718
    .end local v0  # "connected":I
    .end local v1  # "configured":I
    :cond_16
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 719
    const/4 v0, 0x1

    .line 720
    .restart local v0  # "connected":I
    const/4 v1, 0x1

    .line 725
    .restart local v1  # "configured":I
    :goto_20
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 726
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2c

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 727
    :cond_2c
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 728
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 729
    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 731
    if-nez v0, :cond_39

    const-wide/16 v3, 0x3e8

    goto :goto_3b

    :cond_39
    const-wide/16 v3, 0x0

    :goto_3b
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 732
    return-void

    .line 722
    .end local v0  # "connected":I
    .end local v1  # "configured":I
    .end local v2  # "msg":Landroid/os/Message;
    :cond_3f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method protected updateUsbNotification(Z)V
    .registers 20
    .param p1, "force"  # Z

    .line 1240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_2a5

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v1, :cond_2a5

    .line 1241
    const-string/jumbo v1, "persist.charging.notify"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto/16 :goto_2a5

    .line 1247
    :cond_1d
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v2, "Clear notification"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3e

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v1, :cond_3e

    .line 1248
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_3d

    .line 1249
    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1251
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1252
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_3d
    return-void

    .line 1259
    :cond_3e
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbNotification - mConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbNotification - mCurrentFunctions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbNotification - mSourcePower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbNotification - mHostConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbNotification - mSinkPower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbNotification - mUsbCharging: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v1, 0x0

    .line 1269
    .local v1, "id":I
    const/4 v5, 0x0

    .line 1270
    .local v5, "titleRes":I
    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1271
    .local v6, "r":Landroid/content/res/Resources;
    const v7, 0x1040720

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1273
    .local v7, "message":Ljava/lang/CharSequence;
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    if-eqz v8, :cond_fe

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v8, :cond_fe

    .line 1274
    const v5, 0x1040726

    .line 1275
    const/16 v1, 0x29

    goto/16 :goto_17d

    .line 1276
    :cond_fe
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v8, :cond_167

    .line 1277
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x4

    cmp-long v10, v8, v10

    if-nez v10, :cond_110

    .line 1278
    const v5, 0x104071f

    .line 1279
    const/16 v1, 0x1b

    goto :goto_14b

    .line 1280
    :cond_110
    const-wide/16 v10, 0x10

    cmp-long v10, v8, v10

    if-nez v10, :cond_11c

    .line 1281
    const v5, 0x1040722

    .line 1282
    const/16 v1, 0x1c

    goto :goto_14b

    .line 1283
    :cond_11c
    const-wide/16 v10, 0x8

    cmp-long v10, v8, v10

    if-nez v10, :cond_128

    .line 1284
    const v5, 0x1040719

    .line 1285
    const/16 v1, 0x1d

    goto :goto_14b

    .line 1286
    :cond_128
    const-wide/16 v10, 0x20

    cmp-long v10, v8, v10

    if-nez v10, :cond_134

    .line 1287
    const v5, 0x1040724

    .line 1288
    const/16 v1, 0x2f

    goto :goto_14b

    .line 1289
    :cond_134
    const-wide/16 v10, 0x2

    cmp-long v10, v8, v10

    if-nez v10, :cond_140

    .line 1290
    const v5, 0x1040711

    .line 1291
    const/16 v1, 0x1e

    goto :goto_14b

    .line 1293
    :cond_140
    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-nez v8, :cond_14b

    .line 1294
    const v5, 0xa1001aa

    .line 1295
    const/16 v1, 0x37

    .line 1298
    :cond_14b
    :goto_14b
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v8, :cond_15f

    .line 1299
    if-eqz v5, :cond_159

    .line 1300
    const v8, 0x1040721

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_17d

    .line 1303
    :cond_159
    const v5, 0x1040723

    .line 1304
    const/16 v1, 0x1f

    goto :goto_17d

    .line 1306
    :cond_15f
    if-nez v5, :cond_17d

    .line 1307
    const v5, 0xa1001ab

    .line 1308
    const/16 v1, 0x20

    goto :goto_17d

    .line 1310
    :cond_167
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v8, :cond_16c

    goto :goto_17d

    .line 1315
    :cond_16c
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v8, :cond_17d

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v8, :cond_17d

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-eqz v8, :cond_17d

    .line 1316
    const v5, 0xa1001ab

    .line 1317
    const/16 v1, 0x20

    .line 1319
    :cond_17d
    :goto_17d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUsbNotification - id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mUsbNotificationId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v1, v8, :cond_1a6

    if-eqz p1, :cond_2a4

    .line 1322
    :cond_1a6
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v8, :cond_1ba

    .line 1323
    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v8, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1325
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1329
    :cond_1ba
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1cf

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1cf

    .line 1332
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1333
    return-void

    .line 1336
    :cond_1cf
    if-eqz v1, :cond_2a4

    .line 1337
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1341
    .local v2, "title":Ljava/lang/CharSequence;
    const-string v8, "com.android.settings"

    const v9, 0x1040726

    if-eq v5, v9, :cond_1f7

    .line 1344
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.settings.Settings$UsbDetailsActivity"

    invoke-direct {v10, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 1347
    .local v8, "intent":Landroid/content/Intent;
    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v14, v8

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1349
    .local v10, "pi":Landroid/app/PendingIntent;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 1350
    .local v8, "channel":Ljava/lang/String;
    goto :goto_227

    .line 1351
    .end local v8  # "channel":Ljava/lang/String;
    .end local v10  # "pi":Landroid/app/PendingIntent;
    :cond_1f7
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1352
    .local v10, "intent":Landroid/content/Intent;
    const-string v11, "com.android.settings.HelpTrampoline"

    invoke-virtual {v10, v8, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v8, "android.intent.extra.TEXT"

    const-string v11, "help_url_audio_accessory_not_supported"

    invoke-virtual {v10, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v10, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_21b

    .line 1358
    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .local v8, "pi":Landroid/app/PendingIntent;
    goto :goto_21c

    .line 1360
    .end local v8  # "pi":Landroid/app/PendingIntent;
    :cond_21b
    const/4 v8, 0x0

    .line 1363
    .restart local v8  # "pi":Landroid/app/PendingIntent;
    :goto_21c
    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 1364
    .local v11, "channel":Ljava/lang/String;
    const v12, 0x1040725

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v10, v8

    move-object v8, v11

    .line 1369
    .end local v11  # "channel":Ljava/lang/String;
    .local v8, "channel":Ljava/lang/String;
    .local v10, "pi":Landroid/app/PendingIntent;
    :goto_227
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0xa080293

    .line 1370
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 1371
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1372
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1373
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1374
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1375
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v13, 0x106001c

    .line 1376
    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1379
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1380
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1381
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1382
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1384
    .local v4, "builder":Landroid/app/Notification$Builder;
    if-ne v5, v9, :cond_277

    .line 1387
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1388
    invoke-virtual {v9, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    .line 1387
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1390
    :cond_277
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1391
    .local v9, "notification":Landroid/app/Notification;
    iget-object v11, v9, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    const v12, 0xa0802c6

    iput v12, v11, Landroid/app/NotificationExt;->notificationIcon:I

    .line 1393
    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v1, v9, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1395
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "push notification:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iput v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1399
    .end local v2  # "title":Ljava/lang/CharSequence;
    .end local v4  # "builder":Landroid/app/Notification$Builder;
    .end local v8  # "channel":Ljava/lang/String;
    .end local v9  # "notification":Landroid/app/Notification;
    .end local v10  # "pi":Landroid/app/PendingIntent;
    :cond_2a4
    return-void

    .line 1242
    .end local v1  # "id":I
    .end local v5  # "titleRes":I
    .end local v6  # "r":Landroid/content/res/Resources;
    .end local v7  # "message":Ljava/lang/CharSequence;
    :cond_2a5
    :goto_2a5
    return-void
.end method

.method protected updateUsbStateBroadcastIfNeeded(J)V
    .registers 10
    .param p1, "functions"  # J

    .line 851
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x31000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 856
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v2, "host_connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 857
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v2, "configured"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 858
    nop

    .line 859
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbHandlerUsbDataUnlocked:Z

    if-eqz v1, :cond_37

    move v1, v2

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    .line 858
    :goto_38
    const-string/jumbo v3, "unlocked"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 861
    move-wide v3, p1

    .line 862
    .local v3, "remainingFunctions":J
    :goto_3f
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_57

    .line 863
    nop

    .line 864
    invoke-static {v3, v4}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    .line 863
    invoke-static {v5, v6}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 865
    invoke-static {v3, v4}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_3f

    .line 869
    :cond_57
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbStateChanged(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, " extras: "

    if-nez v1, :cond_83

    .line 871
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void

    .line 876
    :cond_83
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 878
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 879
    return-void
.end method
