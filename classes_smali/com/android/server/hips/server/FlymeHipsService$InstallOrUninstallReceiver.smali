.class public Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeHipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/FlymeHipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallOrUninstallReceiver"
.end annotation


# static fields
.field private static final MSG_ID_INSTALL:I = 0x1

.field private static final MSG_ID_REMOVE:I = 0x2


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 86
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FHips-update-rule"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;-><init>(Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->mHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;
    .param p1, "x1"  # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->onPkgInstall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;
    .param p1, "x1"  # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->onPkgRemove(Ljava/lang/String;)V

    return-void
.end method

.method private installOrRemovePkg(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "isAdd"  # Z

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    return-void

    .line 149
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/hips/utils/HipsUtils;->updateInstalledPkg(Ljava/lang/String;Z)V

    .line 150
    invoke-static {p1, p2}, Lcom/android/server/hips/utils/HipsUtils;->updateSystemSignaturePkg(Ljava/lang/String;Z)V

    .line 151
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hips/security/SecurityMargin;->updateSecurityMarginItem(Ljava/lang/String;Z)V

    .line 152
    invoke-static {p1, p2}, Lcom/android/server/hips/intercept/Interception;->updateInterceptRule(Ljava/lang/String;Z)V

    .line 153
    invoke-static {p1, p2}, Lcom/android/server/hips/intercept/AutoRunInterception;->updateAutoRunWhiteList(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method private onPkgInstall(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "timeNow":J
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->installOrRemovePkg(Ljava/lang/String;Z)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPkgInstall() t:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interception"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private onPkgRemove(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    .local v0, "timeNow":J
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->installOrRemovePkg(Ljava/lang/String;Z)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPkgRemove() t:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interception"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 114
    if-eqz p2, :cond_42

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_e

    .line 118
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_42

    iget-object v3, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_42

    .line 122
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 123
    iget-object v3, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 124
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3  # "msg":Landroid/os/Message;
    goto :goto_42

    .line 125
    :cond_2d
    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 126
    iget-object v3, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 127
    .restart local v3  # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    .line 131
    .end local v0  # "pkgName":Ljava/lang/String;
    .end local v1  # "data":Landroid/net/Uri;
    .end local v2  # "action":Ljava/lang/String;
    .end local v3  # "msg":Landroid/os/Message;
    :cond_42
    :goto_42
    return-void
.end method
