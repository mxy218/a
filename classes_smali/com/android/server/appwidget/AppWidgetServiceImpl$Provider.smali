.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Provider"
.end annotation


# instance fields
.field broadcast:Landroid/app/PendingIntent;

.field id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

.field info:Landroid/appwidget/AppWidgetProviderInfo;

.field infoTag:Ljava/lang/String;

.field maskedByLockedProfile:Z

.field maskedByQuietProfile:Z

.field maskedBySuspendedPackage:Z

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

    .line 3864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 3876
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 2

    .line 3864
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()I
    .registers 2

    .line 3879
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public hostedByPackageForUser(Ljava/lang/String;I)Z
    .registers 8

    .line 3889
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3890
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2b

    .line 3891
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3892
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3893
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_28

    .line 3894
    const/4 p1, 0x1

    return p1

    .line 3890
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3897
    :cond_2b
    return v1
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .registers 4

    .line 3883
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3884
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 3883
    :goto_17
    return p1
.end method

.method public isMaskedLocked()Z
    .registers 2

    .line 3927
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public setMaskedByLockedProfileLocked(Z)Z
    .registers 3

    .line 3914
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 3915
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 3916
    if-eq p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public setMaskedByQuietProfileLocked(Z)Z
    .registers 3

    .line 3907
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 3908
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 3909
    if-eq p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public setMaskedBySuspendedPackageLocked(Z)Z
    .registers 3

    .line 3921
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 3922
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 3923
    if-eq p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public shouldBePersisted()Z
    .registers 2

    .line 3931
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

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
