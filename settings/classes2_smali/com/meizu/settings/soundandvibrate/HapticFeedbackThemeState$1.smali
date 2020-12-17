.class Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$1;
.super Landroid/os/Handler;
.source "HapticFeedbackThemeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$1;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1b

    .line 69
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$1;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$000(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$1;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->access$000(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;->OnGetHapticComplete(Ljava/util/ArrayList;)V

    :cond_1b
    :goto_1b
    return-void
.end method
