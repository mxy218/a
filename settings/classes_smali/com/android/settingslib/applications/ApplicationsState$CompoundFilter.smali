.class public Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundFilter"
.end annotation


# instance fields
.field private final mFirstFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mSecondFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .registers 3

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1918
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1919
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .registers 3

    .line 1936
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public init()V
    .registers 2

    .line 1930
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init()V

    .line 1931
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 1924
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 1925
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    return-void
.end method
