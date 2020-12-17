.class public Lcom/meizu/settings/usbchecker/UsbCheckerService;
.super Landroid/app/Service;
.source "UsbCheckerService.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lcom/meizu/settings/usbchecker/UsbCheckerService$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/usbchecker/UsbCheckerService$1;-><init>(Lcom/meizu/settings/usbchecker/UsbCheckerService;)V

    iput-object v0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/usbchecker/UsbCheckerService;Landroid/content/Intent;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private finishAlertActivity()V
    .registers 3

    const-string v0, "UsbCheckerService"

    const-string v1, "finishAlertActivity()"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.action.CHECKER_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 13

    const-string v0, "UsbCheckerService"

    if-eqz p1, :cond_f0

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_f0

    .line 70
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_24

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    move v2, v4

    .line 73
    :goto_25
    iget-object v5, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "usb_check_last_connected"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_31

    move v5, v3

    goto :goto_32

    :cond_31
    move v5, v4

    .line 75
    :goto_32
    iget-object v7, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "usb_check_last_sim_inserted"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_3e

    move v7, v3

    goto :goto_3f

    :cond_3e
    move v7, v4

    .line 77
    :goto_3f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleIntent intent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " lastConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " lastSimInserted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    .line 80
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    const-string v0, "plugged"

    .line 81
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_79

    goto :goto_7a

    :cond_79
    move v3, v4

    :goto_7a
    if-ne v3, v5, :cond_7d

    return-void

    :cond_7d
    if-eqz v3, :cond_8f

    if-nez v7, :cond_88

    if-eqz v2, :cond_84

    goto :goto_88

    .line 91
    :cond_84
    invoke-direct {p0}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->startAlertActivity()V

    goto :goto_92

    .line 88
    :cond_88
    :goto_88
    invoke-direct {p0}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->setActivateState()V

    .line 89
    invoke-direct {p0}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->finishAlertActivity()V

    goto :goto_92

    .line 94
    :cond_8f
    invoke-direct {p0}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->finishAlertActivity()V

    .line 96
    :goto_92
    iget-object p0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_ef

    :cond_98
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    const-string v1, "ss"

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "READY"

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    const-string v1, "IMSI"

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    const-string v1, "LOADED"

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    goto :goto_c0

    :cond_bf
    move v3, v4

    .line 103
    :cond_c0
    :goto_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent  stateExtra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " simInserted = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_e8

    if-eqz v3, :cond_e8

    if-eqz v5, :cond_e8

    .line 106
    invoke-direct {p0}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->setActivateState()V

    .line 107
    invoke-direct {p0}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->finishAlertActivity()V

    :cond_e8
    if-eq v7, v3, :cond_ef

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v8, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_ef
    :goto_ef
    return-void

    :cond_f0
    :goto_f0
    const-string p0, "handleIntent do nothing"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setActivateState()V
    .registers 3

    const-string v0, "persist.sys.usb.activation"

    const-string v1, "yes"

    .line 116
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.action.USB_ACTIVATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-string p0, "UsbCheckerService"

    const-string v0, "setActivateState() yes and sendBroadCast:com.meizu.action.USB_ACTIVATION"

    .line 120
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startAlertActivity()V
    .registers 3

    const-string v0, "UsbCheckerService"

    const-string v1, "startAlertActivity()"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-class v1, Lcom/meizu/settings/usbchecker/UsbCheckerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 3

    const-string v0, "UsbCheckerService"

    const-string v1, "onCreate"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "UsbCheckerService"

    const-string v1, "onDestroy"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 55
    invoke-direct {p0, p1}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->handleIntent(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
