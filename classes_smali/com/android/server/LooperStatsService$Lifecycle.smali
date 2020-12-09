.class public Lcom/android/server/LooperStatsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LooperStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LooperStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/LooperStatsService;

.field private final mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

.field private final mStats:Lcom/android/internal/os/LooperStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance p1, Lcom/android/internal/os/LooperStats;

    const/16 v0, 0x3e8

    const/16 v1, 0x5dc

    invoke-direct {p1, v0, v1}, Lcom/android/internal/os/LooperStats;-><init>(II)V

    iput-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    .line 191
    new-instance p1, Lcom/android/server/LooperStatsService;

    invoke-virtual {p0}, Lcom/android/server/LooperStatsService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/LooperStatsService;-><init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;Lcom/android/server/LooperStatsService$1;)V

    iput-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    .line 192
    new-instance p1, Lcom/android/server/LooperStatsService$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    invoke-direct {p1, v0}, Lcom/android/server/LooperStatsService$SettingsObserver;-><init>(Lcom/android/server/LooperStatsService;)V

    iput-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

    .line 193
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5

    .line 203
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_2a

    .line 204
    iget-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    invoke-static {p1}, Lcom/android/server/LooperStatsService;->access$200(Lcom/android/server/LooperStatsService;)V

    .line 205
    const-string p1, "looper_stats"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 206
    invoke-virtual {p0}, Lcom/android/server/LooperStatsService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    iget-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {p0, v0}, Lcom/android/server/LooperStatsService$Lifecycle;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/LooperStats;->setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V

    .line 210
    :cond_2a
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 197
    const-class v0, Lcom/android/internal/os/LooperStats;

    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LooperStatsService$Lifecycle;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    const-string v1, "looper_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/LooperStatsService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    return-void
.end method
