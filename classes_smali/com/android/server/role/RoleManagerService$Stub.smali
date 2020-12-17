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

    .line 428
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/app/role/IRoleManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"  # Lcom/android/server/role/RoleManagerService$1;

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$Stub;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 714
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v2}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_16} :catch_1f
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 719
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    return v2

    .line 719
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 716
    :catch_1f
    move-exception v2

    .line 717
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 719
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    return v3
.end method

.method private handleIncomingUser(IZLjava/lang/String;)I
    .registers 11
    .param p1, "userId"  # I
    .param p2, "allowAll"  # Z
    .param p3, "name"  # Ljava/lang/String;

    .line 625
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

    move-result v0

    return v0
.end method

.method static synthetic lambda$getSmsMessagesForFinancialApp$0(Landroid/telephony/IFinancialSmsCallback;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "callback"  # Landroid/telephony/IFinancialSmsCallback;
    .param p1, "result"  # Landroid/os/Bundle;

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "messages":Landroid/database/CursorWindow;
    if-nez p1, :cond_e

    .line 692
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "result is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 694
    :cond_e
    const-string/jumbo v1, "sms_messages"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/database/CursorWindow;

    .line 697
    :goto_18
    :try_start_18
    invoke-interface {p0, v0}, Landroid/telephony/IFinancialSmsCallback;->onGetSmsMessagesForFinancialApp(Landroid/database/CursorWindow;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 700
    goto :goto_1d

    .line 698
    :catch_1c
    move-exception v1

    .line 701
    :goto_1d
    return-void
.end method


# virtual methods
.method public addOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .registers 6
    .param p1, "listener"  # Landroid/app/role/IOnRoleHoldersChangedListener;
    .param p2, "userId"  # I

    .line 535
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 536
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 539
    :cond_2e
    const/4 v0, 0x1

    const-string v1, "addOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 540
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1200(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 547
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 548
    return-void
.end method

.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flags"  # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param
    .param p4, "userId"  # I
    .param p5, "callback"  # Landroid/os/RemoteCallback;

    .line 478
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 479
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_2b
    const/4 v0, 0x0

    const-string v1, "addRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 483
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 487
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 488
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 492
    return-void
.end method

.method public addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "addRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 590
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 592
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 593
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/role/RoleUserState;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public clearRoleHoldersAsUser(Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "flags"  # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param
    .param p3, "userId"  # I
    .param p4, "callback"  # Landroid/os/RemoteCallback;

    .line 518
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 519
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 522
    :cond_2b
    const/4 v0, 0x0

    const-string v1, "clearRoleHoldersAsUser"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p3

    .line 523
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 527
    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p3}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 530
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "fout"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 652
    return-void

    .line 655
    :cond_11
    if-eqz p3, :cond_1d

    const-string v0, "--proto"

    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 657
    .local v0, "dumpAsProto":Z
    :goto_1e
    if-eqz v0, :cond_2b

    .line 658
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .local v1, "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_3c

    .line 660
    .end local v1  # "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :cond_2b
    const-string v1, "ROLE MANAGER STATE (dumpsys role):"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 664
    .restart local v1  # "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_3c
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v2}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 665
    .local v2, "userIds":[I
    array-length v3, v2

    .line 666
    .local v3, "userIdsLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    if-ge v4, v3, :cond_60

    .line 667
    aget v5, v2, v4

    .line 669
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v6, v5}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v6

    .line 670
    .local v6, "userState":Lcom/android/server/role/RoleUserState;
    const-wide v7, 0x20b00000001L

    const-string/jumbo v9, "user_states"

    invoke-virtual {v6, v1, v9, v7, v8}, Lcom/android/server/role/RoleUserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 666
    .end local v5  # "userId":I
    .end local v6  # "userState":Lcom/android/server/role/RoleUserState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 674
    .end local v4  # "i":I
    :cond_60
    invoke-virtual {v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 675
    return-void
.end method

.method public getDefaultSmsPackage(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"  # I

    .line 639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 641
    .local v0, "identity":J
    :try_start_4
    const-string v2, "android.app.role.SMS"

    .line 642
    invoke-virtual {p0, v2, p1}, Lcom/android/server/role/RoleManagerService$Stub;->getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 641
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 644
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    return-object v2

    .line 644
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
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

    .line 612
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "getRolesHeldFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 618
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 619
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->getHeldRoles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 457
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 458
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 461
    :cond_2f
    const/4 v0, 0x0

    const-string v1, "getRoleHoldersAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 462
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 467
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 468
    .local v0, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_58

    .line 469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 471
    :cond_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getSmsMessagesForFinancialApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/telephony/IFinancialSmsCallback;)V
    .registers 8
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "params"  # Landroid/os/Bundle;
    .param p3, "callback"  # Landroid/telephony/IFinancialSmsCallback;

    .line 683
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    .line 684
    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 683
    const-string v1, "android:sms_financial_transactions"

    invoke-static {v0, v1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 687
    .local v0, "mode":I
    if-nez v0, :cond_27

    .line 688
    new-instance v1, Lcom/android/server/role/FinancialSmsManager;

    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v2}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/role/FinancialSmsManager;-><init>(Landroid/content/Context;)V

    .line 689
    .local v1, "financialSmsManager":Lcom/android/server/role/FinancialSmsManager;
    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/role/-$$Lambda$RoleManagerService$Stub$2DaS8GFEsxV7psuQ8OMLocv4QEY;

    invoke-direct {v3, p3}, Lcom/android/server/role/-$$Lambda$RoleManagerService$Stub$2DaS8GFEsxV7psuQ8OMLocv4QEY;-><init>(Landroid/telephony/IFinancialSmsCallback;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/server/role/FinancialSmsManager;->getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    .line 702
    .end local v1  # "financialSmsManager":Lcom/android/server/role/FinancialSmsManager;
    goto :goto_2d

    .line 704
    :cond_27
    const/4 v1, 0x0

    :try_start_28
    invoke-interface {p3, v1}, Landroid/telephony/IFinancialSmsCallback;->onGetSmsMessagesForFinancialApp(Landroid/database/CursorWindow;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 707
    goto :goto_2d

    .line 705
    :catch_2c
    move-exception v1

    .line 709
    :goto_2d
    return-void
.end method

.method public isRoleAvailable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "roleName"  # Ljava/lang/String;

    .line 432
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 434
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 435
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isRoleHeld(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 440
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    .line 441
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 443
    const-string/jumbo v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 444
    const-string/jumbo v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 446
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 447
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v2, v1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 448
    .local v2, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_2b

    .line 449
    const/4 v3, 0x0

    return v3

    .line 451
    :cond_2b
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 633
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

    .line 635
    return-void
.end method

.method public removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .registers 6
    .param p1, "listener"  # Landroid/app/role/IOnRoleHoldersChangedListener;
    .param p2, "userId"  # I

    .line 553
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 554
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void

    .line 557
    :cond_2e
    const/4 v0, 0x1

    const-string/jumbo v1, "removeOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 558
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 564
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-nez p1, :cond_50

    .line 565
    return-void

    .line 567
    :cond_50
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 568
    return-void
.end method

.method public removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flags"  # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param
    .param p4, "userId"  # I
    .param p5, "callback"  # Landroid/os/RemoteCallback;

    .line 498
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 499
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 502
    :cond_2b
    const/4 v0, 0x0

    const-string/jumbo v1, "removeRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 503
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 507
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 508
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 512
    return-void
.end method

.method public removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string/jumbo v2, "removeRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 604
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 606
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 607
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/role/RoleUserState;->removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
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

    .line 572
    .local p1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string/jumbo v2, "setRoleNamesFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string/jumbo v0, "roleNames cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 579
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->setRoleNames(Ljava/util/List;)V

    .line 580
    return-void
.end method
