.class Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 336
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 337
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 339
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->access$800(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$800(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_86

    .line 340
    :cond_28
    const-string v0, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 341
    new-instance p1, Ljava/lang/Integer;

    .line 343
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 341
    const-string/jumbo v2, "subscription"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 344
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 345
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 344
    const-string/jumbo v2, "phone"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 352
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0, p2}, Lcom/android/server/TelephonyRegistry;->access$900(Lcom/android/server/TelephonyRegistry;I)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 353
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$500(Lcom/android/server/TelephonyRegistry;)I

    move-result v0

    if-eq p2, v0, :cond_87

    .line 354
    :cond_71
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$800(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$800(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_87

    .line 340
    :cond_86
    :goto_86
    nop

    .line 358
    :cond_87
    :goto_87
    return-void
.end method
