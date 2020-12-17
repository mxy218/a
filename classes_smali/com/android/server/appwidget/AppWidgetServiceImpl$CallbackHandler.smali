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
    .param p2, "looper"  # Landroid/os/Looper;

    .line 3615
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3616
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3617
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "message"  # Landroid/os/Message;

    .line 3621
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_77

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    goto/16 :goto_a1

    .line 3656
    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3657
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3658
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3659
    .local v9, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 3660
    .local v10, "requestId":J
    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3661
    .local v12, "appWidgetId":I
    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3662
    .local v13, "viewId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3664
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object v3, v1

    move-object v4, v9

    move v5, v12

    move v6, v13

    move-wide v7, v10

    invoke-static/range {v2 .. v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    goto/16 :goto_a1

    .line 3647
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9  # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v10  # "requestId":J
    .end local v12  # "appWidgetId":I
    .end local v13  # "viewId":I
    :cond_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3648
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3649
    .restart local v1  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3650
    .local v2, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3652
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    .line 3653
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v2  # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    goto :goto_a1

    .line 3635
    :cond_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3636
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3637
    .restart local v1  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3638
    .restart local v9  # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3639
    .local v10, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 3640
    .local v11, "requestId":J
    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3641
    .local v13, "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3643
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object v3, v1

    move-object v4, v9

    move v5, v13

    move-object v6, v10

    move-wide v7, v11

    invoke-static/range {v2 .. v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    .line 3644
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9  # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v10  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11  # "requestId":J
    .end local v13  # "appWidgetId":I
    goto :goto_a1

    .line 3623
    :cond_77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3624
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3625
    .restart local v1  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3626
    .restart local v9  # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/widget/RemoteViews;

    .line 3627
    .local v10, "views":Landroid/widget/RemoteViews;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 3628
    .restart local v11  # "requestId":J
    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3629
    .restart local v13  # "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3631
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object v3, v1

    move-object v4, v9

    move v5, v13

    move-object v6, v10

    move-wide v7, v11

    invoke-static/range {v2 .. v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    .line 3632
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9  # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v10  # "views":Landroid/widget/RemoteViews;
    .end local v11  # "requestId":J
    .end local v13  # "appWidgetId":I
    nop

    .line 3668
    :goto_a1
    return-void
.end method
