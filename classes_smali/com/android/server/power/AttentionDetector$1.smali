.class Lcom/android/server/power/AttentionDetector$1;
.super Landroid/database/ContentObserver;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/AttentionDetector;->registerAdaptiveSleepObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/power/AttentionDetector;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 163
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"  # Z

    .line 166
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->access$100(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 167
    return-void
.end method
