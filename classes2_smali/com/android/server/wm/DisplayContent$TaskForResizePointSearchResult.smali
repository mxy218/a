.class final Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskForResizePointSearchResult"
.end annotation


# instance fields
.field searchDone:Z

.field taskForResize:Lcom/android/server/wm/Task;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .line 4064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 4065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 4066
    return-void
.end method
