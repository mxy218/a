.class Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageParser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageParserCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 760
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getStaticOverlayPackages$0(Landroid/content/pm/PackageParser$Package;)I
    .registers 1

    .line 784
    iget p0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    return p0
.end method


# virtual methods
.method public final getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 845
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final getStaticOverlayPackages(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 767
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 770
    return-object v1

    .line 773
    :cond_a
    nop

    .line 774
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 775
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    if-eqz v2, :cond_31

    .line 776
    if-nez v1, :cond_2e

    .line 777
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 779
    :cond_2e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_31
    goto :goto_f

    .line 782
    :cond_32
    if-eqz v1, :cond_3d

    .line 783
    sget-object p1, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;

    .line 784
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    .line 785
    invoke-interface {v1, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 787
    :cond_3d
    return-object v1
.end method

.method getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 828
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_20

    .line 830
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 831
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 830
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPackages(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 832
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1d

    .line 835
    :try_start_17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_20

    return-object p1

    .line 832
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p1

    .line 836
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw p1
.end method

.method final getStaticOverlayPaths(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 792
    const/4 v0, 0x0

    if-eqz p1, :cond_7b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_7b

    .line 795
    :cond_b
    nop

    .line 796
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 797
    if-nez p2, :cond_2d

    .line 798
    if-nez v1, :cond_27

    .line 799
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 801
    :cond_27
    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    goto :goto_11

    .line 811
    :cond_2d
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 813
    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3

    .line 812
    invoke-static {v3}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v3

    .line 811
    invoke-virtual {v4, p2, v5, v3}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 814
    if-nez v1, :cond_46

    .line 815
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 817
    :cond_46
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2d .. :try_end_4b} :catch_4c

    .line 821
    goto :goto_6d

    .line 818
    :catch_4c
    move-exception v3

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to generate idmap for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_6d
    goto :goto_11

    .line 823
    :cond_6e
    if-nez v1, :cond_71

    goto :goto_7a

    :cond_71
    new-array p1, v3, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    :goto_7a
    return-object v0

    .line 793
    :cond_7b
    :goto_7b
    return-object v0
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .registers 4

    .line 762
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
