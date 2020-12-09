.class final Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutofillCompatState"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mUserSpecs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 852
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    .line 940
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 942
    const-string p1, "N/A"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    monitor-exit v0

    return-void

    .line 945
    :cond_e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 947
    const/4 v2, 0x0

    move v3, v2

    :goto_24
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6c

    .line 948
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 949
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    const-string v5, "User: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 952
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 953
    move v5, v2

    :goto_46
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_69

    .line 954
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 955
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 956
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 953
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 947
    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 959
    :cond_6c
    monitor-exit v0

    .line 960
    return-void

    .line 959
    :catchall_6e
    move-exception p1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw p1
.end method


# virtual methods
.method addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V
    .registers 9

    .line 899
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 901
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 903
    :cond_e
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 904
    if-nez v1, :cond_22

    .line 905
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 906
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 908
    :cond_22
    new-instance p5, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    invoke-direct {p5, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;-><init>(J[Ljava/lang/String;)V

    invoke-virtual {v1, p1, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    monitor-exit v0

    .line 911
    return-void

    .line 910
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 881
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 883
    monitor-exit v0

    return-object v2

    .line 885
    :cond_a
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 886
    if-nez p2, :cond_16

    .line 887
    monitor-exit v0

    return-object v2

    .line 889
    :cond_16
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 890
    if-nez p1, :cond_20

    .line 891
    monitor-exit v0

    return-object v2

    .line 893
    :cond_20
    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->access$1100(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)[Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 894
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method isCompatibilityModeRequested(Ljava/lang/String;JI)Z
    .registers 10

    .line 863
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 865
    monitor-exit v0

    return v2

    .line 867
    :cond_a
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/ArrayMap;

    .line 868
    if-nez p4, :cond_16

    .line 869
    monitor-exit v0

    return v2

    .line 871
    :cond_16
    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 872
    if-nez p1, :cond_20

    .line 873
    monitor-exit v0

    return v2

    .line 875
    :cond_20
    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->access$1000(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)J

    move-result-wide v3

    cmp-long p1, p2, v3

    if-gtz p1, :cond_29

    const/4 v2, 0x1

    :cond_29
    monitor-exit v0

    return v2

    .line 876
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method removeCompatibilityModeRequests(I)V
    .registers 4

    .line 914
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_17

    .line 916
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 917
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_17

    .line 918
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 921
    :cond_17
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method reset(I)V
    .registers 6

    .line 925
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_3e

    .line 927
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 928
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 929
    if-nez p1, :cond_24

    .line 930
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_20

    const-string p1, "AutofillManagerService"

    const-string/jumbo v1, "reseting mUserSpecs"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_20
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    goto :goto_3e

    .line 933
    :cond_24
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3e

    const-string v1, "AutofillManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUserSpecs down to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method
