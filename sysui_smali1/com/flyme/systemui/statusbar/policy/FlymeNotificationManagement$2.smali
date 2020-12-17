.class Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;
.super Ljava/lang/Object;
.source "FlymeNotificationManagement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cause:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$replyIntent:Landroid/app/PendingIntent;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;IIILjava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 181
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$replyIntent:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$state:I

    iput p3, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$cause:I

    iput p4, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$id:I

    iput-object p5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$pkg:Ljava/lang/String;

    iput-object p6, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$replyIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_d
    move-object v2, v0

    const-string v0, "flyme:notification_state"

    .line 187
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$state:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "flyme:notification_cause"

    .line 188
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$cause:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "flyme:notification_id"

    .line 189
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$id:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "flyme:notification_pkg"

    .line 190
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$replyIntent:Landroid/app/PendingIntent;

    .line 192
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_3a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_3a} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_3f
    :goto_3f
    return-void
.end method
