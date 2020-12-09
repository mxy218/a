.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .registers 2

    .line 816
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z
    .registers 7

    .line 845
    nop

    .line 846
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object p1

    .line 848
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 849
    return v0

    .line 852
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 853
    move v2, v0

    :goto_f
    if-ge v2, v1, :cond_2a

    .line 854
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 855
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 856
    const/4 p1, 0x1

    return p1

    .line 853
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 860
    :cond_2a
    return v0
.end method

.method private hasPrintService(Ljava/lang/String;)Z
    .registers 5

    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$400(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 831
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    .line 829
    const v2, 0x10800004

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 833
    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 13

    .line 905
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_12

    return p3

    .line 906
    :cond_12
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 910
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    invoke-static {v0, v1, p3, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 912
    nop

    .line 914
    nop

    .line 915
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v2

    .line 916
    if-nez v2, :cond_2e

    .line 917
    monitor-exit p1

    return p3

    .line 920
    :cond_2e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p3

    .line 921
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 922
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 923
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 924
    array-length v5, p2

    move v6, p3

    :goto_49
    if-ge v6, v5, :cond_5d

    aget-object v7, p2, v6

    .line 925
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 926
    if-nez p4, :cond_57

    .line 927
    monitor-exit p1

    return v1

    .line 929
    :cond_57
    nop

    .line 930
    move v3, v1

    goto :goto_5d

    .line 924
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 933
    :cond_5d
    :goto_5d
    goto :goto_33

    .line 934
    :cond_5e
    if-eqz v3, :cond_63

    .line 935
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 937
    :cond_63
    monitor-exit p1

    return p3

    .line 938
    :catchall_65
    move-exception p2

    monitor-exit p1
    :try_end_67
    .catchall {:try_start_19 .. :try_end_67} :catchall_65

    throw p2
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 5

    .line 943
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_11

    return-void

    .line 944
    :cond_11
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 945
    :try_start_18
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 946
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p1

    .line 948
    invoke-virtual {p1}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 950
    :cond_2c
    monitor-exit p2

    .line 951
    return-void

    .line 950
    :catchall_2e
    move-exception p1

    monitor-exit p2
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 6

    .line 865
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 866
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 869
    nop

    .line 870
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 871
    :try_start_24
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 872
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 873
    :cond_30
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 874
    const/4 v2, 0x1

    .line 876
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_3b

    .line 878
    if-eqz v2, :cond_3a

    .line 879
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 881
    :cond_3a
    return-void

    .line 876
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 885
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_11

    return-void

    .line 886
    :cond_11
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 889
    nop

    .line 890
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 891
    :try_start_24
    invoke-direct {p0, p2, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 892
    invoke-virtual {p2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 893
    const/4 v1, 0x1

    .line 895
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_35

    .line 897
    if-eqz v1, :cond_34

    .line 898
    invoke-virtual {p2}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 900
    :cond_34
    return-void

    .line 895
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method
