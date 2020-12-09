.class Lcom/android/server/appwidget/AppWidgetServiceImpl$3;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 2003
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 2006
    nop

    .line 2007
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object p1

    .line 2009
    :try_start_5
    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChangedAsync()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 2012
    goto :goto_11

    .line 2010
    :catch_9
    move-exception p1

    .line 2011
    const-string p2, "AppWidgetServiceImpl"

    const-string v0, "Error calling onDataSetChangedAsync()"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2013
    :goto_11
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2014
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 2019
    return-void
.end method
