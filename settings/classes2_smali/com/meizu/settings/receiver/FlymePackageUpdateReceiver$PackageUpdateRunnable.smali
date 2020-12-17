.class Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;
.super Ljava/lang/Object;
.source "FlymePackageUpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdateRunnable"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fromRemovePackage:Z

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 5

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->this$0:Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->context:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->intent:Landroid/content/Intent;

    .line 56
    iput-boolean p4, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->fromRemovePackage:Z

    return-void
.end method

.method private handleQuickWakeupAlipayCode()V
    .registers 5

    .line 80
    iget-object p0, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_quick_wakeup_draw_z_package_detail"

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->getSettinsSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    const-string v2, "mz_quick_wakeup_switch"

    .line 84
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_20

    .line 86
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    const-string v1, "mz_quick_wakeup_draw_z"

    .line 89
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "com.eg.android.AlipayGphone,alipayCode"

    .line 91
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 61
    iget-boolean v0, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->fromRemovePackage:Z

    if-eqz v0, :cond_43

    .line 62
    iget-object v0, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 63
    iget-object v0, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->this$0:Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;

    invoke-static {v1}, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;->access$000(Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->resetQuickWakeupSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    :cond_1a
    iget-object v0, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->context:Landroid/content/Context;

    .line 67
    invoke-static {v0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->loadHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->this$0:Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;

    invoke-static {v1}, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;->access$000(Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 69
    iget-object v1, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->this$0:Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;

    invoke-static {v1}, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;->access$000(Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_39
    iget-object p0, p0, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->context:Landroid/content/Context;

    .line 72
    invoke-static {p0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->saveHashMap(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_46

    .line 75
    :cond_43
    invoke-direct {p0}, Lcom/meizu/settings/receiver/FlymePackageUpdateReceiver$PackageUpdateRunnable;->handleQuickWakeupAlipayCode()V

    :goto_46
    return-void
.end method
