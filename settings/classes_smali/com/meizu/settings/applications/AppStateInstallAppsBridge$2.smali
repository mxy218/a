.class Lcom/meizu/settings/applications/AppStateInstallAppsBridge$2;
.super Ljava/lang/Object;
.source "AppStateInstallAppsBridge.java"

# interfaces
.implements Lcom/meizu/settings/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/AppStateInstallAppsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 187
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 190
    :cond_6
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_d

    return p1

    :cond_d
    return v0
.end method

.method public filterApp(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Z
    .registers 5

    .line 163
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    iget-object v2, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_39

    instance-of v0, v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-nez v0, :cond_10

    goto :goto_39

    .line 168
    :cond_10
    invoke-static {}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 172
    :cond_1f
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v0

    if-nez v0, :cond_2a

    return v1

    .line 176
    :cond_2a
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$2;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_34

    return v0

    .line 178
    :cond_34
    iget-boolean p0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    if-eqz p0, :cond_39

    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public init()V
    .registers 1

    return-void
.end method
