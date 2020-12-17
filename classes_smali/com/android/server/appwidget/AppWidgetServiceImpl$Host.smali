.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Host"
.end annotation


# instance fields
.field callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

.field id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

.field lastWidgetUpdateSequenceNo:J

.field tag:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field

.field zombie:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 4014
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 4008
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 4008
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private hostsPackageForUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4030
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4031
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_32

    .line 4032
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4033
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_2f

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_2f

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4034
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 4035
    const/4 v3, 0x1

    return v3

    .line 4031
    .end local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4038
    .end local v1  # "i":I
    :cond_32
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z
    .registers 14
    .param p1, "appWidgetId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;)Z"
        }
    .end annotation

    .line 4046
    .local p2, "outUpdates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 4047
    .local v0, "updateSequenceNo":J
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4048
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_5f

    .line 4049
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4050
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v5, p1, :cond_5c

    .line 4051
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    .line 4052
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "j":I
    :goto_22
    if-ltz v5, :cond_5b

    .line 4053
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    .line 4054
    .local v7, "requestId":J
    cmp-long v9, v7, v0

    if-gtz v9, :cond_2f

    .line 4055
    goto :goto_58

    .line 4057
    :cond_2f
    iget-object v9, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v9

    .line 4059
    .local v9, "id":I
    if-eqz v9, :cond_47

    if-eq v9, v6, :cond_3e

    .line 4069
    invoke-static {p1, v9}, Landroid/appwidget/PendingHostUpdate;->viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;

    move-result-object v10

    .local v10, "update":Landroid/appwidget/PendingHostUpdate;
    goto :goto_55

    .line 4061
    .end local v10  # "update":Landroid/appwidget/PendingHostUpdate;
    :cond_3e
    iget-object v10, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v10

    .line 4063
    .restart local v10  # "update":Landroid/appwidget/PendingHostUpdate;
    goto :goto_55

    .line 4065
    .end local v10  # "update":Landroid/appwidget/PendingHostUpdate;
    :cond_47
    nop

    .line 4066
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2800(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v10

    .line 4065
    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v10

    .line 4067
    .restart local v10  # "update":Landroid/appwidget/PendingHostUpdate;
    nop

    .line 4071
    :goto_55
    invoke-virtual {p2, v7, v8, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4052
    .end local v7  # "requestId":J
    .end local v9  # "id":I
    .end local v10  # "update":Landroid/appwidget/PendingHostUpdate;
    :goto_58
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 4073
    .end local v5  # "j":I
    :cond_5b
    return v6

    .line 4048
    .end local v4  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4076
    .end local v3  # "i":I
    :cond_5f
    const/4 v3, 0x0

    return v3
.end method

.method public getUserId()I
    .registers 2

    .line 4022
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4026
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_12

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v1, :cond_16

    const-string v1, " Z"

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
