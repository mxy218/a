.class final Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplySurfaceChangesTransactionState"
.end annotation


# instance fields
.field displayHasContent:Z

.field obscured:Z

.field preferredModeId:I

.field preferredRefreshRate:F

.field syswin:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayContent$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/wm/DisplayContent$1;

    .line 4069
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 3

    .line 4077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 4078
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 4079
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 4080
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 4081
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 4082
    return-void
.end method
