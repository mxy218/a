.class Lcom/android/server/infra/AbstractMasterSystemService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;)V
    .registers 2

    .line 766
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private getActiveServicePackageNameLocked()Ljava/lang/String;
    .registers 3

    .line 922
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 923
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 924
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 925
    return-object v1

    .line 927
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 928
    if-nez v0, :cond_15

    .line 929
    return-object v1

    .line 931
    :cond_15
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleActiveServiceRemoved(I)V
    .registers 5

    .line 886
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_5
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 888
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_22

    .line 889
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_21

    .line 891
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 894
    :cond_21
    return-void

    .line 888
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private handleActiveServiceRestartedLocked(Ljava/lang/String;I)V
    .registers 7

    .line 898
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const-string v1, " is being restarted"

    if-eqz v0, :cond_36

    .line 899
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_91

    .line 900
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holding service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 904
    :cond_36
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_5f

    .line 905
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_5f
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 911
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_91

    .line 912
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_8c

    .line 913
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eagerly recreating service for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_8c
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 918
    :cond_91
    :goto_91
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    .line 919
    return-void
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v1, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo;

    invoke-direct {v1, p1}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 937
    return-void
.end method

.method static synthetic lambda$handlePackageUpdateLocked$0(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .registers 2

    .line 936
    invoke-virtual {p1, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 12

    .line 846
    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 847
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 848
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_3b

    aget-object v4, p2, v3

    .line 849
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 850
    if-nez p4, :cond_1b

    .line 851
    monitor-exit p3

    const/4 p1, 0x1

    return p1

    .line 853
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v5

    .line 855
    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 856
    invoke-direct {p0, v0, v5}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRestartedLocked(Ljava/lang/String;I)V

    goto :goto_34

    .line 858
    :cond_2f
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 860
    :goto_34
    goto :goto_38

    .line 861
    :cond_35
    invoke-direct {p0, v4}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 848
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 864
    :cond_3b
    monitor-exit p3

    .line 865
    return v2

    .line 864
    :catchall_3d
    move-exception p1

    monitor-exit p3
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 5

    .line 870
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageDataCleared(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result p2

    .line 872
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_28
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 874
    if-eqz v1, :cond_45

    .line 875
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 876
    if-eqz v1, :cond_45

    .line 877
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 878
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedLocked(I)V

    .line 882
    :cond_45
    monitor-exit v0

    .line 883
    return-void

    .line 882
    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 829
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 830
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 831
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 832
    if-eqz v1, :cond_24

    .line 833
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 834
    if-eqz v1, :cond_24

    .line 835
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 836
    invoke-direct {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRemoved(I)V

    .line 840
    :cond_24
    monitor-exit p2

    .line 841
    return-void

    .line 840
    :catchall_26
    move-exception p1

    monitor-exit p2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6

    .line 808
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageUpdateFinished(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result p2

    .line 810
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_28
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    move-object v1, v2

    goto :goto_3f

    .line 812
    :cond_33
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 813
    :goto_3f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 814
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 815
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 816
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_67

    .line 817
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 820
    :cond_67
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_70

    .line 822
    :cond_6d
    invoke-direct {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 824
    :goto_70
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_28 .. :try_end_74} :catchall_72

    throw p1
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 8

    .line 770
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageUpdateStarted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object p2

    .line 772
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 774
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_33
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 777
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v3, Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$100(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 779
    :cond_4f
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    .line 781
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_93

    .line 782
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_f0

    .line 783
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holding service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while package "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is being updated"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    .line 787
    :cond_93
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_be

    .line 788
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is being updated"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_be
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 794
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_f0

    .line 796
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_eb

    .line 797
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eagerly recreating service for user "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_eb
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 803
    :cond_f0
    :goto_f0
    monitor-exit v1

    .line 804
    return-void

    .line 803
    :catchall_f2
    move-exception p1

    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_33 .. :try_end_f4} :catchall_f2

    throw p1
.end method
