.class Lcom/android/systemui/LatencyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "LatencyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/LatencyTester;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/LatencyTester;


# direct methods
.method constructor <init>(Lcom/android/systemui/LatencyTester;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/android/systemui/LatencyTester$1;->this$0:Lcom/android/systemui/LatencyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui.latency.ACTION_FINGERPRINT_WAKE"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 58
    iget-object p0, p0, Lcom/android/systemui/LatencyTester$1;->this$0:Lcom/android/systemui/LatencyTester;

    invoke-static {p0}, Lcom/android/systemui/LatencyTester;->access$000(Lcom/android/systemui/LatencyTester;)V

    goto :goto_1f

    :cond_12
    const-string p2, "com.android.systemui.latency.ACTION_TURN_ON_SCREEN"

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 60
    iget-object p0, p0, Lcom/android/systemui/LatencyTester$1;->this$0:Lcom/android/systemui/LatencyTester;

    invoke-static {p0}, Lcom/android/systemui/LatencyTester;->access$100(Lcom/android/systemui/LatencyTester;)V

    :cond_1f
    :goto_1f
    return-void
.end method