.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_PROVIDERS_CHANGED:I = 0x3

.field public static final MSG_NOTIFY_PROVIDER_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_UPDATE_APP_WIDGET:I = 0x1

.field public static final MSG_NOTIFY_VIEW_DATA_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .registers 4

    .line 3591
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3592
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3593
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 3597
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    goto/16 :goto_94

    .line 3632
    :cond_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3633
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3634
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3635
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3636
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3637
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3638
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3640
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    goto :goto_94

    .line 3623
    :cond_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3624
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3625
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3626
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3628
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    .line 3629
    goto :goto_94

    .line 3611
    :cond_48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3612
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3613
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3614
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3615
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3616
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3617
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3619
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    .line 3620
    goto :goto_94

    .line 3599
    :cond_6e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3600
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3601
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3602
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/widget/RemoteViews;

    .line 3603
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3604
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3605
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3607
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    .line 3608
    nop

    .line 3644
    :goto_94
    return-void
.end method
