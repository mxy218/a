.class Lcom/android/systemui/qs/QSTileHost$1;
.super Landroid/content/BroadcastReceiver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTileHost;->registerMeizuShareIntentReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .registers 2

    .line 456
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 459
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 461
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.meizu.share"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const-string p1, "QSTileHost"

    const-string p2, "MeizuShare package update"

    .line 462
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->access$000(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/tuner/TunerService;

    move-result-object p1

    const-string/jumbo p2, "sysui_qs_tiles"

    invoke-virtual {p1, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->access$302(Lcom/android/systemui/qs/QSTileHost;Z)Z

    .line 465
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method
