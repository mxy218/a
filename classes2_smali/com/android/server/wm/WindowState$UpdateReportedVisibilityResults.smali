.class final Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;
.super Ljava/lang/Object;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UpdateReportedVisibilityResults"
.end annotation


# instance fields
.field nowGone:Z

.field numDrawn:I

.field numInteresting:I

.field numVisible:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 4768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .line 4775
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 4776
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 4777
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 4778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 4779
    return-void
.end method
