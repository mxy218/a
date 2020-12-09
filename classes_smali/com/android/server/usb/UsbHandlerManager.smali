.class Lcom/android/server/usb/UsbHandlerManager;
.super Ljava/lang/Object;
.source "UsbHandlerManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/server/usb/UsbHandlerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHandlerManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private createDialogIntent()Landroid/content/Intent;
    .registers 3

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    return-object v0
.end method


# virtual methods
.method confirmUsbHandler(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 7

    .line 85
    invoke-direct {p0}, Lcom/android/server/usb/UsbHandlerManager;->createDialogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.usb.UsbConfirmActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "rinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 91
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 93
    if-eqz p2, :cond_23

    .line 94
    const-string p3, "device"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_28

    .line 96
    :cond_23
    const-string p2, "accessory"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    :goto_28
    :try_start_28
    iget-object p2, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 103
    goto :goto_46

    .line 101
    :catch_2e
    move-exception p1

    .line 102
    sget-object p2, Lcom/android/server/usb/UsbHandlerManager;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to start activity "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :goto_46
    return-void
.end method

.method selectUsbHandler(Ljava/util/ArrayList;Landroid/os/UserHandle;Landroid/content/Intent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/android/server/usb/UsbHandlerManager;->createDialogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.usb.UsbResolverActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "rlist"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 121
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    :try_start_16
    iget-object p1, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 127
    goto :goto_34

    .line 125
    :catch_1c
    move-exception p1

    .line 126
    sget-object p2, Lcom/android/server/usb/UsbHandlerManager;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to start activity "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_34
    return-void
.end method

.method showUsbAccessoryUriActivity(Landroid/hardware/usb/UsbAccessory;Landroid/os/UserHandle;)V
    .registers 7

    .line 58
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHandlerManager;->createDialogIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.UsbAccessoryUriActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    const-string/jumbo p1, "uri"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :try_start_22
    iget-object p1, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_27} :catch_28

    .line 70
    goto :goto_31

    .line 68
    :catch_28
    move-exception p1

    .line 69
    sget-object p1, Lcom/android/server/usb/UsbHandlerManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "unable to start UsbAccessoryUriActivity"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_31
    :goto_31
    return-void
.end method
