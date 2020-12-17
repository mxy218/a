.class Lcom/android/systemui/statusbar/phone/StatusBar$16;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 4738
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 4741
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui.statusbar.banner_action_cancel"

    .line 4742
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "com.android.systemui.statusbar.banner_action_setup"

    if-nez p2, :cond_14

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 4743
    :cond_14
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p2, p2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 4744
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    const/4 v1, 0x5

    .line 4745
    invoke-virtual {p2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4748
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p2, p2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v1, 0x0

    const-string/jumbo v2, "show_note_about_notification_hiding"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4750
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 4751
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p2, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 4753
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 4754
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 4753
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_54
    return-void
.end method
