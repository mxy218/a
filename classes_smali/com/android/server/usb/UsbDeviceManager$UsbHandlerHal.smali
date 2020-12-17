.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbHandlerHal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;
    }
.end annotation


# static fields
.field protected static final ADBD:Ljava/lang/String; = "adbd"

.field protected static final CTL_START:Ljava/lang/String; = "ctl.start"

.field protected static final CTL_STOP:Ljava/lang/String; = "ctl.stop"

.field private static final ENUMERATION_TIME_OUT_MS:I = 0x7d0

.field protected static final GADGET_HAL_FQ_NAME:Ljava/lang/String; = "android.hardware.usb.gadget@1.0::IUsbGadget"

.field private static final SET_FUNCTIONS_LEEWAY_MS:I = 0x1f4

.field private static final SET_FUNCTIONS_TIMEOUT_MS:I = 0xbb8

.field private static final USB_GADGET_HAL_DEATH_COOKIE:I = 0x7d0


# instance fields
.field private mCurrentRequest:I

.field protected mCurrentUsbFunctionsRequested:Z

.field private mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGadgetProxyLock"
        }
    .end annotation
.end field

.field private final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 15
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "deviceManager"  # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "alsaManager"  # Lcom/android/server/usb/UsbAlsaManager;
    .param p5, "settingsManager"  # Lcom/android/server/usb/UsbSettingsManager;

    .line 2156
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    .line 2097
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 2107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 2158
    :try_start_d
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    .line 2160
    .local v1, "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string v3, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v4, ""

    .line 2161
    invoke-interface {v2, v3, v4, v1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    .line 2162
    .local v2, "ret":Z
    if-nez v2, :cond_2a

    .line 2163
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to register usb gadget service start notification"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return-void

    .line 2167
    :cond_2a
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2d
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_2d} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_73
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_68

    .line 2168
    const/4 v4, 0x1

    :try_start_2e
    invoke-static {v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2169
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v7, 0x7d0

    invoke-interface {v5, v6, v7, v8}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 2171
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 2172
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 2173
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {v4, v5}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 2174
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_65

    .line 2175
    :try_start_51
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2176
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateState(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/util/NoSuchElementException; {:try_start_51 .. :try_end_64} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_64} :catch_73
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_64} :catch_68

    .end local v0  # "state":Ljava/lang/String;
    .end local v1  # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .end local v2  # "ret":Z
    goto :goto_88

    .line 2174
    .restart local v1  # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .restart local v2  # "ret":Z
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    .end local p0  # "this":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .end local p1  # "looper":Landroid/os/Looper;
    .end local p2  # "context":Landroid/content/Context;
    .end local p3  # "deviceManager":Lcom/android/server/usb/UsbDeviceManager;
    .end local p4  # "alsaManager":Lcom/android/server/usb/UsbAlsaManager;
    .end local p5  # "settingsManager":Lcom/android/server/usb/UsbSettingsManager;
    :try_start_67
    throw v0
    :try_end_68
    .catch Ljava/util/NoSuchElementException; {:try_start_67 .. :try_end_68} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_68} :catch_73
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_68} :catch_68

    .line 2181
    .end local v1  # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .end local v2  # "ret":Z
    .restart local p0  # "this":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .restart local p1  # "looper":Landroid/os/Looper;
    .restart local p2  # "context":Landroid/content/Context;
    .restart local p3  # "deviceManager":Lcom/android/server/usb/UsbDeviceManager;
    .restart local p4  # "alsaManager":Lcom/android/server/usb/UsbAlsaManager;
    .restart local p5  # "settingsManager":Lcom/android/server/usb/UsbSettingsManager;
    :catch_68
    move-exception v0

    .line 2182
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    .line 2179
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_73
    move-exception v0

    .line 2180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb Gadget hal not responding"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0  # "e":Landroid/os/RemoteException;
    goto :goto_88

    .line 2177
    :catch_7e
    move-exception v0

    .line 2178
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb gadget hal not found"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2183
    .end local v0  # "e":Ljava/util/NoSuchElementException;
    :goto_88
    nop

    .line 2184
    :goto_89
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    .line 2089
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .param p1, "x1"  # Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2089
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    .line 2089
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    return v0
.end method

.method private setUsbConfig(JZ)V
    .registers 15
    .param p1, "config"  # J
    .param p3, "chargingFunctions"  # Z

    .line 2313
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 2318
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 2319
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 2321
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2322
    :try_start_39
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v3, :cond_49

    .line 2323
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setUsbConfig mGadgetProxy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_97

    return-void

    .line 2327
    :cond_49
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5a

    .line 2331
    :try_start_52
    const-string v3, "ctl.start"

    const-string v4, "adbd"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 2336
    :cond_5a
    const-string v3, "ctl.stop"

    const-string v4, "adbd"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    :goto_61
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    move-object v5, v3

    move-object v6, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V

    move-object v8, v3

    .line 2340
    .local v8, "usbGadgetCallback":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    const-wide/16 v9, 0x9c4

    move-wide v6, p1

    invoke-interface/range {v5 .. v10}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 2342
    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v1, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V

    .line 2344
    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v0, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V

    .line 2346
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timeout message queued"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_89} :catch_8b
    .catchall {:try_start_52 .. :try_end_89} :catchall_97

    .line 2349
    nop

    .end local v8  # "usbGadgetCallback":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
    goto :goto_95

    .line 2347
    :catch_8b
    move-exception v0

    .line 2348
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_8c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2350
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_95
    monitor-exit v2

    .line 2351
    return-void

    .line 2350
    :catchall_97
    move-exception v0

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_8c .. :try_end_99} :catchall_97

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 2214
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_ce

    .line 2264
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_cc

    .line 2247
    :pswitch_e  #0x12
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_13

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    move v0, v4

    .line 2248
    .local v0, "preexisting":Z
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2250
    :try_start_18
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2251
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v6, 0x7d0

    invoke-interface {v1, v2, v6, v7}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 2253
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-nez v1, :cond_35

    if-nez v0, :cond_35

    .line 2254
    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V
    :try_end_35
    .catch Ljava/util/NoSuchElementException; {:try_start_18 .. :try_end_35} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_38
    .catchall {:try_start_18 .. :try_end_35} :catchall_36

    .line 2260
    :cond_35
    goto :goto_4e

    .line 2261
    :catchall_36
    move-exception v1

    goto :goto_51

    .line 2258
    :catch_38
    move-exception v1

    .line 2259
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_39
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Usb Gadget hal not responding"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 2256
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_43
    move-exception v1

    .line 2257
    .local v1, "e":Ljava/util/NoSuchElementException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Usb gadget hal not found"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    nop

    .line 2261
    .end local v1  # "e":Ljava/util/NoSuchElementException;
    :goto_4e
    monitor-exit v5

    .line 2262
    goto/16 :goto_cc

    .line 2261
    :goto_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_36

    throw v1

    .line 2242
    .end local v0  # "preexisting":Z
    :pswitch_53  #0x11
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_cc

    .line 2243
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->isAdbEnabled()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_cc

    .line 2225
    :pswitch_60  #0x10
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "prcessing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsReceived:Z

    .line 2228
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v0, :cond_b3

    .line 2229
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updating mCurrentFunctions"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, -0x2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 2232
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentFunctions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "applied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_b1

    move v3, v4

    :cond_b1
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 2236
    :cond_b3
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->finishBoot()V

    .line 2237
    goto :goto_cc

    .line 2219
    :pswitch_b7  #0xf
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Set functions timed out! no reply from usb hal"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_cc

    .line 2221
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_cc

    .line 2216
    :pswitch_c8  #0xe
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    .line 2217
    nop

    .line 2266
    :cond_cc
    :goto_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0xe
        :pswitch_c8  #0000000e
        :pswitch_b7  #0000000f
        :pswitch_60  #00000010
        :pswitch_53  #00000011
        :pswitch_e  #00000012
    .end packed-switch
.end method

.method protected setEnabledFunctions(JZ)V
    .registers 7
    .param p1, "functions"  # J
    .param p3, "forceRestart"  # Z

    .line 2357
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbHandlerHal setEnabledFunctions functions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", forceRestart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_2c

    if-eqz p3, :cond_6a

    .line 2363
    :cond_2c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 2365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 2367
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 2369
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_56

    const/4 v0, 0x1

    .line 2370
    .local v0, "chargingFunctions":Z
    :cond_56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->getAppliedFunctions(J)J

    move-result-wide p1

    .line 2373
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setUsbConfig(JZ)V

    .line 2375
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mBootCompleted:Z

    if-eqz v1, :cond_6a

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2377
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateUsbStateBroadcastIfNeeded(J)V

    .line 2380
    .end local v0  # "chargingFunctions":Z
    :cond_6a
    return-void
.end method
