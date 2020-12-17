.class Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 2

    .line 810
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 813
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "persist.sys.meizu.aod"

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 814
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 815
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenStatusReceiver;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)V

    :cond_22
    return-void
.end method
