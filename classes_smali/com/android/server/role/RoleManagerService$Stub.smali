.class Lcom/android/server/role/RoleManagerService$Stub;
.super Landroid/app/role/IRoleManager$Stub;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/app/role/IRoleManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3

    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$Stub;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6

    .line 713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 715
    :try_start_4
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v2}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_16} :catch_1f
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    return p1

    .line 720
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 717
    :catch_1f
    move-exception p1

    .line 718
    const/4 p1, -0x1

    .line 720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    return p1
.end method

.method private handleIncomingUser(IZLjava/lang/String;)I
    .registers 11

    .line 626
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method static synthetic lambda$getSmsMessagesForFinancialApp$0(Landroid/telephony/IFinancialSmsCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 691
    nop

    .line 692
    if-nez p1, :cond_f

    .line 693
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "result is null."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_18

    .line 695
    :cond_f
    const-string/jumbo v0, "sms_messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/database/CursorWindow;

    .line 698
    :goto_18
    :try_start_18
    invoke-interface {p0, p1}, Landroid/telephony/IFinancialSmsCallback;->onGetSmsMessagesForFinancialApp(Landroid/database/CursorWindow;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 701
    goto :goto_1d

    .line 699
    :catch_1c
    move-exception p0

    .line 702
    :goto_1d
    return-void
.end method


# virtual methods
.method public addOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .registers 6

    .line 536
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 537
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 540
    :cond_2e
    const/4 v0, 0x1

    const-string v1, "addOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 541
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1200(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object p2

    .line 548
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 549
    return-void
.end method

.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 9
    .param p3  # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param

    .line 479
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 480
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 483
    :cond_2b
    const/4 v0, 0x0

    const-string v1, "addRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 484
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 488
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 489
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 493
    return-void
.end method

.method public addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 586
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "addRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 591
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 593
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/role/RoleUserState;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearRoleHoldersAsUser(Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 8
    .param p2  # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param

    .line 519
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 520
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "user "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 523
    :cond_2b
    const/4 v0, 0x0

    const-string v1, "clearRoleHoldersAsUser"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p3

    .line 524
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 528
    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p3}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 531
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 652
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 653
    return-void

    .line 656
    :cond_11
    const/4 v0, 0x0

    if-eqz p3, :cond_1e

    const-string v1, "--proto"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    const/4 p3, 0x1

    goto :goto_1f

    :cond_1e
    move p3, v0

    .line 658
    :goto_1f
    if-eqz p3, :cond_2d

    .line 659
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    move-object p1, p2

    goto :goto_3e

    .line 661
    :cond_2d
    const-string p1, "ROLE MANAGER STATE (dumpsys role):"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance p1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {p3, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 665
    :goto_3e
    iget-object p2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {p2}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object p2

    .line 666
    array-length p3, p2

    .line 667
    nop

    :goto_4a
    if-ge v0, p3, :cond_62

    .line 668
    aget v1, p2, v0

    .line 670
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v2, v1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    .line 671
    const-wide v2, 0x20b00000001L

    const-string/jumbo v4, "user_states"

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/android/server/role/RoleUserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 675
    :cond_62
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 676
    return-void
.end method

.method public getDefaultSmsPackage(I)Ljava/lang/String;
    .registers 5

    .line 640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 642
    :try_start_4
    const-string v2, "android.app.role.SMS"

    .line 643
    invoke-virtual {p0, v2, p1}, Lcom/android/server/role/RoleManagerService$Stub;->getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 642
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    return-object p1

    .line 645
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "getRolesHeldFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 619
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 620
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->getHeldRoles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 459
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 462
    :cond_2f
    const/4 v0, 0x0

    const-string v1, "getRoleHoldersAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 463
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 468
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 469
    if-nez p1, :cond_58

    .line 470
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 472
    :cond_58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method public getSmsMessagesForFinancialApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/telephony/IFinancialSmsCallback;)V
    .registers 6

    .line 684
    iget-object p1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    .line 685
    invoke-virtual {p1}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 684
    const-string v0, "android:sms_financial_transactions"

    invoke-static {p1, v0}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 688
    if-nez p1, :cond_27

    .line 689
    new-instance p1, Lcom/android/server/role/FinancialSmsManager;

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/role/FinancialSmsManager;-><init>(Landroid/content/Context;)V

    .line 690
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$Stub$2DaS8GFEsxV7psuQ8OMLocv4QEY;

    invoke-direct {v1, p3}, Lcom/android/server/role/-$$Lambda$RoleManagerService$Stub$2DaS8GFEsxV7psuQ8OMLocv4QEY;-><init>(Landroid/telephony/IFinancialSmsCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/server/role/FinancialSmsManager;->getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    .line 703
    goto :goto_2d

    .line 705
    :cond_27
    const/4 p1, 0x0

    :try_start_28
    invoke-interface {p3, p1}, Landroid/telephony/IFinancialSmsCallback;->onGetSmsMessagesForFinancialApp(Landroid/database/CursorWindow;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 708
    goto :goto_2d

    .line 706
    :catch_2c
    move-exception p1

    .line 710
    :goto_2d
    return-void
.end method

.method public isRoleAvailable(Ljava/lang/String;)Z
    .registers 4

    .line 433
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 435
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->isRoleAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRoleHeld(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 441
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 444
    const-string/jumbo v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 445
    const-string/jumbo v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 447
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 448
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 449
    if-nez p1, :cond_2b

    .line 450
    const/4 p1, 0x0

    return p1

    .line 452
    :cond_2b
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 634
    new-instance v0, Lcom/android/server/role/RoleManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/role/RoleManagerShellCommand;-><init>(Landroid/app/role/IRoleManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/role/RoleManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 636
    return-void
.end method

.method public removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .registers 6

    .line 554
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 555
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void

    .line 558
    :cond_2e
    const/4 v0, 0x1

    const-string/jumbo v1, "removeOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 559
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object p2

    .line 565
    if-nez p1, :cond_4f

    .line 566
    return-void

    .line 568
    :cond_4f
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 569
    return-void
.end method

.method public removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 9
    .param p3  # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param

    .line 499
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 500
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 503
    :cond_2b
    const/4 v0, 0x0

    const-string/jumbo v1, "removeRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 504
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 508
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 509
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 513
    return-void
.end method

.method public removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 600
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string/jumbo v2, "removeRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 605
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 607
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 608
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/role/RoleUserState;->removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setRoleNamesFromController(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string/jumbo v2, "setRoleNamesFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string/jumbo v0, "roleNames cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 580
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->setRoleNames(Ljava/util/List;)V

    .line 581
    return-void
.end method
