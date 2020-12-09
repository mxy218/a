.class Lcom/android/server/wm/DisplayPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Handler;)V
    .registers 6

    .line 438
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 439
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 441
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 442
    const-string v0, "force_show_navbar"

    invoke-static {v0}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 446
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->updateSettings()V

    .line 447
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 451
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->updateSettings()V

    .line 452
    return-void
.end method
