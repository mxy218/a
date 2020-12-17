.class public Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeRAngleAdjustReceiver.java"


# instance fields
.field private mFlymeRAngleAdustHelper:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private initRAngleAppList()V
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustReceiver;->mFlymeRAngleAdustHelper:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-virtual {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initLocalRAngleAppList()V

    return-void
.end method

.method private initRAngleAppState(Ljava/lang/String;)V
    .registers 3

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustReceiver;->mFlymeRAngleAdustHelper:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppState(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeRAngleAdjustReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    .line 27
    :cond_21
    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustReceiver;->mFlymeRAngleAdustHelper:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    const-string p1, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 30
    invoke-direct {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustReceiver;->initRAngleAppList()V

    goto :goto_42

    :cond_33
    const-string p1, "flyme.intent.action.SUPER_PACKAGE_ADDED"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 32
    invoke-direct {p0, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustReceiver;->initRAngleAppState(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method
