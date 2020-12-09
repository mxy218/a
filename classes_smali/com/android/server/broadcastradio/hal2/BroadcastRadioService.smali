.class public Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv"


# instance fields
.field private mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mLock:Ljava/lang/Object;

.field private final mModules:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/RadioModule;",
            ">;"
        }
    .end annotation
.end field

.field private mNextModuleId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

.field private final mServiceNameToModuleIdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .line 119
    const-string v0, "BcRadio2Srv"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 57
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    .line 97
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 120
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 122
    :try_start_2d
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p1

    .line 123
    if-nez p1, :cond_39

    .line 124
    const-string p1, "failed to get HIDL Service Manager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 127
    :cond_39
    const-string v1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    const-string v2, ""

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    invoke-interface {p1, v1, v2, v3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_42} :catch_43

    .line 130
    goto :goto_49

    .line 128
    :catch_43
    move-exception p1

    .line 129
    const-string v1, "failed to register for service notifications: "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :goto_49
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return p0
.end method

.method static synthetic access$208(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    .registers 3

    .line 42
    iget v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Landroid/os/IHwBinder$DeathRecipient;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic lambda$listModules$0(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    return-object p0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 9

    .line 177
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {v0, p2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;)V

    .line 178
    nop

    .line 179
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 180
    :try_start_9
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_39

    .line 182
    :try_start_20
    invoke-virtual {v0, v3, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    :try_end_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_20 .. :try_end_23} :catch_25
    .catchall {:try_start_20 .. :try_end_23} :catchall_39

    .line 183
    const/4 v2, 0x1

    .line 186
    goto :goto_2d

    .line 184
    :catch_25
    move-exception v3

    .line 185
    :try_start_26
    const-string v4, "BcRadio2Srv"

    const-string v5, "Announcements not supported for this module"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_2d
    goto :goto_14

    .line 188
    :cond_2e
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_39

    .line 189
    if-nez v2, :cond_38

    .line 190
    const-string p1, "BcRadio2Srv"

    const-string p2, "There are no HAL modules that support announcements"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_38
    return-object v0

    .line 188
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public hasAnyModules()Z
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 149
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public hasModule(I)Z
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 143
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public listModules()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    monitor-exit v0

    .line 135
    return-object v1

    .line 137
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    if-eqz p3, :cond_2d

    .line 160
    nop

    .line 161
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 162
    :try_start_9
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 163
    if-eqz p1, :cond_22

    .line 166
    monitor-exit p3
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_2a

    .line 168
    invoke-virtual {p1, p4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;

    move-result-object p1

    .line 169
    if-eqz p2, :cond_21

    .line 170
    invoke-virtual {p1, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 172
    :cond_21
    return-object p1

    .line 164
    :cond_22
    :try_start_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid module ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :catchall_2a
    move-exception p1

    monitor-exit p3
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw p1

    .line 157
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-audio sessions not supported with HAL 2.x"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
