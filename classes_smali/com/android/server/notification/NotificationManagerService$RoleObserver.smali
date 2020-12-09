.class Lcom/android/server/notification/NotificationManagerService$RoleObserver;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mNonBlockableDefaultApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 8622
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8623
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 8624
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    .line 8625
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8626
    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 5

    .line 8713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    const/high16 v1, 0x20000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 8714
    :catch_9
    move-exception v0

    .line 8715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "role manager has bad default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8717
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public init()V
    .registers 13

    .line 8629
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 8630
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    .line 8631
    const/4 v1, 0x0

    move v2, v1

    :goto_13
    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_98

    .line 8632
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 8633
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    sget-object v5, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8634
    move v4, v1

    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_94

    .line 8635
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 8636
    new-instance v6, Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    sget-object v8, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    aget-object v8, v8, v2

    .line 8637
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 8636
    invoke-virtual {v7, v8, v9}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 8638
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 8639
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_80

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 8640
    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v9, v11}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8641
    goto :goto_5f

    .line 8642
    :cond_80
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8643
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8, v7}, Lcom/android/server/notification/PreferencesHelper;->updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 8634
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 8631
    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 8647
    :cond_98
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 8648
    return-void
.end method

.method public isApprovedPackageForRoleForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8652
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 12

    .line 8665
    nop

    .line 8666
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 8667
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 8668
    nop

    .line 8669
    const/4 v0, 0x1

    goto :goto_18

    .line 8666
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8673
    :cond_18
    :goto_18
    if-nez v0, :cond_1b

    .line 8674
    return-void

    .line 8677
    :cond_1b
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 8680
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 8681
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 8682
    nop

    .line 8683
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 8685
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 8686
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 8688
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8689
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 8690
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8692
    :cond_6a
    goto :goto_55

    .line 8693
    :cond_6b
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8694
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 8695
    new-instance v7, Landroid/util/Pair;

    .line 8696
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8695
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8698
    :cond_95
    goto :goto_6f

    .line 8701
    :cond_96
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8702
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8705
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/notification/PreferencesHelper;->updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 8709
    return-void
.end method
