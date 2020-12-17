.class Lcom/flyme/systemui/power/SOSController$1;
.super Landroid/content/BroadcastReceiver;
.source "SOSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/power/SOSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/power/SOSController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/power/SOSController;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/flyme/systemui/power/SOSController$1;->this$0:Lcom/flyme/systemui/power/SOSController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/power/SOSController$1;->this$0:Lcom/flyme/systemui/power/SOSController;

    invoke-virtual {p0}, Lcom/flyme/systemui/power/SOSController;->exitSOSMode()V

    :cond_11
    return-void
.end method
