.class final Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 669
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V
    .registers 3

    .line 669
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 672
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 673
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p1}, Lcom/android/server/attention/AttentionManagerService;->peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/attention/AttentionManagerService;->access$1900(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 675
    :cond_15
    return-void
.end method
