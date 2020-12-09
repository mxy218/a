.class Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field private final mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 5

    .line 263
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 265
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 266
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    .line 267
    return-void
.end method

.method private mapInstallerResultToApiCode(I)I
    .registers 5

    .line 315
    if-eqz p1, :cond_14

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const/4 v2, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v2, :cond_11

    if-eq p1, v0, :cond_f

    .line 327
    return v1

    .line 325
    :cond_f
    const/4 p1, 0x5

    return p1

    .line 321
    :cond_11
    return v0

    .line 323
    :cond_12
    return v2

    .line 319
    :cond_13
    return v0

    .line 317
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private sendInstallNotificationIntentIfRequired(I)V
    .registers 2

    .line 309
    if-nez p1, :cond_b

    .line 310
    iget-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    .line 312
    :cond_b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 271
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneInstallStarted(Ljava/lang/String;)V

    .line 273
    nop

    .line 276
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e} :catch_64
    .catchall {:try_start_c .. :try_end_e} :catchall_61

    .line 280
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 282
    new-instance v4, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v4, v3}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 283
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v3

    .line 286
    invoke-direct {p0, v3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->sendInstallNotificationIntentIfRequired(I)V

    .line 288
    invoke-direct {p0, v3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mapInstallerResultToApiCode(I)I

    move-result v3

    .line 289
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 290
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v4, v5, v3}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_53

    .line 294
    nop

    .line 295
    :try_start_3e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_50
    .catchall {:try_start_3e .. :try_end_41} :catchall_4d

    .line 302
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    goto :goto_89

    :catchall_4d
    move-exception v2

    move v3, v0

    goto :goto_95

    .line 295
    :catch_50
    move-exception v2

    move v3, v0

    goto :goto_66

    .line 276
    :catchall_53
    move-exception v3

    :try_start_54
    throw v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 295
    :catchall_55
    move-exception v4

    if-eqz v2, :cond_60

    :try_start_58
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v2

    :try_start_5d
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    throw v4
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_64
    .catchall {:try_start_5d .. :try_end_61} :catchall_61

    .line 302
    :catchall_61
    move-exception v2

    move v3, v1

    goto :goto_95

    .line 295
    :catch_64
    move-exception v2

    move v3, v1

    .line 296
    :goto_66
    :try_start_66
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to install distro."

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 298
    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v2, v0}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 299
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v2, v4, v0}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_94

    .line 302
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 304
    :goto_89
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    nop

    .line 306
    return-void

    .line 302
    :catchall_94
    move-exception v2

    :goto_95
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 304
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
