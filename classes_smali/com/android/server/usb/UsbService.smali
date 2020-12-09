.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 138
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 141
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 142
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 143
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 145
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 146
    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 147
    new-instance v0, Lcom/android/server/usb/UsbHostManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 149
    :cond_3d
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/android_usb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 150
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 152
    :cond_55
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_64

    .line 153
    :cond_5d
    new-instance v0, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 156
    :cond_64
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 158
    new-instance p1, Lcom/android/server/usb/UsbService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 173
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object p0
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object p1

    return-object p1
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    .line 207
    return-void
.end method

.method private onSwitchUser(I)V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 189
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 190
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_18

    .line 192
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 194
    :cond_18
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_21

    .line 195
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 197
    :cond_21
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 838
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bootCompleted()V
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_7

    .line 225
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 227
    :cond_7
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .registers 6

    .line 450
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    .line 460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    nop

    .line 462
    return-void

    .line 460
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "  dumpsys usb add-port \"matrix\" dual"

    const-string v4, "?"

    const-string v5, "  dumpsys usb reset"

    iget-object v6, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v7, "UsbService"

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v6

    if-nez v6, :cond_17

    return-void

    .line 593
    :cond_17
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v15, "  "

    invoke-direct {v6, v1, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 596
    :try_start_22
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 597
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 599
    nop

    .line 600
    const-string v7, "--proto"

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_37

    .line 601
    move v1, v8

    goto :goto_38

    .line 600
    :cond_37
    move v1, v7

    .line 604
    :goto_38
    if-eqz v2, :cond_4d9

    array-length v9, v2

    if-eqz v9, :cond_4d9

    aget-object v9, v2, v7

    const-string v10, "-a"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d9

    if-eqz v1, :cond_4c

    move-object v4, v15

    goto/16 :goto_4da

    .line 628
    :cond_4c
    const-string/jumbo v1, "set-port-roles"

    aget-object v9, v2, v7

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_54b

    const-string/jumbo v9, "source"

    const/4 v12, 0x4

    const-wide/16 v10, 0x0

    const-string v14, ""

    const/4 v13, 0x3

    const/4 v7, 0x2

    if-eqz v1, :cond_13d

    :try_start_61
    array-length v1, v2

    if-ne v1, v12, :cond_13d

    .line 629
    aget-object v1, v2, v8

    .line 631
    aget-object v3, v2, v7

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x356f97e5  # -4731917.5f

    if-eq v4, v5, :cond_92

    const v5, -0x1a426a07

    if-eq v4, v5, :cond_87

    const v5, 0x35de93

    if-eq v4, v5, :cond_7c

    :cond_7b
    goto :goto_9a

    :cond_7c
    const-string/jumbo v4, "sink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    move v3, v8

    goto :goto_9b

    :cond_87
    const-string/jumbo v4, "no-power"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    move v3, v7

    goto :goto_9b

    :cond_92
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const/4 v3, 0x0

    goto :goto_9b

    :goto_9a
    const/4 v3, -0x1

    :goto_9b
    if-eqz v3, :cond_c1

    if-eq v3, v8, :cond_be

    if-eq v3, v7, :cond_bb

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid power role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_61 .. :try_end_b7} :catchall_54b

    .line 833
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 643
    return-void

    .line 639
    :cond_bb
    nop

    .line 640
    const/4 v3, 0x0

    goto :goto_c3

    .line 636
    :cond_be
    nop

    .line 637
    move v3, v7

    goto :goto_c3

    .line 633
    :cond_c1
    nop

    .line 634
    move v3, v8

    .line 646
    :goto_c3
    :try_start_c3
    aget-object v4, v2, v13

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v9, -0x4f94e1aa

    if-eq v5, v9, :cond_ee

    const v9, 0x30f5a8

    if-eq v5, v9, :cond_e4

    const v9, 0x7b007436

    if-eq v5, v9, :cond_d9

    :cond_d8
    goto :goto_f8

    :cond_d9
    const-string/jumbo v5, "no-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    move v4, v7

    goto :goto_f9

    :cond_e4
    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    const/4 v4, 0x0

    goto :goto_f9

    :cond_ee
    const-string v5, "device"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    move v4, v8

    goto :goto_f9

    :goto_f8
    const/4 v4, -0x1

    :goto_f9
    if-eqz v4, :cond_11e

    if-eq v4, v8, :cond_11c

    if-eq v4, v7, :cond_119

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid data role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_c3 .. :try_end_115} :catchall_54b

    .line 833
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 658
    return-void

    .line 654
    :cond_119
    nop

    .line 655
    const/4 v7, 0x0

    goto :goto_120

    .line 651
    :cond_11c
    nop

    .line 652
    goto :goto_120

    .line 648
    :cond_11e
    nop

    .line 649
    move v7, v8

    .line 660
    :goto_120
    :try_start_120
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_13b

    .line 661
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v1, v3, v7, v6}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 667
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 668
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v6, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v14, v10, v11}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 671
    :cond_13b
    goto/16 :goto_546

    :cond_13d
    const-string v1, "add-port"

    const/16 v18, 0x0

    aget-object v12, v2, v18

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    array-length v1, v2

    if-ne v1, v13, :cond_1cc

    .line 672
    aget-object v1, v2, v8

    .line 674
    aget-object v3, v2, v7

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_550

    :cond_157
    goto :goto_182

    :sswitch_158
    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    move v3, v13

    goto :goto_183

    :sswitch_163
    const-string v4, "dual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    move v3, v7

    goto :goto_183

    :sswitch_16d
    const-string/jumbo v4, "ufp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    const/4 v3, 0x0

    goto :goto_183

    :sswitch_178
    const-string v4, "dfp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    move v3, v8

    goto :goto_183

    :goto_182
    const/4 v3, -0x1

    :goto_183
    if-eqz v3, :cond_1ad

    if-eq v3, v8, :cond_1aa

    if-eq v3, v7, :cond_1a8

    if-eq v3, v13, :cond_1a5

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a1
    .catchall {:try_start_120 .. :try_end_1a1} :catchall_54b

    .line 833
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    return-void

    .line 685
    :cond_1a5
    nop

    .line 686
    const/4 v13, 0x0

    goto :goto_1af

    .line 682
    :cond_1a8
    nop

    .line 683
    goto :goto_1af

    .line 679
    :cond_1aa
    nop

    .line 680
    move v13, v7

    goto :goto_1af

    .line 676
    :cond_1ad
    nop

    .line 677
    move v13, v8

    .line 691
    :goto_1af
    :try_start_1af
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_1ca

    .line 692
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v1, v13, v6}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 693
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 694
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v6, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v14, v10, v11}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 697
    :cond_1ca
    goto/16 :goto_546

    :cond_1cc
    const-string v1, "connect-port"

    const/4 v12, 0x0

    aget-object v10, v2, v12

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30e

    array-length v1, v2

    const/4 v10, 0x5

    if-ne v1, v10, :cond_30e

    .line 698
    aget-object v1, v2, v8

    .line 700
    aget-object v3, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    .line 701
    if-eqz v10, :cond_1ec

    aget-object v3, v2, v7

    invoke-static {v3}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1ee

    :cond_1ec
    aget-object v3, v2, v7

    :goto_1ee
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v11, 0x1842e

    if-eq v5, v11, :cond_208

    const v11, 0x1c3ff

    if-eq v5, v11, :cond_1fd

    :cond_1fc
    goto :goto_212

    :cond_1fd
    const-string/jumbo v5, "ufp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    const/4 v3, 0x0

    goto :goto_213

    :cond_208
    const-string v5, "dfp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    move v3, v8

    goto :goto_213

    :goto_212
    const/4 v3, -0x1

    :goto_213
    if-eqz v3, :cond_234

    if-eq v3, v8, :cond_231

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_22d
    .catchall {:try_start_1af .. :try_end_22d} :catchall_54b

    .line 833
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    return-void

    .line 706
    :cond_231
    nop

    .line 707
    move v3, v7

    goto :goto_236

    .line 703
    :cond_234
    nop

    .line 704
    move v3, v8

    .line 713
    :goto_236
    :try_start_236
    aget-object v5, v2, v13

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    .line 714
    if-eqz v12, :cond_245

    aget-object v5, v2, v13

    invoke-static {v5}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_247

    :cond_245
    aget-object v5, v2, v13

    :goto_247
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v7, -0x356f97e5  # -4731917.5f

    if-eq v11, v7, :cond_261

    const v7, 0x35de93

    if-eq v11, v7, :cond_256

    :cond_255
    goto :goto_269

    :cond_256
    const-string/jumbo v7, "sink"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_255

    move v5, v8

    goto :goto_26a

    :cond_261
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_255

    const/4 v5, 0x0

    goto :goto_26a

    :goto_269
    const/4 v5, -0x1

    :goto_26a
    if-eqz v5, :cond_28b

    if-eq v5, v8, :cond_288

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid power role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_284
    .catchall {:try_start_236 .. :try_end_284} :catchall_54b

    .line 833
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    return-void

    .line 719
    :cond_288
    nop

    .line 720
    const/4 v11, 0x2

    goto :goto_28d

    .line 716
    :cond_28b
    nop

    .line 717
    move v11, v8

    .line 726
    :goto_28d
    const/4 v5, 0x4

    :try_start_28e
    aget-object v7, v2, v5

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 727
    if-eqz v4, :cond_29d

    aget-object v7, v2, v5

    invoke-static {v7}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2a1

    :cond_29d
    const/4 v5, 0x4

    aget-object v7, v2, v5

    move-object v5, v7

    :goto_2a1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, -0x4f94e1aa

    if-eq v7, v9, :cond_2ba

    const v9, 0x30f5a8

    if-eq v7, v9, :cond_2b0

    :cond_2af
    goto :goto_2c4

    :cond_2b0
    const-string v7, "host"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2af

    const/4 v5, 0x0

    goto :goto_2c5

    :cond_2ba
    const-string v7, "device"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2af

    move v5, v8

    goto :goto_2c5

    :goto_2c4
    const/4 v5, -0x1

    :goto_2c5
    if-eqz v5, :cond_2e7

    if-eq v5, v8, :cond_2e4

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid data role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2e0
    .catchall {:try_start_28e .. :try_end_2e0} :catchall_54b

    .line 833
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    return-void

    .line 732
    :cond_2e4
    nop

    .line 733
    const/4 v13, 0x2

    goto :goto_2e9

    .line 729
    :cond_2e7
    nop

    .line 730
    move v13, v8

    .line 738
    :goto_2e9
    :try_start_2e9
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_30c

    .line 739
    iget-object v7, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    move-object v8, v1

    move v9, v3

    const-wide/16 v1, 0x0

    move-object v3, v14

    move v14, v4

    move-object v4, v15

    move-object v15, v6

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 741
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 742
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v7, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v5, v3, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 745
    :cond_30c
    goto/16 :goto_546

    .line 697
    :cond_30e
    move-object v1, v14

    move-object v4, v15

    const-wide/16 v9, 0x0

    .line 745
    const-string v7, "disconnect-port"

    const/4 v11, 0x0

    aget-object v12, v2, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_340

    array-length v7, v2

    const/4 v11, 0x2

    if-ne v7, v11, :cond_340

    .line 746
    aget-object v2, v2, v8

    .line 747
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_33e

    .line 748
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 749
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 750
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v3, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v2, v1, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 753
    :cond_33e
    goto/16 :goto_546

    :cond_340
    const-string/jumbo v7, "remove-port"

    const/4 v11, 0x0

    aget-object v12, v2, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36f

    array-length v7, v2

    const/4 v11, 0x2

    if-ne v7, v11, :cond_36f

    .line 754
    aget-object v2, v2, v8

    .line 755
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_36d

    .line 756
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 757
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 758
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v3, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v2, v1, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 761
    :cond_36d
    goto/16 :goto_546

    :cond_36f
    const-string/jumbo v7, "reset"

    const/4 v11, 0x0

    aget-object v12, v2, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39b

    array-length v7, v2

    if-ne v7, v8, :cond_39b

    .line 762
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_546

    .line 763
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v6}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 764
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 765
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v3, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v2, v1, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_546

    .line 768
    :cond_39b
    const-string/jumbo v7, "set-contaminant-status"

    const/4 v11, 0x0

    aget-object v12, v2, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d8

    array-length v7, v2

    if-ne v7, v13, :cond_3d8

    .line 769
    aget-object v3, v2, v8

    .line 770
    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 771
    iget-object v5, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_3d6

    .line 772
    iget-object v5, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v3, v2, v6}, Lcom/android/server/usb/UsbPortManager;->simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 773
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 774
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v3, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v2, v1, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 777
    :cond_3d6
    goto/16 :goto_546

    :cond_3d8
    const-string/jumbo v7, "ports"

    const/4 v11, 0x0

    aget-object v12, v2, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3fc

    array-length v7, v2

    if-ne v7, v8, :cond_3fc

    .line 778
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_546

    .line 779
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v3, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v2, v1, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_546

    .line 782
    :cond_3fc
    const-string v1, "dump-descriptors"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40e

    .line 783
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_546

    .line 785
    :cond_40e
    const-string v0, "Dump current USB state or issue command:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 786
    const-string v0, "  ports"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 787
    const-string v0, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 788
    const-string v0, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 789
    const-string v0, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 790
    const-string v0, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 791
    const-string v0, "  disconnect-port <id>"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 792
    const-string v0, "  remove-port <id>"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 793
    const-string v0, "  reset"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 795
    const-string v0, "Example USB type C port role switch:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 796
    const-string v0, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 798
    const-string v0, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 801
    const-string v0, "  dumpsys usb ports"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 802
    const-string v0, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 803
    const-string v0, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 806
    const-string v0, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 808
    const-string v0, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 811
    const-string v0, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v6, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 813
    const-string v0, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 816
    const-string v0, "Example USB device-only port:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 817
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 821
    const-string v0, "Example simulate contaminant status:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 823
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" true"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 824
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" false"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 826
    const-string v0, "Example USB device descriptors:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const-string v0, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 828
    const-string v0, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 829
    const-string v0, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 830
    const-string v0, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_546

    .line 604
    :cond_4d9
    move-object v4, v15

    .line 606
    :goto_4da
    if-eqz v1, :cond_4e9

    .line 607
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_4f8

    .line 609
    :cond_4e9
    const-string v1, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v6, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 614
    :goto_4f8
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_508

    .line 615
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v3, "device_manager"

    const-wide v4, 0x10b00000001L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 617
    :cond_508
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_518

    .line 618
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string v3, "host_manager"

    const-wide v4, 0x10b00000002L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 620
    :cond_518
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_529

    .line 621
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string/jumbo v3, "port_manager"

    const-wide v4, 0x10b00000003L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 623
    :cond_529
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v3, "alsa_manager"

    const-wide v4, 0x10b00000004L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 625
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v2, "settings_manager"

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 627
    invoke-virtual {v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_545
    .catchall {:try_start_2e9 .. :try_end_545} :catchall_54b

    .line 628
    nop

    .line 833
    :cond_546
    :goto_546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    nop

    .line 835
    return-void

    .line 833
    :catchall_54b
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_data_550
    .sparse-switch
        0x1842e -> :sswitch_178
        0x1c3ff -> :sswitch_16d
        0x2f387c -> :sswitch_163
        0x33af38 -> :sswitch_158
    .end sparse-switch
.end method

.method public enableContaminantDetection(Ljava/lang/String;Z)V
    .registers 7

    .line 561
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 566
    :try_start_12
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_1b

    .line 567
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    .line 570
    :cond_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    nop

    .line 572
    return-void

    .line 570
    :catchall_20
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 314
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    .line 279
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    .line 281
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_7

    .line 240
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 242
    :cond_7
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 6

    .line 532
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 537
    :try_start_12
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 539
    :cond_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    return-object v1

    .line 539
    :catchall_20
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getPorts()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/ParcelableUsbPort;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 511
    :try_start_c
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_35

    if-nez v0, :cond_15

    .line 512
    nop

    .line 526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    return-object v1

    .line 514
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    .line 516
    array-length v1, v0

    .line 517
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 518
    const/4 v5, 0x0

    :goto_22
    if-ge v5, v1, :cond_30

    .line 519
    aget-object v6, v0, v5

    invoke-static {v6}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_35

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 522
    :cond_30
    nop

    .line 526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    return-object v4

    .line 526
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getScreenUnlockedFunctions()J
    .registers 4

    .line 500
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6

    .line 421
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 426
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    .line 428
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_1c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 6

    .line 408
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 413
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    .line 415
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_1c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 6

    .line 367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 368
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 372
    :try_start_c
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    .line 374
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    return p1

    .line 374
    :catchall_18
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 6

    .line 434
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 442
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    .line 444
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    return p1

    .line 444
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 8

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 355
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 359
    :try_start_10
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1c

    .line 361
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    return p1

    .line 361
    :catchall_1c
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 6

    .line 479
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_7

    .line 232
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    .line 234
    :cond_7
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 288
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_5c

    .line 289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 290
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 292
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v2

    .line 294
    :try_start_10
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_57

    .line 295
    :try_start_13
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v5, v1, v6}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 296
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v5, p1, v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_54

    .line 304
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 296
    return-object p1

    .line 299
    :cond_2c
    :try_start_2c
    const-string v0, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as user is not active."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_54

    .line 304
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 305
    goto :goto_5c

    .line 302
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw p1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 304
    :catchall_57
    move-exception p1

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw p1

    .line 308
    :cond_5c
    :goto_5c
    const/4 p1, 0x0

    return-object p1
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 14

    .line 247
    nop

    .line 249
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    .line 250
    if-eqz p1, :cond_63

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 252
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 253
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 255
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v8

    .line 257
    :try_start_18
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_5e

    .line 258
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 259
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    move-object v1, p1

    goto :goto_56

    .line 262
    :cond_33
    const-string p2, "UsbService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as user is not active."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_56
    monitor-exit v10
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_5b

    .line 267
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 268
    goto :goto_63

    .line 265
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit v10
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw p1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 267
    :catchall_5e
    move-exception p1

    invoke-static {v8, v9}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw p1

    .line 272
    :cond_63
    :goto_63
    return-object v1
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8

    .line 395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 396
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 400
    :try_start_c
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_18

    .line 402
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    nop

    .line 404
    return-void

    .line 402
    :catchall_18
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12

    .line 380
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 381
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 382
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 386
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1f

    .line 388
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    nop

    .line 390
    return-void

    .line 388
    :catchall_1f
    move-exception p1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 7

    .line 336
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 338
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 344
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    nop

    .line 349
    return-void

    .line 347
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 3

    .line 474
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    .line 475
    return-void
.end method

.method public setCurrentFunctions(J)V
    .registers 6

    .line 466
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 470
    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7

    .line 320
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 322
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 327
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    nop

    .line 332
    return-void

    .line 330
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .registers 8

    .line 545
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 547
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 551
    :try_start_15
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_1e

    .line 552
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 555
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    nop

    .line 557
    return-void

    .line 555
    :catchall_23
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6

    .line 491
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    .line 496
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 5

    .line 576
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_b
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 579
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_1c

    .line 580
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 586
    :cond_1c
    monitor-exit v0

    .line 587
    return-void

    .line 583
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only the current user can register a usb connection handler"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw p1
.end method

.method public systemReady()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 212
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_c

    .line 213
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_13

    .line 216
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 218
    :cond_13
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_1a

    .line 219
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 221
    :cond_1a
    return-void
.end method
