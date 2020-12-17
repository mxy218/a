.class final Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;
.super Lcom/android/internal/infra/GlobalWhitelistState;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GlobalContentCaptureOptions"
.end annotation


# instance fields
.field private final mServicePackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGlobalWhitelistStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemporaryServices:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGlobalWhitelistStateLock"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 753
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Lcom/android/internal/infra/GlobalWhitelistState;-><init>()V

    .line 755
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 757
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Z

    .line 753
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->setServiceInfo(ILjava/lang/String;Z)V

    return-void
.end method

.method private setServiceInfo(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "userId"  # I
    .param p2, "serviceName"  # Ljava/lang/String;
    .param p3, "isTemporary"  # Z

    .line 762
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    if-eqz p3, :cond_c

    .line 764
    :try_start_5
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_11

    .line 766
    :cond_c
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 768
    :goto_11
    if-eqz p2, :cond_45

    .line 769
    nop

    .line 770
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 771
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_3b

    .line 772
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setServiceInfo(): invalid name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_44

    .line 775
    :cond_3b
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    .end local v1  # "componentName":Landroid/content/ComponentName;
    :goto_44
    goto :goto_4a

    .line 778
    :cond_45
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 780
    :goto_4a
    monitor-exit v0

    .line 781
    return-void

    .line 780
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4c

    throw v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 831
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 833
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_6
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 835
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service packages: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 837
    :cond_1b
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 838
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Temp services: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 840
    :cond_30
    monitor-exit v0

    .line 841
    return-void

    .line 840
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;
    .registers 13
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGlobalWhitelistStateLock"
        }
    .end annotation

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILjava/lang/String;)Z

    move-result v2

    .line 791
    .local v2, "packageWhitelisted":Z
    if-nez v2, :cond_48

    .line 793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getWhitelistedComponents(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    move-object v0, v3

    .line 794
    if-nez v0, :cond_48

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 795
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 798
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOptionsForPackage() lite for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_3d
    new-instance v3, Landroid/content/ContentCaptureOptions;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-direct {v3, v4}, Landroid/content/ContentCaptureOptions;-><init>(I)V

    monitor-exit v1

    return-object v3

    .line 802
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_ff

    .line 805
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 806
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 807
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " while using temporary service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 808
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 807
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-object v3

    .line 813
    :cond_91
    if-nez v2, :cond_bb

    if-nez v0, :cond_bb

    .line 815
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_ba

    .line 816
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOptionsForPackage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_ba
    return-object v3

    .line 821
    :cond_bb
    new-instance v1, Landroid/content/ContentCaptureOptions;

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v4, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v5, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v6, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v7, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v8, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Landroid/content/ContentCaptureOptions;-><init>(IIIIILandroid/util/ArraySet;)V

    .line 825
    .local v1, "options":Landroid/content/ContentCaptureOptions;
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v3, :cond_fe

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$4000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOptionsForPackage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_fe
    return-object v1

    .line 802
    .end local v1  # "options":Landroid/content/ContentCaptureOptions;
    .end local v2  # "packageWhitelisted":Z
    :catchall_ff
    move-exception v2

    :try_start_100
    monitor-exit v1
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v2
.end method
