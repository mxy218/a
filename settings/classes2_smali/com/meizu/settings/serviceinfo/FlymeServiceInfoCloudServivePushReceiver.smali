.class public Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeServiceInfoCloudServivePushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;
    }
.end annotation


# static fields
.field private static requestCodeForPendingIntent:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->notifyNewRepairEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyNewRepairEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    const p0, 0x7f12135b

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_f

    const v2, 0x7f121359

    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_f
    new-array v2, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    const-string v3, "notification"

    .line 64
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 65
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    const v5, 0xa0802aa

    .line 66
    iput v5, v4, Landroid/app/Notification;->icon:I

    const-wide/16 v5, 0x0

    .line 67
    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 68
    iput-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v5, -0x1

    .line 69
    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 70
    iput v0, v4, Landroid/app/Notification;->priority:I

    .line 71
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 72
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 73
    const-class v6, Lcom/meizu/settings/MzSettingsActivity$ServiceSettingsActivity;

    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v6, 0x10008000

    .line 74
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-ne p2, v1, :cond_55

    const-string p2, "fnumber"

    .line 77
    invoke-virtual {v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_55
    const-string p2, "fsn"

    .line 79
    invoke-virtual {v5, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    sget-object p2, Lcom/meizu/settings/serviceinfo/Util;->PHONE_COOPERATE:Ljava/lang/String;

    invoke-virtual {v5, p2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyNewRepairEvent, requestCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->requestCodeForPendingIntent:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FlymeServiceInfoCloudServivePushReceiver"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget p2, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->requestCodeForPendingIntent:I

    const/4 p4, 0x0

    invoke-static {p1, p2, v5, v0, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 85
    sget p4, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->requestCodeForPendingIntent:I

    add-int/2addr p4, v1

    sput p4, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;->requestCodeForPendingIntent:I

    const p4, 0x7f12135a

    .line 87
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-virtual {v4, p1, v2, p4, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 88
    invoke-virtual {v3, p3, p0, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public static updateOrCancelNotification(Landroid/content/Context;)V
    .registers 3

    const-string v0, "notification"

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string v0, "FlymeServiceInfoCloudServivePushReceiver"

    const v1, 0x7f12135b

    .line 94
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "FlymeServiceInfoCloudServivePushReceiver"

    const-string v1, "FlymeServiceInfoCloudServivePushReceiver onReceive"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const-string v0, "repairEvent"

    .line 47
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "new_repair"

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 49
    new-instance p2, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver$AsyncWorker;-><init>(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoCloudServivePushReceiver;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p1

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2e
    return-void
.end method
