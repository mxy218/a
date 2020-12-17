.class Lcom/meizu/settings/battery/BatteryInfo$1;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/battery/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/battery/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/meizu/settings/battery/BatteryInfo;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$1;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_10

    .line 58
    :cond_6
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$1;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {p1}, Lcom/meizu/settings/battery/BatteryInfo;->access$000(Lcom/meizu/settings/battery/BatteryInfo;)V

    const-wide/16 v1, 0x3e8

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_10
    return-void
.end method
