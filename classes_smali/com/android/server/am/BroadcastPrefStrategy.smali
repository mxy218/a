.class public Lcom/android/server/am/BroadcastPrefStrategy;
.super Ljava/lang/Object;
.source "BroadcastPrefStrategy.java"


# static fields
.field private static final DISABLE_BROADCAST_PREF:Ljava/lang/String; = "disable_broadcast_pref"

.field private static final TAG:Ljava/lang/String; = "BPS"

.field private static final WORK_STATE:I = 0x4e08


# instance fields
.field private final mActionExcludePkgToPkg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mActionExcludePkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActionIncludePkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisableBroadcasPref:Z

.field private mExcludeAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImmidatePackageName:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPkgSuperWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 70
    return-void
.end method

.method private clearConfigLocked()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 170
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 171
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 172
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mImmidatePackageName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private getForegroundApkPackge()Ljava/lang/String;
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "target"  # Ljava/lang/Object;

    .line 541
    instance-of v0, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_a

    .line 542
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    return-object v0

    .line 544
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 545
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v1
.end method

.method private getReceiverUid(Ljava/lang/Object;)I
    .registers 7
    .param p1, "target"  # Ljava/lang/Object;

    .line 773
    const/16 v0, -0x64

    .line 774
    .local v0, "uid":I
    const/4 v1, 0x0

    .line 775
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    instance-of v2, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_17

    .line 776
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 777
    .local v2, "filter":Lcom/android/server/am/BroadcastFilter;
    iget-object v3, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_16

    .line 778
    iget-object v3, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 780
    .end local v2  # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_16
    goto :goto_1e

    .line 781
    :cond_17
    move-object v2, p1

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 782
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 785
    .end local v2  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1e
    const-string v2, "getReceiverUid target = "

    const-string v3, "BPS"

    if-nez v1, :cond_41

    .line 786
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v4, :cond_3f

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " info = null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_3f
    const/4 v2, 0x0

    return v2

    .line 792
    :cond_41
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 793
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v4, :cond_61

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_61
    return v0
.end method

.method private isSystemApp(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "target"  # Ljava/lang/Object;

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    instance-of v1, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v1, :cond_15

    .line 703
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .line 704
    .local v1, "filter":Lcom/android/server/am/BroadcastFilter;
    iget-object v2, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_14

    .line 705
    iget-object v2, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 707
    .end local v1  # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_14
    goto :goto_1c

    .line 708
    :cond_15
    move-object v1, p1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 709
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 712
    .end local v1  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1c
    const/4 v1, 0x0

    const-string/jumbo v2, "isSystemApp target = "

    const-string v3, "BPS"

    if-nez v0, :cond_40

    .line 713
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v4, :cond_3f

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " info = null, so is not from system app"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_3f
    return v1

    .line 719
    :cond_40
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const-string v6, " info ="

    if-eqz v4, :cond_6a

    .line 723
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v1, :cond_69

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is from system app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_69
    return v5

    .line 728
    :cond_6a
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v4, :cond_8b

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not from system app"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_8b
    return v1
.end method

.method private isSystemSignatures(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;

    .line 740
    const/4 v0, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_51

    .line 743
    :cond_a
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 744
    return v3

    .line 746
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_1e

    .line 747
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 749
    :cond_1e
    const/4 v2, 0x0

    .line 751
    .local v2, "flag":Z
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1, v1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_2a

    if-ltz v1, :cond_28

    move v0, v3

    :cond_28
    move v2, v0

    .line 754
    goto :goto_2e

    .line 752
    :catch_2a
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 755
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_2e
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v0, :cond_50

    if-eqz v2, :cond_50

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSystemSignatures packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has  system signatures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_50
    return v2

    .line 741
    .end local v2  # "flag":Z
    :cond_51
    :goto_51
    return v0
.end method

.method private isWorkingState(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 762
    invoke-static {p1}, Lcom/meizu/pps/observer/PPSAppTypeManager;->getType(Ljava/lang/String;)I

    move-result v0

    .line 763
    .local v0, "type":I
    and-int/lit16 v1, v0, 0x4e08

    if-eqz v1, :cond_2f

    .line 764
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v1, :cond_2d

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWorkingState packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v2, v0, 0x4e08

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BPS"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2d
    const/4 v1, 0x1

    return v1

    .line 769
    :cond_2f
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addExcludeAction(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"  # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 182
    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 183
    const-string v1, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " add exclude intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 187
    return-void

    .line 186
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public addSuperWhitePkg(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 208
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 209
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 210
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v1, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " add super white package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 215
    return-void

    .line 214
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final broadcastIntentImmediately(Landroid/content/Intent;Ljava/lang/String;ZZ)I
    .registers 23
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "ordered"  # Z
    .param p4, "sticky"  # Z

    .line 647
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    const/4 v0, -0x1

    if-eqz v15, :cond_af

    if-nez v14, :cond_13

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v3, v14

    move-object v1, v15

    goto/16 :goto_b5

    .line 650
    :cond_13
    iget-object v2, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    .line 651
    .local v16, "resolvedType":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 654
    iget-object v2, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mImmidatePackageName:Ljava/lang/String;

    if-nez v2, :cond_92

    .line 655
    iget-object v0, v15, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 656
    iput-object v14, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mImmidatePackageName:Ljava/lang/String;

    .line 657
    iget-object v2, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_9f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v0, -0x1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move-object/from16 v17, v13

    move/from16 v13, p3

    move/from16 v14, p4

    move-object v1, v15

    move v15, v0

    :try_start_49
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ActivityManagerService;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 659
    const-string v0, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntentImmediately intent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_8a

    move-object/from16 v3, p2

    :try_start_62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ordered = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_88

    move/from16 v4, p3

    :try_start_6c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " sticky = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_86

    move/from16 v5, p4

    :try_start_76
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x0

    monitor-exit v17
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_ad

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 665
    :catchall_86
    move-exception v0

    goto :goto_8f

    :catchall_88
    move-exception v0

    goto :goto_8d

    :catchall_8a
    move-exception v0

    move-object/from16 v3, p2

    :goto_8d
    move/from16 v4, p3

    :goto_8f
    move/from16 v5, p4

    goto :goto_a8

    .line 664
    :cond_92
    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v17, v13

    move-object v3, v14

    move-object v1, v15

    :try_start_9a
    monitor-exit v17
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_ad

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 665
    :catchall_9f
    move-exception v0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v17, v13

    move-object v3, v14

    move-object v1, v15

    :goto_a8
    :try_start_a8
    monitor-exit v17
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_ad

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_ad
    move-exception v0

    goto :goto_a8

    .line 647
    .end local v16  # "resolvedType":Ljava/lang/String;
    :cond_af
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v3, v14

    move-object v1, v15

    .line 648
    :goto_b5
    return v0
.end method

.method public disableBroadcastPref(Z)V
    .registers 6
    .param p1, "disable"  # Z

    .line 669
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 670
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mDisableBroadcasPref:Z

    .line 671
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_broadcast_pref"

    .line 672
    if-eqz p1, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 671
    :goto_17
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 674
    return-void

    .line 673
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 800
    const-string v0, "BroadcastPrefStrategy  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisableBroadcasPref = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mDisableBroadcasPref:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_50

    .line 803
    const-string v0, "    mPkgSuperWhiteList :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 809
    .end local v0  # "i":I
    :cond_50
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_85

    .line 810
    const-string v0, "    ExcludeAction :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_5e
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_85

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 816
    .end local v0  # "i":I
    :cond_85
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v1, "        package:"

    const-string v2, "      Action:"

    if-lez v0, :cond_ec

    .line 817
    const-string v0, "    Action include pkg:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 819
    .local v0, "iter":Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 820
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 821
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 822
    .local v4, "key":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 824
    .local v5, "val":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 825
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_cc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 826
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cc

    .line 828
    .end local v3  # "entry":Ljava/util/Map$Entry;
    .end local v4  # "key":Ljava/lang/Object;
    .end local v5  # "val":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_eb
    goto :goto_a0

    .line 830
    .end local v0  # "iter":Ljava/util/Iterator;
    :cond_ec
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14f

    .line 831
    const-string v0, "    Action exclude pkg:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 833
    .restart local v0  # "iter":Ljava/util/Iterator;
    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 834
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 835
    .restart local v3  # "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 836
    .restart local v4  # "key":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 838
    .restart local v5  # "val":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 839
    .restart local v6  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_12f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14e

    .line 840
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12f

    .line 842
    .end local v3  # "entry":Ljava/util/Map$Entry;
    .end local v4  # "key":Ljava/lang/Object;
    .end local v5  # "val":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_14e
    goto :goto_103

    .line 845
    .end local v0  # "iter":Ljava/util/Iterator;
    :cond_14f
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1ea

    .line 846
    const-string v0, "    Action exclude pkg to pkg:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 848
    .restart local v0  # "iter":Ljava/util/Iterator;
    :goto_166
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ea

    .line 849
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 850
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 851
    .local v2, "key":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      from pkg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 853
    .local v3, "val":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 854
    .local v4, "iter2":Ljava/util/Iterator;
    :goto_198
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e8

    .line 855
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 856
    .local v5, "entry2":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 857
    .local v6, "key2":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      to pkg :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .line 859
    .local v7, "val2":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 860
    .local v8, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1c6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e7

    .line 861
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      action :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c6

    .line 863
    .end local v5  # "entry2":Ljava/util/Map$Entry;
    .end local v6  # "key2":Ljava/lang/Object;
    .end local v7  # "val2":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8  # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1e7
    goto :goto_198

    .line 864
    .end local v1  # "entry":Ljava/util/Map$Entry;
    .end local v2  # "key":Ljava/lang/Object;
    .end local v3  # "val":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4  # "iter2":Ljava/util/Iterator;
    :cond_1e8
    goto/16 :goto_166

    .line 866
    .end local v0  # "iter":Ljava/util/Iterator;
    :cond_1ea
    return-void
.end method

.method public filterReceiverFromInterceptLocked(Ljava/util/List;IILandroid/content/Intent;)V
    .registers 22
    .param p1, "receivers"  # Ljava/util/List;
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "intent"  # Landroid/content/Intent;

    .line 87
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    iget-boolean v0, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mDisableBroadcasPref:Z

    if-eqz v0, :cond_b

    .line 88
    return-void

    .line 90
    :cond_b
    if-eqz v2, :cond_ea

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ea

    .line 91
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 92
    .local v4, "count":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_aa

    .line 93
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 94
    .local v6, "nextReceiver":Ljava/lang/Object;
    instance-of v0, v6, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_29

    .line 95
    goto/16 :goto_a6

    .line 97
    :cond_29
    move-object v7, v6

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    :try_start_2c
    iget-object v0, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_42} :catch_9f

    .line 107
    .local v0, "isSingleton":Z
    nop

    .line 111
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 113
    .local v8, "receiverUid":I
    const/16 v9, 0x3e8

    const/4 v10, 0x0

    if-eq v3, v9, :cond_62

    if-eqz v0, :cond_62

    iget-object v9, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 114
    invoke-virtual {v9, v3, v8}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 115
    iget-object v9, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v11, v10}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iput-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 118
    :cond_62
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 119
    .local v9, "targetProcess":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v9, v12, v10}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 122
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v10, :cond_79

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_79

    .line 123
    goto :goto_a6

    .line 127
    :cond_79
    const-string v11, ""

    .line 128
    .local v11, "callerPkg":Ljava/lang/String;
    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 129
    .local v12, "calleePkg":Ljava/lang/String;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 131
    .local v13, "calleeUid":I
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v16, v0

    .end local v0  # "isSingleton":Z
    .local v16, "isSingleton":Z
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    .line 134
    .local v0, "component":Landroid/content/ComponentName;
    move-object/from16 v14, p4

    .line 135
    .local v14, "broadcast":Landroid/content/Intent;
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_a6

    .line 103
    .end local v0  # "component":Landroid/content/ComponentName;
    .end local v8  # "receiverUid":I
    .end local v9  # "targetProcess":Ljava/lang/String;
    .end local v10  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v11  # "callerPkg":Ljava/lang/String;
    .end local v12  # "calleePkg":Ljava/lang/String;
    .end local v13  # "calleeUid":I
    .end local v14  # "broadcast":Landroid/content/Intent;
    .end local v16  # "isSingleton":Z
    :catch_9f
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    add-int/lit8 v5, v5, -0x1

    .line 106
    nop

    .line 92
    .end local v0  # "e":Ljava/lang/SecurityException;
    .end local v6  # "nextReceiver":Ljava/lang/Object;
    .end local v7  # "info":Landroid/content/pm/ResolveInfo;
    :goto_a6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_19

    .line 159
    .end local v5  # "i":I
    :cond_aa
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v0, :cond_ea

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " filterReceiverFromInterceptLocked intent = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " start count "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " final count = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " delta = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v5, "BPS"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v4  # "count":I
    :cond_ea
    return-void
.end method

.method public getReceiverByIntent(Landroid/content/Intent;Ljava/lang/String;IZ)Ljava/util/List;
    .registers 22
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "needRegistered"  # Z

    .line 558
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    iget-object v5, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 559
    if-nez v2, :cond_12

    if-eqz v3, :cond_16

    :cond_12
    if-nez v2, :cond_1c

    if-eqz v3, :cond_1c

    .line 560
    :cond_16
    const/4 v0, 0x0

    monitor-exit v5
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 562
    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 563
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 566
    .local v6, "origId":J
    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ne v4, v9, :cond_32

    .line 568
    iget-object v11, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getStartedUserArray()[I

    move-result-object v11

    .local v11, "users":[I
    goto :goto_36

    .line 571
    .end local v11  # "users":[I
    :cond_32
    new-array v11, v8, [I

    aput v4, v11, v10

    .line 574
    .restart local v11  # "users":[I
    :goto_36
    const/4 v12, 0x0

    .line 575
    .local v12, "receivers":Ljava/util/List;
    const/4 v13, 0x0

    .line 576
    .local v13, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    iget-object v14, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 577
    .local v14, "resolvedType":Ljava/lang/String;
    if-nez p4, :cond_57

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/high16 v16, 0x40000000  # 2.0f

    and-int v15, v15, v16

    if-nez v15, :cond_57

    .line 580
    iget-object v15, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15, v2, v14, v0, v11}, Lcom/android/server/am/ActivityManagerService;->collectReceiverComponentsForBMS(Landroid/content/Intent;Ljava/lang/String;I[I)Ljava/util/List;

    move-result-object v15

    move-object v12, v15

    .line 584
    :cond_57
    if-ne v4, v9, :cond_8c

    const/16 v9, 0x7d0

    if-ne v0, v9, :cond_8c

    .line 586
    move v9, v10

    .local v9, "i":I
    :goto_5e
    array-length v15, v11

    if-ge v9, v15, :cond_8b

    .line 587
    iget-object v15, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v8, "no_debugging_features"

    aget v10, v11, v9

    invoke-virtual {v15, v8, v10}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 589
    goto :goto_86

    .line 591
    :cond_71
    iget-object v8, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    aget v10, v11, v9

    .line 592
    const/4 v15, 0x0

    invoke-virtual {v8, v2, v14, v15, v10}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v8

    .line 594
    .local v8, "registeredReceiversForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    if-nez v13, :cond_81

    .line 595
    move-object v10, v8

    move-object v13, v10

    .end local v13  # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v10, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    goto :goto_86

    .line 596
    .end local v10  # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .restart local v13  # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :cond_81
    if-eqz v8, :cond_86

    .line 597
    invoke-interface {v13, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 586
    .end local v8  # "registeredReceiversForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :cond_86
    :goto_86
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto :goto_5e

    .end local v9  # "i":I
    :cond_8b
    goto :goto_96

    .line 601
    :cond_8c
    iget-object v8, v1, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v14, v9, v4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v8

    move-object v13, v8

    .line 605
    :goto_96
    if-nez v12, :cond_9e

    .line 606
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v8

    .line 609
    :cond_9e
    if-eqz v13, :cond_b2

    .line 610
    const/4 v8, 0x0

    move v9, v8

    .restart local v9  # "i":I
    :goto_a2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v9, v8, :cond_b2

    .line 611
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/lit8 v9, v9, 0x1

    goto :goto_a2

    .line 614
    .end local v9  # "i":I
    :cond_b2
    if-eqz v3, :cond_e9

    .line 615
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_b5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e9

    .line 616
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 617
    .local v9, "receiver":Ljava/lang/Object;
    instance-of v10, v9, Lcom/android/server/am/BroadcastFilter;

    if-eqz v10, :cond_d4

    .line 618
    move-object v10, v9

    check-cast v10, Lcom/android/server/am/BroadcastFilter;

    .line 619
    .local v10, "filter":Lcom/android/server/am/BroadcastFilter;
    iget-object v15, v10, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d3

    .line 620
    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 621
    add-int/lit8 v8, v8, -0x1

    .line 623
    .end local v10  # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_d3
    goto :goto_e6

    .line 624
    :cond_d4
    move-object v10, v9

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 625
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e6

    .line 626
    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 627
    add-int/lit8 v8, v8, -0x1

    .line 615
    .end local v9  # "receiver":Ljava/lang/Object;
    .end local v10  # "info":Landroid/content/pm/ResolveInfo;
    :cond_e6
    :goto_e6
    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_b5

    .line 633
    .end local v8  # "i":I
    :cond_e9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    monitor-exit v5
    :try_end_ed
    .catchall {:try_start_1c .. :try_end_ed} :catchall_f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v12

    .line 635
    .end local v0  # "callingUid":I
    .end local v6  # "origId":J
    .end local v11  # "users":[I
    .end local v12  # "receivers":Ljava/util/List;
    .end local v13  # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v14  # "resolvedType":Ljava/lang/String;
    :catchall_f1
    move-exception v0

    :try_start_f2
    monitor-exit v5
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isDisableBroadcastPref()Z
    .registers 5

    .line 677
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 678
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_broadcast_pref"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 680
    .local v1, "disable":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 681
    .end local v1  # "disable":I
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public realFliterReceiverLocked(Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;Z)V
    .registers 30
    .param p1, "callerPackage"  # Ljava/lang/String;
    .param p2, "receivers"  # Ljava/util/List;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "onlyRegisterded"  # Z

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mDisableBroadcasPref:Z

    if-eqz v4, :cond_d

    .line 326
    return-void

    .line 328
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 330
    .local v5, "startCount":I
    const/4 v6, 0x0

    .line 331
    .local v6, "endCount":I
    const/4 v7, 0x0

    .line 332
    .local v7, "frozenCount":I
    const/4 v8, 0x0

    .line 335
    .local v8, "systemAppCount":I
    move-object/from16 v9, p3

    iget-object v10, v9, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v10}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v10

    const/high16 v11, 0x10000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_65

    .line 337
    iget-object v10, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mImmidatePackageName:Ljava/lang/String;

    if-eqz v10, :cond_65

    .line 338
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_27
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5f

    .line 339
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 340
    .local v11, "receiver":Ljava/lang/Object;
    instance-of v12, v11, Lcom/android/server/am/BroadcastFilter;

    if-eqz v12, :cond_48

    .line 341
    move-object v12, v11

    check-cast v12, Lcom/android/server/am/BroadcastFilter;

    .line 342
    .local v12, "filter":Lcom/android/server/am/BroadcastFilter;
    iget-object v13, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mImmidatePackageName:Ljava/lang/String;

    iget-object v14, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_47

    .line 343
    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 344
    add-int/lit8 v10, v10, -0x1

    .line 346
    .end local v12  # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_47
    goto :goto_5c

    .line 347
    :cond_48
    move-object v12, v11

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 348
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    iget-object v13, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mImmidatePackageName:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5c

    .line 349
    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 350
    add-int/lit8 v10, v10, -0x1

    .line 338
    .end local v11  # "receiver":Ljava/lang/Object;
    .end local v12  # "info":Landroid/content/pm/ResolveInfo;
    :cond_5c
    :goto_5c
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    .line 354
    .end local v10  # "i":I
    :cond_5f
    if-nez v3, :cond_64

    .line 355
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mImmidatePackageName:Ljava/lang/String;

    .line 357
    :cond_64
    return-void

    .line 362
    :cond_65
    const-string/jumbo v10, "realFliterReceiverLocked action = "

    const-string v11, "BPS"

    if-eqz v4, :cond_356

    if-eqz v2, :cond_356

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_356

    .line 363
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BroadcastPrefStrategy;->getForegroundApkPackge()Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "foregroundPkg":Ljava/lang/String;
    const/4 v13, 0x0

    .line 366
    .local v13, "actionIncludePkgsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v14, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8e

    .line 367
    iget-object v14, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Ljava/util/Set;

    .line 370
    :cond_8e
    const/4 v14, 0x0

    .line 371
    .local v14, "actionExcludePkgsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v15, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a0

    .line 372
    iget-object v15, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Ljava/util/Set;

    .line 374
    :cond_a0
    const/4 v15, 0x0

    .line 375
    .local v15, "actionExcludePkgToPkgSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_bf

    move/from16 v16, v5

    .end local v5  # "startCount":I
    .local v16, "startCount":I
    const-string v5, "android"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    iget-object v5, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 376
    iget-object v5, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/util/HashMap;

    goto :goto_c1

    .line 375
    .end local v16  # "startCount":I
    .restart local v5  # "startCount":I
    :cond_bf
    move/from16 v16, v5

    .line 378
    .end local v5  # "startCount":I
    .restart local v16  # "startCount":I
    :cond_c1
    :goto_c1
    iget-object v5, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 379
    .local v5, "isExcludeAction":Z
    if-nez v13, :cond_ee

    if-nez v14, :cond_ee

    if-nez v15, :cond_ee

    if-nez v5, :cond_ee

    .line 380
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v10, :cond_eb

    .line 381
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    .end local v5  # "isExcludeAction":Z
    .local v17, "isExcludeAction":Z
    const-string/jumbo v5, "realFliterReceiverLocked nothing to do action = "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 380
    .end local v17  # "isExcludeAction":Z
    .restart local v5  # "isExcludeAction":Z
    :cond_eb
    move/from16 v17, v5

    .line 383
    .end local v5  # "isExcludeAction":Z
    .restart local v17  # "isExcludeAction":Z
    :goto_ed
    return-void

    .line 379
    .end local v17  # "isExcludeAction":Z
    .restart local v5  # "isExcludeAction":Z
    :cond_ee
    move/from16 v17, v5

    .line 385
    .end local v5  # "isExcludeAction":Z
    .restart local v17  # "isExcludeAction":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f1
    move/from16 v18, v6

    .end local v6  # "endCount":I
    .local v18, "endCount":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_34a

    .line 386
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 387
    .local v6, "nextReceiver":Ljava/lang/Object;
    invoke-direct {v0, v6}, Lcom/android/server/am/BroadcastPrefStrategy;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, "packageName":Ljava/lang/String;
    if-nez v9, :cond_10a

    .line 389
    move/from16 v23, v8

    move-object/from16 v19, v12

    move-object v12, v1

    goto/16 :goto_339

    .line 401
    :cond_10a
    if-eqz v12, :cond_145

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_145

    .line 402
    sget-boolean v19, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v19, :cond_13d

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current foreground pkg = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " so do not filter"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v8

    move-object/from16 v19, v12

    move-object/from16 v12, p1

    goto/16 :goto_339

    .line 402
    :cond_13d
    move/from16 v23, v8

    move-object/from16 v19, v12

    move-object/from16 v12, p1

    goto/16 :goto_339

    .line 410
    :cond_145
    iget-object v1, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 411
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v1, :cond_178

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  pkg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is super white , so do not filter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v8

    move-object/from16 v19, v12

    move-object/from16 v12, p1

    goto/16 :goto_339

    .line 411
    :cond_178
    move/from16 v23, v8

    move-object/from16 v19, v12

    move-object/from16 v12, p1

    goto/16 :goto_339

    .line 419
    :cond_180
    const/4 v1, 0x0

    .line 420
    .local v1, "isSuperAuthority":Z
    invoke-direct {v0, v6}, Lcom/android/server/am/BroadcastPrefStrategy;->isSystemApp(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_193

    invoke-direct {v0, v9}, Lcom/android/server/am/BroadcastPrefStrategy;->isSystemSignatures(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_193

    invoke-direct {v0, v9}, Lcom/android/server/am/BroadcastPrefStrategy;->isWorkingState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 421
    :cond_193
    const/4 v1, 0x1

    .line 423
    :cond_194
    const-string v3, " packageName = "

    if-eqz v1, :cond_1c4

    .line 424
    sget-boolean v19, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v19, :cond_1bc

    .line 425
    move-object/from16 v19, v12

    .end local v12  # "foregroundPkg":Ljava/lang/String;
    .local v19, "foregroundPkg":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is systemapp or is in working state, so do not filter "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1be

    .line 424
    .end local v19  # "foregroundPkg":Ljava/lang/String;
    .restart local v12  # "foregroundPkg":Ljava/lang/String;
    :cond_1bc
    move-object/from16 v19, v12

    .line 428
    .end local v12  # "foregroundPkg":Ljava/lang/String;
    .restart local v19  # "foregroundPkg":Ljava/lang/String;
    :goto_1be
    add-int/lit8 v8, v8, 0x1

    .line 429
    move-object/from16 v12, p1

    goto/16 :goto_33b

    .line 433
    .end local v19  # "foregroundPkg":Ljava/lang/String;
    .restart local v12  # "foregroundPkg":Ljava/lang/String;
    :cond_1c4
    move-object/from16 v19, v12

    .end local v12  # "foregroundPkg":Ljava/lang/String;
    .restart local v19  # "foregroundPkg":Ljava/lang/String;
    if-eqz v13, :cond_277

    .line 434
    invoke-interface {v13, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 444
    .local v12, "match":Z
    if-eqz v12, :cond_245

    .line 445
    invoke-direct {v0, v6}, Lcom/android/server/am/BroadcastPrefStrategy;->getReceiverUid(Ljava/lang/Object;)I

    move-result v20

    .line 446
    .local v20, "uid":I
    const/16 v21, -0x1

    .line 447
    .local v21, "userId":I
    if-lez v20, :cond_1df

    .line 448
    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    move-object/from16 v22, v6

    move/from16 v6, v21

    goto :goto_1e3

    .line 447
    :cond_1df
    move-object/from16 v22, v6

    move/from16 v6, v21

    .line 451
    .end local v21  # "userId":I
    .local v6, "userId":I
    .local v22, "nextReceiver":Ljava/lang/Object;
    :goto_1e3
    const/16 v21, 0x0

    .line 453
    .local v21, "frozen":Z
    if-eqz v21, :cond_21c

    .line 454
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v23, :cond_210

    .line 455
    move/from16 v23, v8

    .end local v8  # "systemAppCount":I
    .local v23, "systemAppCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v12

    .end local v12  # "match":Z
    .local v24, "match":Z
    const-string v12, " is white , but frozen so remove it"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_214

    .line 454
    .end local v23  # "systemAppCount":I
    .end local v24  # "match":Z
    .restart local v8  # "systemAppCount":I
    .restart local v12  # "match":Z
    :cond_210
    move/from16 v23, v8

    move/from16 v24, v12

    .line 458
    .end local v8  # "systemAppCount":I
    .end local v12  # "match":Z
    .restart local v23  # "systemAppCount":I
    .restart local v24  # "match":Z
    :goto_214
    add-int/lit8 v7, v7, 0x1

    .line 459
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 460
    add-int/lit8 v5, v5, -0x1

    goto :goto_220

    .line 453
    .end local v23  # "systemAppCount":I
    .end local v24  # "match":Z
    .restart local v8  # "systemAppCount":I
    .restart local v12  # "match":Z
    :cond_21c
    move/from16 v23, v8

    move/from16 v24, v12

    .line 462
    .end local v8  # "systemAppCount":I
    .end local v12  # "match":Z
    .restart local v23  # "systemAppCount":I
    .restart local v24  # "match":Z
    :goto_220
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v8, :cond_271

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is white , so do not filter "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_271

    .line 468
    .end local v20  # "uid":I
    .end local v21  # "frozen":Z
    .end local v22  # "nextReceiver":Ljava/lang/Object;
    .end local v23  # "systemAppCount":I
    .end local v24  # "match":Z
    .local v6, "nextReceiver":Ljava/lang/Object;
    .restart local v8  # "systemAppCount":I
    .restart local v12  # "match":Z
    :cond_245
    move-object/from16 v22, v6

    move/from16 v23, v8

    move/from16 v24, v12

    .end local v6  # "nextReceiver":Ljava/lang/Object;
    .end local v8  # "systemAppCount":I
    .end local v12  # "match":Z
    .restart local v22  # "nextReceiver":Ljava/lang/Object;
    .restart local v23  # "systemAppCount":I
    .restart local v24  # "match":Z
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 469
    add-int/lit8 v5, v5, -0x1

    .line 470
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v6, :cond_271

    .line 471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not white , so need  filter"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v1  # "isSuperAuthority":Z
    .end local v9  # "packageName":Ljava/lang/String;
    .end local v22  # "nextReceiver":Ljava/lang/Object;
    .end local v24  # "match":Z
    :cond_271
    :goto_271
    move-object/from16 v12, p1

    :goto_273
    move/from16 v8, v23

    goto/16 :goto_33b

    .line 479
    .end local v23  # "systemAppCount":I
    .restart local v1  # "isSuperAuthority":Z
    .restart local v6  # "nextReceiver":Ljava/lang/Object;
    .restart local v8  # "systemAppCount":I
    .restart local v9  # "packageName":Ljava/lang/String;
    :cond_277
    move-object/from16 v22, v6

    move/from16 v23, v8

    .end local v6  # "nextReceiver":Ljava/lang/Object;
    .end local v8  # "systemAppCount":I
    .restart local v22  # "nextReceiver":Ljava/lang/Object;
    .restart local v23  # "systemAppCount":I
    iget-object v3, v0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b3

    .line 481
    if-nez v1, :cond_2b3

    .line 482
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v3, :cond_2a8

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is exclude , packageName = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not system app , so need filter"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_2a8
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 487
    add-int/lit8 v5, v5, -0x1

    .line 488
    move-object/from16 v12, p1

    move/from16 v8, v23

    goto/16 :goto_33b

    .line 493
    :cond_2b3
    const-string v3, " so need filter"

    if-eqz v14, :cond_2e4

    .line 494
    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 504
    .local v6, "match":Z
    if-eqz v6, :cond_2e4

    .line 505
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 506
    add-int/lit8 v5, v5, -0x1

    .line 507
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v8, :cond_271

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not allow send to packageName = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_271

    .line 516
    .end local v6  # "match":Z
    :cond_2e4
    if-eqz v15, :cond_337

    .line 517
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_334

    .line 518
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 519
    .local v6, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_331

    .line 520
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 521
    add-int/lit8 v5, v5, -0x1

    .line 522
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v8, :cond_32d

    .line 523
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "realFliterReceiverLocked package = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can not send action :"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to package ="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_273

    .line 522
    :cond_32d
    move-object/from16 v12, p1

    goto/16 :goto_273

    .line 519
    :cond_331
    move-object/from16 v12, p1

    goto :goto_339

    .line 517
    .end local v6  # "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_334
    move-object/from16 v12, p1

    goto :goto_339

    .line 516
    :cond_337
    move-object/from16 v12, p1

    .line 385
    .end local v1  # "isSuperAuthority":Z
    .end local v9  # "packageName":Ljava/lang/String;
    .end local v19  # "foregroundPkg":Ljava/lang/String;
    .end local v22  # "nextReceiver":Ljava/lang/Object;
    .end local v23  # "systemAppCount":I
    .restart local v8  # "systemAppCount":I
    .local v12, "foregroundPkg":Ljava/lang/String;
    :goto_339
    move/from16 v8, v23

    .end local v12  # "foregroundPkg":Ljava/lang/String;
    .restart local v19  # "foregroundPkg":Ljava/lang/String;
    :goto_33b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p3

    move/from16 v3, p4

    move-object v1, v12

    move/from16 v6, v18

    move-object/from16 v12, v19

    goto/16 :goto_f1

    .end local v19  # "foregroundPkg":Ljava/lang/String;
    .restart local v12  # "foregroundPkg":Ljava/lang/String;
    :cond_34a
    move/from16 v23, v8

    move-object/from16 v19, v12

    move-object v12, v1

    .line 531
    .end local v5  # "i":I
    .end local v8  # "systemAppCount":I
    .end local v12  # "foregroundPkg":Ljava/lang/String;
    .restart local v19  # "foregroundPkg":Ljava/lang/String;
    .restart local v23  # "systemAppCount":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v5, v16

    .end local v18  # "endCount":I
    .local v6, "endCount":I
    goto :goto_35b

    .line 362
    .end local v13  # "actionIncludePkgsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14  # "actionExcludePkgsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15  # "actionExcludePkgToPkgSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v16  # "startCount":I
    .end local v17  # "isExcludeAction":Z
    .end local v19  # "foregroundPkg":Ljava/lang/String;
    .end local v23  # "systemAppCount":I
    .local v5, "startCount":I
    .restart local v8  # "systemAppCount":I
    :cond_356
    move-object v12, v1

    move/from16 v18, v6

    .line 534
    .end local v6  # "endCount":I
    .restart local v18  # "endCount":I
    move/from16 v6, v18

    .end local v18  # "endCount":I
    .restart local v6  # "endCount":I
    :goto_35b
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    if-eqz v0, :cond_3a4

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callerPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " endCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frozenCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " systemAppCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onlyRegisterded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a6

    .line 534
    :cond_3a4
    move/from16 v1, p4

    .line 538
    :goto_3a6
    return-void
.end method

.method public removeExcludeAction(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"  # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 195
    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 196
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mExcludeAction:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    const-string v1, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " remove exclude intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 200
    return-void

    .line 199
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeSuperWhitePkg(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 223
    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 224
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mPkgSuperWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    const-string v1, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " remove super white package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 228
    return-void

    .line 227
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setActionExcludePkg(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "pkgs"  # [Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 260
    if-nez p1, :cond_17

    if-nez p2, :cond_17

    .line 261
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 262
    const-string v1, "BPS"

    const-string v2, "clear mActionExcludePkgs"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 263
    :cond_17
    if-eqz p1, :cond_3d

    if-nez p2, :cond_3d

    .line 264
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove  special action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from mActionExcludePkgs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 266
    :cond_3d
    if-eqz p1, :cond_77

    if-eqz p2, :cond_77

    array-length v1, p2

    if-nez v1, :cond_45

    goto :goto_77

    .line 269
    :cond_45
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 270
    .local v1, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgs:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v2, "BPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActionExcludePkg action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkgs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 267
    .end local v1  # "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_77
    :goto_77
    const-string v1, "BPS"

    const-string/jumbo v2, "setActionExcludePkg invaild param"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_84

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 274
    return-void

    .line 273
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setActionExcludePkgToPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "fromPkg"  # Ljava/lang/String;
    .param p2, "toPkg"  # Ljava/lang/String;
    .param p3, "action"  # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 284
    if-nez p1, :cond_1a

    if-nez p2, :cond_1a

    if-nez p3, :cond_1a

    .line 285
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 286
    const-string v1, "BPS"

    const-string v2, "clear setActionExcludePkgToPkg"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    .line 287
    :cond_1a
    if-eqz p1, :cond_be

    if-eqz p2, :cond_be

    if-nez p3, :cond_22

    goto/16 :goto_be

    .line 289
    :cond_22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 290
    const-string v1, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActionExcludePkgToPkg fromPkg should not equal toPkg !!! fromPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " toPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    .line 292
    :cond_49
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 293
    const-string v1, "BPS"

    const-string/jumbo v2, "setActionExcludePkgToPkg fromPkg can not be android !!! "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 297
    :cond_5a
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 298
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 299
    .local v1, "packageToActions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 300
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .local v2, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_7c

    .line 302
    .end local v2  # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 304
    .restart local v2  # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_7c
    invoke-virtual {v2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 306
    .end local v1  # "packageToActions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2  # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v2, v1

    .line 307
    .restart local v2  # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    .restart local v1  # "packageToActions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_8e
    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v3, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionExcludePkgToPkg:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v3, "BPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setActionExcludePkgToPkg fromPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " toPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 288
    .end local v1  # "packageToActions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2  # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_be
    :goto_be
    const-string v1, "BPS"

    const-string/jumbo v2, "setActionExcludePkgToPkg invaild param"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_3 .. :try_end_c7} :catchall_cb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 315
    return-void

    .line 314
    :catchall_cb
    move-exception v1

    :try_start_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setActionIncludePkg(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "pkgs"  # [Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 237
    if-nez p1, :cond_17

    if-nez p2, :cond_17

    .line 238
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 239
    const-string v1, "BPS"

    const-string v2, "clear mActionIncludePkgs"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 240
    :cond_17
    if-eqz p1, :cond_3d

    if-nez p2, :cond_3d

    .line 241
    iget-object v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "BPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove  special action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from mActionIncludePkgs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 243
    :cond_3d
    if-eqz p1, :cond_77

    if-eqz p2, :cond_77

    array-length v1, p2

    if-nez v1, :cond_45

    goto :goto_77

    .line 246
    :cond_45
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 247
    .local v1, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mActionIncludePkgs:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v2, "BPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActionIncludePkg action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkgs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 244
    .end local v1  # "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_77
    :goto_77
    const-string v1, "BPS"

    const-string/jumbo v2, "setActionIncludePkg invaild param"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_84

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 251
    return-void

    .line 250
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public systemReady()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "disable_broadcast_pref"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "disable":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastPrefStrategy;->mDisableBroadcasPref:Z

    .line 76
    return-void
.end method
