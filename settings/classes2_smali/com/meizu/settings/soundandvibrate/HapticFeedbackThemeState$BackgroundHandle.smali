.class Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;
.super Landroid/os/Handler;
.source "HapticFeedbackThemeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;Landroid/os/Looper;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_2f

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$100(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$200(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$300(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 109
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$300(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$BackgroundHandle;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$300(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
