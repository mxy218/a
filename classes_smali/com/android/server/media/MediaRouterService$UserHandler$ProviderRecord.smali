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
    .registers 4
    .param p1, "provider"  # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 1364
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    .line 1366
    return-void
.end method

.method private assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "descriptorId"  # Ljava/lang/String;

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findRouteByDescriptorId(Ljava/lang/String;)I
    .registers 6
    .param p1, "descriptorId"  # Ljava/lang/String;

    .line 1447
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1448
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1449
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1450
    .local v2, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1451
    return v1

    .line 1448
    .end local v2  # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1454
    .end local v1  # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public appendClientState(Landroid/media/MediaRouterClientState;)V
    .registers 6
    .param p1, "state"  # Landroid/media/MediaRouterClientState;

    .line 1429
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1430
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 1431
    iget-object v2, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getInfo()Landroid/media/MediaRouterClientState$RouteInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1433
    .end local v1  # "i":I
    :cond_1d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1463
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1464
    .local v1, "routeCount":I
    if-eqz v1, :cond_42

    .line 1465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_41

    .line 1466
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1465
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .end local v2  # "i":I
    :cond_41
    goto :goto_56

    .line 1469
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<no routes>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    :goto_56
    return-void
.end method

.method public findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 6
    .param p1, "uniqueId"  # Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1437
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1438
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1439
    .local v2, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1440
    return-object v2

    .line 1437
    .end local v2  # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1443
    .end local v1  # "i":I
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 2

    .line 1369
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-object v0
.end method

.method public getUniquePrefix()Ljava/lang/String;
    .registers 2

    .line 1373
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1475
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
    .registers 15
    .param p1, "descriptor"  # Landroid/media/RemoteDisplayState;

    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    if-eq v1, p1, :cond_a4

    .line 1379
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    .line 1383
    const/4 v1, 0x0

    .line 1384
    .local v1, "targetIndex":I
    if-eqz p1, :cond_8a

    .line 1385
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    move-result v2

    const-string v3, "MediaRouterService"

    if-eqz v2, :cond_70

    .line 1386
    iget-object v2, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 1387
    .local v2, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1388
    .local v4, "routeCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v4, :cond_6f

    .line 1389
    nop

    .line 1390
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1391
    .local v6, "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    iget-object v7, v6, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 1392
    .local v7, "descriptorId":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v8

    .line 1393
    .local v8, "sourceIndex":I
    if-gez v8, :cond_40

    .line 1395
    invoke-direct {p0, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1396
    .local v9, "uniqueId":Ljava/lang/String;
    new-instance v10, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-direct {v10, p0, v7, v9}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    .local v10, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v12, v1, 0x1

    .end local v1  # "targetIndex":I
    .local v12, "targetIndex":I
    invoke-virtual {v11, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1399
    invoke-virtual {v10, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1400
    const/4 v0, 0x1

    .line 1401
    .end local v9  # "uniqueId":Ljava/lang/String;
    .end local v10  # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    move v1, v12

    goto :goto_6c

    .end local v12  # "targetIndex":I
    .restart local v1  # "targetIndex":I
    :cond_40
    if-ge v8, v1, :cond_57

    .line 1403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 1407
    :cond_57
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1408
    .local v9, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v10, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    .end local v1  # "targetIndex":I
    .local v11, "targetIndex":I
    invoke-static {v10, v8, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1409
    invoke-virtual {v9, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v1

    or-int/2addr v0, v1

    move v1, v11

    .line 1388
    .end local v6  # "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .end local v7  # "descriptorId":Ljava/lang/String;
    .end local v8  # "sourceIndex":I
    .end local v9  # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v11  # "targetIndex":I
    .restart local v1  # "targetIndex":I
    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1412
    .end local v2  # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    .end local v4  # "routeCount":I
    .end local v5  # "i":I
    :cond_6f
    goto :goto_8a

    .line 1413
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring invalid descriptor from media route provider: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1414
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1413
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_8a
    :goto_8a
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_92
    if-lt v2, v1, :cond_a4

    .line 1420
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1421
    .local v3, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1422
    const/4 v0, 0x1

    .line 1419
    .end local v3  # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_92

    .line 1425
    .end local v1  # "targetIndex":I
    .end local v2  # "i":I
    :cond_a4
    return v0
.end method
