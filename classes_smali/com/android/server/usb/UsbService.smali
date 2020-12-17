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
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

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
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 147
    new-instance v1, Lcom/android/server/usb/UsbHostManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 149
    :cond_3d
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 150
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 152
    :cond_55
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_64

    .line 153
    :cond_5d
    new-instance v1, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 156
    :cond_64
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 158
    new-instance v1, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 171
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v2, "filter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 173
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbService;
    .param p1, "x1"  # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbService;
    .param p1, "x1"  # Landroid/os/UserHandle;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbService;

    .line 73
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .registers 3
    .param p1, "userIdInt"  # I

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "stoppedUser"  # Landroid/os/UserHandle;

    .line 206
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    .line 207
    return-void
.end method

.method private onSwitchUser(I)V
    .registers 5
    .param p1, "newUserId"  # I

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
    .local v1, "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
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
    .end local v1  # "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :cond_21
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"  # Ljava/lang/String;

    .line 835
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 447
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 453
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 455
    .local v1, "token":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 457
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    nop

    .line 459
    return-void

    .line 457
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 29
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 588
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "  dumpsys usb add-port \"matrix\" dual"

    const-string v4, "?"

    const-string v5, "  dumpsys usb reset"

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v7, "UsbService"

    invoke-static {v6, v7, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v6

    if-nez v6, :cond_17

    return-void

    .line 590
    :cond_17
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v6, v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 591
    .local v6, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 593
    .local v17, "ident":J
    :try_start_22
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v8

    .line 594
    .local v15, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v15, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 596
    const/4 v8, 0x0

    .line 597
    .local v8, "dumpAsProto":Z
    const-string v9, "--proto"

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_5a2

    if-eqz v9, :cond_38

    .line 598
    const/4 v8, 0x1

    move/from16 v19, v8

    goto :goto_3a

    .line 597
    :cond_38
    move/from16 v19, v8

    .line 601
    .end local v8  # "dumpAsProto":Z
    .local v19, "dumpAsProto":Z
    :goto_3a
    if-eqz v3, :cond_529

    :try_start_3c
    array-length v8, v3

    if-eqz v8, :cond_529

    const/4 v8, 0x0

    aget-object v9, v3, v8

    const-string v10, "-a"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_529

    if-eqz v19, :cond_50

    move-object v8, v3

    move-object v3, v15

    goto/16 :goto_52b

    .line 625
    :cond_50
    const-string/jumbo v9, "set-port-roles"

    aget-object v10, v3, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_523

    const-string/jumbo v10, "source"

    const/4 v13, 0x4

    const-string v8, ""

    const/4 v14, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_142

    :try_start_64
    array-length v9, v3

    if-ne v9, v13, :cond_142

    .line 626
    aget-object v0, v3, v12

    .line 628
    .local v0, "portId":Ljava/lang/String;
    aget-object v4, v3, v11

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v9, -0x356f97e5  # -4731917.5f

    if-eq v5, v9, :cond_95

    const v9, -0x1a426a07

    if-eq v5, v9, :cond_8a

    const v9, 0x35de93

    if-eq v5, v9, :cond_7f

    :cond_7e
    goto :goto_9d

    :cond_7f
    const-string/jumbo v5, "sink"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    move v4, v12

    goto :goto_9e

    :cond_8a
    const-string/jumbo v5, "no-power"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    move v4, v11

    goto :goto_9e

    :cond_95
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x0

    goto :goto_9e

    :goto_9d
    const/4 v4, -0x1

    :goto_9e
    if-eqz v4, :cond_c2

    if-eq v4, v12, :cond_c0

    if-eq v4, v11, :cond_be

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid power role: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_64 .. :try_end_ba} :catchall_5a2

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    return-void

    .line 636
    :cond_be
    const/4 v4, 0x0

    .line 637
    .local v4, "powerRole":I
    goto :goto_c4

    .line 633
    .end local v4  # "powerRole":I
    :cond_c0
    const/4 v4, 0x2

    .line 634
    .restart local v4  # "powerRole":I
    goto :goto_c4

    .line 630
    .end local v4  # "powerRole":I
    :cond_c2
    const/4 v4, 0x1

    .line 631
    .restart local v4  # "powerRole":I
    nop

    .line 643
    :goto_c4
    :try_start_c4
    aget-object v5, v3, v14

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x4f94e1aa

    if-eq v9, v10, :cond_ef

    const v10, 0x30f5a8

    if-eq v9, v10, :cond_e5

    const v10, 0x7b007436

    if-eq v9, v10, :cond_da

    :cond_d9
    goto :goto_f9

    :cond_da
    const-string/jumbo v9, "no-data"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    move v5, v11

    goto :goto_fa

    :cond_e5
    const-string v9, "host"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    const/4 v5, 0x0

    goto :goto_fa

    :cond_ef
    const-string v9, "device"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    move v5, v12

    goto :goto_fa

    :goto_f9
    const/4 v5, -0x1

    :goto_fa
    if-eqz v5, :cond_11e

    if-eq v5, v12, :cond_11c

    if-eq v5, v11, :cond_11a

    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data role: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v14

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_116
    .catchall {:try_start_c4 .. :try_end_116} :catchall_5a2

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    return-void

    .line 651
    :cond_11a
    const/4 v5, 0x0

    .line 652
    .local v5, "dataRole":I
    goto :goto_120

    .line 648
    .end local v5  # "dataRole":I
    :cond_11c
    const/4 v5, 0x2

    .line 649
    .restart local v5  # "dataRole":I
    goto :goto_120

    .line 645
    .end local v5  # "dataRole":I
    :cond_11e
    const/4 v5, 0x1

    .line 646
    .restart local v5  # "dataRole":I
    nop

    .line 657
    :goto_120
    :try_start_120
    iget-object v9, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v9, :cond_13d

    .line 658
    iget-object v9, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v9, v0, v4, v5, v6}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 664
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 665
    iget-object v9, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v10, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_13d
    .catchall {:try_start_120 .. :try_end_13d} :catchall_5a2

    .line 668
    .end local v0  # "portId":Ljava/lang/String;
    .end local v4  # "powerRole":I
    .end local v5  # "dataRole":I
    :cond_13d
    move-object/from16 v4, p1

    move-object v8, v3

    goto/16 :goto_59b

    :cond_142
    :try_start_142
    const-string v9, "add-port"

    const/16 v21, 0x0

    aget-object v13, v3, v21

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_523

    if-eqz v9, :cond_1d4

    :try_start_14e
    array-length v9, v3

    if-ne v9, v14, :cond_1d4

    .line 669
    aget-object v0, v3, v12

    .line 671
    .restart local v0  # "portId":Ljava/lang/String;
    aget-object v4, v3, v11

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5aa

    :cond_15c
    goto :goto_187

    :sswitch_15d
    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15c

    move v4, v14

    goto :goto_188

    :sswitch_168
    const-string v5, "dual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15c

    move v4, v11

    goto :goto_188

    :sswitch_172
    const-string/jumbo v5, "ufp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15c

    const/4 v4, 0x0

    goto :goto_188

    :sswitch_17d
    const-string v5, "dfp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15c

    move v4, v12

    goto :goto_188

    :goto_187
    const/4 v4, -0x1

    :goto_188
    if-eqz v4, :cond_1b0

    if-eq v4, v12, :cond_1ae

    if-eq v4, v11, :cond_1ac

    if-eq v4, v14, :cond_1aa

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a6
    .catchall {:try_start_14e .. :try_end_1a6} :catchall_5a2

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    return-void

    .line 682
    :cond_1aa
    const/4 v4, 0x0

    .line 683
    .local v4, "supportedModes":I
    goto :goto_1b2

    .line 679
    .end local v4  # "supportedModes":I
    :cond_1ac
    const/4 v4, 0x3

    .line 680
    .restart local v4  # "supportedModes":I
    goto :goto_1b2

    .line 676
    .end local v4  # "supportedModes":I
    :cond_1ae
    const/4 v4, 0x2

    .line 677
    .restart local v4  # "supportedModes":I
    goto :goto_1b2

    .line 673
    .end local v4  # "supportedModes":I
    :cond_1b0
    const/4 v4, 0x1

    .line 674
    .restart local v4  # "supportedModes":I
    nop

    .line 688
    :goto_1b2
    :try_start_1b2
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_1cf

    .line 689
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 690
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 691
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v10, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v9, v8, v10, v11}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_1cf
    .catchall {:try_start_1b2 .. :try_end_1cf} :catchall_5a2

    .line 694
    .end local v0  # "portId":Ljava/lang/String;
    .end local v4  # "supportedModes":I
    :cond_1cf
    move-object/from16 v4, p1

    move-object v8, v3

    goto/16 :goto_59b

    .line 668
    :cond_1d4
    const-wide/16 v22, 0x0

    .line 694
    :try_start_1d6
    const-string v9, "connect-port"

    const/4 v13, 0x0

    aget-object v14, v3, v13

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1df
    .catchall {:try_start_1d6 .. :try_end_1df} :catchall_523

    if-eqz v9, :cond_33c

    :try_start_1e1
    array-length v9, v3

    const/4 v13, 0x5

    if-ne v9, v13, :cond_33c

    .line 695
    aget-object v9, v3, v12

    .line 697
    .local v9, "portId":Ljava/lang/String;
    aget-object v0, v3, v11

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1ed
    .catchall {:try_start_1e1 .. :try_end_1ed} :catchall_335

    .line 698
    .local v0, "canChangeMode":Z
    if-eqz v0, :cond_1f6

    :try_start_1ef
    aget-object v5, v3, v11

    invoke-static {v5}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1f5
    .catchall {:try_start_1ef .. :try_end_1f5} :catchall_5a2

    goto :goto_1f8

    :cond_1f6
    :try_start_1f6
    aget-object v5, v3, v11

    :goto_1f8
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_1fc
    .catchall {:try_start_1f6 .. :try_end_1fc} :catchall_335

    const v14, 0x1842e

    if-eq v13, v14, :cond_212

    const v14, 0x1c3ff

    if-eq v13, v14, :cond_207

    :cond_206
    goto :goto_21c

    :cond_207
    :try_start_207
    const-string/jumbo v13, "ufp"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_20e
    .catchall {:try_start_207 .. :try_end_20e} :catchall_5a2

    if-eqz v5, :cond_206

    const/4 v5, 0x0

    goto :goto_21d

    :cond_212
    :try_start_212
    const-string v13, "dfp"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_218
    .catchall {:try_start_212 .. :try_end_218} :catchall_335

    if-eqz v5, :cond_206

    move v5, v12

    goto :goto_21d

    :goto_21c
    const/4 v5, -0x1

    :goto_21d
    if-eqz v5, :cond_23d

    if-eq v5, v12, :cond_23b

    .line 706
    :try_start_221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_237
    .catchall {:try_start_221 .. :try_end_237} :catchall_5a2

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    return-void

    .line 703
    :cond_23b
    const/4 v5, 0x2

    .line 704
    .local v5, "mode":I
    goto :goto_23f

    .line 700
    .end local v5  # "mode":I
    :cond_23d
    const/4 v5, 0x1

    .line 701
    .restart local v5  # "mode":I
    nop

    .line 710
    :goto_23f
    const/4 v11, 0x3

    :try_start_240
    aget-object v13, v3, v11

    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_246
    .catchall {:try_start_240 .. :try_end_246} :catchall_335

    move/from16 v24, v11

    .line 711
    .local v24, "canChangePowerRole":Z
    if-eqz v24, :cond_253

    const/4 v11, 0x3

    :try_start_24b
    aget-object v13, v3, v11

    invoke-static {v13}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_251
    .catchall {:try_start_24b .. :try_end_251} :catchall_5a2

    move-object v13, v11

    goto :goto_256

    :cond_253
    const/4 v11, 0x3

    :try_start_254
    aget-object v13, v3, v11

    :goto_256
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_25a
    .catchall {:try_start_254 .. :try_end_25a} :catchall_335

    const v14, -0x356f97e5  # -4731917.5f

    if-eq v11, v14, :cond_270

    const v14, 0x35de93

    if-eq v11, v14, :cond_265

    :cond_264
    goto :goto_278

    :cond_265
    :try_start_265
    const-string/jumbo v10, "sink"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_26c
    .catchall {:try_start_265 .. :try_end_26c} :catchall_5a2

    if-eqz v10, :cond_264

    move v10, v12

    goto :goto_279

    :cond_270
    :try_start_270
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_274
    .catchall {:try_start_270 .. :try_end_274} :catchall_335

    if-eqz v10, :cond_264

    const/4 v10, 0x0

    goto :goto_279

    :goto_278
    const/4 v10, -0x1

    :goto_279
    if-eqz v10, :cond_29c

    if-eq v10, v12, :cond_298

    .line 719
    :try_start_27d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid power role: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_294
    .catchall {:try_start_27d .. :try_end_294} :catchall_5a2

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    return-void

    .line 716
    :cond_298
    const/4 v10, 0x2

    .line 717
    .local v10, "powerRole":I
    move/from16 v20, v10

    goto :goto_29f

    .line 713
    .end local v10  # "powerRole":I
    :cond_29c
    const/4 v10, 0x1

    .line 714
    .restart local v10  # "powerRole":I
    move/from16 v20, v10

    .line 723
    .end local v10  # "powerRole":I
    .local v20, "powerRole":I
    :goto_29f
    const/4 v10, 0x4

    :try_start_2a0
    aget-object v11, v3, v10

    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_2a6
    .catchall {:try_start_2a0 .. :try_end_2a6} :catchall_335

    .line 724
    .local v4, "canChangeDataRole":Z
    if-eqz v4, :cond_2b0

    const/4 v10, 0x4

    :try_start_2a9
    aget-object v11, v3, v10

    invoke-static {v11}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2af
    .catchall {:try_start_2a9 .. :try_end_2af} :catchall_5a2

    goto :goto_2b4

    :cond_2b0
    const/4 v10, 0x4

    :try_start_2b1
    aget-object v11, v3, v10

    move-object v10, v11

    :goto_2b4
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_2b8
    .catchall {:try_start_2b1 .. :try_end_2b8} :catchall_335

    const v13, -0x4f94e1aa

    if-eq v11, v13, :cond_2cd

    const v13, 0x30f5a8

    if-eq v11, v13, :cond_2c3

    :cond_2c2
    goto :goto_2d7

    :cond_2c3
    :try_start_2c3
    const-string v11, "host"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2c9
    .catchall {:try_start_2c3 .. :try_end_2c9} :catchall_5a2

    if-eqz v10, :cond_2c2

    const/4 v10, 0x0

    goto :goto_2d8

    :cond_2cd
    :try_start_2cd
    const-string v11, "device"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2d3
    .catchall {:try_start_2cd .. :try_end_2d3} :catchall_335

    if-eqz v10, :cond_2c2

    move v10, v12

    goto :goto_2d8

    :goto_2d7
    const/4 v10, -0x1

    :goto_2d8
    if-eqz v10, :cond_2fb

    if-eq v10, v12, :cond_2f7

    .line 732
    :try_start_2dc
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid data role: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f3
    .catchall {:try_start_2dc .. :try_end_2f3} :catchall_5a2

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    return-void

    .line 729
    :cond_2f7
    const/4 v10, 0x2

    .line 730
    .local v10, "dataRole":I
    move/from16 v21, v10

    goto :goto_2fe

    .line 726
    .end local v10  # "dataRole":I
    :cond_2fb
    const/4 v10, 0x1

    .line 727
    .restart local v10  # "dataRole":I
    move/from16 v21, v10

    .line 735
    .end local v10  # "dataRole":I
    .local v21, "dataRole":I
    :goto_2fe
    :try_start_2fe
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v10, :cond_32e

    .line 736
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    move-object v14, v8

    move-object v8, v10

    move v10, v5

    move-wide/from16 v12, v22

    move v11, v0

    move-wide v2, v12

    move/from16 v12, v20

    move/from16 v13, v24

    move-object v2, v14

    move/from16 v14, v21

    move-object v3, v15

    .end local v15  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v15, v4

    move-object/from16 v16, v6

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 738
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 739
    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v10, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v13, 0x0

    invoke-virtual {v8, v10, v2, v13, v14}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_32d
    .catchall {:try_start_2fe .. :try_end_32d} :catchall_335

    goto :goto_32f

    .line 735
    .end local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_32e
    move-object v3, v15

    .line 742
    .end local v0  # "canChangeMode":Z
    .end local v4  # "canChangeDataRole":Z
    .end local v5  # "mode":I
    .end local v9  # "portId":Ljava/lang/String;
    .end local v15  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20  # "powerRole":I
    .end local v21  # "dataRole":I
    .end local v24  # "canChangePowerRole":Z
    .restart local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_32f
    move-object/from16 v4, p1

    move-object/from16 v8, p3

    goto/16 :goto_59b

    .line 830
    .end local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19  # "dumpAsProto":Z
    :catchall_335
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    goto/16 :goto_5a6

    .line 694
    .restart local v15  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19  # "dumpAsProto":Z
    :cond_33c
    move-object v2, v8

    move-object v3, v15

    move-wide/from16 v13, v22

    .line 742
    .end local v15  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_340
    const-string v4, "disconnect-port"
    :try_end_342
    .catchall {:try_start_340 .. :try_end_342} :catchall_51f

    move-object/from16 v8, p3

    move-wide v9, v13

    const/4 v13, 0x0

    :try_start_346
    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_372

    array-length v4, v8

    if-ne v4, v11, :cond_372

    .line 743
    aget-object v0, v8, v12

    .line 744
    .local v0, "portId":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_36e

    .line 745
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4, v0, v6}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 746
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 747
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 750
    .end local v0  # "portId":Ljava/lang/String;
    :cond_36e
    move-object/from16 v4, p1

    goto/16 :goto_59b

    :cond_372
    const-string/jumbo v4, "remove-port"

    const/4 v13, 0x0

    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a2

    array-length v4, v8

    if-ne v4, v11, :cond_3a2

    .line 751
    aget-object v0, v8, v12

    .line 752
    .restart local v0  # "portId":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_39e

    .line 753
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4, v0, v6}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 754
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 755
    iget-object v4, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v11, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 758
    .end local v0  # "portId":Ljava/lang/String;
    :cond_39e
    move-object/from16 v4, p1

    goto/16 :goto_59b

    :cond_3a2
    const-string/jumbo v4, "reset"

    const/4 v13, 0x0

    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d4

    array-length v4, v8

    if-ne v4, v12, :cond_3d4

    .line 759
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_3d0

    .line 760
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v6}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 761
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 762
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    move-object/from16 v4, p1

    goto/16 :goto_59b

    .line 759
    :cond_3d0
    move-object/from16 v4, p1

    goto/16 :goto_59b

    .line 765
    :cond_3d4
    const-string/jumbo v4, "set-contaminant-status"

    const/4 v13, 0x0

    aget-object v14, v8, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_413

    array-length v4, v8

    const/4 v13, 0x3

    if-ne v4, v13, :cond_413

    .line 766
    aget-object v0, v8, v12

    .line 767
    .restart local v0  # "portId":Ljava/lang/String;
    aget-object v4, v8, v11

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 768
    .local v4, "wet":Ljava/lang/Boolean;
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_40f

    .line 769
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v5, v0, v11, v6}, Lcom/android/server/usb/UsbPortManager;->simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 770
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 771
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v11, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v12, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5, v11, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 774
    .end local v0  # "portId":Ljava/lang/String;
    .end local v4  # "wet":Ljava/lang/Boolean;
    :cond_40f
    move-object/from16 v4, p1

    goto/16 :goto_59b

    :cond_413
    const-string/jumbo v4, "ports"

    const/4 v11, 0x0

    aget-object v13, v8, v11

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43d

    array-length v4, v8

    if-ne v4, v12, :cond_43d

    .line 775
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_439

    .line 776
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v2, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    move-object/from16 v4, p1

    goto/16 :goto_59b

    .line 775
    :cond_439
    move-object/from16 v4, p1

    goto/16 :goto_59b

    .line 779
    :cond_43d
    const-string v2, "dump-descriptors"

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_451

    .line 780
    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, v6, v8}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto/16 :goto_59b

    .line 782
    :cond_451
    const-string v2, "Dump current USB state or issue command:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 783
    const-string v2, "  ports"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 784
    const-string v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 785
    const-string v2, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 786
    const-string v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 787
    const-string v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 788
    const-string v2, "  disconnect-port <id>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 789
    const-string v2, "  remove-port <id>"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 790
    const-string v2, "  reset"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 792
    const-string v2, "Example USB type C port role switch:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 793
    const-string v2, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 795
    const-string v2, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 797
    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 798
    const-string v2, "  dumpsys usb ports"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 799
    const-string v2, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const-string v2, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 803
    const-string v2, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 808
    const-string v2, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const-string v0, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 813
    const-string v0, "Example USB device-only port:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 815
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 818
    const-string v0, "Example simulate contaminant status:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 819
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 820
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" true"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 821
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" false"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 823
    const-string v0, "Example USB device descriptors:"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 824
    const-string v0, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 825
    const-string v0, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const-string v0, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const-string v0, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto/16 :goto_59b

    .line 830
    .end local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19  # "dumpAsProto":Z
    :catchall_51f
    move-exception v0

    move-object/from16 v8, p3

    goto :goto_525

    :catchall_523
    move-exception v0

    move-object v8, v3

    :goto_525
    move-object/from16 v4, p1

    goto/16 :goto_5a6

    .line 601
    .restart local v15  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19  # "dumpAsProto":Z
    :cond_529
    move-object v8, v3

    move-object v3, v15

    .line 603
    .end local v15  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_52b
    if-eqz v19, :cond_53c

    .line 604
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;
    :try_end_531
    .catchall {:try_start_346 .. :try_end_531} :catchall_53a

    move-object/from16 v4, p1

    :try_start_533
    invoke-direct {v2, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .local v0, "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_54d

    .line 830
    .end local v0  # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19  # "dumpAsProto":Z
    :catchall_53a
    move-exception v0

    goto :goto_525

    .line 606
    .restart local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19  # "dumpAsProto":Z
    :cond_53c
    move-object/from16 v4, p1

    const-string v0, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 611
    .restart local v0  # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_54d
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_55d

    .line 612
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v5, "device_manager"

    const-wide v9, 0x10b00000001L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 614
    :cond_55d
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_56d

    .line 615
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string v5, "host_manager"

    const-wide v9, 0x10b00000002L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 617
    :cond_56d
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_57e

    .line 618
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string/jumbo v5, "port_manager"

    const-wide v9, 0x10b00000003L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 620
    :cond_57e
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v5, "alsa_manager"

    const-wide v9, 0x10b00000004L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 622
    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v5, "settings_manager"

    const-wide v9, 0x10b00000005L

    invoke-virtual {v2, v0, v5, v9, v10}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 624
    invoke-virtual {v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_59a
    .catchall {:try_start_533 .. :try_end_59a} :catchall_5a0

    .line 625
    .end local v0  # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    nop

    .line 830
    .end local v3  # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19  # "dumpAsProto":Z
    :goto_59b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    nop

    .line 832
    return-void

    .line 830
    :catchall_5a0
    move-exception v0

    goto :goto_5a6

    :catchall_5a2
    move-exception v0

    move-object/from16 v4, p1

    move-object v8, v3

    :goto_5a6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_data_5aa
    .sparse-switch
        0x1842e -> :sswitch_17d
        0x1c3ff -> :sswitch_172
        0x2f387c -> :sswitch_168
        0x33af38 -> :sswitch_15d
    .end sparse-switch
.end method

.method public enableContaminantDetection(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "portId"  # Ljava/lang/String;
    .param p2, "enable"  # Z

    .line 558
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 563
    .local v2, "ident":J
    :try_start_12
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_1b

    .line 564
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    .line 567
    :cond_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 568
    nop

    .line 569
    return-void

    .line 567
    :catchall_20
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "function"  # J

    .line 313
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    .line 278
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    .line 280
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "devices"  # Landroid/os/Bundle;

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
    .param p1, "portId"  # Ljava/lang/String;

    .line 529
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 534
    .local v2, "ident":J
    :try_start_12
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 536
    :cond_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    return-object v1

    .line 536
    :catchall_20
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
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

    .line 504
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 508
    .local v2, "ident":J
    :try_start_c
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_35

    if-nez v0, :cond_15

    .line 509
    nop

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    return-object v1

    .line 511
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    .line 513
    .local v0, "ports":[Landroid/hardware/usb/UsbPort;
    array-length v1, v0

    .line 514
    .local v1, "numPorts":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v4, "parcelablePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/ParcelableUsbPort;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    if-ge v5, v1, :cond_30

    .line 516
    aget-object v6, v0, v5

    invoke-static {v6}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_35

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 519
    .end local v5  # "i":I
    :cond_30
    nop

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    return-object v4

    .line 523
    .end local v0  # "ports":[Landroid/hardware/usb/UsbPort;
    .end local v1  # "numPorts":I
    .end local v4  # "parcelablePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/ParcelableUsbPort;>;"
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getScreenUnlockedFunctions()J
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"  # I

    .line 418
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 421
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 423
    .local v1, "token":J
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    .line 425
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    nop

    .line 427
    return-void

    .line 425
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"  # I

    .line 405
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 408
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 410
    .local v1, "token":J
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    .line 412
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    nop

    .line 414
    return-void

    .line 412
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 7
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 366
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 368
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 370
    .local v2, "token":J
    :try_start_c
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    .line 372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    return v4

    .line 372
    :catchall_18
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 431
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 437
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 439
    .local v1, "token":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 441
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    return v3

    .line 441
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 8
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 353
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 355
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 357
    .local v2, "token":J
    :try_start_c
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    .line 359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    return v4

    .line 359
    :catchall_18
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "function"  # Ljava/lang/String;

    .line 476
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "user"  # I

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
    .registers 10
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;

    .line 287
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_5c

    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 289
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 291
    .local v1, "user":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v2

    .line 293
    .local v2, "ident":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_57

    .line 294
    :try_start_13
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v5, v1, v6}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 295
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_54

    .line 303
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 295
    return-object v5

    .line 298
    :cond_2c
    :try_start_2c
    const-string v5, "UsbService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " as user is not active."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_54

    .line 303
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 304
    goto :goto_5c

    .line 301
    :catchall_54
    move-exception v5

    :try_start_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    .end local v0  # "uid":I
    .end local v1  # "user":I
    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/usb/UsbService;
    .end local p1  # "accessory":Landroid/hardware/usb/UsbAccessory;
    :try_start_56
    throw v5
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 303
    .restart local v0  # "uid":I
    .restart local v1  # "user":I
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/usb/UsbService;
    .restart local p1  # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catchall_57
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v4

    .line 307
    .end local v0  # "uid":I
    .end local v1  # "user":I
    .end local v2  # "ident":J
    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "deviceName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_5c

    .line 250
    if-eqz p1, :cond_5c

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 252
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 254
    .local v2, "user":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v3

    .line 256
    .local v3, "ident":J
    :try_start_13
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_57

    .line 257
    :try_start_16
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v6, v2, v7}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 258
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v7

    invoke-virtual {v6, p1, v7, p2, v1}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v0, v6

    goto :goto_4f

    .line 261
    :cond_2c
    const-string v6, "UsbService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " as user is not active."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_16 .. :try_end_50} :catchall_54

    .line 266
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 267
    goto :goto_5c

    .line 264
    :catchall_54
    move-exception v6

    :try_start_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    .end local v0  # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1  # "uid":I
    .end local v2  # "user":I
    .end local v3  # "ident":J
    .end local p0  # "this":Lcom/android/server/usb/UsbService;
    .end local p1  # "deviceName":Ljava/lang/String;
    .end local p2  # "packageName":Ljava/lang/String;
    :try_start_56
    throw v6
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 266
    .restart local v0  # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1  # "uid":I
    .restart local v2  # "user":I
    .restart local v3  # "ident":J
    .restart local p0  # "this":Lcom/android/server/usb/UsbService;
    .restart local p1  # "deviceName":Ljava/lang/String;
    .restart local p2  # "packageName":Ljava/lang/String;
    :catchall_57
    move-exception v5

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v5

    .line 271
    .end local v1  # "uid":I
    .end local v2  # "user":I
    .end local v3  # "ident":J
    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "pi"  # Landroid/app/PendingIntent;

    .line 392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 393
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 395
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 397
    .local v2, "token":J
    :try_start_c
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_18

    .line 399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_18
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "pi"  # Landroid/app/PendingIntent;

    .line 378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 379
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 381
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 383
    .local v2, "token":J
    :try_start_c
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_18

    .line 385
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    nop

    .line 387
    return-void

    .line 385
    :catchall_18
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 8
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 335
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 337
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 341
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 343
    .local v1, "token":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 346
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    nop

    .line 348
    return-void

    .line 346
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "functions"  # Ljava/lang/String;
    .param p2, "usbDataUnlocked"  # Z

    .line 471
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    .line 472
    return-void
.end method

.method public setCurrentFunctions(J)V
    .registers 6
    .param p1, "functions"  # J

    .line 463
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 467
    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 8
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 319
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 321
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 324
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 326
    .local v1, "token":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 329
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    nop

    .line 331
    return-void

    .line 329
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .registers 8
    .param p1, "portId"  # Ljava/lang/String;
    .param p2, "powerRole"  # I
    .param p3, "dataRole"  # I

    .line 542
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 544
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 548
    .local v2, "ident":J
    :try_start_15
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_1e

    .line 549
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 552
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    nop

    .line 554
    return-void

    .line 552
    :catchall_23
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6
    .param p1, "functions"  # J

    .line 488
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    .line 493
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "usbDeviceConnectionHandler"  # Landroid/content/ComponentName;

    .line 573
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_b
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 576
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_1c

    .line 577
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 583
    :cond_1c
    monitor-exit v0

    .line 584
    return-void

    .line 580
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only the current user can register a usb connection handler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usb/UsbService;
    .end local p1  # "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    throw v1

    .line 583
    .restart local p0  # "this":Lcom/android/server/usb/UsbService;
    .restart local p1  # "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
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
