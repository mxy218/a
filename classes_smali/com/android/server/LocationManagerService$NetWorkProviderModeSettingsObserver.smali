.class Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkProviderModeSettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "c"  # Landroid/content/Context;

    .line 4202
    iput-object p1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    .line 4203
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4204
    iput-object p3, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->mContext:Landroid/content/Context;

    .line 4205
    return-void
.end method


# virtual methods
.method public observer()V
    .registers 5

    .line 4208
    iget-object v0, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4209
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "choose_network_provider_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4212
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 4216
    iget-object v0, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "choose_network_provider_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4219
    .local v0, "mode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHOOSE_NETWORK_PROVIDER_MODE change mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 4222
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->findNetworkProviderWhenAutoMode()V

    goto :goto_5a

    .line 4223
    :cond_30
    const-string v1, "baidu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "network_provider_package"

    if-eqz v1, :cond_47

    .line 4224
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "com.meizu.location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5a

    .line 4226
    :cond_47
    const-string v1, "google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4227
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "com.google.android.gms"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4230
    :cond_5a
    :goto_5a
    return-void
.end method
