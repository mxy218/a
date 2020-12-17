.class Lcom/android/server/os/TemperatureMonitor$1;
.super Ljava/util/TimerTask;
.source "TemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/TemperatureMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TemperatureMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/os/TemperatureMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/os/TemperatureMonitor;

    .line 46
    iput-object p1, p0, Lcom/android/server/os/TemperatureMonitor$1;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor$1;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/os/TemperatureMonitor;->access$000(Lcom/android/server/os/TemperatureMonitor;)V

    .line 50
    return-void
.end method
