.class Lcom/meizu/settings/applications/ApplicationsState$9;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/meizu/settings/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .line 1953
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1957
    :cond_6
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz p0, :cond_b

    return v0

    .line 1962
    :cond_b
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p0, 0x80

    const/4 v1, 0x1

    if-eqz p1, :cond_13

    return v1

    :cond_13
    and-int/2addr p0, v1

    if-nez p0, :cond_17

    return v1

    :cond_17
    return v0
.end method

.method public filterApp(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Z
    .registers 2

    .line 1947
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$9;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 1

    return-void
.end method
