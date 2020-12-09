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

    .line 3984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 3990
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 2

    .line 3984
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z
    .registers 3

    .line 3984
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private hostsPackageForUser(Ljava/lang/String;I)Z
    .registers 8

    .line 4006
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4007
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_33

    .line 4008
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4009
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_30

    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_30

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4010
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 4011
    const/4 p1, 0x1

    return p1

    .line 4007
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4014
    :cond_33
    return v1
.end method


# virtual methods
.method public getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;)Z"
        }
    .end annotation

    .line 4022
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 4023
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4024
    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_60

    .line 4025
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4026
    iget v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v6, p1, :cond_5d

    .line 4027
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    .line 4028
    iget-object v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_23
    if-ltz v2, :cond_5c

    .line 4029
    iget-object v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    .line 4030
    cmp-long v4, v6, v0

    if-gtz v4, :cond_30

    .line 4031
    goto :goto_59

    .line 4033
    :cond_30
    iget-object v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    .line 4035
    if-eqz v4, :cond_48

    if-eq v4, v3, :cond_3f

    .line 4045
    invoke-static {p1, v4}, Landroid/appwidget/PendingHostUpdate;->viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;

    move-result-object v4

    goto :goto_56

    .line 4037
    :cond_3f
    iget-object v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v4}, Landroid/appwidget/PendingHostUpdate;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v4

    .line 4039
    goto :goto_56

    .line 4041
    :cond_48
    nop

    .line 4042
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2800(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 4041
    invoke-static {p1, v4}, Landroid/appwidget/PendingHostUpdate;->updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v4

    .line 4043
    nop

    .line 4047
    :goto_56
    invoke-virtual {p2, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4028
    :goto_59
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 4049
    :cond_5c
    return v3

    .line 4024
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 4052
    :cond_60
    return v3
.end method

.method public getUserId()I
    .registers 2

    .line 3998
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .registers 4

    .line 4002
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_12

    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4057
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
