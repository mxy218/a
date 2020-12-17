.class public Lcom/meizu/settings/usbchecker/UsbCheckerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbCheckerReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableMyself(Landroid/content/Context;)V
    .registers 6

    const-string p0, "UsbCheckerReceiver"

    const-string v0, "disable UsbCheckerReceiver"

    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/meizu/settings/usbchecker/UsbCheckerReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 37
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 40
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/meizu/settings/usbchecker/UsbCheckerService;

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 20
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChinamobileVersion()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "persist.sys.usb.activation"

    const-string v1, "no"

    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 22
    invoke-direct {p0, p1}, Lcom/meizu/settings/usbchecker/UsbCheckerReceiver;->disableMyself(Landroid/content/Context;)V

    return-void

    .line 26
    :cond_1a
    const-class p0, Lcom/meizu/settings/usbchecker/UsbCheckerService;

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_26

    .line 29
    :cond_23
    invoke-direct {p0, p1}, Lcom/meizu/settings/usbchecker/UsbCheckerReceiver;->disableMyself(Landroid/content/Context;)V

    :goto_26
    return-void
.end method
