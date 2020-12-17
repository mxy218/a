.class Lcom/android/server/display/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayPowerState;

    .line 319
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$002(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 325
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 324
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 325
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    goto :goto_22

    :cond_21
    nop

    :goto_22
    move v0, v1

    .line 326
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(II)Z

    move-result v1

    const-string v3, "DisplayPowerState"

    if-eqz v1, :cond_4d

    .line 327
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 328
    const-string v1, "Screen ready"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_42
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerState;->access$602(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 331
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$700(Lcom/android/server/display/DisplayPowerState;)V

    goto :goto_58

    .line 333
    :cond_4d
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 334
    const-string v1, "Screen not ready"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_58
    :goto_58
    return-void
.end method
