.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$RawPortInfo;,
        Lcom/android/server/usb/UsbPortManager$PortInfo;,
        Lcom/android/server/usb/UsbPortManager$ServiceNotification;,
        Lcom/android/server/usb/UsbPortManager$DeathRecipient;,
        Lcom/android/server/usb/UsbPortManager$HALCallback;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_INFO:Ljava/lang/String; = "port_info"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final USB_HAL_DEATH_COOKIE:I = 0x3e8


# instance fields
.field private final mConnected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContaminantStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPortContaminatedNotificationId:I

.field private final mLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Landroid/hardware/usb/V1_0/IUsb;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 99
    nop

    .line 100
    const/4 v0, 0x1

    invoke-static {v0, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    sput v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 101
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    sput v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 103
    nop

    .line 104
    invoke-static {v1, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 105
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 158
    const-string v0, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 117
    new-instance v2, Lcom/android/server/usb/UsbPortManager$HALCallback;

    invoke-direct {v2, v1, p0}, Lcom/android/server/usb/UsbPortManager$HALCallback;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 139
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 144
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 148
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 1100
    new-instance v2, Lcom/android/server/usb/UsbPortManager$1;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 161
    :try_start_43
    new-instance p1, Lcom/android/server/usb/UsbPortManager$ServiceNotification;

    invoke-direct {p1, p0}, Lcom/android/server/usb/UsbPortManager$ServiceNotification;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    .line 163
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string v3, "android.hardware.usb@1.0::IUsb"

    const-string v4, ""

    .line 164
    invoke-interface {v2, v3, v4, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    .line 166
    if-nez p1, :cond_5a

    .line 167
    const/4 p1, 0x6

    invoke-static {p1, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_5a} :catch_5f

    .line 174
    :cond_5a
    nop

    .line 175
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbPortManager;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 176
    return-void

    .line 170
    :catch_5f
    move-exception p1

    .line 171
    invoke-static {v1, v0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbPortManager;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    return p0
.end method

.method static synthetic access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 92
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbPortManager;Landroid/hardware/usb/V1_0/IUsb;)Landroid/hardware/usb/V1_0/IUsb;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 3

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 34

    .line 866
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v4, p2

    move/from16 v1, p4

    move/from16 v12, p6

    move/from16 v14, p8

    move/from16 v6, p10

    move/from16 v7, p12

    move-object/from16 v2, p14

    and-int/lit8 v3, v4, 0x3

    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x5

    if-eq v3, v9, :cond_48

    .line 867
    nop

    .line 868
    if-eqz v1, :cond_45

    if-eq v1, v4, :cond_45

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", currentMode="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-static/range {p4 .. p4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-static {v10, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 872
    move v11, v5

    move v13, v11

    goto :goto_4b

    .line 879
    :cond_45
    move v11, v1

    move v13, v5

    goto :goto_4b

    .line 866
    :cond_48
    move/from16 v13, p5

    move v11, v1

    .line 879
    :goto_4b
    invoke-static {v12, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    .line 881
    const/4 v15, 0x2

    const/4 v9, 0x1

    if-eqz v11, :cond_93

    if-eqz v12, :cond_93

    if-eqz v14, :cond_93

    .line 882
    if-eqz p7, :cond_6a

    if-eqz p9, :cond_6a

    .line 885
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int/2addr v3, v5

    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int/2addr v3, v5

    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v3, v5

    or-int/2addr v1, v3

    move/from16 v16, v1

    goto :goto_95

    .line 888
    :cond_6a
    if-eqz p7, :cond_79

    .line 891
    invoke-static {v9, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    .line 893
    invoke-static {v15, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    move/from16 v16, v1

    goto :goto_95

    .line 895
    :cond_79
    if-eqz p9, :cond_88

    .line 898
    invoke-static {v12, v9}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    .line 900
    invoke-static {v12, v15}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    move/from16 v16, v1

    goto :goto_95

    .line 902
    :cond_88
    if-eqz v13, :cond_93

    .line 906
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v3, v5

    or-int/2addr v1, v3

    move/from16 v16, v1

    goto :goto_95

    .line 911
    :cond_93
    move/from16 v16, v1

    :goto_95
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 912
    if-nez v5, :cond_d4

    .line 913
    new-instance v15, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbManager;

    move-object v1, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p10

    move/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    .line 917
    move-object v9, v15

    move v10, v11

    move v11, v13

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v17, p11

    move/from16 v18, p13

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIII)Z

    .line 922
    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_174

    .line 925
    :cond_d4
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v0

    const-string v1, ", current="

    if-eq v4, v0, :cond_106

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 929
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v3

    .line 928
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-static {v10, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 933
    :cond_106
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 934
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v0

    if-eq v6, v0, :cond_12e

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring inconsistent supportsEnableContaminantPresenceProtectionUSB port driver (should be immutable): previous="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 939
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-static {v10, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 943
    :cond_12e
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 944
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v0

    if-eq v7, v0, :cond_156

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring inconsistent supportsEnableContaminantPresenceDetection USB port driver (should be immutable): previous="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 949
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {v10, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 954
    :cond_156
    move-object v0, v5

    move v1, v11

    move v2, v13

    move/from16 v3, p6

    move/from16 v4, p7

    move-object v10, v5

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, v16

    move/from16 v8, p11

    move v11, v9

    move/from16 v9, p13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIII)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 959
    iput v11, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_174

    .line 961
    :cond_172
    iput v15, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 964
    :goto_174
    return-void
.end method

.method private connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 774
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_9

    .line 776
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_38

    return-void

    .line 780
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/hardware/usb/V1_0/IUsb;->getService()Landroid/hardware/usb/V1_0/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 781
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$DeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/UsbPortManager$DeathRecipient;-><init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/V1_0/IUsb;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 782
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 783
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v1}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_27
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_27} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_28
    .catchall {:try_start_9 .. :try_end_27} :catchall_38

    goto :goto_35

    .line 787
    :catch_28
    move-exception v1

    .line 788
    :try_start_29
    const-string v2, "connectToProxy: usb hal service not responding"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_36

    .line 784
    :catch_2f
    move-exception v1

    .line 785
    const-string v2, "connectToProxy: usb hal service not found. Did the service fail to start?"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 789
    :goto_35
    nop

    .line 790
    :goto_36
    monitor-exit v0

    .line 791
    return-void

    .line 790
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method private static convertContaminantDetectionStatusToProto(I)I
    .registers 3

    .line 992
    const/4 v0, 0x1

    if-eqz p0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_d

    .line 1002
    const/4 p0, 0x0

    return p0

    .line 1000
    :cond_d
    const/4 p0, 0x4

    return p0

    .line 998
    :cond_f
    return v0

    .line 996
    :cond_10
    return v1

    .line 994
    :cond_11
    return v0
.end method

.method private enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 1021
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1022
    return-void

    .line 1025
    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1026
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1027
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 1032
    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1034
    :cond_3d
    return-void
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 974
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 975
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 979
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 980
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 981
    return-void
.end method

.method private handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 967
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 968
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 969
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->updateContaminantNotification()V

    .line 970
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 985
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 986
    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 1087
    const-string v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 1088
    if-eqz p1, :cond_a

    .line 1089
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    :cond_a
    return-void
.end method

.method private static logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 1094
    const-string v0, "UsbPortManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    if-eqz p0, :cond_19

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    :cond_19
    return-void
.end method

.method private logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 1038
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/16 v0, 0x92

    const/4 v1, 0x0

    const/16 v2, 0x46

    if-nez p2, :cond_7e

    .line 1039
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 1041
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 1042
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1044
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p2

    iget-wide v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1042
    invoke-static {v2, v1, p2, v3, v4}, Landroid/util/StatsLog;->write(IILjava/lang/String;J)I

    .line 1046
    :cond_36
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    :cond_41
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 1051
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_72

    .line 1053
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1054
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    .line 1055
    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result v1

    .line 1053
    invoke-static {v0, p2, v1}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 1058
    :cond_72
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    :cond_7d
    return-void

    .line 1063
    :cond_7e
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a6

    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1064
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1065
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v3

    if-eq p2, v3, :cond_d2

    .line 1066
    :cond_a6
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    nop

    .line 1068
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 1069
    const/4 v1, 0x1

    goto :goto_c7

    .line 1070
    :cond_c6
    nop

    :goto_c7
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1071
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p2

    iget-wide v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1067
    invoke-static {v2, v1, p2, v3, v4}, Landroid/util/StatsLog;->write(IILjava/lang/String;J)I

    .line 1074
    :cond_d2
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_fa

    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1075
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1076
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    if-eq p2, v1, :cond_122

    .line 1077
    :cond_fa
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1078
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1077
    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1080
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1082
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result p1

    .line 1081
    invoke-static {p1}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result p1

    .line 1079
    invoke-static {v0, p2, p1}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 1084
    :cond_122
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .registers 5

    .line 1007
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1011
    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v1}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v1

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1012
    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v1, "portStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1016
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;

    invoke-direct {v1, p0, v0}, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    return-void
.end method

.method private updateContaminantNotification()V
    .registers 15

    .line 192
    nop

    .line 193
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    nop

    .line 198
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x2

    move v3, v2

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 199
    iget-object v4, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v4

    .line 200
    if-eq v4, v5, :cond_30

    if-ne v4, v6, :cond_2e

    goto :goto_30

    .line 205
    :cond_2e
    move v3, v4

    goto :goto_14

    .line 202
    :cond_30
    :goto_30
    nop

    .line 203
    move-object v1, v3

    move v3, v4

    goto :goto_35

    .line 198
    :cond_34
    move-object v1, v7

    .line 210
    :goto_35
    const v4, 0x106001c

    const/16 v8, 0x35

    const/16 v9, 0x34

    if-ne v3, v5, :cond_d0

    iget v10, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-eq v10, v9, :cond_d0

    .line 213
    if-ne v10, v8, :cond_4b

    .line 215
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v7, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 219
    :cond_4b
    iput v9, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 220
    const v2, 0x1040717

    .line 221
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 222
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 223
    const v5, 0x1040716

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 226
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 227
    const/high16 v5, 0x10000000

    invoke-virtual {v10, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string v5, "com.android.systemui"

    const-string v8, "com.android.systemui.usb.UsbContaminantActivity"

    invoke-virtual {v10, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v1}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v1

    const-string/jumbo v5, "port"

    invoke-virtual {v10, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    iget-object v8, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 235
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 237
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 241
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x108008a

    .line 245
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 247
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 246
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v2, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_137

    .line 253
    :cond_d0
    if-eq v3, v5, :cond_137

    iget v1, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-ne v1, v9, :cond_137

    .line 256
    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v1, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 258
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 262
    if-ne v3, v2, :cond_138

    .line 263
    iput v8, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 265
    const v1, 0x1040719

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 267
    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 268
    const v3, 0x1040718

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 271
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1080531

    .line 272
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 277
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 281
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v2, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_138

    .line 253
    :cond_137
    :goto_137
    nop

    .line 287
    :cond_138
    :goto_138
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 798
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_a
    add-int/lit8 v1, v0, -0x1

    const/4 v13, 0x3

    if-lez v0, :cond_1b

    .line 799
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iput v13, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move v0, v1

    goto :goto_a

    .line 803
    :cond_1b
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 804
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 805
    const/4 v0, 0x0

    move v11, v0

    :goto_2b
    if-ge v11, v12, :cond_67

    .line 806
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 807
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v3, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v5, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v6, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v8, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v9, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    iget-boolean v10, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iget v13, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    move/from16 p2, v12

    iget-boolean v12, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    iget v0, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v11

    move v11, v13

    move/from16 v19, p2

    move/from16 v13, v17

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 805
    add-int/lit8 v11, v18, 0x1

    move/from16 v12, v19

    const/4 v13, 0x3

    goto :goto_2b

    .line 817
    :cond_67
    goto :goto_9a

    .line 818
    :cond_68
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 819
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v3, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v5, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v6, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v8, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v9, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    iget-boolean v10, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iget v11, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    iget-boolean v12, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    iget v13, v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 828
    goto :goto_6c

    .line 833
    :cond_9a
    :goto_9a
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_a0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_dc

    .line 834
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 835
    iget v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    const/4 v3, 0x2

    if-eqz v2, :cond_d1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_ba

    move-object/from16 v2, p1

    goto :goto_da

    .line 845
    :cond_ba
    iget-object v2, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 846
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 847
    move-object/from16 v2, p1

    invoke-direct {v15, v0, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_da

    .line 841
    :cond_c8
    move-object/from16 v2, p1

    const/4 v4, 0x3

    invoke-direct {v15, v0, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 842
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 843
    goto :goto_da

    .line 837
    :cond_d1
    move-object/from16 v2, p1

    const/4 v4, 0x3

    invoke-direct {v15, v0, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 838
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 839
    nop

    .line 850
    :goto_da
    move v0, v1

    goto :goto_a0

    .line 851
    :cond_dc
    return-void
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 482
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 484
    const-string p1, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    monitor-exit v0

    return-void

    .line 488
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportedModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13

    .line 499
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 501
    if-nez v1, :cond_14

    .line 502
    const-string p1, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 503
    monitor-exit v0

    return-void

    .line 506
    :cond_14
    if-eqz p2, :cond_9d

    if-eqz p4, :cond_9d

    if-nez p6, :cond_1c

    goto/16 :goto_9d

    .line 512
    :cond_1c
    iget v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    and-int/2addr v2, p2

    if-nez v2, :cond_3b

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Simulated port does not support mode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 514
    monitor-exit v0

    return-void

    .line 517
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", canChangeMode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", powerRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", canChangePowerRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", dataRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", canChangeDataRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-virtual {p8, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    iput p2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 525
    iput-boolean p3, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 526
    iput p4, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 527
    iput-boolean p5, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 528
    iput p6, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 529
    iput-boolean p7, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 530
    const/4 p1, 0x0

    invoke-direct {p0, p8, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 531
    monitor-exit v0

    .line 532
    return-void

    .line 507
    :cond_9d
    :goto_9d
    const-string p1, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 509
    monitor-exit v0

    return-void

    .line 531
    :catchall_a4
    move-exception p1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_a4

    throw p1
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 556
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 558
    if-nez v1, :cond_14

    .line 559
    const-string p1, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    monitor-exit v0

    return-void

    .line 563
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const/4 p1, 0x0

    iput p1, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 565
    iput-boolean p1, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 566
    iput p1, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 567
    iput-boolean p1, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 568
    iput p1, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 569
    iput-boolean p1, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 570
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 571
    monitor-exit v0

    .line 572
    return-void

    .line 571
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 10

    .line 602
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 604
    iget-object p4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 605
    :try_start_7
    const-string v0, "is_simulation_active"

    const-wide v1, 0x10800000001L

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 606
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 605
    :goto_19
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 608
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 609
    const-string/jumbo v2, "usb_ports"

    const-wide v3, 0x20b00000002L

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/usb/UsbPortManager$PortInfo;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 610
    goto :goto_26

    .line 611
    :cond_3e
    monitor-exit p4
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_43

    .line 613
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 614
    return-void

    .line 611
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 315
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 316
    if-nez v0, :cond_21

    .line 317
    if-eqz p3, :cond_20

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such USB port: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_20
    return-void

    .line 323
    :cond_21
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 324
    return-void

    .line 327
    :cond_2a
    const/4 v1, 0x1

    if-eqz p2, :cond_35

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-ne v2, v1, :cond_47

    :cond_35
    if-nez p2, :cond_3f

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 329
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-eq v2, v1, :cond_47

    :cond_3f
    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 331
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v0

    if-nez v0, :cond_48

    .line 333
    :cond_47
    return-void

    .line 338
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {v0}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object v0

    .line 339
    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_59
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_51} :catch_52

    goto :goto_5f

    .line 342
    :catch_52
    move-exception p1

    .line 343
    const-string p2, "Method only applicable to V1.2 or above implementation"

    invoke-static {p3, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_60

    .line 340
    :catch_59
    move-exception p1

    .line 341
    const-string p2, "Failed to set contaminant detection"

    invoke-static {p3, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 344
    :goto_5f
    nop

    .line 345
    :goto_60
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 303
    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit v0

    return-object p1

    .line 304
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 292
    new-array v2, v1, [Landroid/hardware/usb/UsbPort;

    .line 293
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_1d

    .line 294
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v4, v2, v3

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 296
    :cond_1d
    monitor-exit v0

    return-object v2

    .line 297
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public synthetic lambda$sendPortChangedBroadcastLocked$0$UsbPortManager(Landroid/content/Intent;)V
    .registers 5

    .line 1016
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 575
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 577
    if-gez v1, :cond_12

    .line 578
    const-string p1, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 579
    monitor-exit v0

    return-void

    .line 582
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 583
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 584
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 585
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 589
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    const-string v1, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 592
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 593
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 595
    :cond_19
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 16

    .line 349
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 351
    if-nez v1, :cond_25

    .line 352
    if-eqz p4, :cond_23

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No such USB port: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 355
    :cond_23
    monitor-exit v0

    return-void

    .line 359
    :cond_25
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, p2, p3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    const/4 v3, 0x6

    if-nez v2, :cond_5c

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newPowerRole="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRole="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {v3, p4, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 364
    monitor-exit v0

    return-void

    .line 368
    :cond_5c
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v2

    .line 369
    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v4

    .line 370
    if-ne v2, p3, :cond_75

    if-ne v4, p2, :cond_75

    .line 371
    if-eqz p4, :cond_73

    .line 372
    const-string p1, "No change."

    invoke-virtual {p4, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 374
    :cond_73
    monitor-exit v0

    return-void

    .line 383
    :cond_75
    iget-boolean v5, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 384
    iget-boolean v6, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 385
    iget-boolean v7, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 386
    iget-object v8, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v8

    .line 388
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v6, :cond_87

    if-ne v4, p2, :cond_8b

    :cond_87
    if-nez v7, :cond_c9

    if-eq v2, p3, :cond_c9

    .line 390
    :cond_8b
    if-eqz v5, :cond_93

    if-ne p2, v10, :cond_93

    if-ne p3, v10, :cond_93

    .line 392
    move v1, v9

    goto :goto_ca

    .line 393
    :cond_93
    if-eqz v5, :cond_9b

    if-ne p2, v9, :cond_9b

    if-ne p3, v9, :cond_9b

    .line 395
    move v1, v10

    goto :goto_ca

    .line 397
    :cond_9b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newPowerRole="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newDataRole="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-static {v3, p4, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 401
    monitor-exit v0

    return-void

    .line 404
    :cond_c9
    move v1, v8

    .line 408
    :goto_ca
    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting USB port mode and role: portId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentPowerRole="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentDataRole="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newPowerRole="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newDataRole="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-static {v5, p4, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 416
    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 417
    if-eqz v5, :cond_13d

    .line 419
    iput v1, v5, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 420
    iput p2, v5, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 421
    iput p3, v5, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 422
    const/4 p1, 0x0

    invoke-direct {p0, p4, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    goto/16 :goto_201

    .line 423
    :cond_13d
    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v5, :cond_201

    .line 424
    if-eq v8, v1, :cond_196

    .line 432
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set the USB port mode: portId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", newMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 432
    invoke-static {v3, p4, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 435
    new-instance p2, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p2}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 436
    iput v9, p2, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 437
    iput v1, p2, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_16c
    .catchall {:try_start_3 .. :try_end_16c} :catchall_203

    .line 439
    :try_start_16c
    iget-object p3, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p3, p1, p2}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_16c .. :try_end_171} :catch_172
    .catchall {:try_start_16c .. :try_end_171} :catchall_203

    .line 444
    goto :goto_195

    .line 440
    :catch_172
    move-exception p3

    .line 441
    :try_start_173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set the USB port mode: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newMode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 443
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-static {p4, p1, p3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 445
    :goto_195
    goto :goto_201

    .line 447
    :cond_196
    if-eq v4, p2, :cond_1cc

    .line 448
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 449
    iput v10, v1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 450
    iput p2, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1a1
    .catchall {:try_start_173 .. :try_end_1a1} :catchall_203

    .line 452
    :try_start_1a1
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p2, p1, v1}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_1a1 .. :try_end_1a6} :catch_1a7
    .catchall {:try_start_1a1 .. :try_end_1a6} :catchall_203

    .line 460
    goto :goto_1cc

    .line 453
    :catch_1a7
    move-exception p2

    .line 454
    :try_start_1a8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set the USB port power role: portId="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newPowerRole="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 457
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-static {p4, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 459
    monitor-exit v0

    return-void

    .line 462
    :cond_1cc
    :goto_1cc
    if-eq v2, p3, :cond_201

    .line 463
    new-instance p2, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p2}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 464
    const/4 v1, 0x0

    iput v1, p2, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 465
    iput p3, p2, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1d8
    .catchall {:try_start_1a8 .. :try_end_1d8} :catchall_203

    .line 467
    :try_start_1d8
    iget-object p3, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p3, p1, p2}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1dd
    .catch Landroid/os/RemoteException; {:try_start_1d8 .. :try_end_1dd} :catch_1de
    .catchall {:try_start_1d8 .. :try_end_1dd} :catchall_203

    .line 474
    goto :goto_201

    .line 468
    :catch_1de
    move-exception p3

    .line 469
    :try_start_1df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set the USB port data role: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRole="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 471
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-static {p4, p1, p3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 478
    :cond_201
    :goto_201
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_203
    move-exception p1

    monitor-exit v0
    :try_end_205
    .catchall {:try_start_1df .. :try_end_205} :catchall_203

    throw p1
.end method

.method public simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 539
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 541
    if-nez v1, :cond_14

    .line 542
    const-string p1, "Simulated port not found."

    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 543
    monitor-exit v0

    return-void

    .line 546
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulating wet port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", wet="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 548
    if-eqz p2, :cond_34

    .line 549
    const/4 p1, 0x3

    goto :goto_35

    .line 550
    :cond_34
    const/4 p1, 0x2

    :goto_35
    iput p1, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    .line 551
    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 552
    monitor-exit v0

    .line 553
    return-void

    .line 552
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public systemReady()V
    .registers 4

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    .line 180
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v0, :cond_12

    .line 182
    :try_start_7
    invoke-interface {v0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 186
    goto :goto_12

    .line 183
    :catch_b
    move-exception v0

    .line 184
    const/4 v1, 0x0

    const-string v2, "ServiceStart: Failed to query port status"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 188
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method
