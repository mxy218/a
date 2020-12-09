.class public Lcom/android/server/connectivity/KeepaliveTracker;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.PACKET_KEEPALIVE_OFFLOAD"

.field private static final TAG:Ljava/lang/String; = "KeepaliveTracker"


# instance fields
.field private final mAllowedUnprivilegedSlotsForUid:I

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mKeepalives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReservedPrivilegedSlots:I

.field private final mSupportedKeepalives:[I

.field private final mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    .line 112
    iput-object p2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/android/server/connectivity/TcpKeepaliveController;

    invoke-direct {v0, p2}, Lcom/android/server/connectivity/TcpKeepaliveController;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;

    .line 114
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    .line 115
    iget-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/util/KeepaliveUtils;->getSupportedKeepalives(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I

    .line 116
    iget-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e009f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mReservedPrivilegedSlots:I

    .line 118
    iget-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e000d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mAllowedUnprivilegedSlotsForUid:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/content/Context;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/KeepaliveTracker;)[I
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/KeepaliveTracker;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mReservedPrivilegedSlots:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/KeepaliveTracker;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mAllowedUnprivilegedSlotsForUid:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/KeepaliveTracker;)Lcom/android/server/connectivity/TcpKeepaliveController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/KeepaliveTracker;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 3

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/KeepaliveTracker;->cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method private cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 9

    .line 498
    if-nez p1, :cond_5

    const-string v0, "(null)"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_9
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 500
    const-string v2, "KeepaliveTracker"

    if-nez v1, :cond_2a

    .line 501
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempt to remove keepalive on nonexistent network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 504
    :cond_2a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 505
    const-string v4, " on "

    if-nez v3, :cond_53

    .line 506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove nonexistent keepalive "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void

    .line 509
    :cond_53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove keepalive "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " remains."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 510
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_90

    .line 513
    iget-object p2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_90
    return-void
.end method

.method private findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 4

    .line 440
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 441
    if-nez v0, :cond_14

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_14
    const/4 p1, 0x1

    :goto_15
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gt p1, v1, :cond_29

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_26

    .line 451
    return p1

    .line 449
    :cond_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 454
    :cond_29
    return p1
.end method

.method public static isNattKeepaliveSocketValid(Ljava/io/FileDescriptor;I)Z
    .registers 2

    .line 722
    if-nez p0, :cond_4

    .line 723
    const/4 p0, 0x0

    return p0

    .line 725
    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Socket keepalives: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reserved Privileged keepalives: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mReservedPrivilegedSlots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allowed Unprivileged keepalives per uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mAllowedUnprivilegedSlotsForUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 732
    const-string v0, "Socket keepalives:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 734
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 735
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 737
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 738
    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 740
    goto :goto_7e

    .line 741
    :cond_bc
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 742
    goto :goto_58

    .line 743
    :cond_c0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 744
    return-void
.end method

.method public handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7

    .line 518
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 519
    if-eqz v0, :cond_6b

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 522
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    invoke-static {v4}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$800(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v4

    .line 523
    if-eqz v4, :cond_46

    .line 524
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_46
    goto :goto_17

    .line 527
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 528
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 529
    goto :goto_4b

    .line 531
    :cond_6b
    return-void
.end method

.method public handleEventSocketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V
    .registers 12

    .line 536
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 537
    iget v1, p2, Landroid/os/Message;->arg2:I

    .line 539
    nop

    .line 541
    :try_start_5
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_17} :catch_18

    .line 542
    goto :goto_1a

    :catch_18
    move-exception v2

    const/4 v2, 0x0

    .line 543
    :goto_1a
    const-string v3, "Event "

    const-string v4, " on "

    const-string v5, ","

    const-string v6, "KeepaliveTracker"

    if-nez v2, :cond_57

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for unknown keepalive "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 564
    :cond_57
    const/4 v7, 0x2

    invoke-static {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$900(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v8

    if-ne v7, v8, :cond_d0

    .line 565
    if-nez v1, :cond_a6

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started keepalive "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 p1, 0x3

    invoke-static {v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$902(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)I

    .line 570
    :try_start_82
    invoke-static {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$1000(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)Landroid/net/ISocketKeepaliveCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/net/ISocketKeepaliveCallback;->onStarted(I)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_89} :catch_8a

    goto :goto_a4

    .line 571
    :catch_8a
    move-exception p1

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Discarded onStarted("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") callback"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_a4
    goto/16 :goto_131

    .line 575
    :cond_a6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start keepalive "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_131

    .line 580
    :cond_d0
    const/4 v7, 0x4

    invoke-static {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$900(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v8

    if-ne v7, v8, :cond_105

    .line 582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped keepalive "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stopped: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 p2, 0x1

    invoke-static {v2, p2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$902(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)I

    .line 585
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_131

    .line 587
    :cond_105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/os/Message;->what:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for keepalive in wrong state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-static {v6, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_131
    return-void
.end method

.method public handleStartKeepalive(Landroid/os/Message;)V
    .registers 5

    .line 458
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 459
    invoke-virtual {p1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->getNai()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 460
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->start(I)V

    .line 463
    return-void
.end method

.method public handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 5

    .line 466
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 467
    if-eqz v0, :cond_2e

    .line 468
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 469
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 470
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 473
    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$700(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 474
    goto :goto_17

    .line 478
    :cond_2e
    return-void
.end method

.method public handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 7

    .line 481
    if-nez p1, :cond_5

    const-string v0, "(null)"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_9
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 483
    const-string v1, "KeepaliveTracker"

    if-nez p1, :cond_2a

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempt to stop keepalive on nonexistent network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 487
    :cond_2a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 488
    if-nez p1, :cond_53

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to stop nonexistent keepalive "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 492
    :cond_53
    invoke-virtual {p1, p3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 495
    return-void
.end method

.method notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V
    .registers 4

    .line 433
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/ISocketKeepaliveCallback;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 436
    goto :goto_20

    .line 434
    :catch_4
    move-exception p1

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Discarded onError("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") callback"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeepaliveTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_20
    return-void
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 19

    .line 695
    move-object v1, p0

    move-object v5, p5

    invoke-static {p2, p3}, Lcom/android/server/connectivity/KeepaliveTracker;->isNattKeepaliveSocketValid(Ljava/io/FileDescriptor;I)Z

    move-result v0

    const/16 v2, -0x19

    if-nez v0, :cond_d

    .line 696
    invoke-virtual {p0, p5, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 700
    :cond_d
    const/4 v3, 0x0

    .line 702
    :try_start_e
    invoke-static {p2}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    .line 703
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_18} :catch_1a

    .line 706
    move v7, v0

    goto :goto_1f

    .line 704
    :catch_1a
    move-exception v0

    .line 705
    invoke-virtual {p0, p5, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    move v7, v3

    .line 709
    :goto_1f
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;I)V

    .line 711
    return-void
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 21

    .line 604
    move-object v9, p0

    move-object/from16 v10, p4

    const-string v11, "KeepaliveTracker"

    if-nez p1, :cond_d

    .line 605
    const/16 v0, -0x14

    invoke-virtual {p0, v10, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 606
    return-void

    .line 611
    :cond_d
    :try_start_d
    invoke-static/range {p5 .. p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 612
    invoke-static/range {p7 .. p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_15} :catch_67

    .line 616
    nop

    .line 620
    const/16 v2, 0x1194

    move/from16 v3, p6

    :try_start_1a
    invoke-static {v0, v3, v1, v2}, Landroid/net/NattKeepalivePacketData;->nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Landroid/net/NattKeepalivePacketData;

    move-result-object v5
    :try_end_1e
    .catch Landroid/net/SocketKeepalive$InvalidPacketException; {:try_start_1a .. :try_end_1e} :catch_5f

    .line 625
    nop

    .line 626
    nop

    .line 628
    :try_start_20
    new-instance v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move v6, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/net/ISocketKeepaliveCallback;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;IILjava/io/FileDescriptor;)V
    :try_end_2d
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_20 .. :try_end_2d} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_2d} :catch_53
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2d} :catch_53

    .line 634
    nop

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created keepalive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, v9, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    const v2, 0x8100b

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 638
    return-void

    .line 630
    :catch_53
    move-exception v0

    .line 631
    const-string v1, "Fail to construct keepalive"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    const/16 v0, -0x19

    invoke-virtual {p0, v10, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 633
    return-void

    .line 622
    :catch_5f
    move-exception v0

    move-object v1, v0

    .line 623
    iget v0, v1, Landroid/net/SocketKeepalive$InvalidPacketException;->error:I

    invoke-virtual {p0, v10, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 624
    return-void

    .line 613
    :catch_67
    move-exception v0

    .line 614
    const/16 v0, -0x15

    invoke-virtual {p0, v10, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 615
    return-void
.end method

.method public startTcpKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V
    .registers 15

    .line 654
    const-string v0, "KeepaliveTracker"

    if-nez p1, :cond_a

    .line 655
    const/16 p1, -0x14

    invoke-virtual {p0, p4, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 656
    return-void

    .line 661
    :cond_a
    :try_start_a
    invoke-static {p2}, Lcom/android/server/connectivity/TcpKeepaliveController;->getTcpKeepalivePacket(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketData;

    move-result-object v5
    :try_end_e
    .catch Landroid/net/SocketKeepalive$InvalidPacketException; {:try_start_a .. :try_end_e} :catch_5d
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_a .. :try_end_e} :catch_5d

    .line 665
    nop

    .line 666
    nop

    .line 668
    :try_start_10
    new-instance v9, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    const/4 v7, 0x2

    move-object v1, v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v6, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/net/ISocketKeepaliveCallback;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;IILjava/io/FileDescriptor;)V
    :try_end_1c
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_10 .. :try_end_1c} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1c} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_1c} :catch_42

    .line 674
    nop

    .line 675
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created keepalive: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    const p2, 0x8100b

    invoke-virtual {p1, p2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 677
    return-void

    .line 670
    :catch_42
    move-exception p1

    .line 671
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to construct keepalive e="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/16 p1, -0x19

    invoke-virtual {p0, p4, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 673
    return-void

    .line 662
    :catch_5d
    move-exception p1

    .line 663
    iget p1, p1, Landroid/net/SocketKeepalive$ErrorCodeException;->error:I

    invoke-virtual {p0, p4, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 664
    return-void
.end method
