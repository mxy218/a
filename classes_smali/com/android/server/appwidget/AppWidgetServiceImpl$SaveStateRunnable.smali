.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveStateRunnable"
.end annotation


# instance fields
.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 3
    .param p2, "userId"  # I

    .line 4195
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4196
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    .line 4197
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 4201
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4204
    :try_start_7
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V

    .line 4205
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4206
    monitor-exit v0

    .line 4207
    return-void

    .line 4206
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
