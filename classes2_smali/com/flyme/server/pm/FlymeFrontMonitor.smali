.class public Lcom/flyme/server/pm/FlymeFrontMonitor;
.super Ljava/lang/Object;
.source "FlymeFrontMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;,
        Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static INSTANCE:Lcom/flyme/server/pm/FlymeFrontMonitor; = null

.field private static final TAG:Ljava/lang/String; = "FlymeFrontMonitor"


# instance fields
.field private activityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityName:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I

.field private packageListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/server/pm/FlymeFrontMonitor;->DEBUG:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/server/pm/FlymeFrontMonitor;->INSTANCE:Lcom/flyme/server/pm/FlymeFrontMonitor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mPackageName:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/flyme/server/pm/FlymeFrontMonitor;
    .registers 1

    .line 38
    sget-object v0, Lcom/flyme/server/pm/FlymeFrontMonitor;->INSTANCE:Lcom/flyme/server/pm/FlymeFrontMonitor;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/flyme/server/pm/FlymeFrontMonitor;

    invoke-direct {v0}, Lcom/flyme/server/pm/FlymeFrontMonitor;-><init>()V

    sput-object v0, Lcom/flyme/server/pm/FlymeFrontMonitor;->INSTANCE:Lcom/flyme/server/pm/FlymeFrontMonitor;

    .line 41
    :cond_b
    sget-object v0, Lcom/flyme/server/pm/FlymeFrontMonitor;->INSTANCE:Lcom/flyme/server/pm/FlymeFrontMonitor;

    return-object v0
.end method

.method private notifyActivityChangedLocked()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;

    .line 122
    .local v1, "al":Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;
    iget-object v2, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mActivityName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;->frontActivityChanged(Ljava/lang/String;)V

    .line 123
    .end local v1  # "al":Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;
    goto :goto_6

    .line 124
    :cond_18
    return-void
.end method

.method private notifyPackageChangedLocked(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 16
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "lpackageName"  # Ljava/lang/String;
    .param p5, "luid"  # I
    .param p6, "lpid"  # I

    .line 115
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;

    .line 116
    .local v1, "pl":Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;
    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;->frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    .line 117
    .end local v1  # "pl":Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;
    goto :goto_6

    .line 118
    :cond_1d
    return-void
.end method


# virtual methods
.method public getFrontActivityName()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mActivityName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 73
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFrontPackageName()Ljava/lang/String;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 79
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFrontUid()I
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mUid:I

    monitor-exit v0

    return v1

    .line 85
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public registerFrontActivityListener(Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;)V
    .registers 4
    .param p1, "al"  # Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;

    .line 96
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 98
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_10
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public registerFrontPackageListener(Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;)V
    .registers 4
    .param p1, "pl"  # Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;

    .line 89
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 91
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_10
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "activityName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "pid"  # I

    .line 45
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    iput-object p1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mActivityName:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 48
    iget-object v6, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mUid:I

    iget v8, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mPid:I

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v2 .. v8}, Lcom/flyme/server/pm/FlymeFrontMonitor;->notifyPackageChangedLocked(Ljava/lang/String;IILjava/lang/String;II)V

    .line 49
    iput-object p2, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mPackageName:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mUid:I

    .line 51
    iput p4, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mPid:I

    .line 53
    :cond_20
    invoke-direct {p0}, Lcom/flyme/server/pm/FlymeFrontMonitor;->notifyActivityChangedLocked()V

    .line 54
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_77

    .line 55
    sget-boolean v0, Lcom/flyme/server/pm/FlymeFrontMonitor;->DEBUG:Z

    if-eqz v0, :cond_76

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFrontActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getFrontActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFrontMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFrontUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getFrontUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFrontMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFrontPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFrontMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_76
    return-void

    .line 54
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public unregisterFrontActivityListener(Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;)V
    .registers 4
    .param p1, "al"  # Lcom/flyme/server/pm/FlymeFrontMonitor$FrontActivityListener;

    .line 109
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterFrontPackageListener(Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;)V
    .registers 4
    .param p1, "pl"  # Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;

    .line 103
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
