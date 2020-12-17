.class Lcom/meizu/pps/observer/PPSServer$1;
.super Landroid/database/ContentObserver;
.source "PPSServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/pps/observer/PPSServer;->disableGmsPackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/pps/observer/PPSServer;


# direct methods
.method constructor <init>(Lcom/meizu/pps/observer/PPSServer;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/meizu/pps/observer/PPSServer;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/meizu/pps/observer/PPSServer$1;->this$0:Lcom/meizu/pps/observer/PPSServer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 109
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer$1;->this$0:Lcom/meizu/pps/observer/PPSServer;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSServer;->access$000(Lcom/meizu/pps/observer/PPSServer;)V

    .line 110
    return-void
.end method
