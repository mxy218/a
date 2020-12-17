.class final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 494
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "x1"  # Lcom/android/server/dreams/DreamManagerService$1;

    .line 494
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 599
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1700(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    nop

    .line 603
    return-void

    .line 601
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dream()V
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 563
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1500(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$800(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DreamManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 498
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 500
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p2}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 503
    nop

    .line 504
    return-void

    .line 502
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "immediate"  # Z

    .line 608
    if-eqz p1, :cond_15

    .line 612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 614
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->access$1800(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    nop

    .line 618
    return-void

    .line 616
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 609
    .end local v0  # "ident":J
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceAmbientDisplayEnabled(Z)V
    .registers 5
    .param p1, "enabled"  # Z

    .line 652
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 656
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2100(Lcom/android/server/dreams/DreamManagerService;Z)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    nop

    .line 660
    return-void

    .line 658
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDefaultDreamComponent()Landroid/content/ComponentName;
    .registers 5

    .line 534
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 536
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 537
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 539
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v0}, Lcom/android/server/dreams/DreamManagerService;->access$1300(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 541
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    return-object v3

    .line 541
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 511
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 513
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v0}, Lcom/android/server/dreams/DreamManagerService;->access$1100(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 515
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    return-object v3

    .line 515
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isDreaming()Z
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1400(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    return v2

    .line 553
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "componentNames"  # [Landroid/content/ComponentName;

    .line 521
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 524
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 526
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v0, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1200(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 528
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    nop

    .line 530
    return-void

    .line 528
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "screenState"  # I
    .param p3, "screenBrightness"  # I

    .line 623
    if-eqz p1, :cond_15

    .line 627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 629
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->access$1900(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 631
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    nop

    .line 633
    return-void

    .line 631
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 624
    .end local v0  # "ident":J
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 638
    if-eqz p1, :cond_15

    .line 642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 644
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2000(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    nop

    .line 648
    return-void

    .line 646
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 639
    .end local v0  # "ident":J
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testDream(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "dream"  # Landroid/content/ComponentName;

    .line 571
    if-eqz p1, :cond_45

    .line 574
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 577
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 578
    .local v1, "currentUserId":I
    if-eq v0, v1, :cond_32

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborted attempt to start a test dream while a different  user is active: callingUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DreamManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 585
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 587
    .local v2, "ident":J
    :try_start_36
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v4, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->access$1600(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_40

    .line 589
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    nop

    .line 591
    return-void

    .line 589
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 572
    .end local v0  # "callingUserId":I
    .end local v1  # "currentUserId":I
    .end local v2  # "ident":J
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
