.class public Lcom/meizu/settings/receiver/FlymeLocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeLocaleChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 17
    new-instance p0, Lcom/meizu/settings/search/SavedQueryRemover;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SavedQueryRemover;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/meizu/settings/search/SavedQueryRemover;->clearSaveQuery()V

    return-void
.end method
