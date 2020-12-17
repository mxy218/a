.class public Lcom/meizu/settings/appclone/AppCloneIntentService;
.super Landroidx/core/app/JobIntentService;
.source "AppCloneIntentService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueueWork work = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCloneIntentService"

    invoke-static {v1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-class v0, Lcom/meizu/settings/appclone/AppCloneIntentService;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 53
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onDestroy()V

    const-string p0, "AppCloneIntentService"

    const-string/jumbo v0, "onDestroy"

    .line 54
    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .registers 11

    const-string v0, "AppCloneIntentService"

    if-eqz p1, :cond_86

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_86

    .line 31
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flyme.intent.action.APPCLONE_PACKAGE_ADDED"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "flyme.intent.extra.APPCLONE_PACKAGE"

    if-eqz v0, :cond_3e

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/settings/appclone/AppCloneState;->setAppCloneEnabled(ZLjava/lang/String;ZZI)Z

    goto :goto_85

    :cond_3e
    const-string v0, "flyme.intent.action.APPCLONE_PACKAGE_REMOVED"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/settings/appclone/AppCloneState;->setAppCloneEnabled(ZLjava/lang/String;ZZI)Z

    goto :goto_85

    :cond_56
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_6e

    :cond_6d
    const/4 p1, 0x0

    .line 44
    :goto_6e
    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneState;->handlePkgRemove(Ljava/lang/String;)V

    goto :goto_85

    :cond_76
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 46
    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneVersion;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneVersion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/appclone/AppCloneVersion;->upgradeIfNeeded()V

    :cond_85
    :goto_85
    return-void

    :cond_86
    :goto_86
    const-string/jumbo p0, "onHandleWork intent is null"

    .line 27
    invoke-static {v0, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
