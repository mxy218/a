.class public interface abstract Lcom/meizu/settings/applications/ApplicationsState$AppFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppFilter"
.end annotation


# virtual methods
.method public abstract filterApp(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method public abstract filterApp(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Z
.end method

.method public abstract init()V
.end method
