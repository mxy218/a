.class public Lcom/meizu/settings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field mRebuildForeground:Z

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/meizu/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)V
    .registers 3

    .line 779
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 780
    iput-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/ApplicationsState$Session;Landroid/content/pm/ApplicationInfo;)I
    .registers 2

    .line 765
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->installSystemApkSynchronize(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method

.method private installSystemApkSynchronize(Landroid/content/pm/ApplicationInfo;)I
    .registers 6

    .line 965
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installSystemApkAsync:  package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationsState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, -0x5

    if-nez v0, :cond_3f

    .line 968
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " file not exit: install package fail  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationsState"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 971
    :cond_3f
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    monitor-enter v0

    .line 972
    :try_start_42
    sget-object v2, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_80

    .line 974
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 976
    :try_start_52
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    move-result p0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_59

    return p0

    .line 978
    :catch_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Exception: install package fail  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApplicationsState"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    sget-object p0, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    monitor-enter p0

    .line 980
    :try_start_74
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 981
    monitor-exit p0

    return v1

    :catchall_7d
    move-exception p1

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_7d

    throw p1

    :catchall_80
    move-exception p0

    .line 973
    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0
.end method


# virtual methods
.method public getAllApps()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 810
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 811
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p0
.end method

.method handleRebuildList()V
    .registers 12

    .line 860
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_3
    iget-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_9

    .line 862
    monitor-exit v0

    return-void

    .line 865
    :cond_9
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 866
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    .line 867
    iput-boolean v3, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v4, 0x0

    .line 868
    iput-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 869
    iput-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 870
    iget-boolean v5, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildForeground:Z

    if-eqz v5, :cond_1f

    const/4 v5, -0x2

    .line 871
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 872
    iput-boolean v3, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildForeground:Z

    .line 874
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_154

    if-eqz v1, :cond_25

    .line 877
    invoke-interface {v1}, Lcom/meizu/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 881
    :cond_25
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v5, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 882
    :try_start_2a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 883
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_151

    .line 885
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 887
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 888
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 890
    iget-object v6, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v7, v6, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const v8, 0xc0200

    iget v6, v6, Lcom/meizu/settings/applications/ApplicationsState;->mCurSelectProfileId:I

    invoke-virtual {v7, v4, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 898
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 899
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 900
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_70
    const-string v4, "ApplicationsState"

    const-string v7, "Rebuilding..."

    .line 904
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ge v3, v4, :cond_114

    .line 906
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, v8}, Lcom/meizu/settings/applications/ApplicationsState;->access$200(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    if-eqz v4, :cond_110

    .line 908
    iget-object v8, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 909
    iput-boolean v7, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    :cond_98
    if-eqz v1, :cond_a0

    .line 911
    invoke-interface {v1, v4}, Lcom/meizu/settings/applications/ApplicationsState$AppFilter;->filterApp(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Z

    move-result v7

    if-eqz v7, :cond_110

    .line 912
    :cond_a0
    iget-object v7, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_a5
    const-string v8, "ApplicationsState"

    const-string/jumbo v9, "rebuild acquired lock"

    .line 913
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v8, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget v8, v8, Lcom/meizu/settings/applications/ApplicationsState;->mCurSelectProfileId:I

    iget-object v9, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-eq v8, v9, :cond_bd

    .line 915
    monitor-exit v7

    goto :goto_110

    .line 917
    :cond_bd
    iget-object v8, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    const-string v8, "ApplicationsState"

    .line 919
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", userId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 920
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "label:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 919
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "ApplicationsState"

    const-string/jumbo v8, "rebuild releasing lock"

    .line 922
    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    monitor-exit v7

    goto :goto_110

    :catchall_10d
    move-exception p0

    monitor-exit v7
    :try_end_10f
    .catchall {:try_start_a5 .. :try_end_10f} :catchall_10d

    throw p0

    :cond_110
    :goto_110
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_77

    :cond_114
    if-eqz v2, :cond_119

    .line 929
    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 932
    :cond_119
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_11c
    iget-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_147

    .line 934
    iput-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 935
    iget-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v1, :cond_12e

    .line 936
    iput-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 937
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_147

    .line 939
    :cond_12e
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v7, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_147

    .line 940
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 942
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 946
    :cond_147
    :goto_147
    monitor-exit v0
    :try_end_148
    .catchall {:try_start_11c .. :try_end_148} :catchall_14e

    const/16 p0, 0xa

    .line 948
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_14e
    move-exception p0

    .line 946
    :try_start_14f
    monitor-exit v0
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw p0

    :catchall_151
    move-exception p0

    .line 883
    :try_start_152
    monitor-exit v5
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    throw p0

    :catchall_154
    move-exception p0

    .line 874
    :try_start_155
    monitor-exit v0
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw p0
.end method

.method public installSystemApkAsync(Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 989
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$Session$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$Session$1;-><init>(Lcom/meizu/settings/applications/ApplicationsState$Session;Landroid/content/pm/ApplicationInfo;)V

    .line 1025
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public pause()V
    .registers 4

    const-string v0, "ApplicationsState"

    const-string/jumbo v1, "pause about to acquire lock..."

    .line 796
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 798
    :try_start_d
    iget-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    .line 799
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 800
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/meizu/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 801
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 802
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->doPauseIfNeededLocked()V

    :cond_25
    const-string p0, "ApplicationsState"

    const-string v1, "...pause releasing lock"

    .line 804
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public rebuild(Lcom/meizu/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 816
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->rebuild(Lcom/meizu/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public rebuild(Lcom/meizu/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_5d

    .line 823
    :try_start_8
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 824
    iput-boolean v2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v3, 0x0

    .line 825
    iput-boolean v3, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 826
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 827
    iput-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 828
    iput-boolean p3, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildForeground:Z

    const/4 p1, 0x0

    .line 829
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 830
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_37

    .line 831
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 833
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 835
    :cond_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_5a

    .line 838
    :try_start_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 v3, 0xfa

    add-long/2addr p1, v3

    .line 840
    :catch_3f
    :goto_3f
    iget-object p3, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez p3, :cond_54

    .line 841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_5d

    cmp-long p3, v3, p1

    if-ltz p3, :cond_4c

    goto :goto_54

    .line 846
    :cond_4c
    :try_start_4c
    iget-object p3, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v3, p1, v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_53} :catch_3f
    .catchall {:try_start_4c .. :try_end_53} :catchall_5d

    goto :goto_3f

    .line 851
    :cond_54
    :goto_54
    :try_start_54
    iput-boolean v2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 853
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5d

    return-object p0

    :catchall_5a
    move-exception p0

    .line 835
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p0

    :catchall_5d
    move-exception p0

    .line 854
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public release()V
    .registers 3

    .line 952
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->pause()V

    .line 953
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 954
    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    .line 956
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 957
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 959
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 960
    :try_start_18
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 961
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public resume()V
    .registers 4

    const-string v0, "ApplicationsState"

    const-string/jumbo v1, "resume about to acquire lock..."

    .line 784
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 786
    :try_start_d
    iget-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    .line 787
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 788
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iput-boolean v1, v2, Lcom/meizu/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 789
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$Session;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 791
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_26

    const-string p0, "ApplicationsState"

    const-string v0, "...resume releasing lock"

    .line 792
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_26
    move-exception p0

    .line 791
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method
