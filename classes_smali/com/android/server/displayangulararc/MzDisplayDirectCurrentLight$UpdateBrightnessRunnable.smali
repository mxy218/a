.class Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;
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
    name = "UpdateBrightnessRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# direct methods
.method private constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .param p2, "x1"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$000(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_7
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$600(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Lcom/android/server/lights/Light;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 136
    const-string v1, "MzDisplayDirectCurrentLight"

    const-string/jumbo v2, "sync brightness"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$600(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Lcom/android/server/lights/Light;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v2}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$1200(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/lights/Light;->setBrightness(II)V

    .line 140
    :cond_27
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
