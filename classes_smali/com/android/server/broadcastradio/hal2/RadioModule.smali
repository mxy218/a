.class Lcom/android/server/broadcastradio/hal2/RadioModule;
.super Ljava/lang/Object;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.module"


# instance fields
.field private final mAidlTunerSessions:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/broadcastradio/hal2/TunerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mAntennaConnected:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

.field private mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field private final mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;


# direct methods
.method private constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 70
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 74
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 126
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 127
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 128
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object p1
.end method

.method private fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 7

    .line 236
    const-string v0, "BcRadio2Srv.module"

    .line 237
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 239
    :try_start_15
    iget-object v4, v3, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;)V
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_15 .. :try_end_1a} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_32

    .line 247
    :catch_1b
    move-exception v3

    .line 248
    const-string v4, "Failed to invoke ITunerCallback: "

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 240
    :catch_22
    move-exception v4

    .line 242
    const-string v4, "Removing dead TunerSession"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-nez v2, :cond_2f

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :cond_2f
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_32
    nop

    .line 250
    :goto_33
    goto :goto_9

    .line 251
    :cond_34
    if-eqz v2, :cond_3b

    .line 252
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 254
    :cond_3b
    return-void
.end method

.method static synthetic lambda$addAnnouncementListener$5(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .registers 4

    .line 275
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 276
    iput-object p3, p1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 277
    return-void
.end method

.method static synthetic lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .registers 4

    .line 166
    const-string/jumbo v0, "openSession"

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 167
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 168
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$0(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .registers 3

    .line 138
    if-nez p1, :cond_4

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 139
    :cond_4
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V
    .registers 3

    .line 143
    if-nez p1, :cond_4

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 144
    :cond_4
    return-void
.end method

.method private lockAndFireLater(Ljava/lang/Runnable;)V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tYabuulPwbVXcGUDicZUG2Lh3f8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tYabuulPwbVXcGUDicZUG2Lh3f8;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;
    .registers 7

    .line 133
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v1

    .line 134
    if-nez v1, :cond_8

    return-object v0

    .line 136
    :cond_8
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 137
    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;

    invoke-direct {v4, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 141
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v3}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 142
    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;

    invoke-direct {v4, v3}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 146
    nop

    .line 147
    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object v4

    iget-object v2, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    iget-object v3, v3, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 146
    invoke-static {p0, p1, v4, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert;->propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p0

    .line 149
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {v2, v1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_39} :catch_3a

    return-object v2

    .line 150
    :catch_3a
    move-exception p0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BcRadio2Srv.module"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 260
    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 263
    :cond_16
    new-instance p1, Landroid/util/MutableInt;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 264
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 265
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V

    .line 273
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter p2

    .line 274
    :try_start_29
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$QlTfH9411GzmESnxSlsnKbLa8hw;

    invoke-direct {v4, p1, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$QlTfH9411GzmESnxSlsnKbLa8hw;-><init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v3, v0, v2, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 278
    monitor-exit p2
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_41

    .line 279
    iget p1, p1, Landroid/util/MutableInt;->value:I

    const-string p2, "addAnnouncementListener"

    invoke-static {p2, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 281
    new-instance p1, Lcom/android/server/broadcastradio/hal2/RadioModule$3;

    invoke-direct {p1, p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    return-object p1

    .line 278
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit p2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public closeSessions(Ljava/lang/Integer;)V
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 194
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 195
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 196
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    .line 197
    array-length v0, v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_22

    aget-object v3, v1, v2

    .line 198
    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 200
    :cond_22
    return-void

    .line 196
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 3

    .line 232
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method getImage(I)Landroid/graphics/Bitmap;
    .registers 7

    .line 293
    if-eqz p1, :cond_3c

    .line 296
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v0

    .line 297
    :try_start_5
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$7jNXPMuvH-DQ1rLv9_WZ2s1UiPQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$7jNXPMuvH-DQ1rLv9_WZ2s1UiPQ;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 299
    const/4 v2, 0x0

    move v3, v2

    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 300
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v3

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 302
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_39

    .line 304
    array-length p1, v1

    if-nez p1, :cond_33

    const/4 p1, 0x0

    return-object p1

    .line 306
    :cond_33
    array-length p1, v1

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 302
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1

    .line 293
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image ID is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    return-object v0
.end method

.method public synthetic lambda$fanoutAidlCallback$4$RadioModule(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public synthetic lambda$getImage$6$RadioModule(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getImage(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$lockAndFireLater$3$RadioModule(Ljava/lang/Runnable;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-eqz p1, :cond_2c

    .line 206
    const-string p1, "BcRadio2Srv.module"

    const-string v1, "closing HAL tuner session"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2e

    .line 208
    :try_start_1b
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->close()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_2e

    .line 211
    goto :goto_29

    .line 209
    :catch_21
    move-exception p1

    .line 210
    :try_start_22
    const-string v1, "BcRadio2Srv.module"

    const-string v2, "mHalTunerSession.close() failed: "

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_29
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 214
    :cond_2c
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez v1, :cond_24

    .line 164
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 165
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$PbMDkfYDR1vn12EtbZSZscvNDM8;

    invoke-direct {v4, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$PbMDkfYDR1vn12EtbZSZscvNDM8;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v2, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 169
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 171
    :cond_24
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;)V

    .line 172
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    if-eqz v2, :cond_3d

    .line 177
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 179
    :cond_3d
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-eqz v2, :cond_46

    .line 180
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 183
    :cond_46
    monitor-exit v0

    return-object v1

    .line 184
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p1
.end method
