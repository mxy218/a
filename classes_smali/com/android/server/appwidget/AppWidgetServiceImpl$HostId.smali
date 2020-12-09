.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostId"
.end annotation


# instance fields
.field final hostId:I

.field final packageName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 4066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4067
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 4068
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 4069
    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 4070
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 4074
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4075
    return v0

    .line 4077
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 4078
    return v1

    .line 4080
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 4081
    return v1

    .line 4083
    :cond_13
    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 4084
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-eq v2, v3, :cond_1c

    .line 4085
    return v1

    .line 4087
    :cond_1c
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    if-eq v2, v3, :cond_23

    .line 4088
    return v1

    .line 4090
    :cond_23
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 4091
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_35

    .line 4092
    return v1

    .line 4094
    :cond_2c
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    .line 4095
    return v1

    .line 4097
    :cond_35
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 4102
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 4103
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    add-int/2addr v0, v1

    .line 4104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 4105
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    .line 4106
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 4112
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hostId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4111
    return-object v0
.end method
