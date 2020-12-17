.class public Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkProviderSettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceWatcher;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/ServiceWatcher;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "c"  # Landroid/content/Context;

    .line 502
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    .line 503
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 505
    iput-object p3, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->mContext:Landroid/content/Context;

    .line 506
    return-void
.end method


# virtual methods
.method public observer()V
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 509
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "network_provider_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 512
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 518
    invoke-static {}, Lcom/android/server/ServiceWatcher;->access$300()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/android/server/ServiceWatcher;->access$400()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 519
    :cond_20
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network_provider_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 522
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->onUnbind()V

    .line 523
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 526
    .end local v0  # "packageName":Ljava/lang/String;
    :cond_3a
    return-void
.end method
