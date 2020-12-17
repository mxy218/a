.class Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/applications/AppStateBaseBridge;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/applications/AppStateBaseBridge;Lcom/meizu/settings/applications/AppStateBaseBridge$1;)V
    .registers 3

    .line 97
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/meizu/settings/applications/AppStateBaseBridge;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_d

    .line 104
    :cond_6
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/meizu/settings/applications/AppStateBaseBridge;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mCallback:Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;

    invoke-interface {p0}, Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;->onExtraInfoUpdated()V

    :goto_d
    return-void
.end method
