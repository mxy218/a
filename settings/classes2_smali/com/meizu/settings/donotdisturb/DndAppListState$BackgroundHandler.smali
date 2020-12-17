.class Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;
.super Landroid/os/Handler;
.source "DndAppListState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppListState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/donotdisturb/DndAppListState;Landroid/os/Looper;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_17

    .line 87
    :cond_8
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppListState;->access$200(Lcom/meizu/settings/donotdisturb/DndAppListState;Ljava/lang/String;)V

    goto :goto_17

    .line 84
    :cond_12
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->access$100(Lcom/meizu/settings/donotdisturb/DndAppListState;)V

    :goto_17
    return-void
.end method
