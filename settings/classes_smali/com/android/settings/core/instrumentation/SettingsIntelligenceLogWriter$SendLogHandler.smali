.class Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter$SendLogHandler;
.super Landroid/os/Handler;
.source "SettingsIntelligenceLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;Landroid/os/Looper;)V
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter$SendLogHandler;->this$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public scheduleSendLog()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter$SendLogHandler;->this$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    invoke-static {v0}, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;->access$000(Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter$SendLogHandler;->this$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    invoke-static {v0}, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;->access$000(Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
