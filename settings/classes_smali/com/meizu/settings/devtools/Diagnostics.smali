.class public Lcom/meizu/settings/devtools/Diagnostics;
.super Landroid/app/Activity;
.source "Diagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;
    }
.end annotation


# instance fields
.field final NOTIFICATION_DELAY:I

.field final NOTIFICATION_MESSAGE_NAME:I

.field final diagString:Ljava/lang/String;

.field final highSpeedRailString:Ljava/lang/String;

.field mHandler:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

.field mUsbManager:Landroid/hardware/usb/IUsbManager;

.field final mtpAdbString:Ljava/lang/String;

.field final mtpString:Ljava/lang/String;

.field final usbprop:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "diag,serial_cdev,rmnet,dpl,adb"

    .line 26
    iput-object v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->diagString:Ljava/lang/String;

    const-string/jumbo v0, "rndis,serial_cdev,diag,adb"

    .line 27
    iput-object v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->highSpeedRailString:Ljava/lang/String;

    const-string v0, "mtp"

    .line 28
    iput-object v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->mtpString:Ljava/lang/String;

    const-string v0, "mtp,adb"

    .line 29
    iput-object v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->mtpAdbString:Ljava/lang/String;

    const-string/jumbo v0, "sys.usb.config"

    .line 30
    iput-object v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->usbprop:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 31
    iput v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->NOTIFICATION_DELAY:I

    .line 32
    iput v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->NOTIFICATION_MESSAGE_NAME:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/meizu/settings/devtools/Diagnostics;->mHandler:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/devtools/Diagnostics;)I
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/devtools/Diagnostics;->closeUsb()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/devtools/Diagnostics;)I
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/devtools/Diagnostics;->openUsb()I

    move-result p0

    return p0
.end method

.method private closeUsb()I
    .registers 4

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_14

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private openUsb()I
    .registers 4

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_14

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Diagnostics"

    const-string v0, "enter..."

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p1, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;-><init>(Lcom/meizu/settings/devtools/Diagnostics;Lcom/meizu/settings/devtools/Diagnostics$1;)V

    iput-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics;->mHandler:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    const-string/jumbo p1, "usb"

    .line 41
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 43
    invoke-virtual {p0}, Lcom/meizu/settings/devtools/Diagnostics;->openSimpleAlert()V

    return-void
.end method

.method public openSimpleAlert()V
    .registers 4

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sys.usb.config"

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/devtools/Diagnostics$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/devtools/Diagnostics$3;-><init>(Lcom/meizu/settings/devtools/Diagnostics;)V

    const-string v2, "QPST"

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/devtools/Diagnostics$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/devtools/Diagnostics$2;-><init>(Lcom/meizu/settings/devtools/Diagnostics;)V

    const-string v2, "High-speed rail"

    .line 137
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/devtools/Diagnostics$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/devtools/Diagnostics$1;-><init>(Lcom/meizu/settings/devtools/Diagnostics;)V

    const-string p0, "close"

    .line 150
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
