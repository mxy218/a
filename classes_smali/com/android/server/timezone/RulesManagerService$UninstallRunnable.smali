.class Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
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
    name = "UninstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 4

    .line 363
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 365
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    .line 366
    return-void
.end method

.method private sendUninstallNotificationIntentIfRequired(I)V
    .registers 3

    .line 403
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_1a

    .line 408
    :cond_6
    iget-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationUnstaged()V

    .line 409
    goto :goto_1a

    .line 405
    :cond_10
    iget-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    .line 406
    nop

    .line 414
    :goto_1a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 370
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallStarted(Ljava/lang/String;)V

    .line 371
    nop

    .line 373
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageUninstall()I

    move-result v2

    .line 376
    invoke-direct {p0, v2}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->sendUninstallNotificationIntentIfRequired(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_3c
    .catchall {:try_start_c .. :try_end_19} :catchall_39

    .line 378
    if-eqz v2, :cond_20

    if-ne v2, v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v2, v1

    goto :goto_21

    :cond_20
    :goto_20
    move v2, v0

    .line 385
    :goto_21
    if-eqz v2, :cond_25

    move v3, v1

    goto :goto_26

    :cond_25
    move v3, v0

    .line 386
    :goto_26
    :try_start_26
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 387
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-static {v4, v3}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    .line 388
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v4, v5, v3}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_37
    .catchall {:try_start_26 .. :try_end_36} :catchall_6c

    goto :goto_56

    .line 389
    :catch_37
    move-exception v3

    goto :goto_3e

    .line 396
    :catchall_39
    move-exception v0

    move v2, v1

    goto :goto_6d

    .line 389
    :catch_3c
    move-exception v3

    move v2, v1

    .line 390
    :goto_3e
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 391
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-static {v4, v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    .line 392
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to uninstall distro."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v3, v4, v0}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_6c

    .line 396
    :goto_56
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 398
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 399
    nop

    .line 400
    return-void

    .line 396
    :catchall_6c
    move-exception v0

    :goto_6d
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 398
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
