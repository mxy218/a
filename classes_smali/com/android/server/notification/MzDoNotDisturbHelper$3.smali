.class Lcom/android/server/notification/MzDoNotDisturbHelper$3;
.super Landroid/database/ContentObserver;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 176
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MzDoNotDisturbHelper onChange mZenMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$700(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$800()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_6d

    .line 182
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$900(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string/jumbo v4, "zen_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, "zenMode":I
    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$700(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v3

    if-ne v0, v3, :cond_3f

    .line 184
    return-void

    .line 186
    :cond_3f
    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3, v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$702(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I

    .line 187
    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v4}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$500(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v4}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$500(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$1000(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 190
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$1100(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 191
    .end local v0  # "zenMode":I
    goto :goto_a5

    :cond_6d
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$1200()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 192
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$1000(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    goto :goto_a5

    .line 193
    :cond_7d
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$1300()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$500(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$500(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_a5
    :goto_a5
    return-void
.end method
