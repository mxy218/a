.class Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;
.super Ljava/lang/Object;
.source "MzDisplayDirectCurrentLight.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# direct methods
.method constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 78
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_30

    const/4 v3, 0x2

    if-eq v0, v3, :cond_22

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MzDisplayDirectCurrentLight"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v1

    .line 98
    :cond_22
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$900(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;I)V

    .line 99
    return v2

    .line 83
    :cond_30
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$000(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 84
    :try_start_37
    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    iget-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v4}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$200(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mz_display_dc_light_enable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4d

    move v1, v2

    :cond_4d
    invoke-static {v3, v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$102(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Z)Z

    .line 86
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$100(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 87
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$300(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V

    goto :goto_7f

    .line 89
    :cond_5e
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$400(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V

    .line 90
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$600(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Lcom/android/server/lights/Light;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v3}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$500(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/lights/Light;->setBrightness(II)V

    .line 92
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v3}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$700(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$800(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Ljava/lang/Runnable;J)V

    .line 94
    :goto_7f
    monitor-exit v0

    .line 95
    return v2

    .line 94
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_37 .. :try_end_83} :catchall_81

    throw v1
.end method
