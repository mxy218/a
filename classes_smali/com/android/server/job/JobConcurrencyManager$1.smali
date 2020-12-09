.class Lcom/android/server/job/JobConcurrencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1f

    const v0, -0x56ac2893

    if-eq p2, v0, :cond_15

    :cond_14
    goto :goto_29

    :cond_15
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    move p1, v1

    goto :goto_2a

    :cond_1f
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    move p1, v2

    goto :goto_2a

    :goto_29
    const/4 p1, -0x1

    :goto_2a
    if-eqz p1, :cond_35

    if-eq p1, v2, :cond_2f

    goto :goto_3b

    .line 133
    :cond_2f
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1, v1}, Lcom/android/server/job/JobConcurrencyManager;->access$000(Lcom/android/server/job/JobConcurrencyManager;Z)V

    goto :goto_3b

    .line 130
    :cond_35
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1, v2}, Lcom/android/server/job/JobConcurrencyManager;->access$000(Lcom/android/server/job/JobConcurrencyManager;Z)V

    .line 131
    nop

    .line 136
    :goto_3b
    return-void
.end method
