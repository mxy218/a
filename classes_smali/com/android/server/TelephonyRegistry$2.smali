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
    .param p1, "this$0"  # Lcom/android/server/TelephonyRegistry;

    .line 345
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastReceiver: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$100(Ljava/lang/String;)V

    .line 350
    :cond_1f
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    .line 351
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 352
    .local v1, "userHandle":I
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->access$900()Z

    move-result v3

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: userHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$100(Ljava/lang/String;)V

    .line 353
    :cond_49
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1  # "userHandle":I
    goto/16 :goto_fc

    .line 354
    :cond_5f
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 355
    new-instance v1, Ljava/lang/Integer;

    .line 357
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    .line 355
    const-string/jumbo v4, "subscription"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 358
    .local v1, "newDefaultSubIdObj":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 359
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 358
    const-string/jumbo v4, "phone"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 360
    .local v3, "newDefaultPhoneId":I
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->access$900()Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive:current mDefaultSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " current mDefaultPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 362
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " newDefaultSubId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newDefaultPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$100(Ljava/lang/String;)V

    .line 366
    :cond_c7
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4, v3}, Lcom/android/server/TelephonyRegistry;->access$1200(Lcom/android/server/TelephonyRegistry;I)Z

    move-result v4

    if-eqz v4, :cond_fd

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 367
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    if-eq v3, v4, :cond_fd

    .line 368
    :cond_e7
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_fd

    .line 354
    .end local v1  # "newDefaultSubIdObj":Ljava/lang/Integer;
    .end local v3  # "newDefaultPhoneId":I
    :cond_fc
    :goto_fc
    nop

    .line 372
    :cond_fd
    :goto_fd
    return-void
.end method
