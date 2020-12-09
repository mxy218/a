.class Lcom/android/server/ConnectivityService$LegacyTypeTracker;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacyTypeTracker"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final VDBG:Z = false


# instance fields
.field private final mService:Lcom/android/server/ConnectivityService;

.field private final mTypeLists:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    .line 683
    const/16 p1, 0x13

    new-array p1, p1, [Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    .line 684
    return-void
.end method

.method private maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V
    .registers 7

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " broadcast for type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isDefaultNetwork="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 710
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .registers 5

    .line 793
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 794
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_29

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    .line 796
    :cond_29
    const-string p1, "???/???"

    .line 797
    :goto_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 719
    return-void

    .line 723
    :cond_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    .line 724
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 725
    return-void

    .line 727
    :cond_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v1

    .line 728
    :try_start_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_35

    .line 732
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1, p2}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    .line 733
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    if-eqz v1, :cond_34

    .line 734
    :cond_28
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 735
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 737
    :cond_34
    return-void

    .line 729
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public addSupportedType(I)V
    .registers 5

    .line 687
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v0, p1

    if-nez v1, :cond_e

    .line 691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p1

    .line 692
    return-void

    .line 688
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacy list for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "already initialized"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 801
    const-string v0, "mLegacyTypeTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 803
    const-string v0, "Supported types:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    .line 805
    aget-object v2, v2, v1

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 804
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 807
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 808
    const-string v1, "Current state:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 810
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v1

    .line 811
    nop

    :goto_3e
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_87

    .line 812
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_84

    .line 813
    :cond_54
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 815
    goto :goto_5c

    .line 811
    :cond_84
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 817
    :cond_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_3e .. :try_end_88} :catchall_92

    .line 818
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 819
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 820
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 821
    return-void

    .line 817
    :catchall_92
    move-exception p1

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw p1
.end method

.method public getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v0

    .line 700
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 701
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object p1

    .line 703
    :cond_20
    monitor-exit v0

    .line 704
    const/4 p1, 0x0

    return-object p1

    .line 703
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public isTypeSupported(I)Z
    .registers 3

    .line 695
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 9

    .line 741
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    .line 742
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_71

    .line 745
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 747
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v3

    .line 748
    :try_start_1b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 749
    monitor-exit v3

    return-void

    .line 751
    :cond_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_6e

    .line 753
    if-nez v2, :cond_28

    if-eqz p3, :cond_34

    .line 754
    :cond_28
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p2, v3, p1, p3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 755
    iget-object p3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p3, p2, v3, p1}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 758
    :cond_34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6d

    if-eqz v2, :cond_6d

    .line 759
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Other network available for type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", sending connected broadcast"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 762
    sget-object p3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    .line 763
    invoke-virtual {v0, p2}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 762
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 764
    iget-object p3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p3, p2, v0, p1}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 766
    :cond_6d
    return-void

    .line 751
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1

    .line 743
    :cond_71
    :goto_71
    return-void
.end method

.method public remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 5

    .line 771
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 772
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 774
    :cond_c
    return-void
.end method

.method public update(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9

    .line 779
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 780
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 781
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v5, v4

    if-ge v3, v5, :cond_3c

    .line 782
    aget-object v4, v4, v3

    .line 783
    const/4 v5, 0x1

    if-eqz v4, :cond_20

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    move v6, v5

    goto :goto_21

    :cond_20
    move v6, v2

    .line 784
    :goto_21
    if-eqz v6, :cond_2a

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v5, v2

    .line 785
    :goto_2b
    if-nez v5, :cond_31

    if-eqz v6, :cond_39

    if-eqz v0, :cond_39

    .line 786
    :cond_31
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 787
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 781
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 790
    :cond_3c
    return-void
.end method
