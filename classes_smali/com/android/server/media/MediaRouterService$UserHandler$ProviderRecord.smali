.class final Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState;

.field private final mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniquePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 3

    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 1361
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    .line 1363
    return-void
.end method

.method private assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findRouteByDescriptorId(Ljava/lang/String;)I
    .registers 5

    .line 1444
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1445
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1446
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1447
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1448
    return v1

    .line 1445
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1451
    :cond_1f
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public appendClientState(Landroid/media/MediaRouterClientState;)V
    .registers 6

    .line 1426
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1427
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 1428
    iget-object v2, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getInfo()Landroid/media/MediaRouterClientState$RouteInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1430
    :cond_1d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1458
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1461
    if-eqz v0, :cond_41

    .line 1462
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_55

    .line 1463
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1462
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1466
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<no routes>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    :cond_55
    return-void
.end method

.method public findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 6

    .line 1433
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1434
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1435
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1436
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1437
    return-object v2

    .line 1434
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1440
    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 2

    .line 1366
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-object v0
.end method

.method public getUniquePrefix()Ljava/lang/String;
    .registers 2

    .line 1370
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState;)Z
    .registers 13

    .line 1374
    nop

    .line 1375
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_aa

    .line 1376
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    .line 1380
    nop

    .line 1381
    const/4 v0, 0x1

    if-eqz p1, :cond_8f

    .line 1382
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    move-result v2

    const-string v3, "MediaRouterService"

    if-eqz v2, :cond_75

    .line 1383
    iget-object p1, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 1384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1385
    move v4, v1

    move v5, v4

    :goto_1c
    if-ge v1, v2, :cond_73

    .line 1386
    nop

    .line 1387
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1388
    iget-object v7, v6, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 1389
    invoke-direct {p0, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v8

    .line 1390
    if-gez v8, :cond_44

    .line 1392
    invoke-direct {p0, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1393
    new-instance v8, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-direct {v8, p0, v7, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1396
    invoke-virtual {v8, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1397
    nop

    .line 1398
    move v4, v0

    move v5, v7

    goto :goto_70

    :cond_44
    if-ge v8, v5, :cond_5b

    .line 1400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 1404
    :cond_5b
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1405
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v9, v8, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1406
    invoke-virtual {v7, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v5

    or-int/2addr v4, v5

    move v5, v10

    .line 1385
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1409
    :cond_73
    move v1, v4

    goto :goto_90

    .line 1410
    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid descriptor from media route provider: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1411
    invoke-virtual {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1410
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_8f
    move v5, v1

    :goto_90
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_97
    if-lt p1, v5, :cond_aa

    .line 1417
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1418
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1419
    nop

    .line 1416
    add-int/lit8 p1, p1, -0x1

    move v1, v0

    goto :goto_97

    .line 1422
    :cond_aa
    return v1
.end method
