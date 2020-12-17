.class public Lcom/meizu/settings/appclone/AppCloneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppCloneReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 16
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 19
    :cond_7
    invoke-static {p1, p2}, Lcom/meizu/settings/appclone/AppCloneIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
