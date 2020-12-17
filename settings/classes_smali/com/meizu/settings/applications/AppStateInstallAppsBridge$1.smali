.class Lcom/meizu/settings/applications/AppStateInstallAppsBridge$1;
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

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 152
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return p0
.end method

.method public filterApp(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Z
    .registers 4

    .line 137
    iget-object p0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    iget-object v1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_28

    instance-of p0, p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-nez p0, :cond_10

    goto :goto_28

    .line 142
    :cond_10
    invoke-static {}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->access$000()Ljava/util/ArrayList;

    move-result-object p0

    iget-object v1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return v0

    .line 146
    :cond_1f
    iget-object p0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 147
    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result p0

    return p0

    :cond_28
    :goto_28
    return v0
.end method

.method public init()V
    .registers 1

    return-void
.end method
