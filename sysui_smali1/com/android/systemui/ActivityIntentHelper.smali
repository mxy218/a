.class public Lcom/android/systemui/ActivityIntentHelper;
.super Ljava/lang/Object;
.source "ActivityIntentHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/ActivityIntentHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getTargetActivityInfo(Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;
    .registers 8

    .line 64
    iget-object v0, p0, Lcom/android/systemui/ActivityIntentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez p3, :cond_b

    const/high16 p3, 0xd0000

    goto :goto_d

    :cond_b
    const/high16 p3, 0x10000

    .line 70
    :goto_d
    invoke-virtual {v0, p1, p3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_19

    return-object v3

    :cond_19
    or-int/lit16 p3, p3, 0x80

    .line 75
    invoke-virtual {v0, p1, p3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2b

    .line 80
    :cond_28
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_2b
    :goto_2b
    return-object v3
.end method

.method public wouldLaunchResolverActivity(Landroid/content/Intent;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/ActivityIntentHelper;->getTargetActivityInfo(Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 110
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 111
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 112
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return p0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public wouldShowOverLockscreen(Landroid/content/Intent;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/ActivityIntentHelper;->getTargetActivityInfo(Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 94
    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const p1, 0x800400

    and-int/2addr p0, p1

    if-lez p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method
