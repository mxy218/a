.class Lcom/android/settingslib/applications/ApplicationsState$18;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .registers 3

    .line 1948
    monitor-enter p1

    .line 1949
    :try_start_1
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1950
    :goto_a
    monitor-exit p1

    return v0

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public init()V
    .registers 1

    return-void
.end method
