.class Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskActivitiesReport"
.end annotation


# instance fields
.field base:Lcom/android/server/wm/ActivityRecord;

.field numActivities:I

.field numRunning:I

.field top:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .line 2627
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 2628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 2629
    return-void
.end method
