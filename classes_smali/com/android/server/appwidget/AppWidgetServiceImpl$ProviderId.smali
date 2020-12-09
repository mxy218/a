.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderId"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field final uid:I


# direct methods
.method private constructor <init>(ILandroid/content/ComponentName;)V
    .registers 3

    .line 3939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3940
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 3941
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3942
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 4

    .line 3935
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 3946
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3947
    return v0

    .line 3949
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 3950
    return v1

    .line 3952
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 3953
    return v1

    .line 3955
    :cond_13
    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3956
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    if-eq v2, v3, :cond_1c

    .line 3957
    return v1

    .line 3959
    :cond_1c
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_25

    .line 3960
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_2e

    .line 3961
    return v1

    .line 3963
    :cond_25
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 3964
    return v1

    .line 3966
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 3971
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 3972
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_d

    .line 3973
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    .line 3974
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 3980
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3979
    return-object v0
.end method
