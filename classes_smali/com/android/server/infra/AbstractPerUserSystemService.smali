.class public abstract Lcom/android/server/infra/AbstractPerUserSystemService;
.super Ljava/lang/Object;
.source "AbstractPerUserSystemService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "TS;TM;>;M:",
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "TM;TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field protected final mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSetupComplete:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;

.field protected final mUserId:I


# direct methods
.method protected constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 76
    iput-object p2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 77
    iput p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 78
    invoke-direct {p0, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    .line 79
    return-void
.end method

.method private updateIsSetupComplete(I)V
    .registers 4

    .line 83
    nop

    .line 84
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 86
    return-void
.end method


# virtual methods
.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 351
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "User: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 352
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2f

    .line 353
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Service Label: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target SDK: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 356
    :cond_2f
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v0, :cond_49

    .line 357
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Name resolver: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p2, v1}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 360
    :cond_49
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Disabled by UserManager: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 361
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Setup complete: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_78

    .line 363
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Service UID: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 366
    :cond_78
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 367
    return-void
.end method

.method protected final getComponentNameLocked()Ljava/lang/String;
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getMaster()Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    :cond_9
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    :goto_f
    monitor-exit v0

    return-object v1

    .line 269
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final getServiceIconLocked()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    .line 300
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 299
    :goto_12
    return-object v0
.end method

.method public final getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public final getServiceLabelLocked()Ljava/lang/CharSequence;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_14

    .line 289
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 288
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/ServiceInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public final getServicePackageName()Ljava/lang/String;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 278
    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method protected final getServiceUidLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_13

    .line 224
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    const-string v1, "getServiceUidLocked(): no mServiceInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_11
    const/4 v0, -0x1

    return v0

    .line 227
    :cond_13
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public final getTargedSdkLocked()I
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_a
    return v0
.end method

.method public final getUserId()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    return v0
.end method

.method protected handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 2

    .line 113
    return-void
.end method

.method public final isDebug()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    return v0
.end method

.method protected final isDisabledByUserRestrictionsLocked()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    return v0
.end method

.method protected isEnabledLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected final isSetupCompletedLocked()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    return v0
.end method

.method public final isTemporaryServiceSetLocked()Z
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v0

    return v0
.end method

.method public final isVerbose()Z
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    return v0
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 104
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "not overridden"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final removeSelfFromCacheLocked()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 308
    return-void
.end method

.method protected final resetTemporaryServiceLocked()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->resetTemporaryService(I)V

    .line 250
    return-void
.end method

.method protected updateLocked(Z)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_47

    .line 149
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): wasEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSetupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_47
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    .line 155
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result p1

    if-eq v0, p1, :cond_59

    const/4 p1, 0x1

    goto :goto_5a

    :cond_59
    const/4 p1, 0x0

    :goto_5a
    return p1
.end method

.method protected final updateServiceInfoLocked()Landroid/content/ComponentName;
    .registers 9

    .line 165
    nop

    .line 166
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_e3

    .line 167
    nop

    .line 168
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\': "

    if-nez v2, :cond_5f

    .line 171
    :try_start_15
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_19} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_3f

    .line 172
    :try_start_19
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v4, v2, v5, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 174
    if-nez v4, :cond_3c

    .line 175
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad service name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_3c} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3c} :catch_3d

    .line 180
    :cond_3c
    goto :goto_61

    .line 177
    :catch_3d
    move-exception v4

    goto :goto_41

    :catch_3f
    move-exception v4

    move-object v2, v1

    .line 178
    :goto_41
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting service info for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object v4, v1

    goto :goto_61

    .line 169
    :cond_5f
    move-object v2, v1

    move-object v4, v2

    .line 183
    :goto_61
    if-eqz v4, :cond_9a

    .line 184
    :try_start_63
    invoke-virtual {p0, v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 185
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v4, :cond_c2

    .line 186
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set component for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and info as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 190
    :cond_9a
    iput-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 191
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v4, :cond_c2

    .line 192
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset component for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_c2} :catch_c3

    .line 198
    :cond_c2
    :goto_c2
    goto :goto_e2

    .line 195
    :catch_c3
    move-exception v4

    .line 196
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad ServiceInfo for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 200
    :goto_e2
    move-object v1, v2

    :cond_e3
    return-object v1
.end method
