.class public Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymePackageUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;
    }
.end annotation


# instance fields
.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 44
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymePackageUpdateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-direct {p0, p2}, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;->mPkgName:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-void

    .line 33
    :cond_1c
    new-instance v1, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;

    invoke-direct {v1}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;-><init>(Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3a
    return-void
.end method
