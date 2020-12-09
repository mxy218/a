.class Lcom/android/server/AppStateTracker$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "AppStateTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureFlagsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    .line 201
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 202
    return-void
.end method


# virtual methods
.method isForcedAppStandbyEnabled()Z
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const/4 v1, 0x1

    const-string v2, "forced_app_standby_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isForcedAppStandbyForSmallBatteryEnabled()Z
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const/4 v1, 0x0

    const-string v2, "forced_app_standby_for_small_battery_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 224
    const-string p1, "forced_app_standby_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 225
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result p1

    .line 226
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 227
    :try_start_17
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean p2, p2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-ne p2, p1, :cond_1f

    .line 228
    monitor-exit v0

    return-void

    .line 230
    :cond_1f
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean p1, p2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    .line 235
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2e

    .line 236
    iget-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForcedAppStandbyFeatureFlagChanged()V

    .line 237
    goto :goto_74

    .line 235
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1

    .line 237
    :cond_31
    const-string p1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 238
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 239
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result p1

    .line 240
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_48
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean p2, p2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-ne p2, p1, :cond_50

    .line 242
    monitor-exit v0

    return-void

    .line 244
    :cond_50
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean p1, p2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    .line 249
    iget-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    .line 250
    monitor-exit v0

    .line 251
    goto :goto_74

    .line 250
    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_5b

    throw p1

    .line 252
    :cond_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected feature flag uri encountered: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppStateTracker"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_74
    return-void
.end method

.method register()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    const-string v1, "forced_app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    return-void
.end method
