.class final Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RouteRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field private final mDescriptorId:Ljava/lang/String;

.field private mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field private final mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field private final mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1490
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 1491
    new-instance p1, Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-direct {p1, p3}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 1492
    return-void
.end method

.method private static computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .registers 2

    .line 1617
    iget-object p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 1618
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method private static computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .registers 2

    .line 1628
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    .line 1634
    const/4 p0, 0x0

    return p0

    .line 1632
    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method private static computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .registers 1

    .line 1613
    iget-object p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method private static computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    .line 1660
    const/4 p0, 0x3

    return p0
.end method

.method private static computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    .line 1656
    const/4 p0, 0x1

    return p0
.end method

.method private static computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    .line 1693
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 1694
    if-gez p0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method private static computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 4

    .line 1639
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    const/4 v0, 0x4

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    if-eq p0, v1, :cond_16

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_15

    if-eq p0, v1, :cond_14

    if-eq p0, v0, :cond_12

    .line 1651
    const/4 p0, 0x0

    return p0

    .line 1649
    :cond_12
    const/4 p0, 0x6

    return p0

    .line 1647
    :cond_14
    return v2

    .line 1643
    :cond_15
    return v1

    .line 1645
    :cond_16
    const/4 p0, 0x5

    return p0

    .line 1641
    :cond_18
    return v0
.end method

.method private static computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    .line 1622
    const/4 p0, 0x7

    return p0
.end method

.method private static computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2

    .line 1664
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 1665
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 1666
    if-gez v0, :cond_8

    .line 1667
    const/4 p0, 0x0

    return p0

    .line 1668
    :cond_8
    if-le v0, p0, :cond_b

    .line 1669
    return p0

    .line 1671
    :cond_b
    return v0
.end method

.method private static computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2

    .line 1680
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 1681
    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    .line 1686
    const/4 p0, 0x0

    return p0

    .line 1683
    :cond_7
    return v0
.end method

.method private static computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    .line 1675
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 1676
    if-lez p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMutableInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDescriptorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mDescriptor="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    return-void
.end method

.method public getDescriptorId()Ljava/lang/String;
    .registers 2

    .line 1503
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Landroid/media/MediaRouterClientState$RouteInfo;
    .registers 3

    .line 1511
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    if-nez v0, :cond_d

    .line 1512
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-direct {v0, v1}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Landroid/media/MediaRouterClientState$RouteInfo;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 1514
    :cond_d
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    return-object v0
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 2

    .line 1495
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    return-object v0
.end method

.method public getProviderRecord()Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    .registers 2

    .line 1499
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 1526
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 2

    .line 1507
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1522
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-boolean v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1518
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .registers 6

    .line 1530
    nop

    .line 1531
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_b8

    .line 1532
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1533
    if-eqz p1, :cond_b8

    .line 1534
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1536
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 1537
    move v2, v1

    .line 1539
    :cond_1e
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1541
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 1542
    move v2, v1

    .line 1544
    :cond_31
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1545
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v3, v0, :cond_40

    .line 1546
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 1547
    move v2, v1

    .line 1549
    :cond_40
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v0

    .line 1550
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-boolean v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v3, v0, :cond_4f

    .line 1551
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-boolean v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 1552
    move v2, v1

    .line 1554
    :cond_4f
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1555
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v3, v0, :cond_5e

    .line 1556
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 1557
    move v2, v1

    .line 1559
    :cond_5e
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1560
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v3, v0, :cond_6d

    .line 1561
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 1562
    move v2, v1

    .line 1564
    :cond_6d
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1565
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v3, v0, :cond_7c

    .line 1566
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 1567
    move v2, v1

    .line 1569
    :cond_7c
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1570
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v3, v0, :cond_8b

    .line 1571
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 1572
    move v2, v1

    .line 1574
    :cond_8b
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1575
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v3, v0, :cond_9a

    .line 1576
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 1577
    move v2, v1

    .line 1579
    :cond_9a
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1580
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v3, v0, :cond_a9

    .line 1581
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 1582
    move v2, v1

    .line 1584
    :cond_a9
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result p1

    .line 1585
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v0, p1, :cond_b8

    .line 1586
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput p1, v0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 1587
    move v2, v1

    .line 1591
    :cond_b8
    if-eqz v2, :cond_bd

    .line 1592
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 1594
    :cond_bd
    return v2
.end method
