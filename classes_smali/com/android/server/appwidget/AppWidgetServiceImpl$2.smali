.class Lcom/android/server/appwidget/AppWidgetServiceImpl$2;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V
    .registers 3

    .line 1863
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1866
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object p1

    .line 1868
    :try_start_4
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$intent:Landroid/content/Intent;

    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1871
    goto :goto_12

    .line 1869
    :catch_a
    move-exception p1

    .line 1870
    const-string p2, "AppWidgetServiceImpl"

    const-string v0, "Error calling remove view factory"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1872
    :goto_12
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1873
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 1878
    return-void
.end method
