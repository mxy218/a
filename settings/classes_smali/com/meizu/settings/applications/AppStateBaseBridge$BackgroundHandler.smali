.class Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_4e

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 128
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 129
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_3a

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 132
    iget-object v6, v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, p1, :cond_37

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 133
    iget-object v6, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    invoke-virtual {v6, v5, v3, p1}, Lcom/meizu/settings/applications/AppStateBaseBridge;->updateExtraInfo(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 136
    :cond_3a
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4e

    .line 122
    :cond_42
    iget-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/AppStateBaseBridge;->loadAllExtraInfo()V

    .line 123
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_4e
    return-void
.end method
