.class Lcom/android/systemui/bubbles/BubbleExpandedView$1;
.super Landroid/app/ActivityView$StateCallback;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Landroid/app/ActivityView$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityViewReady$0$BubbleExpandedView$1(Landroid/app/ActivityOptions;)V
    .registers 4

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$500(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$400(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityView;->startActivity(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_53

    :catch_10
    move-exception p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while displaying bubble: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$600(Lcom/android/systemui/bubbles/BubbleExpandedView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; removing bubble"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bubbles"

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_53
    return-void
.end method

.method public synthetic lambda$onTaskRemovalStarted$1$BubbleExpandedView$1()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityViewDestroyed(Landroid/app/ActivityView;)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    sget-object p1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->RELEASED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-void
.end method

.method public onActivityViewReady(Landroid/app/ActivityView;)V
    .registers 4

    .line 119
    sget-object p1, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->$SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    goto :goto_31

    .line 123
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 143
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    sget-object p1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    :goto_31
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 3

    .line 165
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$102(Lcom/android/systemui/bubbles/BubbleExpandedView;I)I

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .registers 3

    .line 181
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 183
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$wFmGYWDvx1tFURTJCp8j5qJlvAk;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$wFmGYWDvx1tFURTJCp8j5qJlvAk;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
