.class Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ContentProviderRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalProcessHandle"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExternalProcessHanldle"


# instance fields
.field mAcquisitionCount:I

.field mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field final mOwningProcessName:Ljava/lang/String;

.field final mOwningUid:I

.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/am/ContentProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 5

    .line 275
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    .line 277
    iput p3, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningUid:I

    .line 278
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningProcessName:Ljava/lang/String;

    .line 280
    const/4 p1, 0x0

    :try_start_c
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 283
    goto :goto_29

    .line 281
    :catch_10
    move-exception p1

    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t register for death for token: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ExternalProcessHanldle"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_29
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 324
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    .line 325
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 326
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/am/ContentProviderRecord;->access$000(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V

    .line 328
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 329
    return-void

    .line 328
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V
    .registers 6

    .line 293
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_93

    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_93

    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningUid:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningProcessName:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 297
    :cond_1c
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 298
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v0

    .line 299
    const-string v1, ": proc="

    const-string v2, "ActivityManager"

    if-nez v0, :cond_53

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package in referenced provider "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 301
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 302
    :cond_53
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v3, :cond_7a

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inactive holder in referenced provider "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 304
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 306
    :cond_7a
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 307
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {v1, v0, p1}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object p1

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningUid:I

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningProcessName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 307
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 312
    :cond_93
    :goto_93
    return-void
.end method

.method public stopAssociation()V
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_a

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 319
    :cond_a
    return-void
.end method

.method public unlinkFromOwnDeathLocked()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 288
    return-void
.end method
