.class Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;
.super Ljava/lang/Object;
.source "MzDisplayDirectCurrentLight.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAlphaZeroRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# direct methods
.method private constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .param p2, "x1"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$000(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_7
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$600(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Lcom/android/server/lights/Light;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 150
    const-string v1, "MzDisplayDirectCurrentLight"

    const-string/jumbo v2, "remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$1400(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;F)V

    .line 154
    :cond_1d
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method
