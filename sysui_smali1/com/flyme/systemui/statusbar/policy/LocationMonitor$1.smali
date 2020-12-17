.class Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/LocationMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "LocationMonitor"

    const-string p2, "HIGH_POWER_REQUEST_CHANGE_ACTION changed"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->access$000(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    return-void
.end method
