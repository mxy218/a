.class Lcom/android/server/am/ActivityManagerService$ShellDelegate;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
.implements Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellDelegate"
.end annotation


# instance fields
.field private mPermissions:[Ljava/lang/String;

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mTargetUid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 5
    .param p2, "targetPacakgeName"  # Ljava/lang/String;
    .param p3, "targetUid"  # I
    .param p4, "permissions"  # [Ljava/lang/String;

    .line 19788
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19789
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetPackageName:Ljava/lang/String;

    .line 19790
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    .line 19791
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    .line 19792
    return-void
.end method

.method private isTargetOp(I)Z
    .registers 4
    .param p1, "code"  # I

    .line 19877
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 19878
    return v1

    .line 19881
    :cond_6
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 19882
    .local v0, "permission":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 19883
    return v1

    .line 19885
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isTargetPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"  # Ljava/lang/String;

    .line 19890
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 12
    .param p1, "code"  # I
    .param p2, "usage"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 19820
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p3, v0, :cond_31

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 19821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 19823
    .local v0, "identity":J
    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "com.android.shell"

    invoke-interface {p5, v2, v3, v4, v5}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2c

    .line 19826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19823
    return v2

    .line 19826
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 19829
    .end local v0  # "identity":J
    :cond_31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v0, v1, v2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkOperation(IILjava/lang/String;ZLcom/android/internal/util/function/QuadFunction;)I
    .registers 12
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "raw"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 19805
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_31

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 19806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 19808
    .local v0, "identity":J
    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.android.shell"

    .line 19809
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 19808
    invoke-interface {p5, v2, v3, v4, v5}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2c

    .line 19811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19808
    return v2

    .line 19811
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 19814
    .end local v0  # "identity":J
    :cond_31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p5, v0, v1, p3, v2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I
    .registers 9
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/util/function/TriFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 19850
    .local p4, "superImpl":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 19851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 19853
    .local v0, "identity":J
    :try_start_12
    const-string v2, "com.android.shell"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, p1, v2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    .line 19855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19853
    return v2

    .line 19855
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 19858
    .end local v0  # "identity":J
    :cond_2b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, p1, p2, v0}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;ILjava/util/function/BiFunction;)I
    .registers 7
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 19864
    .local p3, "superImpl":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_27

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 19865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 19867
    .local v0, "identity":J
    const/16 v2, 0x7d0

    :try_start_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    .line 19869
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19867
    return v2

    .line 19869
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 19872
    .end local v0  # "identity":J
    :cond_27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getDelegateUid()I
    .registers 2

    .line 19795
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    return v0
.end method

.method public noteOperation(IILjava/lang/String;Lcom/android/internal/util/function/TriFunction;)I
    .registers 14
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 19835
    .local p4, "superImpl":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_26

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 19836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 19838
    .local v0, "identity":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v5, 0x7d0

    const-string v6, "com.android.shell"

    move v4, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService;->noteProxyOperation(IILjava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 19841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19838
    return v2

    .line 19841
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 19844
    .end local v0  # "identity":J
    :cond_26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v0, v1, p3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method setPermissions([Ljava/lang/String;)V
    .registers 2
    .param p1, "permissions"  # [Ljava/lang/String;

    .line 19799
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    .line 19800
    return-void
.end method
