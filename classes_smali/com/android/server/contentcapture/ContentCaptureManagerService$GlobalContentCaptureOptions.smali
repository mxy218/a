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
    .registers 2

    .line 753
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Lcom/android/internal/infra/GlobalWhitelistState;-><init>()V

    .line 755
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 757
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V
    .registers 4

    .line 753
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->setServiceInfo(ILjava/lang/String;Z)V

    return-void
.end method

.method private setServiceInfo(ILjava/lang/String;Z)V
    .registers 7

    .line 762
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    if-eqz p3, :cond_c

    .line 764
    :try_start_5
    iget-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_11

    .line 766
    :cond_c
    iget-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 768
    :goto_11
    if-eqz p2, :cond_45

    .line 769
    nop

    .line 770
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    .line 771
    if-nez p3, :cond_3b

    .line 772
    iget-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setServiceInfo(): invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_44

    .line 775
    :cond_3b
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    :goto_44
    goto :goto_4a

    .line 778
    :cond_45
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 780
    :goto_4a
    monitor-exit v0

    .line 781
    return-void

    .line 780
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4c

    throw p1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

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

    const-string p1, "Temp services: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 840
    :cond_30
    monitor-exit v0

    .line 841
    return-void

    .line 840
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGlobalWhitelistStateLock"
        }
    .end annotation

    .line 788
    nop

    .line 789
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILjava/lang/String;)Z

    move-result v1

    .line 791
    const/4 v2, 0x0

    if-nez v1, :cond_4a

    .line 793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getWhitelistedComponents(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    .line 794
    if-nez v3, :cond_48

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 795
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 798
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean p1, p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOptionsForPackage() lite for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_3d
    new-instance p1, Landroid/content/ContentCaptureOptions;

    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget p2, p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-direct {p1, p2}, Landroid/content/ContentCaptureOptions;-><init>(I)V

    monitor-exit v0

    return-object p1

    .line 802
    :cond_48
    move-object v7, v3

    goto :goto_4b

    .line 791
    :cond_4a
    move-object v7, v2

    .line 802
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_100

    .line 805
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 806
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 807
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " while using temporary service "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 808
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 807
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-object v2

    .line 813
    :cond_93
    if-nez v1, :cond_bd

    if-nez v7, :cond_bd

    .line 815
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean p1, p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz p1, :cond_bc

    .line 816
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOptionsForPackage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "): not whitelisted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_bc
    return-object v2

    .line 821
    :cond_bd
    new-instance p1, Landroid/content/ContentCaptureOptions;

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v4, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v5, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v6, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/content/ContentCaptureOptions;-><init>(IIIIILandroid/util/ArraySet;)V

    .line 825
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$4000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOptionsForPackage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_ff
    return-object p1

    .line 802
    :catchall_100
    move-exception p1

    :try_start_101
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw p1
.end method
