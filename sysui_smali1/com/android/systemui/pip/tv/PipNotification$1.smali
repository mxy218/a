.class Lcom/android/systemui/pip/tv/PipNotification$1;
.super Ljava/lang/Object;
.source "PipNotification.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveToFullscreen()V
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipNotification;->access$200(Lcom/android/systemui/pip/tv/PipNotification;)V

    return-void
.end method

.method public onPipActivityClosed()V
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipNotification;->access$200(Lcom/android/systemui/pip/tv/PipNotification;)V

    return-void
.end method

.method public onPipEntered()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$000(Lcom/android/systemui/pip/tv/PipNotification;)Z

    .line 69
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipNotification;->access$100(Lcom/android/systemui/pip/tv/PipNotification;)V

    return-void
.end method

.method public onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .registers 2

    return-void
.end method

.method public onPipResizeAboutToStart()V
    .registers 1

    return-void
.end method

.method public onShowPipMenu()V
    .registers 1

    return-void
.end method
