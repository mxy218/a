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

    .line 18916
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18917
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetPackageName:Ljava/lang/String;

    .line 18918
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    .line 18919
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    .line 18920
    return-void
.end method

.method private isTargetOp(I)Z
    .registers 4

    .line 19005
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 19006
    return v1

    .line 19009
    :cond_6
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    .line 19010
    if-nez p1, :cond_d

    .line 19011
    return v1

    .line 19013
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isTargetPermission(Ljava/lang/String;)Z
    .registers 3

    .line 19018
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 8
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

    .line 18948
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p3, v0, :cond_31

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 18949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 18951
    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.android.shell"

    invoke-interface {p5, p1, p2, v0, v1}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2c

    .line 18954
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18951
    return p1

    .line 18954
    :catchall_2c
    move-exception p1

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 18957
    :cond_31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public checkOperation(IILjava/lang/String;ZLcom/android/internal/util/function/QuadFunction;)I
    .registers 8
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

    .line 18933
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_31

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 18934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 18936
    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.android.shell"

    .line 18937
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 18936
    invoke-interface {p5, p1, v0, v1, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2c

    .line 18939
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18936
    return p1

    .line 18939
    :catchall_2c
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 18942
    :cond_31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I
    .registers 7
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

    .line 18978
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 18979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 18981
    :try_start_12
    const-string p2, "com.android.shell"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    .line 18983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18981
    return p1

    .line 18983
    :catchall_26
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 18986
    :cond_2b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public checkUidPermission(Ljava/lang/String;ILjava/util/function/BiFunction;)I
    .registers 6
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

    .line 18992
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_27

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 18993
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 18995
    const/16 p2, 0x7d0

    :try_start_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    .line 18997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18995
    return p1

    .line 18997
    :catchall_22
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 19000
    :cond_27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method getDelegateUid()I
    .registers 2

    .line 18923
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    return v0
.end method

.method public noteOperation(IILjava/lang/String;Lcom/android/internal/util/function/TriFunction;)I
    .registers 13
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

    .line 18963
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_26

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 18964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 18966
    :try_start_e
    iget-object p4, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v4, 0x7d0

    const-string v5, "com.android.shell"

    move v3, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->noteProxyOperation(IILjava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 18969
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18966
    return p1

    .line 18969
    :catchall_21
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 18972
    :cond_26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p1, p2, p3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method setPermissions([Ljava/lang/String;)V
    .registers 2

    .line 18927
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    .line 18928
    return-void
.end method
