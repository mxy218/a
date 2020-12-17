.class public Lcom/meizu/settings/applications/DefaultAppSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAppSettingsReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_9d

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_9d

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9d

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.cts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto/16 :goto_9d

    .line 23
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultAppSettingsReceiver"

    invoke-static {v1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/DefaultAppSettingsState;

    move-result-object v0

    .line 26
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->isCtsOrInternationalRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9d

    if-nez p0, :cond_52

    goto :goto_9d

    :cond_52
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 30
    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->onBootComplete()V

    goto :goto_9d

    :cond_5e
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 32
    invoke-virtual {v0, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->startHandleInstall(Landroid/content/Intent;)V

    goto :goto_9d

    :cond_6a
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 34
    invoke-virtual {v0, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->startHandleUninstall(Landroid/content/Intent;)V

    goto :goto_9d

    :cond_76
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9a

    const-string p2, "com.meizu.flyme.easylauncher.ACTION_EASY_MODE_CHANGE"

    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_87

    goto :goto_9a

    :cond_87
    const-string p2, "com.meizu.theme.change"

    .line 38
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9d

    .line 39
    invoke-static {p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->emptyCache()V

    .line 40
    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->handleRefreshList()V

    goto :goto_9d

    .line 37
    :cond_9a
    :goto_9a
    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->handleRefreshList()V

    :cond_9d
    :goto_9d
    return-void
.end method
