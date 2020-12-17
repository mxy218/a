.class Lcom/meizu/settings/applications/ApplicationsState$12;
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

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 2016
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return p0
.end method

.method public filterApp(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Z
    .registers 2

    .line 2011
    iget-object p0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return p0
.end method

.method public init()V
    .registers 1

    return-void
.end method
