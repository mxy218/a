.class Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HapticFeedbackThemeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receiver"
.end annotation


# instance fields
.field private hasRegister:Z

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->hasRegister:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 126
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$400(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_16

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$400(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method

.method public pause()V
    .registers 2

    .line 142
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->hasRegister:Z

    if-eqz v0, :cond_10

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$100(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->hasRegister:Z

    :cond_10
    return-void
.end method

.method public resume()V
    .registers 3

    .line 132
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->hasRegister:Z

    if-nez v0, :cond_21

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$100(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$Receiver;->hasRegister:Z

    :cond_21
    return-void
.end method
