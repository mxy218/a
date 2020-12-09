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
    .registers 8

    .line 1772
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    .line 1713
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 1723
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 1774
    :try_start_d
    new-instance p2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;

    invoke-direct {p2, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    .line 1776
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p3

    const-string p4, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string p5, ""

    .line 1777
    invoke-interface {p3, p4, p5, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p2

    .line 1778
    if-nez p2, :cond_2a

    .line 1779
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to register usb gadget service start notification"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    return-void

    .line 1783
    :cond_2a
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2d
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_2d} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_73
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_68

    .line 1784
    const/4 p3, 0x1

    :try_start_2e
    invoke-static {p3}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1785
    iget-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance p5, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {p5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v0, 0x7d0

    invoke-interface {p4, p5, v0, v1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1787
    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 1788
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 1789
    iget-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance p4, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {p4, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {p3, p4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 1790
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_65

    .line 1791
    :try_start_51
    new-instance p2, Ljava/io/File;

    const-string p3, "/sys/class/android_usb/android0/state"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1792
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateState(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/util/NoSuchElementException; {:try_start_51 .. :try_end_64} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_64} :catch_73
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_64} :catch_68

    goto :goto_88

    .line 1790
    :catchall_65
    move-exception p1

    :try_start_66
    monitor-exit p2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    :try_start_67
    throw p1
    :try_end_68
    .catch Ljava/util/NoSuchElementException; {:try_start_67 .. :try_end_68} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_68} :catch_73
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_68} :catch_68

    .line 1797
    :catch_68
    move-exception p1

    .line 1798
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Error initializing UsbHandler"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    .line 1795
    :catch_73
    move-exception p1

    .line 1796
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Usb Gadget hal not responding"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 1793
    :catch_7e
    move-exception p1

    .line 1794
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Usb gadget hal not found"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1799
    :goto_88
    nop

    .line 1800
    :goto_89
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;
    .registers 1

    .line 1705
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    .registers 2

    .line 1705
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I
    .registers 1

    .line 1705
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    return p0
.end method

.method private setUsbConfig(JZ)V
    .registers 15

    .line 1929
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

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

    .line 1933
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1934
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1935
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1937
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1938
    :try_start_39
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v3, :cond_49

    .line 1939
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "setUsbConfig mGadgetProxy is null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_8c

    return-void

    .line 1943
    :cond_49
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5a

    .line 1947
    :try_start_52
    const-string v3, "ctl.start"

    const-string v4, "adbd"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 1952
    :cond_5a
    const-string v3, "ctl.stop"

    const-string v4, "adbd"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    :goto_61
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    move-object v5, v3

    move-object v6, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V

    .line 1956
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    const-wide/16 v9, 0x9c4

    move-wide v6, p1

    move-object v8, v3

    invoke-interface/range {v5 .. v10}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 1958
    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V

    .line 1960
    const-wide/16 p1, 0x1388

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_7f} :catch_80
    .catchall {:try_start_52 .. :try_end_7f} :catchall_8c

    .line 1965
    goto :goto_8a

    .line 1963
    :catch_80
    move-exception p1

    .line 1964
    :try_start_81
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1966
    :goto_8a
    monitor-exit v2

    .line 1967
    return-void

    .line 1966
    :catchall_8c
    move-exception p1

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_8c

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1830
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_cc

    .line 1880
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_ca

    .line 1863
    :pswitch_e  #0x12
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_13

    goto :goto_14

    :cond_13
    move v4, v3

    .line 1864
    :goto_14
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1866
    :try_start_17
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1867
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v5, 0x7d0

    invoke-interface {p1, v1, v5, v6}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1869
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-nez p1, :cond_4c

    if-nez v4, :cond_4c

    .line 1870
    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V
    :try_end_34
    .catch Ljava/util/NoSuchElementException; {:try_start_17 .. :try_end_34} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_34} :catch_37
    .catchall {:try_start_17 .. :try_end_34} :catchall_35

    goto :goto_4c

    .line 1877
    :catchall_35
    move-exception p1

    goto :goto_50

    .line 1874
    :catch_37
    move-exception p1

    .line 1875
    :try_start_38
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb Gadget hal not responding"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 1872
    :catch_42
    move-exception p1

    .line 1873
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb gadget hal not found"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    :cond_4c
    :goto_4c
    nop

    .line 1877
    :goto_4d
    monitor-exit v0

    .line 1878
    goto/16 :goto_ca

    .line 1877
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_35

    throw p1

    .line 1858
    :pswitch_52  #0x11
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v4, :cond_ca

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->isAdbEnabled()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_ca

    .line 1841
    :pswitch_5f  #0x10
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "prcessing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsReceived:Z

    .line 1844
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v0, :cond_b1

    .line 1845
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updating mCurrentFunctions"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, -0x2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 1848
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentFunctions:"

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

    .line 1850
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_af

    move v3, v4

    :cond_af
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 1852
    :cond_b1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->finishBoot()V

    .line 1853
    goto :goto_ca

    .line 1835
    :pswitch_b5  #0xf
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Set functions timed out! no reply from usb hal"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v4, :cond_ca

    .line 1837
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_ca

    .line 1832
    :pswitch_c6  #0xe
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    .line 1833
    nop

    .line 1882
    :cond_ca
    :goto_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0xe
        :pswitch_c6  #0000000e
        :pswitch_b5  #0000000f
        :pswitch_5f  #00000010
        :pswitch_52  #00000011
        :pswitch_e  #00000012
    .end packed-switch
.end method

.method protected setEnabledFunctions(JZ)V
    .registers 6

    .line 1975
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_c

    if-eqz p3, :cond_4a

    .line 1978
    :cond_c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting USB config to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 1980
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 1982
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 1984
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_36

    const/4 p3, 0x1

    .line 1985
    :cond_36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->getAppliedFunctions(J)J

    move-result-wide p1

    .line 1988
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setUsbConfig(JZ)V

    .line 1990
    iget-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mBootCompleted:Z

    if-eqz p3, :cond_4a

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->isUsbDataTransferActive(J)Z

    move-result p3

    if-eqz p3, :cond_4a

    .line 1992
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1995
    :cond_4a
    return-void
.end method
